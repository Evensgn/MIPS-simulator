#ifndef MIPS_SIMULATOR_HPP
#define MIPS_SIMULATOR_HPP

#include "mips_text_parser.hpp"
#include "include_define.hpp"

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
    
    vector<MIPS_Text_Parser::Entry> entries;
    
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
    
    Instruction EntryToInstruction(const Entry &entry) {
        switch (entry.tokenType) {
        case _add:
            break;
        
        case _addu:
            break;
        
        case _addiu:
            break;
        
        case _sub:
            break;
        
        case _subu:
            break;
        
        case _xor:
            break;
        
        case _xoru:
            break;
        
        case _neg:
            break;
        
        case _negu:
            break;
        
        case _rem:
            break;
        
        case _remu:
            break;
        
        case _mul:
            break;
        
        case _mulu:
            break;
        
        case _div:
            break;
        
        case _divu:
            break;
        
        case _li:
            break;
        
        case _seq:
            break;
        
        case _sgem:
            break;
        
        case _sgtm:
            break;
        
        case _sle:
            break;
        
        case _slt:
            break;
        
        case _sne:
            break;
        
        case _b:
            break;
        
        case _beq:
            break;
        
        case _bne:
            break;
        
        case _bge:
            break;
        
        case _ble:
            break;
        
        case _bgt:
            break;
        
        case _blt:
            break;
        
        case _beqz:
            break;
        
        case _bnez:
            break;
        
        case _blez:
            break;
        
        case _bgez:
            break;
        
        case _bgtz:
            break;
        
        case _bltz:
            break;
        
        case _j:
            break;
        
        case _jr:
            break;
        
        case _jal:
            break;
        
        case _jalr:
            break;
        
        case _la:
            break;
        
        case _lb:
            break;
        
        case _lh:
            break;
        
        case _lw:
            break;
        
        case _sb:
            break;
        
        case _sh:
            break;
        
        case _sw:
            break;
        
        case _move:
            break;
        
        case _mfhi:
            break;
        
        case _mflo:
            break;
        
        case _nop:
            break;
        
        case _syscall:
            break;        
        }
    }
    
    MIPS_Simulator();
    MIPS_Simulator(MIPS_Simulator const&);
    MIPS_Simulator& operator=(MIPS_Simulator const&);
    
public: 
    
    static MIPS_Simulator& instance() {
        static MIPS_Simulator ins;
        return ins;
    }
    
    void SimulatorInit() {
        RegisterIdxInit();
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
        entries = MIPS_Text_Parser::instance().SplitToEntries(mipsText);
        // process instructions
        for (size_t i = 0; i < entries.size(); ++i) {
            if (entries[i].entryType != dotText || entries[i].tokenType == _label)
                continue;
            *(reinterpret_cast<Instruction*>(memorySpace + textMemoryTop)) = EntryToInstruction(entries[i]);
            textMemoryTop += sizeof(Instruction);
        }
        staticDataMemoryTop = textMemoryTop;
        // process static data
        for (size_t i = 0; i < entries.size(); ++i) {
            if (entries[i].entryType != dotData || entries[i].tokenType == _label)
                continue;
            
        }
    }
    
};

#endif // MIPS_SIMULATOR_HPP
