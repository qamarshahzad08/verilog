module Basic_Gates ( 
A, 
B, 
AB_AND, 
AB_OR, 
AB_NAND, 
AB_NOR, 
AB_XOR, 
AB_XNOR, 
A_INV, 
B_BUFF 
); 
 
// List all the inputs 
input A; input B; 
 
// List all outputs 
output AB_AND; output AB_OR; output AB_NAND; output AB_NOR; output AB_XOR; output AB_XNOR; output A_INV; 	 
output B_BUFF; 
 
// Structural Module and (AB_AND, A, B); or (AB_OR, A, B); nand (AB_NAND, A, B); nor (AB_NOR, A, B); xor (AB_XOR, A, B); xnor (AB_XNOR, A, B); 
not (A_INV, A); buf (B_BUFF, B); 
 
endmodule 
