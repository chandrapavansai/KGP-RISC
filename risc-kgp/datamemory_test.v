`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:58 11/02/2021
// Design Name:   datamemory
// Module Name:   /home/ise/share/risc-kgp/risc-kgp/datamemory_test.v
// Project Name:  risc-kgp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datamemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datamemory_test;

	// Inputs
	reg memread;
	reg memwrite;
	reg clk;
	reg rst;
	reg [31:0] writedata;
	reg [31:0] address;

	// Outputs
	wire [31:0] readdata;

	// Instantiate the Unit Under Test (UUT)
	datamemory uut (
		.memread(memread), 
		.memwrite(memwrite), 
		.clk(clk), 
		.rst(rst), 
		.writedata(writedata), 
		.address(address), 
		.readdata(readdata)
	);
	integer i=0;
always begin
clk=~clk;#10;
end
	initial begin
		// Initialize Inputs
		memread = 0;
		memwrite = 0;
		clk = 0;
		rst = 1;
		writedata = 0;
		address = 0;
		#10;
		rst=0;
		address=0;
		memwrite=1;
		memread=0;
		writedata=123;
		#20
		address=0;
		memwrite=0;
		memread=1;
		writedata=123;
		#20
		for(i=0;i<10;i=i+1)
		begin
			address=i;
			memwrite=1;
			memread=0;
			writedata=i;#20;
		end
		$finish;
		
        
		// Add stimulus here

	end
      
endmodule

