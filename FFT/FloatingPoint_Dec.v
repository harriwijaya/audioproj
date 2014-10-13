`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:03 10/07/2014 
// Design Name: 
// Module Name:    FloatingPoint_Dec 
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
module FloatingPoint_Dec(
	input aclk,
	input reset,
	input enable,
	input [31:0] binary_float,
	output reg [31:0] binary_integer
    );
	 	 
	reg sign;
	reg [7:0]expo;
	reg [21:0]mantisa;
	
	always@(posedge aclk)
		if (reset)
			sign <= 0;
			expo <= 0;
			mantisa <= 0;
		else if (enalbe)
			
			

endmodule
