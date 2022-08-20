`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:38 11/04/2021 
// Design Name: 
// Module Name:    linker 
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
module linker(
	input [3:0]opcode,
	input [3:0]funcode,
	output flag
    );
 assign flag=(opcode==4'b0100 & (funcode==0001));

endmodule
