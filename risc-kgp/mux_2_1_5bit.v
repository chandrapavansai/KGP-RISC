`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:46 11/02/2021 
// Design Name: 
// Module Name:    mux_2_1_5bit 
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
module mux_2_1_5bit(
	input regdst,
	input [4:0]addreg1, 
	input [4:0]addreg2,
	output [4:0]writeaddress
    );
assign writeaddress=regdst?addreg2:addreg1;

endmodule
