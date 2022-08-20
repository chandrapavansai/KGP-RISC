`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:55 10/30/2021
// Design Name:   branchlogic
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/branchlogictest.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: branchlogic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module branchlogictest;

	// Inputs
	reg [2:0] x;
	reg carry;
	reg [1:0]sign;

	// Outputs
	wire branch;

	// Instantiate the Unit Under Test (UUT)
	branchlogic uut (
		.x(x), 
		.carry(carry), 
		.sign(sign), 
		.branch(branch)
	);

	initial begin
		// Initialize Inputs
			sign=0;
			x=3'b001;
			carry=1;
			#10;
			
			x=3'b010 ;
			carry=0;
			#10;
			
			x=3'b011; 
			sign=2'b01;
			#10;
			
			x=3'b100;
			sign=2'b10;
			#10;
			
			x=3'b101;
			sign=2'b10;
			#10;
			x=3'b101;
			sign=2'b00;
			#10;

        $finish;
		// Add stimulus here

	end
      
endmodule

