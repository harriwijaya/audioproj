`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:34:21 10/08/2014
// Design Name:   AddFloat__TopModule
// Module Name:   D:/ZedBoard/demo/ISE_project/FFT/FFT/AddFloat_tb.v
// Project Name:  FFT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AddFloat__TopModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AddFloat_tb;

	// Inputs
	reg aclk;
	reg aresetn;
	reg A_s_axis_a_tvalid;
	reg [31:0] A_s_axis_a_tdata;
	reg A_s_axis_b_tvalid;
	reg [31:0] A_s_axis_b_tdata;
	reg A_m_axis_result_tready;
	reg [4:0] i;

	// Outputs
	wire A_s_axis_a_tready;
	wire A_s_axis_b_tready;
	wire A_m_axis_result_tvalid;
	wire [31:0] A_m_axis_result_tdata;

	// Instantiate the Unit Under Test (UUT)
	AddFloat__TopModule uut (
		.aclk(aclk),
		.aresetn(aresetn),
		.A_s_axis_a_tvalid(A_s_axis_a_tvalid), 
		.A_s_axis_a_tready(A_s_axis_a_tready), 
		.A_s_axis_a_tdata(A_s_axis_a_tdata), 
		.A_s_axis_b_tvalid(A_s_axis_b_tvalid), 
		.A_s_axis_b_tready(A_s_axis_b_tready), 
		.A_s_axis_b_tdata(A_s_axis_b_tdata), 
		.A_m_axis_result_tvalid(A_m_axis_result_tvalid), 
		.A_m_axis_result_tready(A_m_axis_result_tready), 
		.A_m_axis_result_tdata(A_m_axis_result_tdata)
	);

	initial begin
		aclk = 0;
		forever #5 aclk = ~aclk;
	end

	initial begin
		// Initialize Inputs
		A_s_axis_a_tvalid = 0;
		A_s_axis_a_tdata = 0;
		A_s_axis_b_tvalid = 0;
		A_s_axis_b_tdata = 0;
		A_m_axis_result_tready = 0;

		// Wait 100 ns for global reset to finish
		#50;
	
		// Add stimulus here

		@(posedge aclk); aresetn = 0;
		@(posedge aclk); @(posedge aclk); aresetn = 1;

		repeat(10) begin
			@(posedge aclk); 
		end

		while ((A_s_axis_a_tready == 0) && (A_s_axis_b_tready == 0)) begin
			@(posedge aclk);
		end

		A_s_axis_a_tvalid = 1; //set valid
		A_s_axis_b_tvalid = 1; //set valid
		for(i=0; i<10; i=i+1) begin //9 should be feasible !!!
			if(i==0) begin
				A_s_axis_a_tdata = 32'b01000010100000000000000000000000; //64
				A_s_axis_b_tdata = 32'b01000010100000000000000000000000;
			end
			else if(i==1) begin
				A_s_axis_a_tdata = 32'b01000010000000000000000000000000; //32
				A_s_axis_b_tdata = 32'b01000010000000000000000000000000;
			end
			else if(i==2) begin
				A_s_axis_a_tdata = 32'b01000001100000000000000000000000; //16
				A_s_axis_b_tdata = 32'b01000001100000000000000000000000;
			end
			else if(i==3) begin
				A_s_axis_a_tdata = 32'b01000001000000000000000000000000; //8
				A_s_axis_b_tdata = 32'b01000001000000000000000000000000;
			end
			else if(i==4) begin
				A_s_axis_a_tdata = 32'b01000000100000000000000000000000; //4
				A_s_axis_b_tdata = 32'b01000000100000000000000000000000;
			end
			else begin
				A_s_axis_a_tdata = 32'b01000000000000000000000000000000; //2
				A_s_axis_b_tdata = 32'b01000000000000000000000000000000;
			end 
			$display("\n\tInput Data A:");
			$monitor("\t%0x\n",A_s_axis_a_tdata);
			$display("\n\tInput Data B:");
			$monitor("\t%0x\n",A_s_axis_b_tdata);
			@(posedge aclk);
		end

		A_s_axis_a_tvalid = 0; //reset tvalid pins
		A_s_axis_b_tvalid = 0; //reset tvalid pins
		
		while (A_m_axis_result_tvalid == 0) @(posedge aclk); //polling

		A_m_axis_result_tready = 1; //set valid for output 

		while (A_m_axis_result_tvalid == 1) begin
				$display("\t\tOutput Data after Multiplication");
				$monitor("\t\t%b",A_m_axis_result_tdata);
				@(posedge aclk);
		end




		/*** After taking 10 Output Data ***/
		while ((A_s_axis_a_tready == 0) && (A_s_axis_b_tready == 0)) begin
			@(posedge aclk);
		end

		A_s_axis_a_tvalid = 1; //set valid
		A_s_axis_b_tvalid = 1; //set valid
		for(; i<21; i=i+1) begin
			A_s_axis_a_tdata = 32'b01000000100000000000000000000000; //4
			A_s_axis_b_tdata = 32'b01000000100000000000000000000000;
			$display("\n\tInput Data A:");
			$monitor("\t%0x\n",A_s_axis_a_tdata);
			$display("\n\tInput Data B:");
			$monitor("\t%0x\n",A_s_axis_b_tdata);
			@(posedge aclk);
		end

		A_s_axis_a_tvalid = 0; //reset tvalid pins
		A_s_axis_b_tvalid = 0; //reset tvalid pins
		
		while (A_m_axis_result_tvalid == 0) @(posedge aclk); //polling

		A_m_axis_result_tready = 1; //set valid for output 

		while (A_m_axis_result_tvalid == 1) begin
				$display("\t\tOutput Data after Multiplication");
				$monitor("\t\t%b",A_m_axis_result_tdata);
				@(posedge aclk);
		end

		@(posedge aclk); @(posedge aclk); @(posedge aclk); @(posedge aclk); $finish;
	end      
      
endmodule
