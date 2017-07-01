#include "mips_simulator.hpp"
#include "include_define.hpp"

using namespace std;

int main()
{
    MIPS_Simulator::instance().SimulatorInit();
    
    // read mips text from file *.s
    ifstream sFile("test.s");
    stringstream buffer;
    buffer << sFile.rdbuf();
    sFile.close();
    string mipsSourceText = buffer.str();
#ifdef DEBUG_READ_TEXT
    cout << mipsSourceText << endl;
#endif
    MIPS_Simulator::instance().ProcessMIPSText(mipsSourceText);
    MIPS_Simulator::instance().RunPipeline();
        
    ifstream inFile("test.in");
    ofstream ansFile("test.ans");

    inFile.close();
    ansFile.close();
#ifdef DEBUG
    cout << "Done." << endl;
#endif
    return 0;
}
