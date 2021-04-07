`timescale 1ns / 1ps

module test_file(
  input W,X,Y,Z ,
  output reg F  
  );
 
  reg A,B;
  
  always @ (Y,Z)
    case(Y)
    1'b0 : A = 1'b1;
    1'b1 : A = ~Z;
    endcase
    
  always @ (Y,Z)
    B  = Z ^ Y;
      
  always @ (*)
    case({W,X})
    2'b00 : F = A;
    2'b01 : F = 1'b0;
    2'b10 : F = 1'b1;
    2'b11 : F = B;

    endcase
  
  

endmodule
