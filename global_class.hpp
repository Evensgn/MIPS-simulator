#ifndef GLOBAL_CLASS_HPP
#define GLOBAL_CLASS_HPP

#include <vector>
#include <bitset>

using namespace std;

typedef unsigned char byte;

// half word : 2 bytes
union Half {
    short s;
    unsigned short us;
    struct {byte b0, b1;};
    
    Half() {s = 0;}
    Half(short _s): s(_s) {}
    Half(unsigned short _us): us(_us) {}
    Half(byte _b0, byte _b1): b0(_b0), b1(_b1) {}
};

// word : 4 bytes
union Word {
    int i;
    unsigned int  ui;
    struct {byte b0, b1, b2, b3;};
    
    Word() {i = 0;}
    Word(int _i): i(_i) {}
    Word(unsigned int _ui): ui(_ui) {}
    Word(byte _b0, byte _b1, byte _b2, byte _b3): b0(_b0), b1(_b1), b2(_b2), b3(_b3) {}
};

// double word : 8 bytes
union Double {
    long long ll;
    unsigned long long ull;
    struct {byte b0, b1, b2, b3, b4, b5, b6, b7;};
    
    Double() {ll = 0;}
    Double(long long _ll): ll(_ll) {}
    Double(unsigned long long _ull): ull(_ull) {}
    Double(byte _b0, byte _b1, byte _b2, byte _b3, byte _b4, byte _b5, byte _b6, byte _b7): \
        b0(_b0), b1(_b1), b2(_b2), b3(_b3), b4(_b4), b5(_b5), b6(_b6), b7(_b7) {}
};

enum EntryType {
    dotMark, dotData, dotText
};

enum TokenType {
    //instructions
    _add, _addu, _addiu, _sub, _subu,
    _mul, _mulu, _div, _divu,
    _xor, _xoru, _neg, _negu, _rem, _remu,
    _li,
    _seq, _sge, _sgt, _sle, _slt, _sne,
    _b, _beq, _bne, _bge, _ble, _bgt, _blt, _beqz, _bnez, _blez, _bgez, _bgtz, _bltz, _j, _jr, _jal, _jalr,
    _la, _lb, _lh, _lw,
    _sb, _sh, _sw,
    _move, _mfhi, _mflo,
    _nop, _syscall,
    
    _label,
    _data, _text,
    _align, _ascii, _asciiz, _byte, _half, _word, _space
};

class Entry {
    friend class MIPS_Text_Parser;
    friend class MIPS_Simulator;
    friend class MIPS_Entry_Processor;
private:
    TokenType tokenType;
    EntryType entryType;
    string labelName;
    vector<string> argv;
    int idx;
public:
    Entry() = default;
};

class Instruction {
public:
    byte op, rs, rt, rd;
    Word constant, offset, address;
    Instruction() {
        op = rd = rs = rt = byte(255); // default setting
        constant = offset = address = Word((int)0);
    }
};

class BinaryInst {
public:
    byte b[16];
};

class InstInfo {
public:
    TokenType instType;
    byte rd;
    Word rsv, rtv, constant, offset, address, v0, a0, a1;
    bool rse, rte, rde;
    InstInfo() {
        rd = byte(255);
        rse = rte = rde = false;
    }
};

class InstInfo2 {
public:
    TokenType instType;
    byte rd;
    Word address, rsv, v0, a0, a1;
    InstInfo2() {
        rd = byte(255);
    }
};

class SaturatingCounter {
private:
    bitset<2> status;
public:
    SaturatingCounter() {
        status = bitset<2>(2);
    }
    bool Taken() const {
        return status[1];
    }
    void Modify(bool flag) {
        int x = status.to_ulong();
        if (flag) ++x;
        else --x;
        if (x == -1) x = 0;
        if (x == 4) x = 3;
        status = bitset<2>(x);
    }
};

#endif // GLOBAL_CLASS_HPP
