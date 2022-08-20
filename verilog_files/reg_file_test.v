`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:21:56 11/02/2021
// Design Name:   reg_file
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/reg_file_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_test;

	// Inputs
	reg clk;
	reg write;
	reg rst;
	reg [4:0]writeaddress;
	reg [4:0] addreg1;
	reg [4:0] addreg2;
	reg [31:0] dinreg;

	// Outputs
	wire [31:0] doutreg1;
	wire [31:0] doutreg2;

	// Instantiate the Unit Under Test (UUT)
	reg_file uut (
		.clk(clk), 
		.write(write), 
		.rst(rst), 
		.writeaddress(writeaddress), 
		.addreg1(addreg1), 
		.addreg2(addreg2), 
		.dinreg(dinreg), 
		.doutreg1(doutreg1), 
		.doutreg2(doutreg2)
	);

always begin
clk=~clk;#10;
end
	initial begin
		// Initialize Inputs
		clk = 0;
		write = 0;
		rst = 1;
		addreg1 = 0;
		addreg2 = 0;
		dinreg = 0;
		writeaddress=0;
		#20;
		rst=0;
		addreg1=1;
		write = 1;
		writeaddress=1;
		addreg2 = 1;
		dinreg = 1234;
		#20;
		$display("--------------------------------------------\nvalue in reg 1 is %d\n----------------------------------------" ,uut.register[1]);
		addreg1=1;
		addreg2=1;
		write = 0;
		dinreg = 1234;
		#40;
		$finish;
        
		// Add stimulus here

	end
		// Add stimulus here

endmodule

