#include <iostream>
#include <map>
#include <string>

using namespace std;

map<string, int> registerIdx;

void SimulatorInit() {
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

    registerIdx["$"] = 0;
    registerIdx["$"] = 1;
    registerIdx["$"] = 2;
    registerIdx["$"] = 3;
    registerIdx["$"] = 4;
    registerIdx["$"] = 5;
    registerIdx["$"] = 6;
    registerIdx["$"] = 7;
    registerIdx["$"] = 8;
    registerIdx["$"] = 9;
    registerIdx["$"] = 10;
    registerIdx["$"] = 11;
    registerIdx["$"] = 12;
    registerIdx["$"] = 13;
    registerIdx["$"] = 14;
    registerIdx["$"] = 15;
    registerIdx["$"] = 16;
    registerIdx["$"] = 17;
    registerIdx["$"] = 18;
    registerIdx["$"] = 19;
    registerIdx["$"] = 20;
    registerIdx["$"] = 21;
    registerIdx["$"] = 22;
    registerIdx["$"] = 23;
    registerIdx["$"] = 24;
    registerIdx["$"] = 25;
    registerIdx["$"] = 26;
    registerIdx["$"] = 27;
    registerIdx["$"] = 28;
    registerIdx["$"] = 29;
    registerIdx["$"] = 30;
    registerIdx["$"] = 31;
}

int main(int argc, char *argv[])
{
    for (int i = 0; i < 32; ++i)
        cout << "registerIdx[\"$\"] = " << i << ";\n";
    //SimulatorInit();
    return 0;
}
