#ifndef MIPS_TEXT_PROCESSOR_HPP
#define MIPS_TEXT_PROCESSOR_HPP

#include "mips_simulator.hpp"
#include <string>

enum TokenType {
    _label,
    _data, _text,
    _align, _ascii, _asciiz, _byte, _half, _word, _space,
    _add, _addu, _addiu, _sub, _subu, _xor, _xoru, _neg, _negu, _rem, _remu,
    _mul, _mulu, _div, _divu,
    _li,
    _seq, _sgem, _sgtm, _sle, _slt, _sne,
    _b, _beq, _bne, _bge, _ble, _bgt, _blt, _bqez, _bnez, _blez, _bgez, _bgtz, _bltz, _j, _jr, _jal, _jalr,
    _la, _lb, _lh, _lw,
    _sb, _sh, _sw,
    _move, _mfhi, _mflo,
    _nop, _syscall
};



#endif // MIPS_TEXT_PROCESSOR_HPP
