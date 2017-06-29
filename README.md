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
* MIPS_Simulator
* MIPS_Text_Parser
* Entry_Processor

### Instruction Encoding Format

In order to store instructions (within the specified instruction subset) in memory, each instruction is encoded into binary digits in the following format:

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
