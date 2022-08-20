`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:49 10/30/2021 
// Design Name: 
// Module Name:    program_counter 
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
module program_counter(
    input clk,
    input rst,
    input Branch,
    input [31:0] L,
    output reg [31:0] pc
    );

	always @(negedge clk or posedge rst) 
	begin
		if(rst) begin
			pc=12'd0;
		end
		else begin
			if(Branch)
				pc=L; 
			else
				pc=pc+4'b0100; 
		end
	end
endmodule
