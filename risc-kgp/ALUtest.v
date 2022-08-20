`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:52:02 10/30/2021
// Design Name:   ALU
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/ALUtest.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtest;

	// Inputs
	reg [31:0] reg1;
	reg [31:0] reg2;
	reg [2:0] x;

	// Outputs
	wire [1:0] sign;
	wire cout;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.reg1(reg1), 
		.reg2(reg2), 
		.x(x), 
		.sign(sign), 
		.cout(cout), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		reg1 = -2;
		reg2 = -4;
		x = 2'b00;
		#10;
		reg1 = 1;
		reg2 = 0;
		x = 2'b00;
		#10
		reg1 = 0;
		reg2 = 0;
		x = 2'b00;
		#10
		
		
		reg1 = 2;
		reg2 = 4;
		x = 2'b01;
		#10;
		
		reg1 = 3;
		reg2 = 7;
		x = 2'b10;
		#10;
		
		reg1 = 2;
		reg2 = 7;
		x = 2'b11;
		#10;
		

		reg1 = 2;
		reg2 = 4;
		x = 3'b101;
		#10;
		
		reg1 = -3;
		reg2 = 1;
		x = 3'b110;
		#10;
		
		reg1 = -256;
		reg2 = 2;
		x = 3'b111;
		#10;
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

