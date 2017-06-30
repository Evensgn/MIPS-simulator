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
