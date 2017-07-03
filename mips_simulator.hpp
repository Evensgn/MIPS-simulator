#ifndef MIPS_SIMULATOR_HPP
#define MIPS_SIMULATOR_HPP

#include "include_define.hpp"
#include "mips_text_parser.hpp"
#include "mips_entry_processor.hpp"
#include "mips_pipeline.hpp"

using namespace std;

class MIPS_Simulator {
private:
    // memory management
    int textMemoryTop, staticDataMemoryTop, dynamicDataMemoryTop;
    int mainLabelAddr;
    
    // registers and memory space
    Word registers[registerNum];
    byte memorySpace[maxMemoryByte];
    
    // mips source text
    string mipsText;
    
    vector<Entry> entries;
    
    Word &reg(const string regName) {
#ifdef DEBUG_REGISTER_NAME
        if (MIPS_Entry_Processor::instance().registerIdx.find(regName) == MIPS_Entry_Processor::instance().registerIdx.end()) {
            cout << "Invalid register name: " << regName << endl;
            system("pause");
        }
#endif
        return registers[MIPS_Entry_Processor::instance().registerIdx[regName]];
    }
    
    MIPS_Simulator() = default;
    MIPS_Simulator(MIPS_Simulator const&);
    MIPS_Simulator& operator=(MIPS_Simulator const&);
    
public: 
    
    static MIPS_Simulator& instance() {
        static MIPS_Simulator ins;
        return ins;
    }
    
    void SimulatorInit() {
        MIPS_Entry_Processor::instance().RegisterIdxInit();
        MIPS_Text_Parser::instance().TokenTypeInit();
        reg("$sp") = maxMemoryByte;        
        textMemoryTop = 0;
        for (int i = 0; i < registerNum; ++i) {
            if (i == 29) continue; // $sp
            registers[i] = 0;
        }
    }
    
    void ProcessMIPSText(const string &str) {
        mipsText = str;
        MIPS_Text_Parser::instance().SplitToEntries(mipsText, entries);
        MIPS_Entry_Processor::instance().ProcessEntries(entries, memorySpace, textMemoryTop, staticDataMemoryTop, dynamicDataMemoryTop, mainLabelAddr);
    }
    
    void RunPipeline() {
        MIPS_Pipeline::instance().Run(memorySpace, registers, textMemoryTop, dynamicDataMemoryTop, mainLabelAddr);
    }
};

#endif // MIPS_SIMULATOR_HPP
