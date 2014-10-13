`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:34:37 10/08/2014
// Design Name:   MultiFloat_TopModule
// Module Name:   D:/ZedBoard/demo/ISE_project/FFT/FFT/MultiFloat_tb.v
// Project Name:  FFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MultiFloat_TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MultiFloat_tb;

	// Inputs
	reg aclk;
	reg aresetn;
	reg M_s_axis_a_tvalid;
	reg [31:0] M_s_axis_a_tdata;
	reg M_s_axis_b_tvalid;
	reg [31:0] M_s_axis_b_tdata;
	reg M_m_axis_result_tready;
	reg [4:0] i;

	// Outputs
	wire M_s_axis_a_tready;
	wire M_s_axis_b_tready;
	wire M_m_axis_result_tvalid;
	wire [31:0] M_m_axis_result_tdata;

	// Instantiate the Unit Under Test (UUT)
	MultiFloat_TopModule uut (
		.aclk(aclk), 
		.aresetn(aresetn), 
		.M_s_axis_a_tvalid(M_s_axis_a_tvalid), 
		.M_s_axis_a_tready(M_s_axis_a_tready), 
		.M_s_axis_a_tdata(M_s_axis_a_tdata), 
		.M_s_axis_b_tvalid(M_s_axis_b_tvalid), 
		.M_s_axis_b_tready(M_s_axis_b_tready), 
		.M_s_axis_b_tdata(M_s_axis_b_tdata), 
		.M_m_axis_result_tvalid(M_m_axis_result_tvalid), 
		.M_m_axis_result_tready(M_m_axis_result_tready), 
		.M_m_axis_result_tdata(M_m_axis_result_tdata)
	);

	initial begin
		aclk = 0;
		forever #5 aclk = !aclk;
	end

	initial begin
		// Initialize Inputs
		aresetn = 1;
		M_s_axis_a_tvalid = 0;
		M_s_axis_a_tdata = 0;
		M_s_axis_b_tvalid = 0;
		M_s_axis_b_tdata = 0;
		M_m_axis_result_tready = 0;

		// Wait 100 ns for global reset to finish
		#50;
	
		// Add stimulus here

		@(posedge aclk); aresetn = 0;
		@(posedge aclk); @(posedge aclk); aresetn = 1;

		repeat(10) begin
			@(posedge aclk); 
		end

		while ((M_s_axis_a_tready == 0) && (M_s_axis_b_tready == 0)) begin
			@(posedge aclk);
		end

		M_s_axis_a_tvalid = 1; //set valid
		M_s_axis_b_tvalid = 1; //set valid
		for(i=0; i<10; i=i+1) begin //9 should be feasible !!!
			if(i==0) begin
				M_s_axis_a_tdata = 32'b01000010100000000000000000000000; //64
				M_s_axis_b_tdata = 32'b01000010100000000000000000000000;
			end
			else if(i==1) begin
				M_s_axis_a_tdata = 32'b01000010000000000000000000000000; //32
				M_s_axis_b_tdata = 32'b01000010000000000000000000000000;
			end
			else if(i==2) begin
				M_s_axis_a_tdata = 32'b01000001100000000000000000000000; //16
				M_s_axis_b_tdata = 32'b01000001100000000000000000000000;
			end
			else if(i==3) begin
				M_s_axis_a_tdata = 32'b01000001000000000000000000000000; //8
				M_s_axis_b_tdata = 32'b01000001000000000000000000000000;
			end
			else if(i==4) begin
				M_s_axis_a_tdata = 32'b01000000100000000000000000000000; //4
				M_s_axis_b_tdata = 32'b01000000100000000000000000000000;
			end
			else begin
				M_s_axis_a_tdata = 32'b01000000000000000000000000000000; //2
				M_s_axis_b_tdata = 32'b01000000000000000000000000000000;
			end 
			$display("\n\tInput Data A:");
			$monitor("\t%0x\n",M_s_axis_a_tdata);
			$display("\n\tInput Data B:");
			$monitor("\t%0x\n",M_s_axis_b_tdata);
			@(posedge aclk);
		end

		M_s_axis_a_tvalid = 0; //reset tvalid pins
		M_s_axis_b_tvalid = 0; //reset tvalid pins
		
		while (M_m_axis_result_tvalid == 0) @(posedge aclk); //polling

		M_m_axis_result_tready = 1; //set valid for output 

		while (M_m_axis_result_tvalid == 1) begin
				$display("\t\tOutput Data after Multiplication");
				$monitor("\t\t%b",M_m_axis_result_tdata);
				@(posedge aclk);
		end




		/*** After taking 10 Output Data ***/
		while ((M_s_axis_a_tready == 0) && (M_s_axis_b_tready == 0)) begin
			@(posedge aclk);
		end

		M_s_axis_a_tvalid = 1; //set valid
		M_s_axis_b_tvalid = 1; //set valid
		for(; i<21; i=i+1) begin
			M_s_axis_a_tdata = 32'b01000000100000000000000000000000; //4
			M_s_axis_b_tdata = 32'b01000000100000000000000000000000;
			$display("\n\tInput Data A:");
			$monitor("\t%0x\n",M_s_axis_a_tdata);
			$display("\n\tInput Data B:");
			$monitor("\t%0x\n",M_s_axis_b_tdata);
			@(posedge aclk);
		end

		M_s_axis_a_tvalid = 0; //reset tvalid pins
		M_s_axis_b_tvalid = 0; //reset tvalid pins
		
		while (M_m_axis_result_tvalid == 0) @(posedge aclk); //polling

		M_m_axis_result_tready = 1; //set valid for output 

		while (M_m_axis_result_tvalid == 1) begin
				$display("\t\tOutput Data after Multiplication");
				$monitor("\t\t%b",M_m_axis_result_tdata);
				@(posedge aclk);
		end

		@(posedge aclk); @(posedge aclk); @(posedge aclk); @(posedge aclk); $finish;
	end      
      
endmodule
