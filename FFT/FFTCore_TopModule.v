`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:49 10/05/2014 
// Design Name: 
// Module Name:    FFTCore_TopModule 
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
module FFTCore_TopModule(
	input aclk,
//	input data_In_valid,
	input [15 : 0] s_axis_config_tdata,
	input s_axis_config_tvalid,
	output s_axis_config_tready,
	input [63 : 0] s_axis_data_tdata,
	input s_axis_data_tvalid,
	output s_axis_data_tready,
	input s_axis_data_tlast,
	output [63 : 0] m_axis_data_tdata,
	output m_axis_data_tvalid,
	input m_axis_data_tready,
	output m_axis_data_tlast,
	output event_frame_started,
	output event_tlast_unexpected,
	output event_tlast_missing,
	output event_status_channel_halt,
	output event_data_in_channel_halt,
	output event_data_out_channel_halt,
	output [31:0] Re_out,
	output [31:0] Im_out
    );
  
  wire s_axis_config_tready1;
  wire s_axis_data_tready1;
  wire m_axis_data_tvalid1;
  wire m_axis_data_tlast1;
  wire event_frame_started1;
  wire event_tlast_unexpected1;
  wire event_tlast_missing1;
  wire event_status_channel_halt1;
  wire event_data_in_channel_halt1;
  wire event_data_out_channel_halt1;
  wire [63 : 0] m_axis_data_tdata1;

//----------- INSTANTIATION Template ---// INST_TAG
FFTCore FFTCore(
  .aclk(aclk), // input aclk
  .s_axis_config_tdata(s_axis_config_tdata), // input [15 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(s_axis_config_tvalid), // input s_axis_config_tvalid
  .s_axis_config_tready(s_axis_config_tready1), // output s_axis_config_tready
  .s_axis_data_tdata(s_axis_data_tdata), // input [63 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(s_axis_data_tvalid), // input s_axis_data_tvalid
  .s_axis_data_tready(s_axis_data_tready1), // output s_axis_data_tready
  .s_axis_data_tlast(s_axis_data_tlast), // input s_axis_data_tlast
  .m_axis_data_tdata(m_axis_data_tdata1), // output [63 : 0] m_axis_data_tdata
  .m_axis_data_tvalid(m_axis_data_tvalid1), // output m_axis_data_tvalid
  .m_axis_data_tready(m_axis_data_tready), // input m_axis_data_tready
  .m_axis_data_tlast(m_axis_data_tlast1), // output m_axis_data_tlast
  .event_frame_started(event_frame_started1), // output event_frame_started
  .event_tlast_unexpected(event_tlast_unexpected1), // output event_tlast_unexpected
  .event_tlast_missing(event_tlast_missing1), // output event_tlast_missing
  .event_status_channel_halt(event_status_channel_halt1), // output event_status_channel_halt
  .event_data_in_channel_halt(event_data_in_channel_halt1), // output event_data_in_channel_halt
  .event_data_out_channel_halt(event_data_out_channel_halt1) // output event_data_out_channel_halt
);

	assign s_axis_config_tready = s_axis_config_tready1;
	assign s_axis_data_tready = s_axis_data_tready1;
	assign m_axis_data_tvalid = m_axis_data_tvalid1;
	assign m_axis_data_tlast = m_axis_data_tlast1;
	assign event_frame_started = event_frame_started1;
	assign event_tlast_unexpected = event_tlast_unexpected1;
	assign event_tlast_missing = event_tlast_missing1;
	assign event_status_channel_halt = event_status_channel_halt1;
	assign event_data_in_channel_halt = event_data_in_channel_halt1;
	assign event_data_out_channel_halt = event_data_out_channel_halt1;
	assign m_axis_data_tdata = m_axis_data_tdata1;
	assign Re_out = m_axis_data_tdata1[31:0];
	assign Im_out = m_axis_data_tdata1[63:32];

/*	always@(posedge aclk)
		if(data_In_valid == 1) begin			
			s_axis_config_tvalid = 1;
			s_axis_config_tvalid = 1;
			s_axis_config_tdata = 16'd3;
		end
		else begin
			s_axis_config_tvalid <= 0;
			s_axis_config_tvalid <= 0;
		end
*/
endmodule
