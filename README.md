# MIPS-simulator

Zhou Fan (@Evensgn)

This is a course project of PPCA 2017 (MS106), ACM Honors Class, SJTU.

## Related Documents

* [Assignment Manual](assignment-files/mips-simulator.pdf)
* [Specified Instruction Subset](documents/instructions.txt) (instructions involved in this project)

## Development Log

For my detailed development log, please [check it out here](Development-Log.md).

## Code Structure & Design

### Main Classes

**classes of singleton design pattern:**
* `MIPS_Simulator` : Core of the whole simulator
* `MIPS_Text_Parser` : Parse the MIPS text into entries
* `MIPS_Entry_Processor` : Process entries, store instruction in memory and manage static data
* `MIPS_Pipeline` : Pipeline to execute MIPS instructions

### Branch Prediction

Branch prediction part is contained in the git branch `branch-prediction`.

For branch instructions, this simulator uses an **Two-Level Adaptive Predictor** with `n == 4`. 

> A two-level adaptive predictor remembers the history of the last n occurrences of the branch and uses one saturating counter for each of the possible 2^n history patterns.
> 
> Branch Predictor - Wikipedia

The finished branch predictor has an **average prediction accuracy of 97%**, which is rather satisfying.

### Instruction Encoding Format

In order to store instructions (within the specified instruction subset) in memory, each instruction is encoded into binary digits in the following format (To simplify the encoding/decoding process, the format is different from standard MIPS intruction encoding format):

<table>
  <tr>
    <th> op </th>
    <th> rs </th>
    <th> rt </th>
    <th> rd </th>
    <th> constant </th>
    <th> offset </th>
    <th> address </th>
    <th> total </th>
  </tr>
  <tr>
    <td> 1 bytes </td>
    <td> 1 bytes </td>
    <td> 1 bytes </td>
    <td> 1 bytes </td>
    <td> 4 bytes </td>
    <td> 4 bytes </td>
    <td> 4 bytes </td>
    <td> 16 bytes </td>
  </tr>
</table>

Each instruction is stored in memory as 16 bytes of binary digits.

The default value of `rd`, `rs` and `rt` is 255 so that:
* In some instructions, `Src2` may either be a register `rt` or an immediate number `constant`, and if `Scr2` is `constant`, `rt == 255`.
* For `mul`, `mulu`, `div` and `divu`, if the instruction is in format of `op rs rt`, `rd == 255`.

### Five Stage Pipeline

#### Stages
* **Instruction Fetch (IF)** : get instruction (binary code) from memory
* **Instruction Decode (ID)** : translate binary code into instruction and read involved registers
* **Execution (EX)** : perform calculation operation, compute address
* **Memory Access (MEM)** : access memory if needed
* **Write Back (WB)** : update register value

## References
* *Computer Organization and Design, The Hardware/Software Interface, Third Edition*
* [Tutorial about pipeline, Iowa State University](https://web.cs.iastate.edu/~prabhu/Tutorial/PIPELINE/dataHaz.html#example)
* [MIPS Pipeline, Hakim Weatherspoon, Cornell University, 2012](http://www.cs.cornell.edu/courses/cs3410/2012sp/lecture/09-pipelined-cpu-i-g.pdf)
* [Branch Predictor - Wikipedia](https://en.wikipedia.org/wiki/Branch_predictor)
