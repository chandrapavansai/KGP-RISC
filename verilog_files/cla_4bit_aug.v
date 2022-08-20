`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:25 08/29/2021 
// Design Name: 
// Module Name:    cla_4bit_aug 
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
module cla_4bit_aug(
input [3:0]a,
input [3:0]b,
input cin,

output [3:0] sum,
output P,G);
wire [2:0]c;
wire [3:0]p,g;

assign p=a^b;//propagate
assign g=a&b; //generate
 
//c[i]=g[i-1]|p[i-1]c[i-1]
//c[0] is taken as cin to 4 bit adder
 
assign c[0]= g[0]|(p[0]&cin);
assign c[1]= g[1] | (p[1]&g[0]) | p[1]&p[0]&cin;
assign c[2]= g[2] | (p[2]&g[1]) | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin;

assign P=p[0]&p[1]&p[2]&p[3];
assign G=g[3] | (p[3]&g[2]) | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0];
xor x5(sum[0],p[0],cin),           
		 x6(sum[1],p[1],c[0]),
		 x7(sum[2],p[2],c[1]),
		 x8(sum[3],p[3],c[2]);



endmodule
