#ifndef MIPS_TEXT_PARSER_HPP
#define MIPS_TEXT_PARSER_HPP

#include "include_define.hpp"

using namespace std;

class MIPS_Text_Parser {
    friend class Entry;
    friend class MIPS_Simulator;
private:
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
        while (pos < (int)str.length()) {
            if (str[pos] == closedParenthesis) break;
            if (str[pos] == '\\') pos += 2;
            else ++pos;
        }
        return pos;
    }
    
    // skip non-string token like "$v0" or "$v0," or "_Label1"
    int SkipNonStringToken(const string &str, int pos) {
        ++pos;
        while (pos < (int)str.length()) {
            if (str[pos] == ' ' || str[pos] == '\n' || str[pos] == ',') break;
            else ++pos;
        }
        return pos;
    }
    
    // jump to the beginning of the next token
    int JumpToNextToken(const string &str, int pos) {
        ++pos;
        while (pos < (int)str.length()) {
            if (str[pos] != ' ' && str[pos] != '\t' && str[pos] != '\n') break;
            else ++pos;
        }
        return pos;
    }
    
    int SkipEntry(const string &str, int pos) {
        ++pos;
        while (pos < (int)str.length()) {
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
        while (pos < (int)str.length()) {
            if (str[pos] != ' ' && str[pos] != '\t' && str[pos] != '\n' && str[pos] != ';') break;
            else ++pos;
        }
        return pos;
    }
    
    // split each entry into [tokenType, arg0, arg1, ...]
    class Entry {
    private:
        TokenType tokenType;
        EntryType entryType;
        vector<string> argv;
        int idx;
    public:
        Entry() = default;
        Entry(const string &str) {
            int p1 = JumpToNextToken(str, -1), p2;
            bool isArg = false;
#ifdef DEBUG_ENTRY_SPLIT
            cout << "[";
#endif
            while (p1 < (int)str.length()) {
                p2 = p1;
                if (str[p2] == '\'' || str[p2] == '\"') {
                    p2 = SkipString(str, p2, str[p2]);
                    ++p1;
                }
                else p2 = SkipNonStringToken(str, p2);
#ifdef DEBUG_ENTRY_SPLIT
                cout << string(str, p1, p2 - p1) << ", ";
#endif
                if (!isArg) {
                    tokenType = GetTokenType(string(str, p1, p2 - p1));
                    isArg = true;
                }
                else argv.push_back(string(str, p1, p2 - p1));
                p1 = JumpToNextToken(str, p2);
            }
#ifdef DEBUG_ENTRY_SPLIT
            cout << "]" << endl;
#endif
        }
    };
    
public:
    MIPS_Text_Parser() = default;
    
    // split the whole text into entries
    vector<Entry> SplitToEntries(const string &str) {
        vector<Entry> ret;
        int p1 = JumpToNextEntry(str, -1), p2;
        while (p1 < (int)str.length()) {
            p2 = p1;
            p2 = SkipEntry(str, p2);
#ifdef DEBUG_TEXT_SPLIT
            cout << "Entry: " << string(str, p1, p2 - p1) << endl;
#endif
            ret.push_back(Entry(string(str, p1, p2 - p1)));
            p1 = JumpToNextEntry(str, p2);
        }
        int nowIdx = 0;
        for (size_t i = 0; i < ret.size(); ++i) {
            if (ret[i].tokenType == _label) continue;
            ret[i].idx = nowIdx++;
        }
        for (size_t i = ret.size(); i > 0; --i) {
            if (ret[i - 1].tokenType == _label)
                ret[i - 1].idx = nowIdx;
            else nowIdx = ret[i - 1].idx;
        }
#ifdef DEBUG_ENTRY_INDEX
        for (size_t i = 0; i < ret.size(); ++i)
            cout << ret[i].idx << endl;
#endif
        EntryType nowEntryType = dotMark;
        for (size_t i = 0; i < ret.size(); ++i) {
            if (ret[i].tokenType == _data) {
                ret[i].entryType = dotMark;
                nowEntryType = dotData;
            }
            else if (ret[i].tokenType == _text) {
                ret[i].entryType = dotMark;
                nowEntryType = dotText;
            }
            else ret[i].entryType = nowEntryType;
#ifdef DEBUG_ENTRY_TYPE
            cout << "Entry type: " << ret[i].entryType << endl;
#endif
        }
        return ret;
    }
};
    
#endif // MIPS_TEXT_PARSER_HPP
