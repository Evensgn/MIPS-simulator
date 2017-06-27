# MIPS-simulator
Course project of PPCA 2017 (MS106), ACM Honors Class, SJTU.

## Development Log
For my detailed development log, please check [here](Development-Log.md).

## Code Structure & Design
### Instruction Encoding Format
In order to store instructions in memory, every instruction is encoded into binary digits in the following format:
<table>
  <tr>
    <th> op </th>
    <th> rs </th>
    <th> rt </th>
    <th> rd </th>
    <th> constant or address </th>
    <th bgcolor="red"> total </th>
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