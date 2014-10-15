`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:05 10/02/2014 
// Design Name: 
// Module Name:    adder_ip_wrapper 
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
module adder_ip_wrapper(
	input [30 : 0] a,
	input [30 : 0] b,
	input clk,
	input ce,
	output [30 : 0] s
    );

wire [30:0] s1;

adder_ip your_instance_name (
  .a(a), // input [30 : 0] a
  .b(b), // input [30 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(s1) // output [30 : 0] s
);

assign s = s1;

endmodule
