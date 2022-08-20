`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:32 10/29/2021 
// Design Name: 
// Module Name:    control 
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
module control(
	 input [3:0] opcode,
    output reg RegWrite, 
    output reg MemRead, 
    output reg MemWrite,
    output reg MemtoReg,  
	 output reg regbranch,
	 output reg AluSrc,
    output reg RegDst
    );
	 always@(*)
		begin
			
			MemWrite=((~opcode[2])&opcode[1]&opcode[0]);
			MemRead = (~opcode[2]) & (opcode[1]) & (~opcode[0])&(~opcode[3]);
			RegWrite = (~opcode[2]) & (~opcode[1] | (~opcode[0]));
			MemtoReg = (~opcode[2]) & (opcode[1]) & (~opcode[0]);
			RegDst = (~opcode[0])&opcode[1]&(~opcode[2]);
			regbranch = opcode[2];
			AluSrc = (opcode[2] | opcode[1] | opcode[0]);
		end


endmodule
