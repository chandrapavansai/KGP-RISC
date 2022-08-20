`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:24 11/13/2021
// Design Name:   Datapath
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/risc_gcd_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module risc_gcd_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire MemRead;
	wire MemWrite;
	wire MemtoReg;
	wire [3:0] opcode;
	wire regwrite;
	wire branchfinal;
	wire [4:0] reg1;
	wire [4:0] reg2;
	wire [3:0] funcode;
	wire [31:0] instru;
	wire [31:0] doutreg1;
	wire [31:0] doutreg2;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	Datapath uut (
		.clk(clk), 
		.rst(rst), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.opcode(opcode), 
		.regwrite(regwrite), 
		.branchfinal(branchfinal), 
		.reg1(reg1), 
		.reg2(reg2), 
		.funcode(funcode), 
		.instru(instru), 
		.doutreg1(doutreg1), 
		.doutreg2(doutreg2), 
		.result(result)
	);

always 
		begin
			clk=~clk;#1;
		end
	initial begin
		// Initialize Inputs
		
		clk = 0;
		rst = 1;
		#1;
		rst=0;
		#8;
		$display("-------------------------------------------------------------------------------------------------");
		$display("gcd of  %d    and %d  is :",uut.dm1.memreg[0],uut.dm1.memreg[1]);
		#991;
		$display("       \t\t       %d",uut.r1.register[30]);
		$display("-------------------------------------------------------------------------------------------------");
		$finish;
	end
      
endmodule

