#include "mips_simulator.hpp"
#include "define_switches.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

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
#ifdef DEBUG
    //cout << mipsText << endl;
#endif
    ProcessMIPSText();

    ifstream inFile("test.in");
    ofstream ansFile("test.ans");

    inFile.close();
    ansFile.close();
#ifdef TEST_ONLY
    cout << "Done." << endl;
#endif
    return 0;
}
