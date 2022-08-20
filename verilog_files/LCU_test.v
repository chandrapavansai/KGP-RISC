`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:05:49 08/30/2021
// Design Name:   LCU
// Module Name:   /home/ise/cla_adders/LCU_test.v
// Project Name:  cla_adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LCU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LCU_test;

	// Inputs
	reg [3:0] p;
	reg [3:0] g;
	reg cin;
	wire [3:0]c;
	wire PP;
	wire GG;
	// Instantiate the Unit Under Test (UUT)
	LCU uut (
		.p(p),
		.g(g),
		.cin(cin),
		.c(c),
		.PP(PP),
		.GG(GG)
	);

integer i,j;
	initial begin
		// Initialize Inputs
		cin = 0;

		$monitor ($time,"\tcin=%b\tp=%b\tg=%b\tC[3]=%b\tC[2]=%b\tC[1]=%b\tC[0]=%b\tPP=%b\tGG=%b",cin,p,g,c[3],c[2],c[1],c[0],PP,GG);
		
		for(i=0;i<16;i=i+1)
		begin
			p = i;
			for(j=0;j<16;j=j+1)
			begin
				g = j;
				#1;
			end
		end
		
		cin = 1;
		for(i=0;i<16;i=i+1)
		begin
			p = i;
			for(j=0;j<16;j=j+1)
			begin
				g = j;
				#1;
			end
		end
        
		// Add stimulus here

	end
      
endmodule

