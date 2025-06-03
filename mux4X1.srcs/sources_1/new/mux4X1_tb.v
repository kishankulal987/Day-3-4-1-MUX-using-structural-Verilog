`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2025 20:46:37
// Design Name: 
// Module Name: mux4X1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4X1_tb();
reg [3:0]I;
reg [1:0]sel;
wire y;
mux4X1_struct m1(I,sel,y);
initial begin
for(integer i=0;i<2**4;i=i+1)
begin
I=i;
for(integer j=0;j<2**2;j=j+1)
begin
sel=j;
#10;
$monitor("I=%b sel=%b out=%b",I,sel,y);
end
end
$finish;
end
endmodule
