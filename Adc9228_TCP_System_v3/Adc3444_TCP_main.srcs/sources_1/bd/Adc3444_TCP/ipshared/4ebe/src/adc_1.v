module adc_1(
    input FCO_p,
    input FCO_n,
    input DCO_p,
    input DCO_n,    
    input CHD_p,
    input CHD_n,
    input CHA_p,
    input CHA_n,
    input CHB_p,
    input CHB_n,
    input CHC_p,
    input CHC_n, 
    input rst_n,
    
    output clk_10m_o,     
    output [15:0]ch0_dout,
    output [15:0]ch1_dout,
    output [15:0]ch2_dout,
    output [15:0]ch3_dout,

    
    output adcClkIn_p_o,
    output adcClkIn_n_o,    
    
    input clk_10m_i,
    input clk_200m_i,
    
    output led
    );

wire [11:0]ch0_dout_0;
wire [11:0]ch1_dout_0;
wire [11:0]ch2_dout_0;
wire [11:0]ch3_dout_0;


//************//
//  FCO ibuf
//************//
wire fcoClkIn_10m;
    IBUFDS #(
       .DIFF_TERM("TRUE"),       // Differential Termination
       .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
       .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_fclk(
       .O(fcoClkIn_10m),  // Buffer output
       .I(FCO_p),  // Diff_p buffer input (connect directly to top-level port)
       .IB(FCO_n) // Diff_n buffer input (connect directly to top-level port)
    );

//************//
//  Adjust FCO phase
//************//
wire fclk_10m;
  clk_wiz_3 clk_wiz_3_inst
 (
  // Clock out ports
  .clk_out1(fclk_10m),     // output clk_out1
 // Clock in ports
  .clk_in1(fcoClkIn_10m));      // input clk_in1
assign clk_10m_o = fclk_10m;  

assign led = 1'b1;

//************//
//  DCO ibuf
//************//
wire dclk_ibuf;
wire dclk_idly;
    IBUFDS #(
       .DIFF_TERM("TRUE"),       // Differential Termination
       .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
       .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_dclk (
       .O(dclk_ibuf),  // Buffer output
       .I(DCO_p),  // Diff_p buffer input (connect directly to top-level port)
       .IB(DCO_n) // Diff_n buffer input (connect directly to top-level port)
    );

//************//
//  idelay control
//************//
//wire clk_200m;
(* IODELAY_GROUP = "AD9228" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL   
IDELAYCTRL IDELAYCTRL_inst (
      .RDY(),       // 1-bit output: Ready output
      .REFCLK(clk_200m_i), // 1-bit input: Reference clock input
      .RST(1'b0)        // 1-bit input: Active high reset input
   );

//************//
//  dco idelay
//************//
parameter Tap_DCO = 5'h1e;                
//wire [4:0]Tap_DCO;
//wire [4:0]dco_tap_out;
wire load;

(* IODELAY_GROUP = "AD9228" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
   )
IDELAYE2_dco (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(dclk_idly),         // 1-bit output: Delayed data output
      .C(clk_200m_i),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(Tap_DCO),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(dclk_ibuf),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(load),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
   );
   
/**************************************½«10mhz Clock to adc**********************************************/
wire OddrClk;
   ODDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_inst (
      .Q(OddrClk),   // 1-bit DDR output
//      .C(adcClkOut_10m),   // 1-bit clock input
      .C(clk_10m_i),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(1'b1), // 1-bit data input (positive edge)
      .D2(1'b0), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );

   OBUFDS #(
      .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst (
      .O(adcClkIn_p_o),     // Diff_p output (connect directly to top-level port)
      .OB(adcClkIn_n_o),   // Diff_n output (connect directly to top-level port)
      .I(OddrClk)      // Buffer input 
   );
/****************************************************************************************/



//************//
//  channel bufg driver
//************//
wire dclk_bufg;
   BUFG BUFG_dclk (
   .O(dclk_bufg), // 1-bit output: Clock output
   .I(dclk_idly)  // 1-bit input: Clock input
);

//************//
//  4 channels
//************//
//parameter Tap_CH0 = 5'h16;
//parameter Tap_CH1 = 5'h16;
//parameter Tap_CH2 = 5'h15;
//parameter Tap_CH3 = 5'h10;   
parameter Tap_CH0 = 5'h15;
parameter Tap_CH1 = 5'h10;
parameter Tap_CH2 = 5'h16;
parameter Tap_CH3 = 5'h16;  

/////////////////////////////////////////////////////////////////////////////////////
io ch0_idelay(
    .CHx_p(CHD_p),
    .CHx_n(CHD_n),
    .rst_n(rst_n),
    .clk_200m(clk_200m_i),
    .dclk_idly(dclk_idly),
    .dclk_bufg(dclk_bufg),
    .fcoClkIn(fclk_10m),
    .chxDout(ch0_dout_0),   
    .load(load),
    .tap_in(Tap_CH0),
    .tap_out()
    );

io ch1_idelay(
    .CHx_p(CHA_p),
    .CHx_n(CHA_n),
    .rst_n(rst_n),
    .clk_200m(clk_200m_i),
    .dclk_idly(dclk_idly),
    .dclk_bufg(dclk_bufg),
    .fcoClkIn(fclk_10m),
    .chxDout(ch1_dout_0),   
    .load(load),
    .tap_in(Tap_CH1),
    .tap_out()
    );

//wire [11:0] ch2_phs180;
//assign ch2_dout = ~ch2_phs180;
io ch2_idelay(
    .CHx_p(CHB_p),
    .CHx_n(CHB_n),
    .rst_n(rst_n),
    .clk_200m(clk_200m_i),
    .dclk_idly(dclk_idly),
    .dclk_bufg(dclk_bufg),
    .fcoClkIn(fclk_10m),
//    .chxDout(ch2_phs180),    
    .chxDout(ch2_dout_0),   
    .load(load),
    .tap_in(Tap_CH2),
    .tap_out()
    );

io ch3_idelay(
    .CHx_p(CHC_p),
    .CHx_n(CHC_n),
    .rst_n(rst_n),
    .clk_200m(clk_200m_i),
    .dclk_idly(dclk_idly),
    .dclk_bufg(dclk_bufg),
    .fcoClkIn(fclk_10m),
    .chxDout(ch3_dout_0),   
    .load(load),
    .tap_in(Tap_CH3),
    .tap_out()
    );
/////////////////////////////////////////////////////////////////////////////////////

////************//
////  load logic
////************//
pulse_generator load_pulse(
    .clk_200m(clk_200m_i),
    .load(load)
    );                                  

////////////////output//////////////////////
    assign ch0_dout = {{4{1'b0}},ch0_dout_0};
    assign ch1_dout = {{4{1'b0}},ch1_dout_0};
    assign ch2_dout = {{4{1'b0}},ch2_dout_0};
    assign ch3_dout = {{4{1'b0}},ch3_dout_0};


endmodule

