`timescale 1ns / 1ps


module part7_tb;

	// Inputs
	reg sw1;
	reg sw2;
	reg sw3;
	reg sw4;
	reg sw5;
	reg sw6;
	reg sw7;
	reg sw8;

	// Outputs
	wire Led1;
	wire Led2;

	// Instantiate the Unit Under Test (UUT)
	part7 uut (
		.sw1(sw1), 
		.sw2(sw2), 
		.sw3(sw3), 
		.sw4(sw4), 
		.sw5(sw5), 
		.sw6(sw6), 
		.sw7(sw7), 
		.sw8(sw8), 
		.Led1(Led1), 
		.Led2(Led2)
	);

	initial begin
		// Initialize Inputs
		sw1 = 0;
		sw2 = 0;
		sw3 = 0;
		sw4 = 0;
		sw5 = 0;
		sw6 = 0;
		sw7 = 0;
		sw8 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		sw1 = 1;
		sw2 = 0;
		sw3 = 1;
		sw4 = 0;
		sw5 = 1;
		sw6 = 0;
		sw7 = 1;
		sw8 = 0;
		#100;
		
		sw1 = 0;
		sw2 = 0;
		sw3 = 0;
		sw4 = 0;
		sw5 = 1;
		sw6 = 1;
		sw7 = 1;
		sw8 = 0;
		#100;
		
		sw1 = 0;
		sw2 = 1;
		sw3 = 1;
		sw4 = 1;
		sw5 = 0;
		sw6 = 1;
		sw7 = 1;
		sw8 = 0;
		#100;
		
		sw1 = 1;
		sw2 = 1;
		sw3 = 0;
		sw4 = 0;
		sw5 = 0;
		sw6 = 1;
		sw7 = 1;
		sw8 = 1;
		#100;
	end
      
endmodule

