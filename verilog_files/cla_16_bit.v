`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:46 08/29/2021 
// Design Name: 
// Module Name:    cla_16_bit 
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
module cla_16_bit(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
    );

	wire [3:0]P,G;                           // carry propogates p and carry generates g of each bit
	wire [3:0]c;
	
	// and PP,GG which can be used for extension of 32 bit cla using 16 bit cla
	LCU l1(P,G,cin,c);
	// calculating sum using carry-look-ahead-4bit adders
	cla_4bit_aug c0(a[3:0],b[3:0],cin,sum[3:0],P[0],G[0]),
	 c1(a[7:4],b[7:4],c[0],sum[7:4],P[1],G[1]),
	 c2(a[11:8],b[11:8],c[1],sum[11:8],P[2],G[2]),
	 c3(a[15:12],b[15:12],c[2],sum[15:12],P[3],G[3]);
	 
	assign cout=c[3];
	
endmodule
