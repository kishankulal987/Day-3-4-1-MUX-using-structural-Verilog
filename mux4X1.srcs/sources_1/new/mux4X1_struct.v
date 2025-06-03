`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2025 20:39:03
// Design Name: 
// Module Name: mux4X1_struct
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


module mux4X1_struct(input [3:0]I,input [1:0]sel,output y);
wire t0,t1;
mux2X1 m1(I[1:0],sel[0],t0);
mux2X1 m2(I[3:2],sel[0],t1);
mux2X1 m3({t1,t0},sel[1],y);
endmodule
