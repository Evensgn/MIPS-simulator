## Development Log of Evensgn/MIPS-simulator

Zhou Fan (@Evensgn)

**June 26**
* Learned some preliminary knowledge about MIPS and CPU from the book *Computer Organization and Design*
* Searched something about `five stage pipeline`
* Designed code/file structure of this project
* Wrote part of the parser of MIPS text

**June 27**
* Learned something about MIPS memory organization and different hazards
* Changed three classes into singleton design pattern, taking the advice of Yunwei
* Designed instruction encoding format
* Finished the parser

**June 28**
* Finished the entry processor, which stores all instructions into memory and deal with static data memory
* The correctness of static data management remains to be verified later

**June 29**
* Learned forwarding, a method to avoid stalling in "read after write" case of data hazard
* Learned about `union` from our TA Sidi, and started using it to manage binary data in memory
* Started writing the pipeline part

**June 30**
* Designed the code pattern of pipeline
* Wrote the `Instruction Fetch` stage
* Wrote the `Instruction Decode` stage

**July 1**
* Wrote the `Execution` stage
* Wrote the `Memory Access` stage
* Wrote the `Write Back` stage
* Started debugging the pipeline

**July 2**
* Kept debugging the pipeline
* The simulator successfully runned a MIPS code for the first time ;-)
* Tried the test data and passed only third of them :-(

**July 3**
* Kept debugging the whole program
* Last two test cases was left to be passed
* Found the bug, passed all test cases
* Pushed the first useable version
* Started writing the branch predictor
* Finished the `Two-Level Adaptive Predictor`

**July 4**
* Found a bug in branch predictor and fixed it, the average prediction accuracy reached 97%
* Started writing a multi-threading version of the five stage pipeline
