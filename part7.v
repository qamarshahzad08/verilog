module part7( sw1,sw2,sw3,sw4,sw5,sw6,sw7,sw8,Led1,Led2);
input sw1,sw2,sw3,sw3,sw4,sw4,sw5,sw6,sw7,sw8; //sw1 as LSB and sw8 as MSB
output Led1,Led2;
reg Led1,Led2;


always @ (sw1 or sw2 or sw3 or sw3 or sw4 or sw4 or sw5 or sw6 or sw7 or sw8)
begin
 if(sw1==1'b0)
 begin
      if (sw2==1'b1 && sw3==1'b1 && sw4==1'b1)
         Led2<=1;
      else if (sw3==1'b1 && sw4==1'b1 && sw5==1'b1)
         Led2<=1;      
      else if (sw4==1'b1 && sw5==1'b1 && sw6==1'b1) 
         Led2<=1;
      else if (sw5==1'b1 && sw6==1'b1 && sw7==1'b1) 
         Led2<=1;
      else if (sw6==1'b1 && sw7==1'b1 && sw8==1'b1) 
         Led2<=1;
      else
        Led2<=0;
 end
 else
    Led2<=0;
 if ((sw1==1'b0 && sw2==1'b0) || (sw2==1'b0 && sw3==1'b0) || (sw3==1'b0 && sw4==1'b0) || (sw4==1'b0 && sw5==1'b0) || (sw5==1'b0 && sw6==1'b0) || (sw6==1'b0 && sw7==1'b0) || (sw7==1'b0 && sw8==1'b0))
     Led1<=1;
 else
   Led1<=0;
end
endmodule 
