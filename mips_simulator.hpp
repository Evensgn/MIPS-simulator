#ifndef MIPS_SIMULATOR_HPP
#define MIPS_SIMULATOR_HPP

#include "mips_text_parser.hpp"
#include "include_define.hpp"
#include "operation_processor.hpp"

using namespace std;

class MIPS_Simulator {
private:
    // memory management
    int textMemoryTop, staticDataMemoryTop, dynamicDataMemoryTop;
    
    map<string, int> registerIdx;
    
    // registers and memory space
    unsigned int registers[registerNum];
    byte memorySpace[maxMemoryByte];
    
    // mips source text
    string mipsText;
    
    vector<Entry> entries;
    
    unsigned int &reg(const string regName) {
#ifdef DEBUG_REGISTER_NAME
        if (registerIdx.find(regName) == registerIdx.end()) {
            cout << "Invalid register name: " << regName << endl;
            system("pause");
        }
#endif
        return registers[registerIdx[regName]];
    }
    
    void RegisterIdxInit() {
        registerIdx["$0"] = 0;
        registerIdx["$1"] = 1;
        registerIdx["$2"] = 2;
        registerIdx["$3"] = 3;
        registerIdx["$4"] = 4;
        registerIdx["$5"] = 5;
        registerIdx["$6"] = 6;
        registerIdx["$7"] = 7;
        registerIdx["$8"] = 8;
        registerIdx["$9"] = 9;
        registerIdx["$10"] = 10;
        registerIdx["$11"] = 11;
        registerIdx["$12"] = 12;
        registerIdx["$13"] = 13;
        registerIdx["$14"] = 14;
        registerIdx["$15"] = 15;
        registerIdx["$16"] = 16;
        registerIdx["$17"] = 17;
        registerIdx["$18"] = 18;
        registerIdx["$19"] = 19;
        registerIdx["$20"] = 20;
        registerIdx["$21"] = 21;
        registerIdx["$22"] = 22;
        registerIdx["$23"] = 23;
        registerIdx["$24"] = 24;
        registerIdx["$25"] = 25;
        registerIdx["$26"] = 26;
        registerIdx["$27"] = 27;
        registerIdx["$28"] = 28;
        registerIdx["$29"] = 29;
        registerIdx["$30"] = 30;
        registerIdx["$31"] = 31;
    
        registerIdx["$zero"] = 0;
        registerIdx["$at"] = 1;
        registerIdx["$v0"] = 2;
        registerIdx["$v1"] = 3;
        registerIdx["$a0"] = 4;
        registerIdx["$a1"] = 5;
        registerIdx["$a2"] = 6;
        registerIdx["$a3"] = 7;
        registerIdx["$t0"] = 8;
        registerIdx["$t1"] = 9;
        registerIdx["$t2"] = 10;
        registerIdx["$t3"] = 11;
        registerIdx["$t4"] = 12;
        registerIdx["$t5"] = 13;
        registerIdx["$t6"] = 14;
        registerIdx["$t7"] = 15;
        registerIdx["$s0"] = 16;
        registerIdx["$s1"] = 17;
        registerIdx["$s2"] = 18;
        registerIdx["$s3"] = 19;
        registerIdx["$s4"] = 20;
        registerIdx["$s5"] = 21;
        registerIdx["$s6"] = 22;
        registerIdx["$s7"] = 23;
        registerIdx["$t8"] = 24;
        registerIdx["$t9"] = 25;
        registerIdx["$k0"] = 26;
        registerIdx["$k1"] = 27;
        registerIdx["$gp"] = 28;
        registerIdx["$sp"] = 29;
        registerIdx["$fp"] = 30;
        registerIdx["$s8"] = 30;
        registerIdx["$ra"] = 31;
    
        registerIdx["$lo"] = 32;
        registerIdx["$hi"] = 33;
    }
    
public: 
    
    MIPS_Simulator() = default;
    
    void SimulatorInit() {
        RegisterIdxInit();
        TokenTypeInit();
        reg("$sp") = maxMemoryByte;
        for (int i = 0; i < registerNum; ++i) {
            if (i == 29) continue; // $sp
            registers[i] = 0;
        }
    }
    
    void ProcessMIPSText(const string &str) {
        mipsText = str;
        entries = SplitToEntries(mipsText);
        /*for (size_t i = 0; i < entries.size(); ++i) {
            if (entries[i].entryType == dotMark) continue;
            if (entries[i].tokenType == _label) continue;
            if (entries[i].entryType == dotData) {
                
            }
            else 
        }*/
    }
};
    
#endif // MIPS_SIMULATOR_HPP
