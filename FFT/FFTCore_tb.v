`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:51 10/06/2014
// Design Name:   FFTCore_TopModule
// Module Name:   D:/ZedBoard/demo/ISE_project/FFT/FFT/FFTCore_tb.v
// Project Name:  FFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFTCore_TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFTCore_tb;

	// Inputs
	reg aclk;
//	reg data_In_valid;
	reg [15:0] s_axis_config_tdata;
	reg s_axis_config_tvalid;
	reg [63:0] s_axis_data_tdata;
	reg s_axis_data_tvalid;
	reg s_axis_data_tlast;
	reg m_axis_data_tready;
	reg [7:0] i;
	reg [63:0] Data_Out[127:0]; // 128 Data Memory.

	// Outputs
	wire s_axis_config_tready;
	wire s_axis_data_tready;
	wire [63:0] m_axis_data_tdata;
	wire m_axis_data_tvalid;
	wire m_axis_data_tlast;
	wire event_frame_started;
	wire event_tlast_unexpected;
	wire event_tlast_missing;
	wire event_status_channel_halt;
	wire event_data_in_channel_halt;
	wire event_data_out_channel_halt;
	wire [31:0] Re_out;
	wire [31:0] Im_out;

	// Instantiate the Unit Under Test (UUT)
	FFTCore_TopModule uut (
		.aclk(aclk), 
//		.data_In_valid(data_In_valid),
		.s_axis_config_tdata(s_axis_config_tdata), 
		.s_axis_config_tvalid(s_axis_config_tvalid), 
		.s_axis_config_tready(s_axis_config_tready), 
		.s_axis_data_tdata(s_axis_data_tdata), 
		.s_axis_data_tvalid(s_axis_data_tvalid), 
		.s_axis_data_tready(s_axis_data_tready), 
		.s_axis_data_tlast(s_axis_data_tlast), 
		.m_axis_data_tdata(m_axis_data_tdata), 
		.m_axis_data_tvalid(m_axis_data_tvalid), 
		.m_axis_data_tready(m_axis_data_tready), 
		.m_axis_data_tlast(m_axis_data_tlast), 
		.event_frame_started(event_frame_started), 
		.event_tlast_unexpected(event_tlast_unexpected), 
		.event_tlast_missing(event_tlast_missing), 
		.event_status_channel_halt(event_status_channel_halt),
		.event_data_in_channel_halt(event_data_in_channel_halt), 
		.event_data_out_channel_halt(event_data_out_channel_halt),
		.Re_out(Re_out),
		.Im_out(Im_out)
	);

	initial begin
		aclk = 0;
		forever #5 aclk = ~aclk;
	end

	initial begin
		// Initialize Inputs
		aclk = 0;
//		data_In_valid = 0;
		s_axis_config_tdata = 0;
		s_axis_config_tvalid = 0;
		s_axis_data_tdata = 0;
		s_axis_data_tvalid = 0;
		s_axis_data_tlast = 0;
		m_axis_data_tready = 0;
		i = 8'd0;

		// Wait 100 ns for global reset to finish
		#50;
	
		// Add stimulus here

		@(posedge aclk); //data_In_valid = 1;
		s_axis_config_tvalid = 1;
		s_axis_config_tdata = 16'b0000000000000011;

		while ((s_axis_data_tready == 0) && (s_axis_config_tready == 0)) begin
			@(posedge aclk);
		end

		s_axis_data_tvalid = 1;	//set tvalid
		for(i=0; i<128; i=i+1) begin

			if(i==127) s_axis_data_tlast = 1;
			else if(i<64) s_axis_data_tdata = 64'd1065353216;
			else s_axis_data_tdata = 64'd0;
			@(posedge aclk);

		end

		@(posedge aclk); //data_In_valid = 0;
		s_axis_config_tvalid = 0;
		s_axis_data_tlast = 0;
		s_axis_data_tvalid = 0;	//set tvalid					

		while (m_axis_data_tvalid == 0) begin
		#1; //@(negedge aclk);
		end

		m_axis_data_tready = 1;
		
		while (m_axis_data_tvalid == 1) begin
			for(i=0; 1<128; i=i+1) begin
				Data_Out[i] = m_axis_data_tdata;
				$display("\tDecimal Value\t\t\t\t\t\tImaginary Value\t\t\t\tReal Value");
				$monitor("\t%0x\t\t%0x,\t\t%0x",Data_Out[i],Im_out,Re_out);
				@(posedge aclk); 
				if (i==1) #1;
			end
		end
		
		@(posedge aclk); @(posedge aclk); @(posedge aclk); @(posedge aclk); $finish;
	end      

endmodule
