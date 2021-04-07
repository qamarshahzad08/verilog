`timescale 1ns / 1ps

module SignedComparator3bit_tb;

	// Inputs
	reg a0;
	reg a1;
	reg a2;
	reg b0;
	reg b1;
	reg b2;
	reg S;

	// Outputs
	wire G;
	wire E;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	SignedComparator3bit uut (
		.a0(a0), 
		.a1(a1), 
		.a2(a2), 
		.b0(b0), 
		.b1(b1), 
		.b2(b2), 
		.S(S), 
		.G(G), 
		.E(E), 
		.L(L)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		a2 = 0;
		b0 = 0;
		b1 = 0;
		b2 = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a0 = 0;
		a1 = 1;
		a2 = 1;
		b0 = 0;
		b1 = 1;
		b2 = 1;
		S = 0;
		#100;
		a0 = 0;
		a1 = 0;
		a2 = 1;
		b0 = 1;
		b1 = 0;
		b2 = 1;
		S = 0;
		#100;
		a0 = 0;
		a1 = 0;
		a2 = 0;
		b0 = 1;
		b1 = 1;
		b2 = 1;
		S = 0;
		#100;
	
	end
      
endmodule

