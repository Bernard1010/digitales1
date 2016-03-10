`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:16:29 03/04/2016
// Design Name:   ProyectoDigitales_4
// Module Name:   C:/Users/Ferencz/Desktop/Xilinx/Proyecto1Digitales/ProyectoDigitales_4_testbench.v
// Project Name:  Proyecto1Digitales
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProyectoDigitales_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ProyectoDigitales_testbench;

	// Inputs
	reg aumC_i;
	reg aumf_i;
	reg bajafC_i;
	reg bajaf_i;
	reg CLKNEXYS;
	reg MEn;
	reg MODO;
	reg MRst;

	// Outputs
	wire SALIDAM;
	wire [2:0] valueF;

	// Instantiate the Unit Under Test (UUT)
	ProyectoDigitales_4 uut (
		.aumC_i(aumC_i), 
		.aumf_i(aumf_i), 
		.bajafC_i(bajafC_i), 
		.bajaf_i(bajaf_i), 
		.CLKNEXYS(CLKNEXYS), 
		.MEn(MEn), 
		.MODO(MODO), 
		.MRst(MRst), 
		.SALIDAM(SALIDAM), 
		.valueF(valueF)
	);

	initial begin
		// Initialize Inputs
		aumC_i = 0;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		CLKNEXYS = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		//1
		aumC_i = 1;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
		
	//2
		aumC_i = 0;
		aumf_i = 1;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
		
	//3
		aumC_i = 0;
		aumf_i = 1;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
		
		
	//4
		aumC_i = 0;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 1;	
		#250000000
		
		//5
		
		aumC_i = 1;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
		
		//6
		aumC_i = 1;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
		//7
		aumC_i = 1;
		aumf_i = 0;
		bajafC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		MODO = 0;
		MRst = 0;	
		#250000000
	
	$stop;
	


	
	end
		
		
 always
 begin
 
 #5 CLKNEXYS= ~CLKNEXYS;
 end
 
 
endmodule

