`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:01 10/30/2021
// Design Name:   program_counter
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/program_counter_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: program_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module program_counter_test;

	// Inputs
	reg clk;
	reg rst;
	reg Branch;
	reg [31:0] L;

	// Outputs
	wire [31:0] pc;

	// Instantiate the Unit Under Test (UUT)
	program_counter uut (
		.clk(clk), 
		.rst(rst), 
		.Branch(Branch), 
		.L(L), 
		.pc(pc)
	);
	always begin
	clk=~clk;#10;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		Branch = 0;
		L = 0;
		rst = 1;#10;
		rst=0;

		#100;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

