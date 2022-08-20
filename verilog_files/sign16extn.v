`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:08 11/02/2021 
// Design Name: 
// Module Name:    sign16extn 
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
module sign16extn(
	input [15:0] imm,
	output [31:0]eimm
    );
assign eimm={{16{imm[15]}},imm};
endmodule
