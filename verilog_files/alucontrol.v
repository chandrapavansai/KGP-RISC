`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:00 10/29/2021 
// Design Name: 
// Module Name:    alucontrol 
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
module alucontrol(
		input [3:0]funcode,
		input [3:0] aluop,
		output reg [5:0]control
    );
	 	 always@(*)
	 begin
		case(aluop)
				4'b0000:
				begin
						if(funcode==4'b0000) begin
								control=6'b000000;
						end else if (funcode==4'b0001)begin
								control=6'b001000;
						end else if(funcode==4'b0010) begin
								control=6'b010000;
						end else if(funcode==4'b0011) begin
								control=6'b011000;
						end else if(funcode==4'b0100) begin
									control=6'b101000;
						end else if(funcode==4'b0101) begin
									control=6'b111000;
						end else begin
									control=6'b110000;
							end
				end
					
				4'b0001:
				begin
						if(funcode==4'b0000) begin
								control=6'b000000;
						end else if (funcode==4'b0001) begin
								control=6'b001000;
						end else if (funcode==4'b0010) begin
								control=6'b101000;
						end else if (funcode==4'b0011) begin
								control=6'b111000;
						end else begin
									control=6'b110000;
							end
				end
					
				4'b0100:
				begin
						if(funcode==4'b0000) begin
								control=6'b000110;
						end else if(funcode==4'b0001) begin
								control=6'b000110;
						end else if(funcode==4'b0011) begin
								control=6'b000010;
						end else begin
								control=6'b000001;
							end
				end

				4'b0101:
				begin
						control=6'b000110;
				end

				
				4'b0110:
				begin
						if(funcode==4'b0000) begin
								control=6'b000011;
						end else if(funcode==4'b0001) begin
								control=6'b000100;
						end else if(funcode==4'b0010)	begin
								control=6'b000101;
						end else begin
								control=6'b000000;
							end
				end
				default:control=6'b000000;
			endcase
	 end
	endmodule