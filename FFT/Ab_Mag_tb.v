`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:52:20 10/11/2014
// Design Name:   Absolute_Magnitude
// Module Name:   D:/ZedBoard/demo/ISE_project/FFT/FFT/Ab_Mag_tb.v
// Project Name:  FFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Absolute_Magnitude
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ab_Mag_tb;

	// Inputs
	reg aclk;
	reg aresetn;
	reg [15:0] s_axis_config_tdata;
	reg s_axis_config_tvalid;
	reg [63:0] s_axis_data_tdata;
	reg s_axis_data_tvalid;
	reg s_axis_data_tlast;
	reg m_axis_data_tready;
	reg Re_tvalid;
	reg Im_tvalid;

	reg Sq_tready;
//	reg Add_tready;
	reg [7:0] i;

	// Outputs
	wire s_axis_config_tready;
	wire s_axis_data_tready;
	wire [63:0] m_axis_data_tdata;
	wire m_axis_data_tvalid;
	wire m_axis_data_tlast;
	wire Re_tready;
	wire Im_tready;
	wire Sq_tvalid;
	wire [31:0] Re_Sq_tdata;
	wire [31:0] Im_Sq_tdata;
//	wire Sq_Re_Im_tready;
//	wire Add_tvalid;
//	wire [31:0] Ab_Mag_tdata;

	// Instantiate the Unit Under Test (UUT)
	Absolute_Magnitude uut (
		.aclk(aclk), 
		.aresetn(aresetn), 
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
		.Re_tvalid(Re_tvalid), 
		.Im_tvalid(Im_tvalid), 
		.Re_tready(Re_tready), 
		.Im_tready(Im_tready), 
		.Sq_tvalid(Sq_tvalid), 
		.Sq_tready(Sq_tready),
		.Re_Sq_tdata(Re_Sq_tdata),
		.Im_Sq_tdata(Im_Sq_tdata)
/*		.Sq_Re_Im_tready(Sq_Re_Im_tready), 
		.Add_tvalid(Add_tvalid), 
		.Add_tready(Add_tready), 
		.Ab_Mag_tdata(Ab_Mag_tdata)
*/	);

	initial begin
		aclk = 0;
		forever #5 aclk = ~aclk;
	end

	wire [31:0]Re_out;
	wire [31:0]Im_out;	
	assign Re_out = m_axis_data_tdata[31:0];
	assign Im_out = m_axis_data_tdata[63:32];

	initial begin
		// Initialize Inputs
		aclk = 0;
		aresetn = 0;
		s_axis_config_tdata = 0;
		s_axis_config_tvalid = 0;
		s_axis_data_tdata = 0;
		s_axis_data_tvalid = 0;
		s_axis_data_tlast = 0;
		m_axis_data_tready = 0;
		Re_tvalid = 0;
		Im_tvalid = 0;
		Sq_tready = 0;

		// Wait 100 ns for global reset to finish
		#50;
	
		// Add stimulus here

		@(posedge aclk); aresetn = 0; //reset the Multiplier core!
		@(posedge aclk); @(posedge aclk); aresetn = 1; //set again

		@(posedge aclk); //data_In_valid = 1;
		s_axis_config_tvalid = 1; //set valid
		s_axis_config_tdata = 16'b0000000000000011;

		while ((s_axis_data_tready == 0) && (s_axis_config_tready == 0)) begin
			@(posedge aclk);
		end

		s_axis_data_tvalid = 1; //set valid and give Data
		for(i=0; i<128; i=i+1) begin
			if(i==127) s_axis_data_tlast = 1;
			else if(i<64) s_axis_data_tdata = 64'd1065353216;
			else s_axis_data_tdata = 64'd0;
			$display("\tInput Data\n");
			$monitor("\t%0x\n\n",s_axis_data_tdata);
			@(posedge aclk);
		end

		@(posedge aclk); //data_In_valid = 0;
		s_axis_config_tvalid = 0; //reset tvalid and stop Data
		s_axis_data_tlast = 0;
		s_axis_data_tvalid = 0;
		
		while (m_axis_data_tvalid == 0) begin //wait for the FFT output.
		@(posedge aclk);
		end

		while ((Re_tready == 0) && (Im_tready == 0))begin //wait for the multiplier to get ready
		@(posedge aclk);
		end

		while (m_axis_data_tvalid == 1) begin //wait until FFT output finished.
			Re_tvalid = 1; //set valid for Real and Imag Input
			Im_tvalid = 1;
			m_axis_data_tready = 1; //set valid (get the fft output data)

			while (Sq_tvalid == 0)begin //wait for the Multiplier output.
			@(posedge aclk);
			end

			while(Sq_tvalid == 1) begin
				Re_tvalid = 0; //reset valid (wait)
				Im_tvalid = 0;
				m_axis_data_tready = 0;
				Sq_tready = 1;  //set valid (get the Multiplier output data)
				if(i==0) $display("\tImaginary Square Value\t\t\tReal Square Value\n");
				$display("\t%b,,%b\n\n",Im_Sq_tdata,Re_Sq_tdata);
				@(posedge aclk);
			end
		end

		@(posedge aclk); $finish;
	end      
      
endmodule
