`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:06 11/02/2021 
// Design Name: 
// Module Name:    mux_2_1_32bit 
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
module mux_2_1_32bit(
	input switch,
	input [31:0]A, 
	input [31:0]B,
	output [31:0]out
    );
assign out=switch?B:A;



endmodule
