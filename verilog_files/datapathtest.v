`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:00:28 11/03/2021
// Design Name:   Datapath
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/datapathtest.v
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

module datapathtest;

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

		clk = 0;
		rst = 1;
		#1;
		rst=0;
		#2;
		$display("%d is in register 1",uut.r1.register[1]);
		#2;
		$display("%d is in register 2",uut.r1.register[2]);
		#2;
		$display("compliment of 1 (%b) is in register 3",uut.r1.register[3]);
		#2;
		$display("test fot shra ,value register 3 is shifted by 1,is %b ",uut.r1.register[3]);
		#2;
		$display("test fot shrl ,value register 3 is shifted by 1,is %b ",uut.r1.register[3]);
		#2;
		$display("test fot shll ,value register 3 is shifted by 1,is %b ",uut.r1.register[3]);
		#2;
		$display("xor of register 1 and register 2 %d",uut.r1.register[1]);
		#2;
		$display("doesn't brach as bnz is called for register 1 and its is 0 ");
		#2;
		$display("at last bl and bz are called to test them which loops them indefinetly");
		#1;
	end
      
endmodule

