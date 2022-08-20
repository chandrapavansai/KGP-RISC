`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:01 08/29/2021
// Design Name:   cla_4bit_aug
// Module Name:   /home/ise/cla/cla_4bit_aug_tb.v
// Project Name:  cla
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_4bit_aug
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_4bit_aug_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire P;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	cla_4bit_aug uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.P(P), 
		.G(G)
	);

	integer i;
	initial begin
		$monitor ($time,"\tcin=%b\ta=%b\tb=%b\tsum=%b\tP=%b\tG=%b",cin,a,b,sum,P,G);
		a = 0;
		b = 0;
			
		   cin = 0;		
        for(i=0;i<256;i=i+1)
		  begin 
		  {a,b}=i;#1;
		  end
		  
		  cin=1;
		  for(i=0;i<256;i=i+1)
		  begin 
		  {a,b}=i;#1;
		  end

	end
      
endmodule

