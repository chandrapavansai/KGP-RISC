`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:46 10/29/2021
// Design Name:   alucontrol
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/alucontrol_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alucontrol
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alucontrol_test;

	// Inputs
	reg [3:0] funcode;
	reg [3:0] aluop;

	// Outputs
	wire [5:0] control;

	// Instantiate the Unit Under Test (UUT)
	alucontrol uut (
		.funcode(funcode), 
		.aluop(aluop), 
		.control(control)
	);

	initial begin		
		aluop = 4'b0000;
		funcode=4'b0000;#20 
		funcode=4'b0001;#20 
		funcode=4'b0010;#20 
		funcode=4'b0011;#20 
		funcode=4'b0100;#20 
		funcode=4'b0101;#20  
		
		aluop = 4'b0001;
		funcode=4'b0000;#20 
		funcode=4'b0001;#20 
		funcode=4'b0010;#20 
		funcode=4'b0011;#20 
		
		aluop = 4'b0100;
		funcode=4'b0000;#20 
		funcode=4'b0011;#20 
		
		aluop = 4'b0110;
		funcode=4'b0000;#20 
		funcode=4'b0001;#20 
		funcode=4'b0010;#20	
		
		$finish;
		#100;
        
		// Add stimulus here

	end
      
endmodule

