#include "mips_simulator.hpp"
#include "include_define.hpp"

using namespace std;

int main(int argc, char *argv[])
{
    MIPS_Simulator::instance().SimulatorInit();
    // read mips text from file *.s
    if (argc < 2) {
        cout << "fatal : no input file" << endl;
        return 0;
    }
    ifstream sFile(argv[1]);
    //ifstream sFile("function_test-huyuncong.s");
    stringstream buffer;
    buffer << sFile.rdbuf();
    sFile.close();
    string mipsSourceText = buffer.str();
#ifdef DEBUG_READ_TEXT
    cout << mipsSourceText << endl;ad(TExecution
#endif
    MIPS_Simulator::instance().ProcessMIPSText(mipsSourceText);
    MIPS_Simulator::instance().RunPipeline();
#ifdef DEBUG
    cout << "\nDone." << endl;
#endif
    return 0;
}
