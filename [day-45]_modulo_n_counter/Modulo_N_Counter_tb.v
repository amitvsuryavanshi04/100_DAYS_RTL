`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 21:03:51
// Design Name:
// Module Name: Modulo_N_Counter_tb
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


module Modulo_N_Counter_tb();

parameter N = 4;
parameter count = 16;

reg clock, clear;

wire [N-1:0] q, q_bar;

Modulo_N_Counter dut( .clock(clock), .clear(clear), .q(q), .q_bar(q_bar));

initial
begin
clock = 0;
clear = 1;
#10;
clear = 0;
end

always #5 clock = ~clock;

initial
begin
$monitor (" clear = %b, q = %b, q_bar = %b", clear, q, q_bar);
end

endmodule
