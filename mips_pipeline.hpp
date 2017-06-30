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
        
    } EX_MEM;
    struct {
        
    } MEM_WB;
    
    void InstructionFetch() {
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
            PC = _instInfo.address;
            PC_pending = false;
        }
        else {
            PC += sizeof(BinaryInst);
            PC_pending = false;
        }
        
        ID_EX.instInfo = _instInfo;
        ID_EX.nextInstAddr = IF_ID.nextInstAddr;
        ID_EX.spare = false;
        ID_STA = false;
        IF_ID.spare = true;
    }
    
    void Execution() {
        
    }
    
    void MemoryAccess() {
    }
    
    void WriteBack() {
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
