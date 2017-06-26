#include "mips_simulator.hpp"
#include "mips_text_processor.hpp"
#include <iostream>
#include <iomanip>
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
#ifdef TEST_ONLY
    cout << mipsText << endl;
#endif

    ifstream inFile("test.in");
    ofstream ansFile("test.ans");

    inFile.close();
    ansFile.close();
#ifdef TEST_ONLY
    cout << "Done." << endl;
#endif
    return 0;
}
