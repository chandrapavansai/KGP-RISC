`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:09 10/30/2021 
// Design Name: 
// Module Name:    getinstruction 
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
module getinstruction(
    input clk,
    input [31:0] pc,
    output [31:0] instruction
    );
	 
	 instructionmem ime(.clka(clk),.addra(pc),.douta(instruction));
	 
endmodule
