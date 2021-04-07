/////  pure behavioral - procedural coding for sequential circuits /////////
module seq_detector(y,x,s_state,CLK);
input CLK,x;
output reg y;
output reg [1:0] s_state;
always @(posedge CLK)
begin 
 case(s_state)
 2'b00 : 
    if(x==0)
    begin
		s_state = 2'b01;
		y = 0;
	end
	else
    begin
		s_state = 2'b00;
		y = 0;
	end
 2'b01 : 
    if(x==0)
    begin
		s_state = 2'b01;
		y = 0;
	end
	else
    begin
		s_state = 2'b10;
		y = 0;
	end
 2'b10 : 
    if(x==0)
    begin
		s_state = 2'b11;
		y = 0;
	end
	else
    begin
		s_state = 2'b00;
		y = 0;
	end
 2'b11 : 
    if(x==0)
    begin
		s_state = 2'b00;
		y = 0;
	end
	else
    begin
		s_state = 2'b10;
		y = 1;
	end

 endcase

end

endmodule
