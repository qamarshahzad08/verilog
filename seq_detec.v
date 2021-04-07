module Door_Lock( clk, reset, X, Y);
    
 input wire clk, reset,X;
 output reg Y;

 
  reg [1:0] Q;
  reg [1:0] next_Q;




always @ (posedge clk, posedge reset)begin
  if (reset == 1'b1) begin
   Q     <= 2'b00;
    end
  else
   Q <= next_Q;
end

always @ (*)begin
     Y  = 1'b0;
 case (Q)
   2'b00: begin
            Y  = 1'b1; 
            if(X==1'b0)
              next_Q = 2'b00;
            else
              next_Q = 2'b11;
          end

   2'b01: begin
            Y  = 1'b0; 
            if(X==1'b0)
              next_Q = 2'b11;
            else
              next_Q = 2'b00;
          end
   2'b10: begin
            Y  = 1'b1; 
            if(X==1'b0)
              next_Q = 2'b00;
            else
              next_Q = 2'b10;
          end
   2'b11:  begin
            Y  = 1'b0; 
            if(X==1'b0)
              next_Q = 2'b01;
            else
              next_Q = 2'b10;
          end
   default : next_Q = 2'b00;
   endcase

end

endmodule
