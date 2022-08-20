`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:39:14 11/14/2021
// Design Name:   control
// Module Name:   /home/ise/share/prok/risc-kgp/controltest.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controltest;

	// Inputs
	reg [3:0] opcode;

	// Outputs
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire MemtoReg;
	wire regbranch;
	wire AluSrc;
	wire RegDst;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.opcode(opcode), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.regbranch(regbranch), 
		.AluSrc(AluSrc), 
		.RegDst(RegDst)
	);
initial begin
$monitor("%d RegWrite=%d,MemRead=%d,MemWrite=%d,MemtoReg=%d,regbranch=%d,AluSrc=%d,RegDst=%d ",$time/10,
     RegWrite, 
    MemRead, 
    MemWrite,
    MemtoReg,  
	 regbranch,
	AluSrc,
     RegDst
		);// Initialize Inputs

		opcode=4'b0000;
		#10;
		opcode=4'b0001;
		#10;
		opcode=4'b0010;
		#10;
		opcode=4'b0011;
		#10;
		opcode=4'b0100;
		#10;
		opcode=4'b0101;
		#10;
		opcode=4'b0110;
		#10
		$finish;
		
        
		// Add stimulus here

	end
      
endmodule


