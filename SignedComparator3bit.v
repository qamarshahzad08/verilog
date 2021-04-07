module SignedComparator3bit(a0,a1,a2,b0,b1,b2,S,G,E,L);
input a0,a1,a2,b0,b1,b2,S;
output G,E,L;
reg G,E,L;

always @(a0 or a1 or a2 or b0 or b1 or b2 or S)
begin
 if(S==1'b1)
   begin
    L<={a2,a1,a0}<{b2,b1,b0};
    G<={a2,a1,a0}>{b2,b1,b0};
    E<={a2,a1,a0}=={b2,b1,b0};
   end
  else
   begin
    if(a2==1'b0 && b2==1'b1)
    begin
       G<=1;
       L<=0;
       E<=0;
    end
    else if (a2==1'b1 && b2==1'b0)
    begin
       G<=0;
       L<=1;
       E<=0;
    end
    else
     begin
     L<=(~({a2,a1,a0}-1))>(~({b2,b1,b0}-1));
     G<=(~({a2,a1,a0}-1))<(~({b2,b1,b0}-1));
     E<=(~({a2,a1,a0}-1))==(~({b2,b1,b0}-1));
   end
      
   end
end
endmodule
