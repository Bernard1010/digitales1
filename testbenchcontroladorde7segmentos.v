`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Ricardo Martínez Vallejos
//
// Create Date:   18:16:53 03/07/2016
// Design Name:   controladordelos7seg
// Module Name:   C:/Xilinx/testbenchcontroladorde7segmentos.v
// Project Name:  P
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controladordelos7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchcontroladorde7segmentos;

	// Inputs
	reg modo_i;
	reg [2:0] valorf_i;
	reg [3:0] valorC_i;
	reg clk_i;
	reg reset;

	// Outputs
	wire A;
	wire B;
	wire C;
	wire D;
	wire E;
	wire F;
	wire G;
	wire An0;
	wire An1;
	wire An2;
	wire An3;

	// Instantiate the Unit Under Test (UUT)
	controladordelos7seg uut (
		.modo_i(modo_i), 
		.valorf_i(valorf_i), 
		.valorC_i(valorC_i), 
		.clk_i(clk_i), 
		.reset(reset), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.An0(An0), 
		.An1(An1), 
		.An2(An2), 
		.An3(An3)
	);

	initial begin
		// Initialize Inputs
		modo_i = 0;	valorf_i = 3'b000; valorC_i = 0;clk_i = 0; reset = 0;#100
		modo_i = 1'b0;	valorf_i = 3'b000; valorC_i = 0; reset = 0;#100
		modo_i = 0;	valorf_i = 3'b001; valorC_i = 0; reset = 0;#100
		modo_i = 1;	valorf_i = 3'b001; valorC_i = 0; reset = 0;#100
		modo_i = 0;	valorf_i = 3'b010; valorC_i = 0; reset = 0;#100
		modo_i = 1;	valorf_i = 3'b010; valorC_i = 0; reset = 0;#100
		modo_i = 0;	valorf_i = 3'b011; valorC_i = 0; reset = 0;#100
		modo_i = 1;	valorf_i = 3'b011; valorC_i = 0; reset = 0;#100

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always 
	begin
	#100 clk_i=~clk_i;
	end
      
endmodule

