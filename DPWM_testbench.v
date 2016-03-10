`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:	Bernardo Rodriguez Hall
//
// Create Date:   16:28:41 02/26/2016
// Design Name:   DPWM
// Module Name:   C:/Users/Ferencz/Desktop/Xilinx/Proyecto_1/DPWM_testbench.v
// Project Name:  Proyecto_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DPWM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DPWM_testbench;

	// Inputs
	reg f_in;
	reg [3:0] Ref;

	// Outputs
	wire Signal_o;

	// Instantiate the Unit Under Test (UUT)
	DPWM uut (.f_in(f_in),.Ref(Ref),.Signal_o(Signal_o));

initial begin
		// Initialize Inputs
		f_in = 0;
		Ref = 0;
		// Wait 100 ns for global reset to finish
		#100;
        	 
		// Add stimulus here
		Ref = 9;
		 #50000
		 Ref = 1;
		 #50000
		 Ref = 5;
		 #50000
		 
		 Ref = 2;
		 #50000
		 
		 Ref = 3;
		 #50000
		 
		 Ref = 9;
		 #50000
		 
		 Ref = 10;
		 #50000
		 
		 Ref = 0;
		 #50000
		 
		
		
		 
		 $stop;
		 
		 
		 
		

	end
	
	
	always
	begin
	#1000 f_in=~f_in;
	end
      
endmodule

