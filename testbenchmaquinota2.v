`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Ricardo Martínez Vallejos
//
// Create Date:   09:46:35 03/01/2016
// Design Name:   maquinota2
// Module Name:   C:/Xilinx/testbenchmaquinota2.v
// Project Name:  P
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: maquinota2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchmaquinota2;

	// Inputs
	reg reset;
	reg clock;
	reg A0;
	reg B0;
	reg C0;
	reg D0;
	reg E0;
	reg F0;
	reg G0;
	reg A1;
	reg B1;
	reg C1;
	reg D1;
	reg E1;
	reg F1;
	reg G1;
	reg A2;
	reg B2;
	reg C2;
	reg D2;
	reg E2;
	reg F2;
	reg G2;
	reg A3;
	reg B3;
	reg C3;
	reg D3;
	reg E3;
	reg F3;
	reg G3;

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
	maquinota2 uut (
		.reset(reset), 
		.clock(clock), 
		.A0(A0), 
		.B0(B0), 
		.C0(C0), 
		.D0(D0), 
		.E0(E0), 
		.F0(F0), 
		.G0(G0), 
		.A1(A1), 
		.B1(B1), 
		.C1(C1), 
		.D1(D1), 
		.E1(E1), 
		.F1(F1), 
		.G1(G1), 
		.A2(A2), 
		.B2(B2), 
		.C2(C2), 
		.D2(D2), 
		.E2(E2), 
		.F2(F2), 
		.G2(G2), 
		.A3(A3), 
		.B3(B3), 
		.C3(C3), 
		.D3(D3), 
		.E3(E3), 
		.F3(F3), 
		.G3(G3), 
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
		reset = 0;
		clock = 0;
		A0 = 1;
		B0 = 1;
		C0 = 1;
		D0 = 1;
		E0 = 1;
		F0 = 1;
		G0 = 1;
		A1 = 0;
		B1 = 0;
		C1 = 0;
		D1 = 0;
		E1 = 0;
		F1 = 0;
		G1 = 0;
		A2 = 1;
		B2 = 0;
		C2 = 1;
		D2 = 0;
		E2 = 1;
		F2 = 0;
		G2 = 1;
		A3 = 0;
		B3 = 1;
		C3 = 0;
		D3 = 1;
		E3 = 0;
		F3 = 1;
		G3 = 0;

		// Wait 100 ns for global reset to finish
		#1000000;
		// Add stimulus here

	end
	always 
	begin
	#100 clock=~clock;
	end
      
endmodule

