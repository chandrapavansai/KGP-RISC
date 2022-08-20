`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:26:07 10/30/2021
// Design Name:   instructiondec
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/instructiondectest.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instructiondec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instructiondectest;

	// Inputs
	reg [31:0] instr;

	// Outputs
	wire [3:0] opcode;
	wire [4:0] reg1;
	wire [4:0] reg2;
	wire [15:0] imm;
	wire [3:0] funcode;

	// Instantiate the Unit Under Test (UUT)
	instructiondec uut (
		.instr(instr), 
		.opcode(opcode), 
		.reg1(reg1), 
		.reg2(reg2), 
		.imm(imm), 
		.funcode(funcode)
	);

	initial begin
		// Initialize Inputs
		instr = 32'b00000101010101010101010100100100 ;
			#10;
		instr = 32'b00010101010101010101010100100100 ;
			#10;
		instr = 32'b00100101010101010101010100100100 ;
			#10;
		instr = 32'b00110101010101010101010100100100 ;
			#10;
		instr = 32'b01000101010101010101010100100100 ;
			#10;
		instr = 32'b01010101010101010101010100100100 ;
			#10;
		instr = 32'b01100101010101010101010100100100 ;
			#10;
			$finish;

        
		// Add stimulus here

	end
      
endmodule

