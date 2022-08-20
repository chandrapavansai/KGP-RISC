`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:50 10/29/2021 
// Design Name: 
// Module Name:    cla_32_bit 
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
module cla_32_bit(
	 input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
    );
	wire carry1;
	cla_16_bit c1(a[15:0],b[15:0],cin,sum[15:0],carry1),
	c2(a[31:16],b[31:16],carry1,sum[31:16],cout);

endmodule
