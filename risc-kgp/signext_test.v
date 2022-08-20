`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:08:56 11/02/2021
// Design Name:   sign16extn
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/signext_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign16extn
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signext_test;

	// Inputs
	reg [15:0] imm;

	// Outputs
	wire [31:0] eimm;

	// Instantiate the Unit Under Test (UUT)
	sign16extn uut (
		.imm(imm), 
		.eimm(eimm)
	);

	initial begin
		imm = 16'b1111010101010101;#10;
	$finish;
	end
      
endmodule

