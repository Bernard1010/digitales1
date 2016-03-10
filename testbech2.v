`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Ricardo Martinez Vallejos
//
// Create Date:   19:20:40 02/27/2016
// Design Name:   deco7seg
// Module Name:   C:/Xilinx/testbech2.v
// Project Name:  P
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deco7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbech2;

	// Inputs
	reg ai;
	reg bi;
	reg ci;
	reg di;

	// Outputs
	wire Ao;
	wire Bo;
	wire Co;
	wire Do;
	wire Eo;
	wire Fo;
	wire Go;

	// Instantiate the Unit Under Test (UUT)
	deco7seg uut (
		.ai(ai), 
		.bi(bi), 
		.ci(ci), 
		.di(di), 
		.Ao(Ao), 
		.Bo(Bo), 
		.Co(Co), 
		.Do(Do), 
		.Eo(Eo), 
		.Fo(Fo), 
		.Go(Go)
	);

	initial begin
		// Initialize Inputs
		$dumpfile("sc.vcd");
		$dumpvars(0,testbech2);
		
		ai = 0; bi = 0;ci = 0;di = 0; #100;//0
		ai = 0; bi = 0;ci = 0;di = 1; #100;//1
		ai = 0; bi = 0;ci = 1;di = 0; #100;//2
		ai = 0; bi = 0;ci = 1;di = 1; #100;//3
		ai = 0; bi = 1;ci = 0;di = 0; #100;//4
		ai = 0; bi = 1;ci = 0;di = 1; #100;//5
		ai = 0; bi = 1;ci = 1;di = 0; #100;//6
		ai = 0; bi = 1;ci = 1;di = 1; #100;//7
		ai = 1; bi = 0;ci = 0;di = 0; #100;//8
		ai = 1; bi = 0;ci = 0;di = 1; #100;//9
		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
		$finish;
	end
      
endmodule

