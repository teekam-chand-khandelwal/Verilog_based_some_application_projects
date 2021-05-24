`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:58:37 05/24/2021
// Design Name:   alu
// Module Name:   F:/teekam/teekam/alu_8_bit/alu1.v
// Project Name:  alu_8_bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu1;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [3:0] sel;

	// Outputs
	wire [7:0] out;
	wire ac;
	wire c;
	wire z;
	wire s;
	wire p;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.out(out), 
		.ac(ac), 
		.c(c), 
		.z(z), 
		.s(s), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 8'b0000_1010;
		b = 8'b1000_1111;
		sel =0;
		#5;
		sel=1;
		#5;
		sel=2;
		#5;
		sel=8;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

