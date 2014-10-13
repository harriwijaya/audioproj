`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:48 10/07/2014 
// Design Name: 
// Module Name:    MultiFloat_TopModule 
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
module MultiFloat_TopModule(
  input aclk,
  input aresetn,
  input M_s_axis_a_tvalid,
  output M_s_axis_a_tready,
  input [31 : 0] M_s_axis_a_tdata,
  input M_s_axis_b_tvalid,
  output M_s_axis_b_tready,
  input [31 : 0] M_s_axis_b_tdata,
  output M_m_axis_result_tvalid,
  input M_m_axis_result_tready,
  output [31 : 0] M_m_axis_result_tdata
    );

//----------- INSTANTIATION Template ---// INST_TAG
MultiFloat MultiFloat(
  .aclk(aclk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axis_a_tvalid(M_s_axis_a_tvalid), // input s_axis_a_tvalid
  .s_axis_a_tready(M_s_axis_a_tready), // output s_axis_a_tready
  .s_axis_a_tdata(M_s_axis_a_tdata), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(M_s_axis_b_tvalid), // input s_axis_b_tvalid
  .s_axis_b_tready(M_s_axis_b_tready), // output s_axis_b_tready
  .s_axis_b_tdata(M_s_axis_b_tdata), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(M_m_axis_result_tvalid), // output m_axis_result_tvalid
  .m_axis_result_tready(M_m_axis_result_tready), // input m_axis_result_tready
  .m_axis_result_tdata(M_m_axis_result_tdata) // output [31 : 0] m_axis_result_tdata
);

endmodule
