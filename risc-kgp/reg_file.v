`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:25 10/31/2021 
// Design Name: 
// Module Name:    reg_file 
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

module reg_file(
  input clk,
  input write,
  input rst,
  input [4:0]writeaddress,
  input [4:0]addreg1,
  input [4:0]addreg2,
  input [31:0]dinreg,
  output [31:0]doutreg1,
  output [31:0]doutreg2
);
reg signed [31:0]register[31:0];
integer i=0;

	assign doutreg1=rst?32'b0:register[addreg1];
	assign doutreg2=rst?32'b0:register[addreg2];

	always @(negedge clk or posedge rst) 
	begin
		/*$display("reg            %d %d %d %d",register[1],register[2],register[5],register[6]);*/
		if(rst)
		begin
			for(i=0;i<32;i=i+1)
				begin
					register[i]=0;
				end
		end else begin 
			if(write)
			begin
			register[writeaddress]=dinreg;
			end 
		end
	end
endmodule
