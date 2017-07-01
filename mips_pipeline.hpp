#ifndef MIPS_PIPELINE_HPP
#define MIPS_PIPELINE_HPP

#include "include_define.hpp"

class MIPS_Pipeline {
private:
    byte *memorySpace;
    Word *registers;
    int PC;
    int textMemoryTop;
    bool finished, exited, PC_pending;
    bool IF_AVL, ID_AVL, EX_AVL, MEM_AVL, WB_AVL;
    bool IF_STA, ID_STA, EX_STA, MEM_STA, WB_STA;
    int registerStatus[registerNum];
    struct {
        bool spare;
        BinaryInst binaryInst;
        int nextInstAddr;
    } IF_ID;
    struct {
        bool spare;
        InstInfo instInfo;
        int nextInstAddr;
    } ID_EX;
    struct {
        bool spare;
        InstInfo2 instInfo2;
        Word res, res0, res1;
        string str;
        int nextInstAddr;
    } EX_MEM;
    struct {
        bool spare;
    } MEM_WB;
    
    void InstructionFetch() {
        if (finished || exited) return; 
        if (ID_STA || PC_pending) {
            IF_STA = true;
            return;
        }
        
        if (PC == textMemoryTop) {
            finished = true;
            return;
        }
        BinaryInst _binaryInst; 
        _binaryInst = *(reinterpret_cast<BinaryInst*>(memorySpace + PC));
        
        IF_ID.binaryInst = _binaryInst;
        IF_ID.nextInstAddr = PC + sizeof(BinaryInst);
        IF_ID.spare = false;
        IF_STA = false;
    }
    
    void InstructionDecode() {
        if (finished || exited) return;
        if (IF_ID.spare) return;
        if (EX_STA) {
            ID_STA = true;
            return;
        }
        
        Instruction inst;
        inst = *(reinterpret_cast<Instruction*>(&(IF_ID.binaryInst)));
        InstInfo _instInfo;
        _instInfo.instType = TokenType(inst.op);
        _instInfo.constant = inst.constant;
        _instInfo.offset = inst.offset;
        _instInfo.address = inst.address;
        if (inst.rs != byte(255)) {
            // register is to be written
            if (registerStatus[inst.rs] != 0) {
                ID_STA = true;
                return;
            }
            _instInfo.rsv = registers[inst.rs];
            _instInfo.rse = true;
        }
        if (inst.rt != byte(255)) {
            // register is to be written
            if (registerStatus[inst.rt] != 0) {
                ID_STA = true;
                return;
            }
            _instInfo.rtv = registers[inst.rt];
            _instInfo.rte = true;
        }
        if (_instInfo.instType == _mflo) {
            if (registerStatus[32] != 0) {
                ID_STA = true;
                return;
            }
            _instInfo.rsv = registers[32];
            _instInfo.rse = true;
        }
        else if (_instInfo.instType == _mfhi) {
            if (registerStatus[33] != 0) {
                ID_STA = true;
                return;
            }
            _instInfo.rsv = registers[33];
            _instInfo.rse = true;
        }
        else if (_instInfo.instType == _syscall) {
            // $v0
            if (registerStatus[2] != 0) { 
                ID_STA = true;
                return;
            }
            _instInfo.v0 = registers[2];
            if (_instInfo.v0 == 1 || _instInfo.v0 == 4 || _instInfo.v0 == 8 || \
                _instInfo.v0 == 9 || _instInfo.v0 == 17) {
                // $a0
                if (registerStatus[4] != 0) {
                    ID_STA = true;
                    return;
                }
                _instInfo.a0 = registers[4];
            }
            if (_instInfo.v0 == 8) {
                // $a1
                if (registerStatus[5] != 0) {
                    ID_STA = true;
                    return;
                }
                _instInfo.a1 = registers[5];
            }
        }
        
        if (inst.rd != byte(255)) {
            _instInfo.rd = inst.rd;
            ++(registerStatus[rd]);
        }
        if (InClosedInterval(_instInfo.instType, _mul, _divu) && inst.rd == byte(255)) {
            ++(registerStatus[32]);
            ++(registerStatus[33]);
        }
        else if (_instInfo.instType == _syscall && (_instInfo.v0 == 5 || _instInfo.v0 == 9)) {
            // $v0
            ++(registerStatus[2]);
        }
        
        if (InClosedInterval(_instInfo.instType, _b, _bltz)) {
            PC_pending = true;
        }
        else if (InClosedInterval(_instInfo.instType, _j, _jalr)) {
            if (_instInfo.instType == j || _instInfo.instType == _jal) 
                PC = _instInfo.address;
            else 
                PC = _instInfo.rsv;
        }
        else {
            PC += sizeof(BinaryInst);
        }
        
        ID_EX.instInfo = _instInfo;
        ID_EX.nextInstAddr = IF_ID.nextInstAddr;
        ID_EX.spare = false;
        ID_STA = false;
        IF_ID.spare = true;
    }
    
    void Execution() {
        if (finished || exited) return;
        if (ID_EX.spare) return;
        if (MEM_STA) {
            EX_STA = true;
            return;
        }
         
        InstInfo _instInfo = ID_EX.instInfo;
        Word a0, a1, res, res0, res1;
        Double resd;
        string str;
        if (InClosedInterval(_instInfo.instType, _neg, _negu)) {
            a0 = _instInfo.rsv;
            if (_instInfo.instType == _neg) res.i = -a0.i;
            else res.ui = -a0.ui;
        }
        else if (_instInfo.instType == _li) {
            res = _instInfo.constant;
        }
        else if (_instInfo.instType == _b) {
            res.i = 1;
        }
        else if (InClosedInterval(_instInfo.instType, _add, _bltz)) {
            a0 = _instInfo.rsv;
            if (InClosedInterval(_instInfo.instType, _beqz, _bltz))
                _instInfo.constant.i = 0;
            if (_instInfo.rte) a1 = _instInfo.rtv;
            else a1 = _instInfo.constant;
            switch (_instInfo.instType) {
            case _add: res.i = a0.i + a1.i; break;
            case _addu: 
            case _addiu: res.ui = a0.ui + a1.ui; break;
            case _sub: res.i = a0.i - a1.i; break;
            case _subu: res.ui = a0.ui - a1.ui; break;
            case _mul:
                if (_instInfo.rde) res.i = a0.i * a1.i;
                else {
                    resd.ll = (long long)a0.i * (long long)a1.i;
                    res0 = resd.wd0; res1 = resd.wd1;
                }
                break;
            case _mulu:
                if (_instInfo.rde) res.ui = a0.ui * a1.ui;
                else {
                    resd.ull = (long long)a0.ui * (long long)a1.ui;
                    res0 = resd.wd0; res1 = resd.wd1;
                }
                break;
            case _div:
                if (_instInfo.rde) res.i = a0.i / a1.i;
                else {
                    res0.i = a0.i / a1.i;
                    res1.i = a0.i % a1.i;
                }
                break;
            case _divu:
                if (_instInfo.rde) res.ui = a0.ui / a1.ui;
                else {
                    res0.ui = a0.ui / a1.ui;
                    res1.ui = a0.ui % a1.ui;
                }
                break;
            case _xor: res.i = a0.i ^ a1.i; break;
            case _xoru: res.ui = a0.ui ^ a1.ui; break;
            case _rem: res.i = a0.i % a1.i; break;
            case _remu: res.ui = a0.ui % a1.ui; break;
            case _seq: 
            case _beq:
            case _beqz:
                res.i = (a0.i == a1.i) ? 1 : 0; break;
            case _sne: 
            case _bne: 
            case _bnez:
                res.i = (a0.i != a1.i) ? 1 : 0; break;
            case _sge:
            case _bge:
            case _bgez:
                res.i = (a0.i >= a1.i) ? 1 : 0; break;
            case _sgt: 
            case _bgt:
            case _bgtz:
                res.i = (a0.i > a1.i) ? 1 : 0; break;
            case _sle: 
            case _ble:
            case _blez:
                res.i = (a0.i <= a1.i) ? 1 : 0; break;
            case _slt: 
            case _blt:
            case _bltz:
                res.i = (a0.i < a1.i) ? 1 : 0; break;
            }
            if (InClosedInterval(_instInfo.instType, _b, _bltz) && res.i == 1) {
                PC = _instInfo.address;
                PC_pending = false;
            }
        }
        else if (InClosedInterval(_instInfo.instType, _la, _sw) && _instInfo.rte) {
            _instInfo.address.i = _instInfo.rtv.i + _instInfo.offset.i;
        }
        else if (_instInfo.instType == _syscall) {
            int num;
            switch (_instInfo.v0) {
            case 1:
                cout << _instInfo.a0;
                break;
            case 5:
                cin >> num;
                res.i = num;
                break;
            case 8:
                str = "";
                for (int i = 1; i < _instInfo.a1.i; ++i) {
                    char c;
                    bool flag = (cin >> c);
                    if (!flag) break;
                    str += c;
                }
                break;
            case 10:
                exited = true;
                return;
                break;
            case 17:
                // exit code is _instInfo.a0
                exited = true;
                return;
                break;
            default:
                break;
            }
        }
        
        InstInfo2 _instInfo2;
        _instInfo2.instType = _instInfo.instType;
        _instInfo2.rd = _instInfo.rd;
        _instInfo2.address = _instInfo.address;
        _instInfo2.rsv = _instInfo.rsv;
        _instInfo2.v0 = _instInfo.v0;
        _instInfo2.a0 = _instInfo.a0;
        _instInfo2.a1 = _instInfo.a1;
        
        EX_MEM.instInfo2 = _instInfo2;
        EX_MEM.res = res;
        EX_MEM.res0 = res0;
        EX_MEM.res1 = res1;
        EX_MEM.nextInstAddr = ID_EX.nextInstAddr;
        EX_MEM.spare = false;
        EX_STA = false;
        ID_EX.spare = true;
    }
        
    void MemoryAccess() {
        if (finished || exited) return;
        if (EX_MEM.spare) return;
        if (WB_STA) {
            MEM_STA = true;
            return;
        }
        
        InstInfo2 _instInfo2 = EX_MEM.instInfo2;
        Word res;
        res = EX_MEM.res;
                
        switch (_instInfo2.instType) {
        case _la:
            res = _instInfo2.address;        
            break;
        case _lb:
            res.b0 = memorySpace[_instInfo2.address];
            break;
        case _lh:
            res.b0 = memorySpace[_instInfo2.address];
            res.b1 = memorySpace[_instInfo2.address + 1];
            break;
        case _lw:
            res.b0 = memorySpace[_instInfo2.address];
            res.b1 = memorySpace[_instInfo2.address + 1];
            res.b2 = memorySpace[_instInfo2.address + 2];
            res.b3 = memorySpace[_instInfo2.address + 3];
            break;
        case _sb:
            memorySpace[_instInfo2.address] = _instInfo2.rsv.b0;
            break;
        case _sh:
            memorySpace[_instInfo2.address] = _instInfo2.rsv.b0;
            memorySpace[_instInfo2.address + 1] = _instInfo2.rsv.b1;
            break;            
        case _sw:
            memorySpace[_instInfo2.address] = _instInfo2.rsv.b0;
            memorySpace[_instInfo2.address + 1] = _instInfo2.rsv.b1;
            break;
        default:
            break;
        }
        
        MEM_WB.spare = false;
        MEM_STA = false;
        EX_MEM.spare = true;
    }
    
    void WriteBack() {
        if (finished || exited) return;
        if (MEM_WB.spare) return;
        
        WB_STA = false;
        MEM_WB.spare = true;
    }
    
    MIPS_Pipeline() = default;
    MIPS_Pipeline(const MIPS_Pipeline&);
    MIPS_Pipeline& operator=(const MIPS_Pipeline&);
public:
    static MIPS_Pipeline& instance() {
        static MIPS_Pipeline ins;
        return ins;
    }
    
    void Run(byte *_memorySpace, Word *_registers, const int _textMemoryTop, const int mainLabelAddr) {
        memorySpace = _memorySpace;
        registers = _registers;
        IF_AVL = ID_AVL = EX_AVL = MEM_AVL = WB_AVL = true;
        IF_STA = ID_STA = EX_STA = MEM_STA = WB_STA = false;
        IF_ID.spare = ID_EX.spare = EX_MEM.spare = MEM_WB.spare = true;
        finished = false;
        textMemoryTop = _textMemoryTop;
        PC = mainLabelAddr;
        for (int i = 0; i < registerNum; ++i)
            registerStatus[i] = 0;
        
        while (!finished && !exited) {
            WriteBack();
            MemoryAccess();
            Execution();
            InstructionDecode();
            InstructionFetch();
        }
    }
};

#endif // MIPS_PIPELINE_HPP
