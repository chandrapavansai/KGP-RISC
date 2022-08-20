The submission contains:
. a folder containing the whole project (risc-kgp)
. a folder of all the verilog files (verilog_files)
. a folder containing 2 .coe files (coe_files)

To run the whole project :
. goto folder risc-kgp
. run risc-kgp.xise
. The gcd program(gcd_risc_main.coe) is already loaded into the instruction memory hence simulate the risc_gcd_test file for the output,
  elsewise,
  to run the other coe file(datapath.coe), load it into the instruction memory (BRAM) then simulate datapath_test file for the output.


while creating the instruction memory(block RAM) :

The name should be instructionmem.xco
Type : single port block RAM
32 bit address is enabled
write depth >= 64 (to support more than 64 instructions)
No reset pin