#ifndef GLOBAL_CLASS_HPP
#define GLOBAL_CLASS_HPP

#include <vector>

using namespace std;

typedef unsigned char byte;

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
    friend class Entry_Processor;
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
    int constant, offset, address;
    Instruction() {
        op = rd = rs = rt = byte(255); // default setting
        constant = offset = address = 0;
    }
};

#endif // GLOBAL_CLASS_HPP
