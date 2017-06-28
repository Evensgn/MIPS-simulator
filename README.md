# MIPS-simulator

Zhou Fan (@Evensgn)

This is a course project of PPCA 2017 (MS106), ACM Honors Class, SJTU.

## Related Documents

* [Assignment Manual](assignment-files/mips-simulator.pdf)

* [Specified Instruction Subset](documents/instructions.txt) (instructions involved in this project)

## Development Log

For my detailed development log, please check [here](Development-Log.md).

## Code Structure & Design

### Main Classes

**classes of singleton design pattern:**
* MIPS_Simulator
* MIPS_Text_Parser

### Instruction Encoding Format

In order to store instructions (within the specified instruction subset) in memory, each instruction is encoded into binary digits in the following format:

<table>
  <tr>
    <th> op </th>
    <th> rs </th>
    <th> rt </th>
    <th> rd </th>
    <th> constant or address </th>
    <th> total </th>
  </tr>
  <tr>
    <td> 1 byte </td>
    <td> 1 byte </td>
    <td> 1 byte </td>
    <td> 1 byte </td>
    <td> 4 byte </td>
    <td> 8 byte </td>
  </tr>
</table>

Each instruction is stored in memory as 8 byte of binary digits.
