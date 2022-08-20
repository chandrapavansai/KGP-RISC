`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:29 10/08/2021
// Design Name:   mux_2_1
// Module Name:   /home/ise/COA_Laboratory/ass4_grp51/mux_2_1_test.v
// Project Name:  ass4_grp51
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_2_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//
// Assignment 6
// Semester no 5
// Group No 51
// Question no 1
// KPSM Surya
// Pavan Sai Chandra
//
//////////////////////////////////////////////////////////////////////////////////

module mux_2_1_test;

	// Inputs
	reg sel;
	reg A;
	reg B;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_2_1 uut (
		.sel(sel), 
		.A(A), 
		.B(B), 
		.o(o)
	);

	integer i;
	initial begin
		// Initialize Inputs
		sel = 0;
		A = 0;
		B = 0;
		$monitor($time,"\tsel=%b\ta=%b\tb=%b\tout=%b",sel,A,B,o);

		for(i=0;i<8;i=i+1)
		begin
			A=i[0];B=i[1];sel=i[2];#1;
		end
		$finish;

	end
      
endmodule

