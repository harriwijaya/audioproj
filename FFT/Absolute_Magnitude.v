`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:31 10/07/2014 
// Design Name: 
// Module Name:    Absolute_Magnitude 
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
module Absolute_Magnitude(
	input aclk,
	input aresetn,

//Considering manual input to FFT as Audio Data!
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

//Inputs for Multiplier Core
	input Re_tvalid,
	input Im_tvalid,

	output Re_tready,
	output Im_tready,

	output Sq_tvalid,
	input Sq_tready,

	output [31:0] Re_Sq_tdata,
	output [31:0] Im_Sq_tdata

/*//Inputs for Addition Core

//	input Sq_Re_Im_tvalid,
	output Sq_Re_Im_tready,
	output Add_tvalid,
	input Add_tready,
	output [31:0] Ab_Mag_tdata
*/    );

/*####### Minimizing the same signals of Magnitude Module ########*/

/**********Change it to Input when Done!!!*********/
//For the real and imaginary input data signals
	wire [31:0] Re_tdata;
	wire [31:0] Im_tdata;
/*//For the real and imaginary output of MultiCore and input of AddCore data signals
	wire [31:0] Re_Sq_tdata;
	wire [31:0] Im_Sq_tdata;
*/

/*** Ouput control signals for input data, give by the MultiCore ***/
//For real input
	wire Re_1_tready;
	wire Re_2_tready;
	assign Re_tready = Re_1_tready && Re_2_tready;	
//For imaginary input
	wire Im_1_tready;
	wire Im_2_tready;
	assign Im_tready = Im_1_tready && Im_2_tready;

//For the real and imaginary output control data signals
	wire Re_Sq_tvalid;
	wire Im_Sq_tvalid;
	assign Sq_tvalid = Re_Sq_tvalid && Im_Sq_tvalid;
	
/*//For the AddCore
	reg Sq_tready;
	reg Sq_Re_Im_tvalid;
*/

/*For FFT Module*/

  wire s_axis_config_tready1;
  wire s_axis_data_tready1;
  wire m_axis_data_tvalid1;
  wire m_axis_data_tlast1;
  wire [63 : 0] m_axis_data_tdata1;

//----------- INSTANTIATION Template ---// INST_TAG
FFTCore_TopModule FFTCore_TopModule(
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
  .Re_out(Re_tdata),
  .Im_out(Im_tdata)
);

	assign s_axis_config_tready = s_axis_config_tready1;
	assign s_axis_data_tready = s_axis_data_tready1;
	assign m_axis_data_tvalid = m_axis_data_tvalid1;
	assign m_axis_data_tlast = m_axis_data_tlast1;
	assign m_axis_data_tdata = m_axis_data_tdata1;

//----------- INSTANTIATION Template ---// INST_TAG
MultiFloat Real_Square(
  .aclk(aclk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axis_a_tvalid(Re_tvalid), // input s_axis_a_tvalid
  .s_axis_a_tready(Re_1_tready), // output s_axis_a_tready
  .s_axis_a_tdata(Re_tdata), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(Re_tvalid), // input s_axis_b_tvalid
  .s_axis_b_tready(Re_2_tready), // output s_axis_b_tready
  .s_axis_b_tdata(Re_tdata), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(Re_Sq_tvalid), // output m_axis_result_tvalid
  .m_axis_result_tready(Sq_tready), // input m_axis_result_tready
  .m_axis_result_tdata(Re_Sq_tdata) // output [31 : 0] m_axis_result_tdata
);

//----------- INSTANTIATION Template ---// INST_TAG
MultiFloat Imag_Square(
  .aclk(aclk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axis_a_tvalid(Im_tvalid), // input s_axis_a_tvalid
  .s_axis_a_tready(Im_1_tready), // output s_axis_a_tready
  .s_axis_a_tdata(Im_tdata), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(Im_tvalid), // input s_axis_b_tvalid
  .s_axis_b_tready(Im_2_tready), // output s_axis_b_tready
  .s_axis_b_tdata(Im_tdata), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(Im_Sq_tvalid), // output m_axis_result_tvalid
  .m_axis_result_tready(Sq_tready), // input m_axis_result_tready
  .m_axis_result_tdata(Im_Sq_tdata) // output [31 : 0] m_axis_result_tdata
);

/*//Ouput control signals for input data, give by the AddCore
	wire Re_Sq_tready;
	wire Im_Sq_tready;
	assign Sq_Re_Im_tready = Re_Sq_tready && Im_Sq_tready;

//----------- INSTANTIATION Template ---// INST_TAG
AddFloat AddRealImag(
  .aclk(aclk), // input aclk
  .aresetn(aresetn), // input aresetn
  .s_axis_a_tvalid(Sq_Re_Im_tvalid), // input s_axis_a_tvalid
  .s_axis_a_tready(Re_Sq_tready), // output s_axis_a_tready
  .s_axis_a_tdata(Re_Sq_tdata), // input [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(Sq_Re_Im_tvalid), // input s_axis_b_tvalid
  .s_axis_b_tready(Im_Sq_tready), // output s_axis_b_tready
  .s_axis_b_tdata(Im_Sq_tdata), // input [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(Add_tvalid), // output m_axis_result_tvalid
  .m_axis_result_tready(Add_tready), // input m_axis_result_tready
  .m_axis_result_tdata(Ab_Mag_tdata) // output [31 : 0] m_axis_result_tdata
);


always@(posedge aclk)
//AddCore is ready to accept data and Output of MultiCore is Valid, Real and Imag tready is to be sure
	if(((Sq_Re_Im_tready == 1) && (Sq_tvalid == 1) && (Re_tready == 1) && (Im_tready == 1)) == 1) begin 
		Sq_tready = 1; // Get the Output of MultiCore
		Sq_Re_Im_tvalid = 1;	//	Start giving the input in AddCore
	end
	else begin
		Sq_tready = 0; // wait for the valid Output of MultiCore
		Sq_Re_Im_tvalid = 0;	//	wait for AddCore to be ready
	end
*/

endmodule
