#ifndef MIPS_TEXT_PARSER_HPP
#define MIPS_TEXT_PARSER_HPP

#include "define_switches.h"
#include <string>
#include <vector>
#include <map>
#include <iostream>

using namespace std;

enum TokenType {
    _label,
    _data, _text,
    _align, _ascii, _asciiz, _byte, _half, _word, _space,
    _add, _addu, _addiu, _sub, _subu, _xor, _xoru, _neg, _negu, _rem, _remu,
    _mul, _mulu, _div, _divu,
    _li,
    _seq, _sgem, _sgtm, _sle, _slt, _sne,
    _b, _beq, _bne, _bge, _ble, _bgt, _blt, _beqz, _bnez, _blez, _bgez, _bgtz, _bltz, _j, _jr, _jal, _jalr,
    _la, _lb, _lh, _lw,
    _sb, _sh, _sw,
    _move, _mfhi, _mflo,
    _nop, _syscall
};

map<string, TokenType> _tokenType;

void TokenTypeInit() {
    _tokenType[".data"] = _data;
    _tokenType[".text"] = _text;
    _tokenType[".align"] = _align;
    _tokenType[".ascii"] = _ascii;
    _tokenType[".asciiz"] = _asciiz;
    _tokenType[".byte"] = _byte;
    _tokenType[".half"] = _half;
    _tokenType[".word"] = _word;
    _tokenType[".space"] = _space;
    _tokenType["add"] = _add;
    _tokenType["addu"] = _addu;
    _tokenType["addiu"] = _addiu;
    _tokenType["sub"] = _sub;
    _tokenType["subu"] = _subu;
    _tokenType["xor"] = _xor;
    _tokenType["xoru"] = _xoru;
    _tokenType["neg"] = _neg;
    _tokenType["rem"] = _rem;
    _tokenType["remu"] = _remu;
    _tokenType["mul"] = _mul;
    _tokenType["mulu"] = _mulu;
    _tokenType["div"] = _div;
    _tokenType["divu"] = _divu;
    _tokenType["li"] = _li;
    _tokenType["seq"] = _seq;
    _tokenType["sgem"] = _sgem;
    _tokenType["sgtm"] = _sgtm;
    _tokenType["sle"] = _sle;
    _tokenType["slt"] = _slt;
    _tokenType["sne"] = _sne;
    _tokenType["b"] = _b;
    _tokenType["beq"] = _beq;
    _tokenType["bne"] = _bne;
    _tokenType["bge"] = _bge;
    _tokenType["ble"] = _ble;
    _tokenType["bgt"] = _bgt;
    _tokenType["blt"] = _blt;
    _tokenType["beqz"] = _beqz;
    _tokenType["bnez"] = _bnez;
    _tokenType["bgez"] = _bgez;
    _tokenType["blez"] = _blez;
    _tokenType["bgtz"] = _bgtz;
    _tokenType["bltz"] = _bltz;
    _tokenType["j"] = _j;
    _tokenType["jr"] = _jr;
    _tokenType["jal"] = _jal;
    _tokenType["jalr"] = _jalr;
    _tokenType["la"] = _la;
    _tokenType["lb"] = _lb;
    _tokenType["lh"] = _lh;
    _tokenType["lw"] = _lw;
    _tokenType["sb"] = _sb;
    _tokenType["sh"] = _sh;
    _tokenType["sw"] = _sw;
    _tokenType["move"] = _move;
    _tokenType["mfhi"] = _mfhi;
    _tokenType["mflo"] = _mflo;
    _tokenType["nop"] = _nop;
    _tokenType["syscall"] = _syscall;
}

TokenType GetTokenType(const string &str) {
    if (_tokenType.find(str) == _tokenType.end())
        return _label;
    return _tokenType[str];
}

// skip string like this "abc 123\"xyz" or '\''
int SkipString(const string &str, int pos, char closedParenthesis) {
    ++pos;
    while (pos < str.length()) {
        if (str[pos] == closedParenthesis) break;
        if (str[pos] == '\\') pos += 2;
        else ++pos;
    }
    return pos;
}

// skip non-string token like "$v0" or "$v0," or "_Label1"
int SkipNonStringToken(const string &str, int pos) {
    ++pos;
    while (pos < str.length()) {
        if (str[pos] == ' ' || str[pos] == '\n' || str[pos] == ',') break;
        else ++pos;
    }
    return pos;
}

// jump to the beginning of the next token
int JumpToNextToken(const string &str, int pos) {
    ++pos;
    while (pos < str.length()) {
        if (str[pos] != ' ' && str[pos] != '\t' && str[pos] != '\n') break;
        else ++pos;
    }
    return pos;
}

int SkipEntry(const string &str, int pos) {
    ++pos;
    while (pos < str.length()) {
        if (str[pos] == '\'' || str[pos] == '\"')
            pos = SkipString(str, pos, str[pos]);
        if (str[pos] == ':' || str[pos] == ';' || str[pos] == '\n')
            break;
        else ++pos;
    }
    return pos;
}

int JumpToNextEntry(const string &str, int pos) {
    ++pos;
    while (pos < str.length()) {
        if (str[pos] != ' ' && str[pos] != '\t' && str[pos] != '\n' && str[pos] != ';') break;
        else ++pos;
    }
    return pos;
}

// split each entry into [tokenType, arg0, arg1, ...]
class Entry {
public:
    TokenType entryType;
    unsigned short argc;
    vector<string> argv;
    Entry() = default;
public:
    Entry(const string &str) {
        int p1 = JumpToNextToken(str, -1), p2;
        argc = -1;  
#ifdef DEBUG_ENTRY_SPLIT
        cout << "[";
#endif
        while (p1 < str.length()) {
            p2 = p1;
            if (str[p2] == '\'' || str[p2] == '\"')
                p2 = SkipString(str, p2, str[p2]);
            else p2 = SkipNonStringToken(str, p2);
            ++argc;
#ifdef DEBUG_ENTRY_SPLIT
            cout << string(str, p1, p2) << ", ";
#endif
            if (argc == 0) entryType = GetTokenType(string(str, p1, p2 - p1));
            else argv.push_back(string(str, p1, p2 - p1));
            p1 = JumpToNextToken(str, p2);
        }
#ifdef DEBUG_ENTRY_SPLIT
        cout << "]" << endl;
#endif
    }
};

// split the whole text into entries
vector<Entry> SplitToEntries(const string &str) {
    vector<Entry> ret;
    int p1 = JumpToNextEntry(str, -1), p2;
    while (p1 < str.length()) {
        p2 = p1;
        p2 = SkipEntry(str, p2);
#ifdef DEBUG_TEXT_SPLIT
        cout << "Entry: " << string(str, p1, p2 - p1) << endl;
#endif
        ret.push_back(Entry(string(str, p1, p2 - p1)));
        p1 = JumpToNextEntry(str, p2);
    }
    return ret;
}

#endif // MIPS_TEXT_PARSER_HPP
