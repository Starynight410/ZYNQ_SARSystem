`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/24 19:51:06
// Design Name: 
// Module Name: io
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module io(
    input wire CHx_p,
    input wire CHx_n,
    input wire rst_n,
    input wire clk_200m,
    input wire dclk_idly,
    input wire dclk_bufg,
    input wire fcoClkIn,
    output reg [11:0] chxDout,
    input wire load,            //Debug
    input wire [4:0] tap_in,    //Debug
    output wire [4:0] tap_out   //
    );

wire adc_chx_ibuf;
wire adc_chx_idly;
   IBUFDS #(
      .DIFF_TERM("TRUE"),       // Differential Termination
      .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_ch3 (
      .O(adc_chx_ibuf),  // Buffer output
      .I(CHx_p),  // Diff_p buffer input (connect directly to top-level port)
      .IB(CHx_n) // Diff_n buffer input (connect directly to top-level port)
   );

(* IODELAY_GROUP = "AD9228" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   IDELAYE2_chx (
      .CNTVALUEOUT(tap_out), // 5-bit output: Counter value output
      .DATAOUT(adc_chx_idly),         // 1-bit output: Delayed data output
      .C(clk_200m),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(tap_in),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(adc_chx_ibuf),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(load),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
   );

wire [1:0] Q;
reg [11:0] dout,dout_o;
   IDDR #(
      .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"), // "OPPOSITE_EDGE", "SAME_EDGE" 
                                      //    or "SAME_EDGE_PIPELINED" 
      .INIT_Q1(1'b0), // Initial value of Q1: 1'b0 or 1'b1
      .INIT_Q2(1'b0), // Initial value of Q2: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) IDDR_inst (
      .Q1(Q[0]), // 1-bit output for positive edge of clock 
      .Q2(Q[1]), // 1-bit output for negative edge of clock
      .C(dclk_idly),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(adc_chx_idly),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

always @(posedge dclk_bufg) begin
   dout  <=  {dout[9:0],Q[0],Q[1]};
end

always @(posedge fcoClkIn) begin
   chxDout   <=  dout;  //Debugging conclusion
end 

endmodule

