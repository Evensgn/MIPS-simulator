#ifndef MIPS_PIPELINE_HPP
#define MIPS_PIPELINE_HPP

#include "include_define.hpp"

class MIPS_Pipeline {
private:
    byte *memorySpace;
    Word *registers;
    int PC;
    Instruction inst;
    bool IF_AVL, ID_AVL, EX_AVL, MEM_AVL, WB_AVL;
    int registerStatus[registerNum];
    
    void InstructionFetch() {
        inst = *(reinterpret_cast<Instruction*>(memorySpace + PC));
        
    }
    
    void InstructionDecode() {
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
    
    void Run(byte *_memorySpace, Word *_registers, const int mainLabelAddr) {
        memorySpace = _memorySpace;
        registers = _registers;
        PC = mainLabelAddr;
        IF_AVL = ID_AVL = EX_AVL = MEM_AVL = WB_AVL = true;
        
    }
};

#endif // MIPS_PIPELINE_HPP
