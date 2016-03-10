`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Bernardo Rodriguez Hall
//
// Create Date:   11:27:35 02/27/2016
// Design Name:   ControlPrincipal
// Module Name:   C:/Users/Ferencz/Desktop/Xilinx/Proyecto_1/ControlPrincipal_testbench.v
// Project Name:  Proyecto_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlPrincipal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlPrincipal_testbench;

	// Inputs
	reg aumf_i;
	reg bajaf_i;
	reg aumC_i;
	reg bajaC_i;
	reg MODO_i;
	reg MRst_i;
	reg MEn;

	// Outputs
	wire aumf_o;
	wire bajaf_o;
	wire aumC_o;
	wire bajaC_o;
	wire MODO_o;
	wire MRst_o;

	// Instantiate the Unit Under Test (UUT)
	ControlPrincipal uut (
		.aumf_i(aumf_i), 
		.bajaf_i(bajaf_i), 
		.aumC_i(aumC_i), 
		.bajaC_i(bajaC_i), 
		.MODO_i(MODO_i), 
		.MRst_i(MRst_i), 
		.MEn(MEn), 
		.aumf_o(aumf_o), 
		.bajaf_o(bajaf_o), 
		.aumC_o(aumC_o), 
		.bajaC_o(bajaC_o), 
		.MODO_o(MODO_o), 
		.MRst_o(MRst_o)
	);

	initial begin
		// Initialize Inputs
		aumf_i = 0;
		bajaf_i = 0;
		aumC_i = 0;
		bajaC_i = 0;
		MODO_i = 0;
		MRst_i = 0;
		MEn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		aumf_i = 1;
		bajaf_i = 0;
		aumC_i = 1;
		bajaC_i = 0;
		MODO_i = 0;
		MRst_i = 1;
		#5
		aumf_i = 0;
		bajaf_i = 1;
		aumC_i = 0;
		bajaC_i = 1;
		MODO_i = 1;
		MRst_i = 0;
		#5
		MEn = 1;
		#5
		MEn = 0;
		aumf_i = 1;
		bajaf_i = 0;
		aumC_i = 1;
		bajaC_i = 0;
		MODO_i = 0;
		MRst_i = 1;
		
		
		$stop;
        
		// Add stimulus here

	end
      
endmodule

