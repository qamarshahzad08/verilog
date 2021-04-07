`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:27:24 04/09/2020 
// Design Name: 
// Module Name:    comparator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module comparator(a0,a1,b0,b1,G,E,L);
input a0,a1,b0,b1;
output G,E,L;
reg G,E,L;

always @(a0 or a1 or b0 or b1)
  begin
    L<={a1,a0}<{b1,b0};
    G<={a1,a0}>{b1,b0};
    E<={a1,a0}=={b1,b0};
  end
endmodule