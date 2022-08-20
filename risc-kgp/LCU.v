`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:25 08/29/2021 
// Design Name: 
// Module Name:    LCU 
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
module LCU(
input [3:0]p,
input [3:0]g,
input cin,
output [3:0]c
    );


assign c[0]= g[0]|(p[0]&cin);
assign c[1]= g[1] | (p[1]&g[0]) | p[1]&p[0]&cin;
assign c[2]= g[2] | (p[2]&g[1]) | p[2]&p[1]&g[0] | p[2]&p[1]&p[0]&cin;
assign c[3]=g[3] | (p[3]&g[2]) | p[3]&p[2]&g[1] | p[3]&p[2]&p[1]&g[0] | p[3]&p[2]&p[1]&p[0]&cin;

endmodule
