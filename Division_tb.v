`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:00 05/06/2011
// Design Name:   Division
// Module Name:   C:/Program Files/Xilinx91i/Division/Division_tb.v
// Project Name:  Division
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Division_tb_v;

	// Inputs
	reg [31:0] dividend;
	reg [31:0] divider;
	reg sign;
	reg clk;

	// Outputs
	wire ready;
	wire [31:0] quotient;
	wire [31:0] remainder;
	
	// Variables
	integer i ; 

	// Instantiate the Unit Under Test (UUT)
	Division uut (
		.ready(ready), 
		.quotient(quotient), 
		.remainder(remainder), 
		.dividend(dividend), 
		.divider(divider), 
		.sign(sign), 
		.clk(clk)
	);

	initial begin
	//Check for unsigned division
	clk = 0;
	dividend = 32'd4;
	divider = 32'd2;
	sign = 0;
	for(i=0;i<66;i=i+1)
	begin
	clk = ~clk;
	#100;
	end
	
	//To check for signed division
	dividend = 32'd8;
	divider = 32'd2;
	sign = 1;
	for(i=0;i<66;i=i+1)
	begin
	clk = ~clk;
	#100;
	end
	
	//To check for remainder 
	dividend = 32'd16;
	divider = 32'd5;
	sign = 0;
	for(i=0;i<66;i=i+1)
	begin
	clk = ~clk;
	#100;
	end
	
	end
	
	
      
endmodule
