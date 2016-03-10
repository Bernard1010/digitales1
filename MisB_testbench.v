`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:10:30 03/02/2016
// Design Name:   MisB
// Module Name:   C:/Users/Ferencz/Desktop/Xilinx/Proyecto1Digitales/MisB_testbench.v
// Project Name:  Proyecto1Digitales
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MisB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MisB_testbench;

	// Inputs
	reg aumC_i;
	reg aumf_i;
	reg bajaC_i;
	reg bajaf_i;
	reg CLKNEXYS;
	reg MEn;
	reg Modo_i;
	reg MRst;
	reg [3:0] REF;

	// Outputs
	wire [7:0] numF_o;
	wire SALIDAM;

	// Instantiate the Unit Under Test (UUT)
	MisB uut (
		.aumC_i(aumC_i), 
		.aumf_i(aumf_i), 
		.bajaC_i(bajaC_i), 
		.bajaf_i(bajaf_i), 
		.CLKNEXYS(CLKNEXYS), 
		.MEn(MEn), 
		.Modo_i(Modo_i), 
		.MRst(MRst), 
		.REF(REF), 
		.numF_o(numF_o), 
		.SALIDAM(SALIDAM)
	);

	initial begin
		// Initialize Inputs
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		CLKNEXYS = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		//1
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 2;
		#1000000
		
		//2
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 3;
		#1000000
		
		//3
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 5;
		#1000000
		
		//4
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 6;
		#1000000
		
		//5
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 7;
		#1000000
		
		//6
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 8;
		#1000000
		
		//7
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 1;
		#1000000
		
		//8
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 2;
		#1000000
		
		//9
		aumC_i = 0;
		aumf_i = 0;
		bajaC_i = 0;
		bajaf_i = 0;
		MEn = 0;
		Modo_i = 0;
		MRst = 0;
		REF = 10;
		#1000000
		
		$stop;
		
		

	end
	
always
begin
#5 CLKNEXYS=~CLKNEXYS;
end
      
endmodule

