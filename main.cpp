#include "mips_simulator.hpp"
#include "include_define.hpp"

using namespace std;

int main()
{
    SimulatorInit();

    // read mips text from file *.s
    ifstream sFile("test.s");
    stringstream buffer;
    buffer << sFile.rdbuf();
    sFile.close();
    mipsText = buffer.str();
#ifdef DEBUG_READ_TEXT
    cout << mipsText << endl;
#endif
    ProcessMIPSText();

    ifstream inFile("test.in");
    ofstream ansFile("test.ans");

    inFile.close();
    ansFile.close();
#ifdef DEBUG
    cout << "Done." << endl;
#endif
    return 0;
}
