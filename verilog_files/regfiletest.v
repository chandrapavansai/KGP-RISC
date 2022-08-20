`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:27:48 10/28/2021
// Design Name:   register_file
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/regfiletest.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfiletest;

	// Inputs
	reg clka;
	reg [3:0] wea;
	reg [31:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		clka = 0;
		wea = 4'b0001;
		addra =32'b00000000000000000000000000000010;
		dina = 32'b00000000000000000000000000000100;
		#2;
		addra=32'b00000000000000000000000000000100;
		dina=123;
		#2;
		addra=4;
		dina=32'b11111111111111111111111111111111;
		
		
		#100;
        
		// Add stimulus here

	end
	
always
begin
#1; clka = ~clka;
end
      
endmodule

