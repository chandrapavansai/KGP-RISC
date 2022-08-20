`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:04:06 10/30/2021
// Design Name:   getinstruction
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/getinstruction_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: getinstruction
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module getinstruction_test;

	// Inputs
	reg clk;
	reg [31:0] pc;

	// Outputs
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	getinstruction uut (
		.clk(clk), 
		.pc(pc), 
		.instruction(instruction)
	);
always begin 
clk=~clk;#10;
end
	initial begin
		// Initialize Inputs
		clk = 0;
		pc = 0;
		#20;
		pc = 4;
		#20;$finish;
        
		// Add stimulus here

	end
      
endmodule

