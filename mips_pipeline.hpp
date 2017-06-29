#ifndef MIPS_PIPELINE_HPP
#define MIPS_PIPELINE_HPP

#include "include_define.hpp"

class MIPS_Pipeline {
private:
    byte *memorySpace;
    Word *registers;
    int mainLabelAddr;
    
    void InstructionFetch() {
        
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
    
    void Run(byte *_memorySpace, Word *_registers, const int _mainLabelAddr) {
        memorySpace = _memorySpace;
        registers = _registers;
        mainLabelAddr = _mainLabelAddr;
    }
};

#endif // MIPS_PIPELINE_HPP
