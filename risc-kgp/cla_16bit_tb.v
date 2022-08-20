`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:21:23 08/29/2021
// Design Name:   cla_16_bit
// Module Name:   /home/ise/cla/cla_16bit_tb.v
// Project Name:  cla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_16_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_16bit_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] sum;
	wire cout;


	// Instantiate the Unit Under Test (UUT)
	cla_16_bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout) 

	);

	integer i,j;
	initial begin
	$monitor ($time,"\tcin=%b\ta=%b\tb=%b\tsum=%b\tcout=%b",cin,a,b,sum,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;		
		#100;
		for(i=0;i<65536;i=i+3855)
		begin 
				a=i;
				for(j=0;j<65536;j=j+3855)
					begin
					b=j;
					#1;
				end
		end
		
		cin = 1;		
		
		for(i=0;i<65536;i=i+3855)
		begin 
				a=i;
				for(j=0;j<65536;j=j+3855)
					begin
					b=j;
					#1;
				end
		end

	end
endmodule

