module ODD_Counter_ONE_ELEVEN(clock,reset,Y,current_state);
input clock;
input reset; 
output reg Y;
parameter  Zero=4'b0000, 
  One=4'b0001, 
  Three=4'b0011, 
  Five=4'b0101, 
  Seven=4'b0111,
  Nine=4'b1001,
  Eleven=4'b1011;
output current_state;
reg [3:0] current_state, next_state;
always @(posedge clock, posedge reset)
begin
 if(reset==1) 
 current_state <= Zero;
 else
 current_state <= next_state; 
end 
 
always @(current_state)
begin
 case(current_state) 
 Zero:begin
   next_state = One;
 end
 One:begin
   next_state = Three;
 end
 Three:begin
   next_state = Five;
 end
 Five:begin
   next_state = Seven;
 end
 Seven:begin
   next_state = Nine;
 end
 Nine:begin
   next_state = Eleven;
 end
 Eleven:begin
   next_state = One;
 end
 default:next_state = Zero;
 endcase
end
always @(current_state)
begin 
 case(current_state) 
 Zero:    Y = 0;
 One:     Y = 0;
 Three:   Y = 1;
 Five:    Y = 0;
 Seven:   Y = 0;
 Nine:    Y = 0;
 Eleven:  Y = 0;
 default: Y = 0;
 endcase
end 
endmodule