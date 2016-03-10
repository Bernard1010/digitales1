`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
//
// Create Date:   23:19:25 02/26/2016
// Design Name:   SelFrecuencias
// Module Name:   C:/Users/Ferencz/Desktop/Xilinx/Proyecto_1/SelFreceuncias_testbench.v
// Project Name:  Proyecto_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SelFrecuencias
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SelFreceuncias_testbench;

	// Inputs
	reg aumf_i;
	reg bajaf_i;
	reg clknexys;
	reg Reset;

	// Outputs
	wire salida_o;

	// Instantiate the Unit Under Test (UUT)
	SelFrecuencias uut (
		.aumf_i(aumf_i), 
		.bajaf_i(bajaf_i), 
		.clknexys(clknexys), 
		.Reset(Reset), 
		.salida_o(salida_o)
	);

	initial begin
		// Initialize Inputs
		aumf_i = 0;
		bajaf_i = 0;
		clknexys = 0;
		Reset=0;
		
		// Wait 100 ns for global reset to finish
		#100
		/*
		aumf_i = 1;
		
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		
		#1
		aumf_i = 0;
		#10000
		aumf_i = 1;
		
		#1
		aumf_i = 0;*/
		#10000
		// Add stimulus here
		$stop;
	end
      
always
begin
	#5 clknexys=~clknexys;
end		
		
endmodule

