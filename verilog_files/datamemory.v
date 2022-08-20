`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:37 11/02/2021 
// Design Name: 
// Module Name:    datamemory 
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
module datamemory(
		input  memread,
		input  memwrite,
		input  clk,
		input  rst,
		input	 [31:0]writedata,
		input	 [31:0]address,
		output [31:0]readdata
    );
	integer i=0;
	reg[31:0]memreg[0:63];

assign readdata=memread?memreg[address]:32'b0;	
always @(negedge clk or posedge rst) 
	begin
	/*$display("datamem %d %d",memreg[0],memreg[1]);*/
		if(rst)
		begin
			for(i=0;i<64;i=i+1)
				begin
					memreg[i]=0;
				end
		end else begin 
			if(memwrite)
			begin
				memreg[address]=writedata;
			end
		end
		
	end
endmodule

