`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:33:03 10/08/2014 
// Design Name: 
// Module Name:    AddFloat__TopModule 
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
module AddFloat__TopModule(
  input aclk,
  input aresetn,
  input A_s_axis_a_tvalid,
  output A_s_axis_a_tready,
  input [31 : 0] A_s_axis_a_tdata,
  input A_s_axis_b_tvalid,
  output A_s_axis_b_tready,
  input [31 : 0] A_s_axis_b_tdata,
  output A_m_axis_result_tvalid,
  input A_m_axis_result_tready,
  output [31 : 0] A_m_axis_result_tdata
    );

//----------- INSTANTIATION Template ---// INST_TAG
AddFloat AddFloat(
  .aclk(aclk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axis_a_tvalid(A_s_axis_a_tvalid), // input s_axis_a_tvalid
  .s_axis_a_tready(A_s_axis_a_tready), // output s_axis_a_tready
  .s_axis_a_tdata(A_s_axis_a_tdata), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(A_s_axis_b_tvalid), // input s_axis_b_tvalid
  .s_axis_b_tready(A_s_axis_b_tready), // output s_axis_b_tready
  .s_axis_b_tdata(A_s_axis_b_tdata), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(A_m_axis_result_tvalid), // output m_axis_result_tvalid
  .m_axis_result_tready(A_m_axis_result_tready), // input m_axis_result_tready
  .m_axis_result_tdata(A_m_axis_result_tdata) // output [31 : 0] m_axis_result_tdata
);

endmodule
