`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:12 10/30/2021 
// Design Name: 
// Module Name:    instructiondec 
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
module instructiondec(
		input [31:0]instr,
		output reg [3:0]opcode,
		output reg [4:0]reg1,
		output reg [4:0]reg2,
		output reg [15:0]imm,
		output reg [3:0]funcode
    );

	 wire [3:0]opc;
	 assign opc=instr[31:28];
	 always @*
	 begin
		if(opc==0000)
		begin
			reg1=instr[27:23];
			reg2=instr[22:18];
			 opcode=instr[31:28];
			funcode=instr[17:14];
			imm=0;
		end else if(opc==4'b0001)
		begin
			reg1=instr[27:23];
			reg2=0;
			 opcode=instr[31:28];
			imm=instr[22:7];
			funcode=instr[6:3];
			
		end else if(opc==4'b0010)
		begin
			reg2=instr[27:23];
			reg1=instr[22:18];
			imm=instr[17:2];
			 opcode=instr[31:28];
			funcode=0;
		end else if(opc==4'b0011)
		begin
			reg2=instr[27:23];
			reg1=instr[22:18];		
			imm=instr[17:2];
			 opcode=instr[31:28];
			funcode=0;
			
		end else if(opc==4'b0100)
		begin
			imm=instr[27:12];
			reg1=0;
			reg2=0;
			 opcode=instr[31:28];
			funcode=instr[11:8];
		end else if(opc==4'b0101)
		begin
			reg1=instr[27:23];
			imm=0;
			reg2=0;
			 opcode=instr[31:28];
			funcode=0;
		end else if(opc==4'b0110)
		begin
			reg1=instr[27:23];
			reg2=0;
			imm=instr[22:7];
			 opcode=instr[31:28];
			funcode=instr[6:3];
		end
		else 
		begin
			reg1=0;
			imm=0;
			reg2=0;
			funcode=0;
			 opcode=instr[31:28];
		end
	end

endmodule
