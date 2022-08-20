`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:25 10/30/2021 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(
	input clk,
	input rst,
	output MemRead,
	output MemWrite,
	output MemtoReg,
	output [3:0]opcode,
	output regwrite,
	output branchfinal,
	output [4:0]reg1,
	output [4:0]reg2,
	output [3:0]funcode,
	output [31:0]instru,
	output [31:0]doutreg1,
	output [31:0]doutreg2,
	output [31:0]result
    );
	 wire [1:0]sign;
	 wire cout;
	 wire [31:0]dinreg;
	 wire branch;
	 wire [5:0] control;
	 wire [31:0]pc;
	 wire [2:0]AluOp;
	 wire RegDst;
	 wire flag;
	 wire [4:0]finalwriteaddress;
	 wire [31:0]out;
	 wire [31:0]extimm;
	 wire [15:0]imm;
	 wire finalregwrite;
	 wire [31:0]readdata;
	 wire [31:0]writedata;
	 wire [4:0]writeaddress;

	program_counter p1(.clk(clk),.rst(rst),.Branch(branchfinal),.L(dinreg),.pc(pc));
	getinstruction g1(clk, pc,instru);
	instructiondec dec1(instru,opcode,reg1,reg2,imm,funcode);
	mux_2_1_32bit m4(flag,dinreg,pc+4,writedata);
	mux_2_1_5bit m5(flag,writeaddress,5'b11111,finalwriteaddress);
	linker l1(opcode,funcode,flag);
	sign16extn ext1(imm,extimm);
	or(finalregwrite,regwrite,flag);
	control c1(opcode, regwrite, MemRead,  MemWrite,MemtoReg,branch,AluSrc, RegDst);
	alucontrol aluc1(funcode,opcode,control);
	mux_2_1_5bit m1(RegDst,reg1,reg2,writeaddress);
	mux_2_1_32bit m2(	AluSrc,doutreg2,extimm,out);
	mux_2_1_32bit m3(MemtoReg,result,readdata,dinreg);
	reg_file r1(clk,finalregwrite,rst,finalwriteaddress,reg1,reg2,writedata,doutreg1,doutreg2);
	ALU alu1(doutreg1,out,control[5:3],branch,rst,clk,sign,cout,result);
	branchlogic bl1(control[2:0],cout,sign,branchfinal);
	datamemory dm1(MemRead,MemWrite,clk,rst,doutreg2,result,readdata);



endmodule
