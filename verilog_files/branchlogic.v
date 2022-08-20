`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:27 10/30/2021 
// Design Name: 
// Module Name:    branchlogic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module branchlogic(
	input	[2:0]x,
	input carry,
	input [1:0]sign,
	output reg branch
    );
	 always @*
	 begin
			if(x==3'b110)
	 		begin
	 		branch=1;
			end else if(x==3'b001 &carry==1)
			begin
			branch=1;
			end else if(x==3'b010 &carry==0)
			begin
			branch=1;
			end else if(x==3'b011 &sign==2'b01)
			begin
			branch=1;
			end else if(x==3'b100 &sign==2'b10)
			begin
			branch=1;
			end else if(x==3'b101 & ~(sign==2'b10))
			begin
			branch=1;
			end else 
			begin
			branch=0;
			end
			
	 end


endmodule
