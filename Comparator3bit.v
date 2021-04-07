module Comparator3bit(a0,a1,a2,b0,b1,b2,G,E,L);
input a0,a1,a2,b0,b1,b2;
output G,E,L;
reg G,E,L;

always @(a0 or a1 or a2 or b0 or b1 or b2)
  begin
      if ({a2,a1,a0}==3'b000 &&  {b2,b1,b0}==3'b000)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b000  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b001  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b001)begin  E<=1; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b010)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b010  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b011)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b011  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b100)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b100  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b101)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b101  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b110)begin  E<=1; G<=0; L<=0; end
    else if ({a2,a1,a0}==3'b110  &&  {b2,b1,b0}==3'b111)begin  E<=0; G<=0; L<=1; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b000)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b001)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b010)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b011)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b100)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b101)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b110)begin  E<=0; G<=1; L<=0; end
    else if ({a2,a1,a0}==3'b111  &&  {b2,b1,b0}==3'b111)begin  E<=1; G<=0; L<=0; end

  end
endmodule
