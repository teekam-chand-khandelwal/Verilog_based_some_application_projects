`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:24 05/24/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(a,b,sel,out,ac,c,z,s,p);
input [7:0] a,b;
input [3:0] sel;
output reg [7:0] out;
output reg c,s,ac;
output z,p;
assign z= (out==8'b0000_0000)? 1 : 0;
assign p = out[7]^out[6]^out[5]^out[4]^out[3]^out[2]^out[1]^out[0];
always@(sel,a,b) begin
case(sel)
0:out=a|b;
1:out=a&b;
2:out=~a;
3:out= a^b;
4:out=a>>1;
5:out=a<<1;
6:out=a+1;
7:out=a-1;
8:begin
{ac,out[3:0]}=a[3:0]+b[3:0];
{c,out[7:0]}=a[7:4]+b[7:4]+ac;
s=out[7];
end

9:begin
{ac,out[3:0]}=a[3:0]-b[3:0];
{c,out[7:0]}=a[7:4]-b[7:4];
s=out[7];
end
10:begin//rotate left
c=a[7];
out={a[6:0],c};
end
11:begin//rotate right
c=a[0];
out={c,a[6:0]};
end
endcase
end
endmodule

