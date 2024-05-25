// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Aug 26 15:36:38 2023
// Host        : LAPTOP-7RHB2PA2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_Adc9228_top_0_0_sim_netlist.v
// Design      : Adc3444_TCP_Adc9228_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control
   (TrigInCh3,
    DataToTriCh0,
    DataToTriCh1,
    DataToTriCh3,
    \axi_rdata_reg[31] ,
    clk_out1,
    sys_rst_n_reg,
    pll_trig1,
    Q,
    \chxDout_reg[11] ,
    \chxDout_reg[11]_0 ,
    Start_mode);
  output TrigInCh3;
  output [11:0]DataToTriCh0;
  output [11:0]DataToTriCh1;
  output [11:0]DataToTriCh3;
  output [31:0]\axi_rdata_reg[31] ;
  input clk_out1;
  input sys_rst_n_reg;
  input pll_trig1;
  input [11:0]Q;
  input [11:0]\chxDout_reg[11] ;
  input [11:0]\chxDout_reg[11]_0 ;
  input Start_mode;

  wire \/FSM_sequential_AD_state[0]_i_1_n_0 ;
  wire \/FSM_sequential_AD_state[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]AD_state;
  wire [11:0]DataToTriCh0;
  wire [11:0]DataToTriCh0_reg;
  wire [11:0]DataToTriCh1;
  wire [11:0]DataToTriCh1_reg;
  wire [11:0]DataToTriCh3;
  wire [11:0]DataToTriCh3_reg;
  wire [11:0]Data_Ch0;
  wire \Data_Ch0[0]_i_1_n_0 ;
  wire \Data_Ch0[10]_i_1_n_0 ;
  wire \Data_Ch0[11]_i_1_n_0 ;
  wire \Data_Ch0[11]_i_2_n_0 ;
  wire \Data_Ch0[1]_i_1_n_0 ;
  wire \Data_Ch0[2]_i_1_n_0 ;
  wire \Data_Ch0[3]_i_1_n_0 ;
  wire \Data_Ch0[4]_i_1_n_0 ;
  wire \Data_Ch0[5]_i_1_n_0 ;
  wire \Data_Ch0[6]_i_1_n_0 ;
  wire \Data_Ch0[7]_i_1_n_0 ;
  wire \Data_Ch0[8]_i_1_n_0 ;
  wire \Data_Ch0[9]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire Data_Ch0_valid;
  wire [11:0]Data_Ch1;
  wire \Data_Ch1[0]_i_1_n_0 ;
  wire \Data_Ch1[10]_i_1_n_0 ;
  wire \Data_Ch1[11]_i_1_n_0 ;
  wire \Data_Ch1[1]_i_1_n_0 ;
  wire \Data_Ch1[2]_i_1_n_0 ;
  wire \Data_Ch1[3]_i_1_n_0 ;
  wire \Data_Ch1[4]_i_1_n_0 ;
  wire \Data_Ch1[5]_i_1_n_0 ;
  wire \Data_Ch1[6]_i_1_n_0 ;
  wire \Data_Ch1[7]_i_1_n_0 ;
  wire \Data_Ch1[8]_i_1_n_0 ;
  wire \Data_Ch1[9]_i_1_n_0 ;
  wire \Data_Ch2[0]_i_1_n_0 ;
  wire \Data_Ch2[10]_i_1_n_0 ;
  wire \Data_Ch2[11]_i_1_n_0 ;
  wire \Data_Ch2[1]_i_1_n_0 ;
  wire \Data_Ch2[2]_i_1_n_0 ;
  wire \Data_Ch2[3]_i_1_n_0 ;
  wire \Data_Ch2[4]_i_1_n_0 ;
  wire \Data_Ch2[5]_i_1_n_0 ;
  wire \Data_Ch2[6]_i_1_n_0 ;
  wire \Data_Ch2[7]_i_1_n_0 ;
  wire \Data_Ch2[8]_i_1_n_0 ;
  wire \Data_Ch2[9]_i_1_n_0 ;
  wire [11:0]Data_Ch3;
  wire Data_Ch3_valid;
  wire Data_Ch3_valid_D;
  wire PM_D1;
  wire PM_D2;
  wire [11:0]Q;
  wire Start_mode;
  wire TrigInCh3;
  wire [31:0]\axi_rdata_reg[31] ;
  wire [11:0]\chxDout_reg[11] ;
  wire [11:0]\chxDout_reg[11]_0 ;
  wire clk_out1;
  wire \delay_cnt[0]_i_1_n_0 ;
  wire \delay_cnt[0]_i_3_n_0 ;
  wire \delay_cnt[0]_i_4_n_0 ;
  wire \delay_cnt[0]_i_5_n_0 ;
  wire \delay_cnt[0]_i_6_n_0 ;
  wire \delay_cnt[12]_i_2_n_0 ;
  wire \delay_cnt[12]_i_3_n_0 ;
  wire \delay_cnt[12]_i_4_n_0 ;
  wire \delay_cnt[12]_i_5_n_0 ;
  wire \delay_cnt[16]_i_2_n_0 ;
  wire \delay_cnt[16]_i_3_n_0 ;
  wire \delay_cnt[16]_i_4_n_0 ;
  wire \delay_cnt[16]_i_5_n_0 ;
  wire \delay_cnt[20]_i_2_n_0 ;
  wire \delay_cnt[20]_i_3_n_0 ;
  wire \delay_cnt[20]_i_4_n_0 ;
  wire \delay_cnt[20]_i_5_n_0 ;
  wire \delay_cnt[24]_i_2_n_0 ;
  wire \delay_cnt[24]_i_3_n_0 ;
  wire \delay_cnt[24]_i_4_n_0 ;
  wire \delay_cnt[24]_i_5_n_0 ;
  wire \delay_cnt[28]_i_2_n_0 ;
  wire \delay_cnt[28]_i_3_n_0 ;
  wire \delay_cnt[28]_i_4_n_0 ;
  wire \delay_cnt[28]_i_5_n_0 ;
  wire \delay_cnt[4]_i_2_n_0 ;
  wire \delay_cnt[4]_i_3_n_0 ;
  wire \delay_cnt[4]_i_4_n_0 ;
  wire \delay_cnt[4]_i_5_n_0 ;
  wire \delay_cnt[8]_i_2_n_0 ;
  wire \delay_cnt[8]_i_3_n_0 ;
  wire \delay_cnt[8]_i_4_n_0 ;
  wire \delay_cnt[8]_i_5_n_0 ;
  wire delay_cnt_flag_D;
  wire delay_cnt_flag_i_1_n_0;
  wire delay_cnt_flag_reg_n_0;
  wire [31:0]delay_cnt_reg;
  wire \delay_cnt_reg[0]_i_2_n_0 ;
  wire \delay_cnt_reg[0]_i_2_n_1 ;
  wire \delay_cnt_reg[0]_i_2_n_2 ;
  wire \delay_cnt_reg[0]_i_2_n_3 ;
  wire \delay_cnt_reg[0]_i_2_n_4 ;
  wire \delay_cnt_reg[0]_i_2_n_5 ;
  wire \delay_cnt_reg[0]_i_2_n_6 ;
  wire \delay_cnt_reg[0]_i_2_n_7 ;
  wire \delay_cnt_reg[12]_i_1_n_0 ;
  wire \delay_cnt_reg[12]_i_1_n_1 ;
  wire \delay_cnt_reg[12]_i_1_n_2 ;
  wire \delay_cnt_reg[12]_i_1_n_3 ;
  wire \delay_cnt_reg[12]_i_1_n_4 ;
  wire \delay_cnt_reg[12]_i_1_n_5 ;
  wire \delay_cnt_reg[12]_i_1_n_6 ;
  wire \delay_cnt_reg[12]_i_1_n_7 ;
  wire \delay_cnt_reg[16]_i_1_n_0 ;
  wire \delay_cnt_reg[16]_i_1_n_1 ;
  wire \delay_cnt_reg[16]_i_1_n_2 ;
  wire \delay_cnt_reg[16]_i_1_n_3 ;
  wire \delay_cnt_reg[16]_i_1_n_4 ;
  wire \delay_cnt_reg[16]_i_1_n_5 ;
  wire \delay_cnt_reg[16]_i_1_n_6 ;
  wire \delay_cnt_reg[16]_i_1_n_7 ;
  wire \delay_cnt_reg[20]_i_1_n_0 ;
  wire \delay_cnt_reg[20]_i_1_n_1 ;
  wire \delay_cnt_reg[20]_i_1_n_2 ;
  wire \delay_cnt_reg[20]_i_1_n_3 ;
  wire \delay_cnt_reg[20]_i_1_n_4 ;
  wire \delay_cnt_reg[20]_i_1_n_5 ;
  wire \delay_cnt_reg[20]_i_1_n_6 ;
  wire \delay_cnt_reg[20]_i_1_n_7 ;
  wire \delay_cnt_reg[24]_i_1_n_0 ;
  wire \delay_cnt_reg[24]_i_1_n_1 ;
  wire \delay_cnt_reg[24]_i_1_n_2 ;
  wire \delay_cnt_reg[24]_i_1_n_3 ;
  wire \delay_cnt_reg[24]_i_1_n_4 ;
  wire \delay_cnt_reg[24]_i_1_n_5 ;
  wire \delay_cnt_reg[24]_i_1_n_6 ;
  wire \delay_cnt_reg[24]_i_1_n_7 ;
  wire \delay_cnt_reg[28]_i_1_n_1 ;
  wire \delay_cnt_reg[28]_i_1_n_2 ;
  wire \delay_cnt_reg[28]_i_1_n_3 ;
  wire \delay_cnt_reg[28]_i_1_n_4 ;
  wire \delay_cnt_reg[28]_i_1_n_5 ;
  wire \delay_cnt_reg[28]_i_1_n_6 ;
  wire \delay_cnt_reg[28]_i_1_n_7 ;
  wire \delay_cnt_reg[31]_i_1_n_0 ;
  wire \delay_cnt_reg[4]_i_1_n_0 ;
  wire \delay_cnt_reg[4]_i_1_n_1 ;
  wire \delay_cnt_reg[4]_i_1_n_2 ;
  wire \delay_cnt_reg[4]_i_1_n_3 ;
  wire \delay_cnt_reg[4]_i_1_n_4 ;
  wire \delay_cnt_reg[4]_i_1_n_5 ;
  wire \delay_cnt_reg[4]_i_1_n_6 ;
  wire \delay_cnt_reg[4]_i_1_n_7 ;
  wire \delay_cnt_reg[8]_i_1_n_0 ;
  wire \delay_cnt_reg[8]_i_1_n_1 ;
  wire \delay_cnt_reg[8]_i_1_n_2 ;
  wire \delay_cnt_reg[8]_i_1_n_3 ;
  wire \delay_cnt_reg[8]_i_1_n_4 ;
  wire \delay_cnt_reg[8]_i_1_n_5 ;
  wire \delay_cnt_reg[8]_i_1_n_6 ;
  wire \delay_cnt_reg[8]_i_1_n_7 ;
  wire pll_trig1;
  wire sys_rst_n_reg;
  wire [3:3]\NLW_delay_cnt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAEDF0400)) 
    \/FSM_sequential_AD_state[0]_i_1 
       (.I0(AD_state),
        .I1(PM_D2),
        .I2(PM_D1),
        .I3(Data_Ch0_valid),
        .I4(Start_mode),
        .O(\/FSM_sequential_AD_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F40)) 
    \/FSM_sequential_AD_state[1]_i_1 
       (.I0(PM_D2),
        .I1(PM_D1),
        .I2(AD_state),
        .I3(Data_Ch0_valid),
        .O(\/FSM_sequential_AD_state[1]_i_1_n_0 ));
  FDCE \DataToTriCh0_reg_D_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[0]),
        .Q(DataToTriCh0[0]));
  FDCE \DataToTriCh0_reg_D_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[10]),
        .Q(DataToTriCh0[10]));
  FDCE \DataToTriCh0_reg_D_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[11]),
        .Q(DataToTriCh0[11]));
  FDCE \DataToTriCh0_reg_D_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[1]),
        .Q(DataToTriCh0[1]));
  FDCE \DataToTriCh0_reg_D_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[2]),
        .Q(DataToTriCh0[2]));
  FDCE \DataToTriCh0_reg_D_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[3]),
        .Q(DataToTriCh0[3]));
  FDCE \DataToTriCh0_reg_D_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[4]),
        .Q(DataToTriCh0[4]));
  FDCE \DataToTriCh0_reg_D_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[5]),
        .Q(DataToTriCh0[5]));
  FDCE \DataToTriCh0_reg_D_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[6]),
        .Q(DataToTriCh0[6]));
  FDCE \DataToTriCh0_reg_D_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[7]),
        .Q(DataToTriCh0[7]));
  FDCE \DataToTriCh0_reg_D_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[8]),
        .Q(DataToTriCh0[8]));
  FDCE \DataToTriCh0_reg_D_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh0_reg[9]),
        .Q(DataToTriCh0[9]));
  FDCE \DataToTriCh0_reg_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[0]),
        .Q(DataToTriCh0_reg[0]));
  FDCE \DataToTriCh0_reg_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[10]),
        .Q(DataToTriCh0_reg[10]));
  FDCE \DataToTriCh0_reg_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[11]),
        .Q(DataToTriCh0_reg[11]));
  FDCE \DataToTriCh0_reg_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[1]),
        .Q(DataToTriCh0_reg[1]));
  FDCE \DataToTriCh0_reg_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[2]),
        .Q(DataToTriCh0_reg[2]));
  FDCE \DataToTriCh0_reg_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[3]),
        .Q(DataToTriCh0_reg[3]));
  FDCE \DataToTriCh0_reg_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[4]),
        .Q(DataToTriCh0_reg[4]));
  FDCE \DataToTriCh0_reg_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[5]),
        .Q(DataToTriCh0_reg[5]));
  FDCE \DataToTriCh0_reg_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[6]),
        .Q(DataToTriCh0_reg[6]));
  FDCE \DataToTriCh0_reg_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[7]),
        .Q(DataToTriCh0_reg[7]));
  FDCE \DataToTriCh0_reg_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[8]),
        .Q(DataToTriCh0_reg[8]));
  FDCE \DataToTriCh0_reg_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0[9]),
        .Q(DataToTriCh0_reg[9]));
  FDCE \DataToTriCh1_reg_D_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[0]),
        .Q(DataToTriCh1[0]));
  FDCE \DataToTriCh1_reg_D_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[10]),
        .Q(DataToTriCh1[10]));
  FDCE \DataToTriCh1_reg_D_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[11]),
        .Q(DataToTriCh1[11]));
  FDCE \DataToTriCh1_reg_D_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[1]),
        .Q(DataToTriCh1[1]));
  FDCE \DataToTriCh1_reg_D_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[2]),
        .Q(DataToTriCh1[2]));
  FDCE \DataToTriCh1_reg_D_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[3]),
        .Q(DataToTriCh1[3]));
  FDCE \DataToTriCh1_reg_D_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[4]),
        .Q(DataToTriCh1[4]));
  FDCE \DataToTriCh1_reg_D_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[5]),
        .Q(DataToTriCh1[5]));
  FDCE \DataToTriCh1_reg_D_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[6]),
        .Q(DataToTriCh1[6]));
  FDCE \DataToTriCh1_reg_D_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[7]),
        .Q(DataToTriCh1[7]));
  FDCE \DataToTriCh1_reg_D_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[8]),
        .Q(DataToTriCh1[8]));
  FDCE \DataToTriCh1_reg_D_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh1_reg[9]),
        .Q(DataToTriCh1[9]));
  FDCE \DataToTriCh1_reg_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[0]),
        .Q(DataToTriCh1_reg[0]));
  FDCE \DataToTriCh1_reg_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[10]),
        .Q(DataToTriCh1_reg[10]));
  FDCE \DataToTriCh1_reg_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[11]),
        .Q(DataToTriCh1_reg[11]));
  FDCE \DataToTriCh1_reg_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[1]),
        .Q(DataToTriCh1_reg[1]));
  FDCE \DataToTriCh1_reg_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[2]),
        .Q(DataToTriCh1_reg[2]));
  FDCE \DataToTriCh1_reg_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[3]),
        .Q(DataToTriCh1_reg[3]));
  FDCE \DataToTriCh1_reg_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[4]),
        .Q(DataToTriCh1_reg[4]));
  FDCE \DataToTriCh1_reg_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[5]),
        .Q(DataToTriCh1_reg[5]));
  FDCE \DataToTriCh1_reg_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[6]),
        .Q(DataToTriCh1_reg[6]));
  FDCE \DataToTriCh1_reg_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[7]),
        .Q(DataToTriCh1_reg[7]));
  FDCE \DataToTriCh1_reg_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[8]),
        .Q(DataToTriCh1_reg[8]));
  FDCE \DataToTriCh1_reg_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch1[9]),
        .Q(DataToTriCh1_reg[9]));
  FDCE \DataToTriCh2_reg_D_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[0]),
        .Q(DataToTriCh3[0]));
  FDCE \DataToTriCh2_reg_D_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[10]),
        .Q(DataToTriCh3[10]));
  FDCE \DataToTriCh2_reg_D_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[11]),
        .Q(DataToTriCh3[11]));
  FDCE \DataToTriCh2_reg_D_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[1]),
        .Q(DataToTriCh3[1]));
  FDCE \DataToTriCh2_reg_D_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[2]),
        .Q(DataToTriCh3[2]));
  FDCE \DataToTriCh2_reg_D_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[3]),
        .Q(DataToTriCh3[3]));
  FDCE \DataToTriCh2_reg_D_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[4]),
        .Q(DataToTriCh3[4]));
  FDCE \DataToTriCh2_reg_D_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[5]),
        .Q(DataToTriCh3[5]));
  FDCE \DataToTriCh2_reg_D_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[6]),
        .Q(DataToTriCh3[6]));
  FDCE \DataToTriCh2_reg_D_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[7]),
        .Q(DataToTriCh3[7]));
  FDCE \DataToTriCh2_reg_D_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[8]),
        .Q(DataToTriCh3[8]));
  FDCE \DataToTriCh2_reg_D_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(DataToTriCh3_reg[9]),
        .Q(DataToTriCh3[9]));
  FDCE \DataToTriCh2_reg_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[0]),
        .Q(DataToTriCh3_reg[0]));
  FDCE \DataToTriCh2_reg_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[10]),
        .Q(DataToTriCh3_reg[10]));
  FDCE \DataToTriCh2_reg_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[11]),
        .Q(DataToTriCh3_reg[11]));
  FDCE \DataToTriCh2_reg_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[1]),
        .Q(DataToTriCh3_reg[1]));
  FDCE \DataToTriCh2_reg_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[2]),
        .Q(DataToTriCh3_reg[2]));
  FDCE \DataToTriCh2_reg_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[3]),
        .Q(DataToTriCh3_reg[3]));
  FDCE \DataToTriCh2_reg_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[4]),
        .Q(DataToTriCh3_reg[4]));
  FDCE \DataToTriCh2_reg_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[5]),
        .Q(DataToTriCh3_reg[5]));
  FDCE \DataToTriCh2_reg_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[6]),
        .Q(DataToTriCh3_reg[6]));
  FDCE \DataToTriCh2_reg_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[7]),
        .Q(DataToTriCh3_reg[7]));
  FDCE \DataToTriCh2_reg_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[8]),
        .Q(DataToTriCh3_reg[8]));
  FDCE \DataToTriCh2_reg_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3[9]),
        .Q(DataToTriCh3_reg[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[0]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[0]),
        .O(\Data_Ch0[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[10]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[10]),
        .O(\Data_Ch0[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Data_Ch0[11]_i_1 
       (.I0(AD_state),
        .I1(Data_Ch0_valid),
        .O(\Data_Ch0[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[11]_i_2 
       (.I0(Data_Ch0_valid),
        .I1(Q[11]),
        .O(\Data_Ch0[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[1]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[1]),
        .O(\Data_Ch0[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[2]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[2]),
        .O(\Data_Ch0[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[3]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[3]),
        .O(\Data_Ch0[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[4]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[4]),
        .O(\Data_Ch0[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[5]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[5]),
        .O(\Data_Ch0[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[6]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[6]),
        .O(\Data_Ch0[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[7]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[7]),
        .O(\Data_Ch0[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[8]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[8]),
        .O(\Data_Ch0[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch0[9]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(Q[9]),
        .O(\Data_Ch0[9]_i_1_n_0 ));
  FDCE \Data_Ch0_reg[0] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[0]_i_1_n_0 ),
        .Q(Data_Ch0[0]));
  FDCE \Data_Ch0_reg[10] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[10]_i_1_n_0 ),
        .Q(Data_Ch0[10]));
  FDCE \Data_Ch0_reg[11] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[11]_i_2_n_0 ),
        .Q(Data_Ch0[11]));
  FDCE \Data_Ch0_reg[1] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[1]_i_1_n_0 ),
        .Q(Data_Ch0[1]));
  FDCE \Data_Ch0_reg[2] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[2]_i_1_n_0 ),
        .Q(Data_Ch0[2]));
  FDCE \Data_Ch0_reg[3] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[3]_i_1_n_0 ),
        .Q(Data_Ch0[3]));
  FDCE \Data_Ch0_reg[4] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[4]_i_1_n_0 ),
        .Q(Data_Ch0[4]));
  FDCE \Data_Ch0_reg[5] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[5]_i_1_n_0 ),
        .Q(Data_Ch0[5]));
  FDCE \Data_Ch0_reg[6] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[6]_i_1_n_0 ),
        .Q(Data_Ch0[6]));
  FDCE \Data_Ch0_reg[7] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[7]_i_1_n_0 ),
        .Q(Data_Ch0[7]));
  FDCE \Data_Ch0_reg[8] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[8]_i_1_n_0 ),
        .Q(Data_Ch0[8]));
  FDCE \Data_Ch0_reg[9] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch0[9]_i_1_n_0 ),
        .Q(Data_Ch0[9]));
  FDCE Data_Ch0_valid_D_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch3_valid),
        .Q(Data_Ch3_valid_D));
  FDCE Data_Ch0_valid_reg
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(Data_Ch0_valid),
        .Q(Data_Ch3_valid));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[0]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [0]),
        .O(\Data_Ch1[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[10]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [10]),
        .O(\Data_Ch1[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[11]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [11]),
        .O(\Data_Ch1[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[1]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [1]),
        .O(\Data_Ch1[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[2]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [2]),
        .O(\Data_Ch1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[3]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [3]),
        .O(\Data_Ch1[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[4]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [4]),
        .O(\Data_Ch1[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[5]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [5]),
        .O(\Data_Ch1[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[6]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [6]),
        .O(\Data_Ch1[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[7]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [7]),
        .O(\Data_Ch1[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[8]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [8]),
        .O(\Data_Ch1[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch1[9]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11] [9]),
        .O(\Data_Ch1[9]_i_1_n_0 ));
  FDCE \Data_Ch1_reg[0] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[0]_i_1_n_0 ),
        .Q(Data_Ch1[0]));
  FDCE \Data_Ch1_reg[10] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[10]_i_1_n_0 ),
        .Q(Data_Ch1[10]));
  FDCE \Data_Ch1_reg[11] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[11]_i_1_n_0 ),
        .Q(Data_Ch1[11]));
  FDCE \Data_Ch1_reg[1] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[1]_i_1_n_0 ),
        .Q(Data_Ch1[1]));
  FDCE \Data_Ch1_reg[2] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[2]_i_1_n_0 ),
        .Q(Data_Ch1[2]));
  FDCE \Data_Ch1_reg[3] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[3]_i_1_n_0 ),
        .Q(Data_Ch1[3]));
  FDCE \Data_Ch1_reg[4] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[4]_i_1_n_0 ),
        .Q(Data_Ch1[4]));
  FDCE \Data_Ch1_reg[5] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[5]_i_1_n_0 ),
        .Q(Data_Ch1[5]));
  FDCE \Data_Ch1_reg[6] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[6]_i_1_n_0 ),
        .Q(Data_Ch1[6]));
  FDCE \Data_Ch1_reg[7] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[7]_i_1_n_0 ),
        .Q(Data_Ch1[7]));
  FDCE \Data_Ch1_reg[8] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[8]_i_1_n_0 ),
        .Q(Data_Ch1[8]));
  FDCE \Data_Ch1_reg[9] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch1[9]_i_1_n_0 ),
        .Q(Data_Ch1[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[0]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [0]),
        .O(\Data_Ch2[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[10]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [10]),
        .O(\Data_Ch2[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[11]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [11]),
        .O(\Data_Ch2[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[1]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [1]),
        .O(\Data_Ch2[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[2]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [2]),
        .O(\Data_Ch2[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[3]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [3]),
        .O(\Data_Ch2[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[4]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [4]),
        .O(\Data_Ch2[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[5]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [5]),
        .O(\Data_Ch2[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[6]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [6]),
        .O(\Data_Ch2[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[7]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [7]),
        .O(\Data_Ch2[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[8]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [8]),
        .O(\Data_Ch2[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Ch2[9]_i_1 
       (.I0(Data_Ch0_valid),
        .I1(\chxDout_reg[11]_0 [9]),
        .O(\Data_Ch2[9]_i_1_n_0 ));
  FDCE \Data_Ch2_reg[0] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[0]_i_1_n_0 ),
        .Q(Data_Ch3[0]));
  FDCE \Data_Ch2_reg[10] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[10]_i_1_n_0 ),
        .Q(Data_Ch3[10]));
  FDCE \Data_Ch2_reg[11] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[11]_i_1_n_0 ),
        .Q(Data_Ch3[11]));
  FDCE \Data_Ch2_reg[1] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[1]_i_1_n_0 ),
        .Q(Data_Ch3[1]));
  FDCE \Data_Ch2_reg[2] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[2]_i_1_n_0 ),
        .Q(Data_Ch3[2]));
  FDCE \Data_Ch2_reg[3] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[3]_i_1_n_0 ),
        .Q(Data_Ch3[3]));
  FDCE \Data_Ch2_reg[4] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[4]_i_1_n_0 ),
        .Q(Data_Ch3[4]));
  FDCE \Data_Ch2_reg[5] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[5]_i_1_n_0 ),
        .Q(Data_Ch3[5]));
  FDCE \Data_Ch2_reg[6] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[6]_i_1_n_0 ),
        .Q(Data_Ch3[6]));
  FDCE \Data_Ch2_reg[7] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[7]_i_1_n_0 ),
        .Q(Data_Ch3[7]));
  FDCE \Data_Ch2_reg[8] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[8]_i_1_n_0 ),
        .Q(Data_Ch3[8]));
  FDCE \Data_Ch2_reg[9] 
       (.C(clk_out1),
        .CE(\Data_Ch0[11]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\Data_Ch2[9]_i_1_n_0 ),
        .Q(Data_Ch3[9]));
  (* FSM_ENCODED_STATES = "IDLE:00,Wait_TRACK_down:0001,Wait_PM_up:01,Start_Sample:10,Check_process:11" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_AD_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(\/FSM_sequential_AD_state[0]_i_1_n_0 ),
        .Q(AD_state));
  (* FSM_ENCODED_STATES = "IDLE:00,Wait_TRACK_down:0001,Wait_PM_up:01,Start_Sample:10,Check_process:11" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_AD_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(\/FSM_sequential_AD_state[1]_i_1_n_0 ),
        .Q(Data_Ch0_valid));
  FDCE PM_D1_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(pll_trig1),
        .Q(PM_D1));
  FDCE PM_D2_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(PM_D1),
        .Q(PM_D2));
  LUT2 #(
    .INIT(4'h2)) 
    TrigInCh3_INST_0
       (.I0(Data_Ch3_valid),
        .I1(Data_Ch3_valid_D),
        .O(TrigInCh3));
  LUT2 #(
    .INIT(4'hE)) 
    \delay_cnt[0]_i_1 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_flag_D),
        .O(\delay_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[0]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[3]),
        .O(\delay_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[0]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[2]),
        .O(\delay_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[0]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[1]),
        .O(\delay_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \delay_cnt[0]_i_6 
       (.I0(delay_cnt_reg[0]),
        .I1(delay_cnt_flag_reg_n_0),
        .O(\delay_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[12]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[15]),
        .O(\delay_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[12]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[14]),
        .O(\delay_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[12]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[13]),
        .O(\delay_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[12]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[12]),
        .O(\delay_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[16]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[19]),
        .O(\delay_cnt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[16]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[18]),
        .O(\delay_cnt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[16]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[17]),
        .O(\delay_cnt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[16]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[16]),
        .O(\delay_cnt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[20]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[23]),
        .O(\delay_cnt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[20]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[22]),
        .O(\delay_cnt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[20]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[21]),
        .O(\delay_cnt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[20]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[20]),
        .O(\delay_cnt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[24]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[27]),
        .O(\delay_cnt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[24]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[26]),
        .O(\delay_cnt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[24]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[25]),
        .O(\delay_cnt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[24]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[24]),
        .O(\delay_cnt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[28]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[31]),
        .O(\delay_cnt[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[28]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[30]),
        .O(\delay_cnt[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[28]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[29]),
        .O(\delay_cnt[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[28]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[28]),
        .O(\delay_cnt[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[4]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[7]),
        .O(\delay_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[4]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[6]),
        .O(\delay_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[4]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[5]),
        .O(\delay_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[4]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[4]),
        .O(\delay_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[8]_i_2 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[11]),
        .O(\delay_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[8]_i_3 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[10]),
        .O(\delay_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[8]_i_4 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[9]),
        .O(\delay_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[8]_i_5 
       (.I0(delay_cnt_flag_reg_n_0),
        .I1(delay_cnt_reg[8]),
        .O(\delay_cnt[8]_i_5_n_0 ));
  FDCE delay_cnt_flag_D_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_flag_reg_n_0),
        .Q(delay_cnt_flag_D));
  LUT6 #(
    .INIT(64'hFBFFBBBB00000000)) 
    delay_cnt_flag_i_1
       (.I0(Data_Ch0_valid),
        .I1(AD_state),
        .I2(PM_D2),
        .I3(PM_D1),
        .I4(Start_mode),
        .I5(delay_cnt_flag_reg_n_0),
        .O(delay_cnt_flag_i_1_n_0));
  FDCE delay_cnt_flag_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_flag_i_1_n_0),
        .Q(delay_cnt_flag_reg_n_0));
  FDCE \delay_cnt_reg[0] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[0]_i_2_n_7 ),
        .Q(delay_cnt_reg[0]));
  CARRY4 \delay_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\delay_cnt_reg[0]_i_2_n_0 ,\delay_cnt_reg[0]_i_2_n_1 ,\delay_cnt_reg[0]_i_2_n_2 ,\delay_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,delay_cnt_flag_reg_n_0}),
        .O({\delay_cnt_reg[0]_i_2_n_4 ,\delay_cnt_reg[0]_i_2_n_5 ,\delay_cnt_reg[0]_i_2_n_6 ,\delay_cnt_reg[0]_i_2_n_7 }),
        .S({\delay_cnt[0]_i_3_n_0 ,\delay_cnt[0]_i_4_n_0 ,\delay_cnt[0]_i_5_n_0 ,\delay_cnt[0]_i_6_n_0 }));
  FDCE \delay_cnt_reg[10] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[8]_i_1_n_5 ),
        .Q(delay_cnt_reg[10]));
  FDCE \delay_cnt_reg[11] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[8]_i_1_n_4 ),
        .Q(delay_cnt_reg[11]));
  FDCE \delay_cnt_reg[12] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[12]_i_1_n_7 ),
        .Q(delay_cnt_reg[12]));
  CARRY4 \delay_cnt_reg[12]_i_1 
       (.CI(\delay_cnt_reg[8]_i_1_n_0 ),
        .CO({\delay_cnt_reg[12]_i_1_n_0 ,\delay_cnt_reg[12]_i_1_n_1 ,\delay_cnt_reg[12]_i_1_n_2 ,\delay_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[12]_i_1_n_4 ,\delay_cnt_reg[12]_i_1_n_5 ,\delay_cnt_reg[12]_i_1_n_6 ,\delay_cnt_reg[12]_i_1_n_7 }),
        .S({\delay_cnt[12]_i_2_n_0 ,\delay_cnt[12]_i_3_n_0 ,\delay_cnt[12]_i_4_n_0 ,\delay_cnt[12]_i_5_n_0 }));
  FDCE \delay_cnt_reg[13] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[12]_i_1_n_6 ),
        .Q(delay_cnt_reg[13]));
  FDCE \delay_cnt_reg[14] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[12]_i_1_n_5 ),
        .Q(delay_cnt_reg[14]));
  FDCE \delay_cnt_reg[15] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[12]_i_1_n_4 ),
        .Q(delay_cnt_reg[15]));
  FDCE \delay_cnt_reg[16] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[16]_i_1_n_7 ),
        .Q(delay_cnt_reg[16]));
  CARRY4 \delay_cnt_reg[16]_i_1 
       (.CI(\delay_cnt_reg[12]_i_1_n_0 ),
        .CO({\delay_cnt_reg[16]_i_1_n_0 ,\delay_cnt_reg[16]_i_1_n_1 ,\delay_cnt_reg[16]_i_1_n_2 ,\delay_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[16]_i_1_n_4 ,\delay_cnt_reg[16]_i_1_n_5 ,\delay_cnt_reg[16]_i_1_n_6 ,\delay_cnt_reg[16]_i_1_n_7 }),
        .S({\delay_cnt[16]_i_2_n_0 ,\delay_cnt[16]_i_3_n_0 ,\delay_cnt[16]_i_4_n_0 ,\delay_cnt[16]_i_5_n_0 }));
  FDCE \delay_cnt_reg[17] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[16]_i_1_n_6 ),
        .Q(delay_cnt_reg[17]));
  FDCE \delay_cnt_reg[18] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[16]_i_1_n_5 ),
        .Q(delay_cnt_reg[18]));
  FDCE \delay_cnt_reg[19] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[16]_i_1_n_4 ),
        .Q(delay_cnt_reg[19]));
  FDCE \delay_cnt_reg[1] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[0]_i_2_n_6 ),
        .Q(delay_cnt_reg[1]));
  FDCE \delay_cnt_reg[20] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[20]_i_1_n_7 ),
        .Q(delay_cnt_reg[20]));
  CARRY4 \delay_cnt_reg[20]_i_1 
       (.CI(\delay_cnt_reg[16]_i_1_n_0 ),
        .CO({\delay_cnt_reg[20]_i_1_n_0 ,\delay_cnt_reg[20]_i_1_n_1 ,\delay_cnt_reg[20]_i_1_n_2 ,\delay_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[20]_i_1_n_4 ,\delay_cnt_reg[20]_i_1_n_5 ,\delay_cnt_reg[20]_i_1_n_6 ,\delay_cnt_reg[20]_i_1_n_7 }),
        .S({\delay_cnt[20]_i_2_n_0 ,\delay_cnt[20]_i_3_n_0 ,\delay_cnt[20]_i_4_n_0 ,\delay_cnt[20]_i_5_n_0 }));
  FDCE \delay_cnt_reg[21] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[20]_i_1_n_6 ),
        .Q(delay_cnt_reg[21]));
  FDCE \delay_cnt_reg[22] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[20]_i_1_n_5 ),
        .Q(delay_cnt_reg[22]));
  FDCE \delay_cnt_reg[23] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[20]_i_1_n_4 ),
        .Q(delay_cnt_reg[23]));
  FDCE \delay_cnt_reg[24] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[24]_i_1_n_7 ),
        .Q(delay_cnt_reg[24]));
  CARRY4 \delay_cnt_reg[24]_i_1 
       (.CI(\delay_cnt_reg[20]_i_1_n_0 ),
        .CO({\delay_cnt_reg[24]_i_1_n_0 ,\delay_cnt_reg[24]_i_1_n_1 ,\delay_cnt_reg[24]_i_1_n_2 ,\delay_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[24]_i_1_n_4 ,\delay_cnt_reg[24]_i_1_n_5 ,\delay_cnt_reg[24]_i_1_n_6 ,\delay_cnt_reg[24]_i_1_n_7 }),
        .S({\delay_cnt[24]_i_2_n_0 ,\delay_cnt[24]_i_3_n_0 ,\delay_cnt[24]_i_4_n_0 ,\delay_cnt[24]_i_5_n_0 }));
  FDCE \delay_cnt_reg[25] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[24]_i_1_n_6 ),
        .Q(delay_cnt_reg[25]));
  FDCE \delay_cnt_reg[26] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[24]_i_1_n_5 ),
        .Q(delay_cnt_reg[26]));
  FDCE \delay_cnt_reg[27] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[24]_i_1_n_4 ),
        .Q(delay_cnt_reg[27]));
  FDCE \delay_cnt_reg[28] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[28]_i_1_n_7 ),
        .Q(delay_cnt_reg[28]));
  CARRY4 \delay_cnt_reg[28]_i_1 
       (.CI(\delay_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_delay_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\delay_cnt_reg[28]_i_1_n_1 ,\delay_cnt_reg[28]_i_1_n_2 ,\delay_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[28]_i_1_n_4 ,\delay_cnt_reg[28]_i_1_n_5 ,\delay_cnt_reg[28]_i_1_n_6 ,\delay_cnt_reg[28]_i_1_n_7 }),
        .S({\delay_cnt[28]_i_2_n_0 ,\delay_cnt[28]_i_3_n_0 ,\delay_cnt[28]_i_4_n_0 ,\delay_cnt[28]_i_5_n_0 }));
  FDCE \delay_cnt_reg[29] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[28]_i_1_n_6 ),
        .Q(delay_cnt_reg[29]));
  FDCE \delay_cnt_reg[2] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[0]_i_2_n_5 ),
        .Q(delay_cnt_reg[2]));
  FDCE \delay_cnt_reg[30] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[28]_i_1_n_5 ),
        .Q(delay_cnt_reg[30]));
  FDCE \delay_cnt_reg[31] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[28]_i_1_n_4 ),
        .Q(delay_cnt_reg[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \delay_cnt_reg[31]_i_1 
       (.I0(delay_cnt_flag_D),
        .I1(delay_cnt_flag_reg_n_0),
        .O(\delay_cnt_reg[31]_i_1_n_0 ));
  FDCE \delay_cnt_reg[3] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[0]_i_2_n_4 ),
        .Q(delay_cnt_reg[3]));
  FDCE \delay_cnt_reg[4] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[4]_i_1_n_7 ),
        .Q(delay_cnt_reg[4]));
  CARRY4 \delay_cnt_reg[4]_i_1 
       (.CI(\delay_cnt_reg[0]_i_2_n_0 ),
        .CO({\delay_cnt_reg[4]_i_1_n_0 ,\delay_cnt_reg[4]_i_1_n_1 ,\delay_cnt_reg[4]_i_1_n_2 ,\delay_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[4]_i_1_n_4 ,\delay_cnt_reg[4]_i_1_n_5 ,\delay_cnt_reg[4]_i_1_n_6 ,\delay_cnt_reg[4]_i_1_n_7 }),
        .S({\delay_cnt[4]_i_2_n_0 ,\delay_cnt[4]_i_3_n_0 ,\delay_cnt[4]_i_4_n_0 ,\delay_cnt[4]_i_5_n_0 }));
  FDCE \delay_cnt_reg[5] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[4]_i_1_n_6 ),
        .Q(delay_cnt_reg[5]));
  FDCE \delay_cnt_reg[6] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[4]_i_1_n_5 ),
        .Q(delay_cnt_reg[6]));
  FDCE \delay_cnt_reg[7] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[4]_i_1_n_4 ),
        .Q(delay_cnt_reg[7]));
  FDCE \delay_cnt_reg[8] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[8]_i_1_n_7 ),
        .Q(delay_cnt_reg[8]));
  CARRY4 \delay_cnt_reg[8]_i_1 
       (.CI(\delay_cnt_reg[4]_i_1_n_0 ),
        .CO({\delay_cnt_reg[8]_i_1_n_0 ,\delay_cnt_reg[8]_i_1_n_1 ,\delay_cnt_reg[8]_i_1_n_2 ,\delay_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\delay_cnt_reg[8]_i_1_n_4 ,\delay_cnt_reg[8]_i_1_n_5 ,\delay_cnt_reg[8]_i_1_n_6 ,\delay_cnt_reg[8]_i_1_n_7 }),
        .S({\delay_cnt[8]_i_2_n_0 ,\delay_cnt[8]_i_3_n_0 ,\delay_cnt[8]_i_4_n_0 ,\delay_cnt[8]_i_5_n_0 }));
  FDCE \delay_cnt_reg[9] 
       (.C(clk_out1),
        .CE(\delay_cnt[0]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(\delay_cnt_reg[8]_i_1_n_6 ),
        .Q(delay_cnt_reg[9]));
  FDCE \delay_cnt_reg_reg[0] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[0]),
        .Q(\axi_rdata_reg[31] [0]));
  FDCE \delay_cnt_reg_reg[10] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[10]),
        .Q(\axi_rdata_reg[31] [10]));
  FDCE \delay_cnt_reg_reg[11] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[11]),
        .Q(\axi_rdata_reg[31] [11]));
  FDCE \delay_cnt_reg_reg[12] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[12]),
        .Q(\axi_rdata_reg[31] [12]));
  FDCE \delay_cnt_reg_reg[13] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[13]),
        .Q(\axi_rdata_reg[31] [13]));
  FDCE \delay_cnt_reg_reg[14] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[14]),
        .Q(\axi_rdata_reg[31] [14]));
  FDCE \delay_cnt_reg_reg[15] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[15]),
        .Q(\axi_rdata_reg[31] [15]));
  FDCE \delay_cnt_reg_reg[16] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[16]),
        .Q(\axi_rdata_reg[31] [16]));
  FDCE \delay_cnt_reg_reg[17] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[17]),
        .Q(\axi_rdata_reg[31] [17]));
  FDCE \delay_cnt_reg_reg[18] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[18]),
        .Q(\axi_rdata_reg[31] [18]));
  FDCE \delay_cnt_reg_reg[19] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[19]),
        .Q(\axi_rdata_reg[31] [19]));
  FDCE \delay_cnt_reg_reg[1] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[1]),
        .Q(\axi_rdata_reg[31] [1]));
  FDCE \delay_cnt_reg_reg[20] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[20]),
        .Q(\axi_rdata_reg[31] [20]));
  FDCE \delay_cnt_reg_reg[21] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[21]),
        .Q(\axi_rdata_reg[31] [21]));
  FDCE \delay_cnt_reg_reg[22] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[22]),
        .Q(\axi_rdata_reg[31] [22]));
  FDCE \delay_cnt_reg_reg[23] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[23]),
        .Q(\axi_rdata_reg[31] [23]));
  FDCE \delay_cnt_reg_reg[24] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[24]),
        .Q(\axi_rdata_reg[31] [24]));
  FDCE \delay_cnt_reg_reg[25] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[25]),
        .Q(\axi_rdata_reg[31] [25]));
  FDCE \delay_cnt_reg_reg[26] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[26]),
        .Q(\axi_rdata_reg[31] [26]));
  FDCE \delay_cnt_reg_reg[27] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[27]),
        .Q(\axi_rdata_reg[31] [27]));
  FDCE \delay_cnt_reg_reg[28] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[28]),
        .Q(\axi_rdata_reg[31] [28]));
  FDCE \delay_cnt_reg_reg[29] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[29]),
        .Q(\axi_rdata_reg[31] [29]));
  FDCE \delay_cnt_reg_reg[2] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[2]),
        .Q(\axi_rdata_reg[31] [2]));
  FDCE \delay_cnt_reg_reg[30] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[30]),
        .Q(\axi_rdata_reg[31] [30]));
  FDCE \delay_cnt_reg_reg[31] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[31]),
        .Q(\axi_rdata_reg[31] [31]));
  FDCE \delay_cnt_reg_reg[3] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[3]),
        .Q(\axi_rdata_reg[31] [3]));
  FDCE \delay_cnt_reg_reg[4] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[4]),
        .Q(\axi_rdata_reg[31] [4]));
  FDCE \delay_cnt_reg_reg[5] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[5]),
        .Q(\axi_rdata_reg[31] [5]));
  FDCE \delay_cnt_reg_reg[6] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[6]),
        .Q(\axi_rdata_reg[31] [6]));
  FDCE \delay_cnt_reg_reg[7] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[7]),
        .Q(\axi_rdata_reg[31] [7]));
  FDCE \delay_cnt_reg_reg[8] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[8]),
        .Q(\axi_rdata_reg[31] [8]));
  FDCE \delay_cnt_reg_reg[9] 
       (.C(clk_out1),
        .CE(\delay_cnt_reg[31]_i_1_n_0 ),
        .CLR(sys_rst_n_reg),
        .D(delay_cnt_reg[9]),
        .Q(\axi_rdata_reg[31] [9]));
endmodule

(* CHECK_LICENSE_TYPE = "Adc3444_TCP_Adc9228_top_0_0,Adc9228_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Adc9228_top,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (FCO_p,
    FCO_n,
    DCO_p,
    DCO_n,
    CHD_p,
    CHD_n,
    CHA_p,
    CHA_n,
    CHB_p,
    CHB_n,
    CHC_p,
    CHC_n,
    pll_trig1,
    pll_trig2,
    DataToTriCh0,
    DataToTriCh1,
    DataToTriCh2,
    DataToTriCh3,
    TrigInCh0,
    TrigInCh1,
    TrigInCh2,
    TrigInCh3,
    adcClkIn_p,
    adcClkIn_n,
    clk_40m_i,
    ps_rst_n,
    led,
    clk_10m_o,
    pll_trig_debug1,
    pll_trig_debug2,
    Start_mode,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input FCO_p;
  input FCO_n;
  input DCO_p;
  input DCO_n;
  input CHD_p;
  input CHD_n;
  input CHA_p;
  input CHA_n;
  input CHB_p;
  input CHB_n;
  input CHC_p;
  input CHC_n;
  input pll_trig1;
  input pll_trig2;
  output [15:0]DataToTriCh0;
  output [15:0]DataToTriCh1;
  output [15:0]DataToTriCh2;
  output [15:0]DataToTriCh3;
  output TrigInCh0;
  output TrigInCh1;
  output TrigInCh2;
  output TrigInCh3;
  output adcClkIn_p;
  output adcClkIn_n;
  input clk_40m_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ps_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ps_rst_n, POLARITY ACTIVE_LOW" *) input ps_rst_n;
  output led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_10m_o CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_10m_o, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_10m_o" *) output clk_10m_o;
  output pll_trig_debug1;
  output pll_trig_debug2;
  input Start_mode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXILite_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite_aclk, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc9228_top_0_0_clk_10m_o" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXILite_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite_aresetn, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWADDR" *) input [31:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXILite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHA_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHA_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHB_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHB_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHC_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHC_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHD_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire CHD_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire DCO_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire DCO_p;
  wire [11:0]\^DataToTriCh0 ;
  wire [11:0]\^DataToTriCh1 ;
  wire [11:0]\^DataToTriCh3 ;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire FCO_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire FCO_p;
  wire S_AXI_ACLK;
  wire [31:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire Start_mode;
  wire TrigInCh3;
  (* SLEW = "SLOW" *) wire adcClkIn_n;
  (* SLEW = "SLOW" *) wire adcClkIn_p;
  wire clk_10m_o;
  (* IBUF_LOW_PWR *) wire clk_40m_i;
  wire pll_trig1;
  wire pll_trig2;
  wire pll_trig_debug1;
  wire pll_trig_debug2;
  wire ps_rst_n;

  assign DataToTriCh0[15] = \<const0> ;
  assign DataToTriCh0[14] = \<const0> ;
  assign DataToTriCh0[13] = \<const0> ;
  assign DataToTriCh0[12] = \<const0> ;
  assign DataToTriCh0[11:0] = \^DataToTriCh0 [11:0];
  assign DataToTriCh1[15] = \<const0> ;
  assign DataToTriCh1[14] = \<const0> ;
  assign DataToTriCh1[13] = \<const0> ;
  assign DataToTriCh1[12] = \<const0> ;
  assign DataToTriCh1[11:0] = \^DataToTriCh1 [11:0];
  assign DataToTriCh2[15] = \<const0> ;
  assign DataToTriCh2[14] = \<const0> ;
  assign DataToTriCh2[13] = \<const0> ;
  assign DataToTriCh2[12] = \<const0> ;
  assign DataToTriCh2[11:0] = \^DataToTriCh3 [11:0];
  assign DataToTriCh3[15] = \<const0> ;
  assign DataToTriCh3[14] = \<const0> ;
  assign DataToTriCh3[13] = \<const0> ;
  assign DataToTriCh3[12] = \<const0> ;
  assign DataToTriCh3[11:0] = \^DataToTriCh3 [11:0];
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign TrigInCh0 = TrigInCh3;
  assign TrigInCh1 = TrigInCh3;
  assign TrigInCh2 = TrigInCh3;
  assign led = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top inst
       (.CHA_n(CHA_n),
        .CHA_p(CHA_p),
        .CHB_n(CHB_n),
        .CHB_p(CHB_p),
        .CHC_n(CHC_n),
        .CHC_p(CHC_p),
        .CHD_n(CHD_n),
        .CHD_p(CHD_p),
        .DCO_n(DCO_n),
        .DCO_p(DCO_p),
        .DataToTriCh0(\^DataToTriCh0 ),
        .DataToTriCh1(\^DataToTriCh1 ),
        .DataToTriCh3(\^DataToTriCh3 ),
        .FCO_n(FCO_n),
        .FCO_p(FCO_p),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .Start_mode(Start_mode),
        .TrigInCh3(TrigInCh3),
        .adcClkIn_n(adcClkIn_n),
        .adcClkIn_p(adcClkIn_p),
        .clk_10m_o(clk_10m_o),
        .clk_40m_i(clk_40m_i),
        .pll_trig1(pll_trig1),
        .pll_trig2(pll_trig2),
        .pll_trig_debug1(pll_trig_debug1),
        .pll_trig_debug2(pll_trig_debug2),
        .ps_rst_n(ps_rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Adc9228_top
   (TrigInCh3,
    S_AXI_ARREADY,
    clk_10m_o,
    adcClkIn_p,
    adcClkIn_n,
    DataToTriCh0,
    DataToTriCh1,
    DataToTriCh3,
    pll_trig_debug1,
    pll_trig_debug2,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_WSTRB,
    S_AXI_ARVALID,
    clk_40m_i,
    CHD_p,
    CHD_n,
    CHA_p,
    CHA_n,
    CHB_p,
    CHB_n,
    CHC_p,
    CHC_n,
    FCO_p,
    FCO_n,
    DCO_p,
    DCO_n,
    Start_mode,
    pll_trig1,
    pll_trig2,
    S_AXI_ACLK,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_WDATA,
    S_AXI_ARESETN,
    ps_rst_n,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output TrigInCh3;
  output S_AXI_ARREADY;
  output clk_10m_o;
  output adcClkIn_p;
  output adcClkIn_n;
  output [11:0]DataToTriCh0;
  output [11:0]DataToTriCh1;
  output [11:0]DataToTriCh3;
  output pll_trig_debug1;
  output pll_trig_debug2;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_ARVALID;
  input clk_40m_i;
  input CHD_p;
  input CHD_n;
  input CHA_p;
  input CHA_n;
  input CHB_p;
  input CHB_n;
  input CHC_p;
  input CHC_n;
  input FCO_p;
  input FCO_n;
  input DCO_p;
  input DCO_n;
  input Start_mode;
  input pll_trig1;
  input pll_trig2;
  input S_AXI_ACLK;
  input [1:0]S_AXI_ARADDR;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [31:0]S_AXI_WDATA;
  input S_AXI_ARESETN;
  input ps_rst_n;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire CHA_n;
  wire CHA_p;
  wire CHB_n;
  wire CHB_p;
  wire CHC_n;
  wire CHC_p;
  wire CHD_n;
  wire CHD_p;
  wire DCO_n;
  wire DCO_p;
  wire [11:0]DataToTriCh0;
  wire [11:0]DataToTriCh1;
  wire [11:0]DataToTriCh3;
  wire FCO_n;
  wire FCO_p;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire Start_mode;
  wire TrigInCh3;
  wire adcClkIn_n;
  wire adcClkIn_p;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk_10m_o;
  wire clk_40m_i;
  wire clk_out1_fromSysCtrl;
  wire clk_out2_fromSysCtrl;
  wire [11:0]data_AD0_w;
  wire [11:0]data_AD1_w;
  wire [11:0]data_AD2_w;
  wire [31:0]delay_cnt_reg;
  wire pll_trig1;
  wire pll_trig2;
  wire pll_trig_debug1;
  wire pll_trig_debug2;
  wire ps_rst_n;
  wire [31:0]reg_data_out;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire sys_ctrl_ins_n_2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AD_control AD_control_inst
       (.DataToTriCh0(DataToTriCh0),
        .DataToTriCh1(DataToTriCh1),
        .DataToTriCh3(DataToTriCh3),
        .Q(data_AD0_w),
        .Start_mode(Start_mode),
        .TrigInCh3(TrigInCh3),
        .\axi_rdata_reg[31] (delay_cnt_reg),
        .\chxDout_reg[11] (data_AD1_w),
        .\chxDout_reg[11]_0 (data_AD2_w),
        .clk_out1(clk_10m_o),
        .pll_trig1(pll_trig1),
        .sys_rst_n_reg(sys_ctrl_ins_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1 adc_1_ins
       (.CHA_n(CHA_n),
        .CHA_p(CHA_p),
        .CHB_n(CHB_n),
        .CHB_p(CHB_p),
        .CHC_n(CHC_n),
        .CHC_p(CHC_p),
        .CHD_n(CHD_n),
        .CHD_p(CHD_p),
        .CLK(clk_10m_o),
        .DCO_n(DCO_n),
        .DCO_p(DCO_p),
        .\Data_Ch1_reg[11] (data_AD1_w),
        .\Data_Ch2_reg[11] (data_AD2_w),
        .FCO_n(FCO_n),
        .FCO_p(FCO_p),
        .Q(data_AD0_w),
        .adcClkIn_n(adcClkIn_n),
        .adcClkIn_p(adcClkIn_p),
        .clk_out2(clk_out2_fromSysCtrl),
        .rst_r2_reg(clk_out1_fromSysCtrl));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(S_AXI_WVALID),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY" *) 
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_WVALID),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_WVALID),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY" *) 
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BVALID" *) 
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(delay_cnt_reg[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(delay_cnt_reg[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(delay_cnt_reg[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(delay_cnt_reg[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(delay_cnt_reg[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(delay_cnt_reg[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(delay_cnt_reg[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(delay_cnt_reg[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(delay_cnt_reg[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(delay_cnt_reg[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(delay_cnt_reg[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(delay_cnt_reg[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(delay_cnt_reg[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(delay_cnt_reg[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(delay_cnt_reg[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(delay_cnt_reg[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(delay_cnt_reg[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(delay_cnt_reg[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(delay_cnt_reg[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(delay_cnt_reg[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(delay_cnt_reg[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(delay_cnt_reg[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(delay_cnt_reg[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(delay_cnt_reg[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(delay_cnt_reg[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(delay_cnt_reg[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(delay_cnt_reg[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(delay_cnt_reg[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(delay_cnt_reg[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(delay_cnt_reg[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(delay_cnt_reg[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(delay_cnt_reg[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *) 
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RVALID" *) 
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WREADY" *) 
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDCE pll_reg1_reg
       (.C(clk_40m_i),
        .CE(1'b1),
        .CLR(sys_ctrl_ins_n_2),
        .D(pll_trig1),
        .Q(pll_trig_debug1));
  FDCE pll_reg2_reg
       (.C(clk_40m_i),
        .CE(1'b1),
        .CLR(sys_ctrl_ins_n_2),
        .D(pll_trig2),
        .Q(pll_trig_debug2));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[15]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[23]_i_1 
       (.I0(S_AXI_WSTRB[2]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[31]_i_1 
       (.I0(S_AXI_WSTRB[3]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg3[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(axi_awaddr[2]),
        .I2(axi_awaddr[3]),
        .I3(\slv_reg3[31]_i_2_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(S_AXI_RVALID),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl sys_ctrl_ins
       (.CLK(clk_out1_fromSysCtrl),
        .\FSM_sequential_AD_state_reg[1] (sys_ctrl_ins_n_2),
        .clk_40m_i(clk_40m_i),
        .clk_out2(clk_out2_fromSysCtrl),
        .ps_rst_n(ps_rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_1
   (CLK,
    adcClkIn_p,
    adcClkIn_n,
    Q,
    \Data_Ch1_reg[11] ,
    \Data_Ch2_reg[11] ,
    CHD_p,
    CHD_n,
    clk_out2,
    CHA_p,
    CHA_n,
    CHB_p,
    CHB_n,
    CHC_p,
    CHC_n,
    FCO_p,
    FCO_n,
    DCO_p,
    DCO_n,
    rst_r2_reg);
  output CLK;
  output adcClkIn_p;
  output adcClkIn_n;
  output [11:0]Q;
  output [11:0]\Data_Ch1_reg[11] ;
  output [11:0]\Data_Ch2_reg[11] ;
  input CHD_p;
  input CHD_n;
  input clk_out2;
  input CHA_p;
  input CHA_n;
  input CHB_p;
  input CHB_n;
  input CHC_p;
  input CHC_n;
  input FCO_p;
  input FCO_n;
  input DCO_p;
  input DCO_n;
  input rst_r2_reg;

  wire CHA_n;
  wire CHA_p;
  wire CHB_n;
  wire CHB_p;
  wire CHC_n;
  wire CHC_p;
  wire CHD_n;
  wire CHD_p;
  wire CLK;
  wire DCO_n;
  wire DCO_p;
  wire [11:0]\Data_Ch1_reg[11] ;
  wire [11:0]\Data_Ch2_reg[11] ;
  wire FCO_n;
  wire FCO_p;
  wire OddrClk;
  wire [11:0]Q;
  wire adcClkIn_n;
  wire adcClkIn_p;
  wire clk_out2;
  wire dclk_bufg;
  wire dclk_ibuf;
  wire dclk_idly;
  wire fcoClkIn_10m;
  wire load;
  wire rst_r2_reg;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;
  wire [4:0]NLW_IDELAYE2_dco_CNTVALUEOUT_UNCONNECTED;
  wire NLW_ODDR_inst_R_UNCONNECTED;
  wire NLW_ODDR_inst_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG BUFG_dclk
       (.I(dclk_idly),
        .O(dclk_bufg));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_dclk
       (.I(DCO_p),
        .IB(DCO_n),
        .O(dclk_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_fclk
       (.I(FCO_p),
        .IB(FCO_n),
        .O(fcoClkIn_10m));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(clk_out2),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    IDELAYE2_dco
       (.C(clk_out2),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CNTVALUEOUT(NLW_IDELAYE2_dco_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(dclk_idly),
        .IDATAIN(dclk_ibuf),
        .INC(1'b0),
        .LD(load),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_inst
       (.I(OddrClk),
        .O(adcClkIn_p),
        .OB(adcClkIn_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    ODDR_inst
       (.C(rst_r2_reg),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(OddrClk),
        .R(NLW_ODDR_inst_R_UNCONNECTED),
        .S(NLW_ODDR_inst_S_UNCONNECTED));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io ch0_idelay
       (.CHD_n(CHD_n),
        .CHD_p(CHD_p),
        .CLK(dclk_bufg),
        .FCO_n(CLK),
        .Q(Q),
        .clk_out2(clk_out2),
        .dclk_idly(dclk_idly),
        .load(load));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0 ch1_idelay
       (.CHA_n(CHA_n),
        .CHA_p(CHA_p),
        .CLK(dclk_bufg),
        .\Data_Ch1_reg[11] (\Data_Ch1_reg[11] ),
        .FCO_n(CLK),
        .clk_out2(clk_out2),
        .dclk_idly(dclk_idly),
        .load(load));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1 ch2_idelay
       (.CHB_n(CHB_n),
        .CHB_p(CHB_p),
        .CLK(dclk_bufg),
        .\Data_Ch2_reg[11] (\Data_Ch2_reg[11] ),
        .clk_out1(CLK),
        .clk_out2(clk_out2),
        .dclk_idly(dclk_idly),
        .load(load));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2 ch3_idelay
       (.CHC_n(CHC_n),
        .CHC_p(CHC_p),
        .clk_out2(clk_out2),
        .dclk_idly(dclk_idly),
        .load(load));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_3 clk_wiz_3_inst
       (.clk_in1(fcoClkIn_10m),
        .clk_out1(CLK));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator load_pulse
       (.clk_out2(clk_out2),
        .load(load));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_2
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire locked;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_2_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_2_clk_wiz
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_2;
  wire clk_out1;
  wire clk_out1_clk_wiz_2;
  wire clk_out2;
  wire clk_out2_clk_wiz_2;
  wire clkfbout_buf_clk_wiz_2;
  wire clkfbout_clk_wiz_2;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_2),
        .O(clkfbout_buf_clk_wiz_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_2),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_2),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(25.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(25.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(100.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(5),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_2),
        .CLKFBOUT(clkfbout_clk_wiz_2),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_2),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_2),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_2),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_3
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_3_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_3_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_3;
  wire clkfbout_buf_clk_wiz_3;
  wire clkfbout_clk_wiz_3;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_3),
        .O(clkfbout_buf_clk_wiz_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_3),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(64.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(100.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(64.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_3),
        .CLKFBOUT(clkfbout_clk_wiz_3),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_3),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io
   (Q,
    CHD_p,
    CHD_n,
    clk_out2,
    load,
    dclk_idly,
    CLK,
    FCO_n);
  output [11:0]Q;
  input CHD_p;
  input CHD_n;
  input clk_out2;
  input load;
  input dclk_idly;
  input CLK;
  input FCO_n;

  wire CHD_n;
  wire CHD_p;
  wire CLK;
  wire FCO_n;
  wire IDELAYE2_chx_n_1;
  wire IDELAYE2_chx_n_2;
  wire IDELAYE2_chx_n_3;
  wire IDELAYE2_chx_n_4;
  wire IDELAYE2_chx_n_5;
  wire [11:0]Q;
  wire Q_0;
  wire Q_1;
  wire adc_chx_ibuf;
  wire adc_chx_idly;
  wire clk_out2;
  wire dclk_idly;
  wire [11:0]dout;
  wire load;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_ch3
       (.I(CHD_p),
        .IB(CHD_n),
        .O(adc_chx_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_inst
       (.C(dclk_idly),
        .CE(1'b1),
        .D(adc_chx_idly),
        .Q1(Q_0),
        .Q2(Q_1),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_chx
       (.C(clk_out2),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b1,1'b0,1'b1,1'b0,1'b1}),
        .CNTVALUEOUT({IDELAYE2_chx_n_1,IDELAYE2_chx_n_2,IDELAYE2_chx_n_3,IDELAYE2_chx_n_4,IDELAYE2_chx_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(adc_chx_idly),
        .IDATAIN(adc_chx_ibuf),
        .INC(1'b0),
        .LD(load),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  FDRE \chxDout_reg[0] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \chxDout_reg[10] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \chxDout_reg[11] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \chxDout_reg[1] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \chxDout_reg[2] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \chxDout_reg[3] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \chxDout_reg[4] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \chxDout_reg[5] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \chxDout_reg[6] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \chxDout_reg[7] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \chxDout_reg[8] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \chxDout_reg[9] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(dout[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_1),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[8]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[9]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_0),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[0]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[1]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[2]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[3]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[4]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[5]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[6]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(dout[7]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "io" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_0
   (\Data_Ch1_reg[11] ,
    CHA_p,
    CHA_n,
    clk_out2,
    load,
    dclk_idly,
    CLK,
    FCO_n);
  output [11:0]\Data_Ch1_reg[11] ;
  input CHA_p;
  input CHA_n;
  input clk_out2;
  input load;
  input dclk_idly;
  input CLK;
  input FCO_n;

  wire CHA_n;
  wire CHA_p;
  wire CLK;
  wire [11:0]\Data_Ch1_reg[11] ;
  wire FCO_n;
  wire IDELAYE2_chx_n_1;
  wire IDELAYE2_chx_n_2;
  wire IDELAYE2_chx_n_3;
  wire IDELAYE2_chx_n_4;
  wire IDELAYE2_chx_n_5;
  wire Q_0;
  wire Q_1;
  wire adc_chx_ibuf;
  wire adc_chx_idly;
  wire clk_out2;
  wire dclk_idly;
  wire \dout_reg_n_0_[0] ;
  wire \dout_reg_n_0_[10] ;
  wire \dout_reg_n_0_[11] ;
  wire \dout_reg_n_0_[1] ;
  wire \dout_reg_n_0_[2] ;
  wire \dout_reg_n_0_[3] ;
  wire \dout_reg_n_0_[4] ;
  wire \dout_reg_n_0_[5] ;
  wire \dout_reg_n_0_[6] ;
  wire \dout_reg_n_0_[7] ;
  wire \dout_reg_n_0_[8] ;
  wire \dout_reg_n_0_[9] ;
  wire load;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_ch3
       (.I(CHA_p),
        .IB(CHA_n),
        .O(adc_chx_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_inst
       (.C(dclk_idly),
        .CE(1'b1),
        .D(adc_chx_idly),
        .Q1(Q_0),
        .Q2(Q_1),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_chx
       (.C(clk_out2),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT({IDELAYE2_chx_n_1,IDELAYE2_chx_n_2,IDELAYE2_chx_n_3,IDELAYE2_chx_n_4,IDELAYE2_chx_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(adc_chx_idly),
        .IDATAIN(adc_chx_ibuf),
        .INC(1'b0),
        .LD(load),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  FDRE \chxDout_reg[0] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[0] ),
        .Q(\Data_Ch1_reg[11] [0]),
        .R(1'b0));
  FDRE \chxDout_reg[10] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[10] ),
        .Q(\Data_Ch1_reg[11] [10]),
        .R(1'b0));
  FDRE \chxDout_reg[11] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[11] ),
        .Q(\Data_Ch1_reg[11] [11]),
        .R(1'b0));
  FDRE \chxDout_reg[1] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[1] ),
        .Q(\Data_Ch1_reg[11] [1]),
        .R(1'b0));
  FDRE \chxDout_reg[2] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[2] ),
        .Q(\Data_Ch1_reg[11] [2]),
        .R(1'b0));
  FDRE \chxDout_reg[3] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[3] ),
        .Q(\Data_Ch1_reg[11] [3]),
        .R(1'b0));
  FDRE \chxDout_reg[4] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[4] ),
        .Q(\Data_Ch1_reg[11] [4]),
        .R(1'b0));
  FDRE \chxDout_reg[5] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[5] ),
        .Q(\Data_Ch1_reg[11] [5]),
        .R(1'b0));
  FDRE \chxDout_reg[6] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[6] ),
        .Q(\Data_Ch1_reg[11] [6]),
        .R(1'b0));
  FDRE \chxDout_reg[7] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[7] ),
        .Q(\Data_Ch1_reg[11] [7]),
        .R(1'b0));
  FDRE \chxDout_reg[8] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[8] ),
        .Q(\Data_Ch1_reg[11] [8]),
        .R(1'b0));
  FDRE \chxDout_reg[9] 
       (.C(FCO_n),
        .CE(1'b1),
        .D(\dout_reg_n_0_[9] ),
        .Q(\Data_Ch1_reg[11] [9]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_1),
        .Q(\dout_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[8] ),
        .Q(\dout_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[9] ),
        .Q(\dout_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_0),
        .Q(\dout_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[0] ),
        .Q(\dout_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[1] ),
        .Q(\dout_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[2] ),
        .Q(\dout_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[3] ),
        .Q(\dout_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[4] ),
        .Q(\dout_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[5] ),
        .Q(\dout_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[6] ),
        .Q(\dout_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[7] ),
        .Q(\dout_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "io" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_1
   (\Data_Ch2_reg[11] ,
    CHB_p,
    CHB_n,
    clk_out2,
    load,
    dclk_idly,
    CLK,
    clk_out1);
  output [11:0]\Data_Ch2_reg[11] ;
  input CHB_p;
  input CHB_n;
  input clk_out2;
  input load;
  input dclk_idly;
  input CLK;
  input clk_out1;

  wire CHB_n;
  wire CHB_p;
  wire CLK;
  wire [11:0]\Data_Ch2_reg[11] ;
  wire IDELAYE2_chx_n_1;
  wire IDELAYE2_chx_n_2;
  wire IDELAYE2_chx_n_3;
  wire IDELAYE2_chx_n_4;
  wire IDELAYE2_chx_n_5;
  wire Q_0;
  wire Q_1;
  wire adc_chx_ibuf;
  wire adc_chx_idly;
  wire clk_out1;
  wire clk_out2;
  wire dclk_idly;
  wire \dout_reg_n_0_[0] ;
  wire \dout_reg_n_0_[10] ;
  wire \dout_reg_n_0_[11] ;
  wire \dout_reg_n_0_[1] ;
  wire \dout_reg_n_0_[2] ;
  wire \dout_reg_n_0_[3] ;
  wire \dout_reg_n_0_[4] ;
  wire \dout_reg_n_0_[5] ;
  wire \dout_reg_n_0_[6] ;
  wire \dout_reg_n_0_[7] ;
  wire \dout_reg_n_0_[8] ;
  wire \dout_reg_n_0_[9] ;
  wire load;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_ch3
       (.I(CHB_p),
        .IB(CHB_n),
        .O(adc_chx_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_inst
       (.C(dclk_idly),
        .CE(1'b1),
        .D(adc_chx_idly),
        .Q1(Q_0),
        .Q2(Q_1),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_chx
       (.C(clk_out2),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CNTVALUEOUT({IDELAYE2_chx_n_1,IDELAYE2_chx_n_2,IDELAYE2_chx_n_3,IDELAYE2_chx_n_4,IDELAYE2_chx_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(adc_chx_idly),
        .IDATAIN(adc_chx_ibuf),
        .INC(1'b0),
        .LD(load),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
  FDRE \chxDout_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[0] ),
        .Q(\Data_Ch2_reg[11] [0]),
        .R(1'b0));
  FDRE \chxDout_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[10] ),
        .Q(\Data_Ch2_reg[11] [10]),
        .R(1'b0));
  FDRE \chxDout_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[11] ),
        .Q(\Data_Ch2_reg[11] [11]),
        .R(1'b0));
  FDRE \chxDout_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[1] ),
        .Q(\Data_Ch2_reg[11] [1]),
        .R(1'b0));
  FDRE \chxDout_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[2] ),
        .Q(\Data_Ch2_reg[11] [2]),
        .R(1'b0));
  FDRE \chxDout_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[3] ),
        .Q(\Data_Ch2_reg[11] [3]),
        .R(1'b0));
  FDRE \chxDout_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[4] ),
        .Q(\Data_Ch2_reg[11] [4]),
        .R(1'b0));
  FDRE \chxDout_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[5] ),
        .Q(\Data_Ch2_reg[11] [5]),
        .R(1'b0));
  FDRE \chxDout_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[6] ),
        .Q(\Data_Ch2_reg[11] [6]),
        .R(1'b0));
  FDRE \chxDout_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[7] ),
        .Q(\Data_Ch2_reg[11] [7]),
        .R(1'b0));
  FDRE \chxDout_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[8] ),
        .Q(\Data_Ch2_reg[11] [8]),
        .R(1'b0));
  FDRE \chxDout_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dout_reg_n_0_[9] ),
        .Q(\Data_Ch2_reg[11] [9]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_1),
        .Q(\dout_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[8] ),
        .Q(\dout_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[9] ),
        .Q(\dout_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q_0),
        .Q(\dout_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[0] ),
        .Q(\dout_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[1] ),
        .Q(\dout_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[2] ),
        .Q(\dout_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[3] ),
        .Q(\dout_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[4] ),
        .Q(\dout_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[5] ),
        .Q(\dout_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[6] ),
        .Q(\dout_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dout_reg_n_0_[7] ),
        .Q(\dout_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "io" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_io_2
   (CHC_p,
    CHC_n,
    clk_out2,
    load,
    dclk_idly);
  input CHC_p;
  input CHC_n;
  input clk_out2;
  input load;
  input dclk_idly;

  wire CHC_n;
  wire CHC_p;
  wire IDELAYE2_chx_n_1;
  wire IDELAYE2_chx_n_2;
  wire IDELAYE2_chx_n_3;
  wire IDELAYE2_chx_n_4;
  wire IDELAYE2_chx_n_5;
  wire Q_0;
  wire Q_1;
  wire adc_chx_ibuf;
  wire adc_chx_idly;
  wire clk_out2;
  wire dclk_idly;
  wire load;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_ch3
       (.I(CHC_p),
        .IB(CHC_n),
        .O(adc_chx_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_inst
       (.C(dclk_idly),
        .CE(1'b1),
        .D(adc_chx_idly),
        .Q1(Q_0),
        .Q2(Q_1),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "AD9228" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_chx
       (.C(clk_out2),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CNTVALUEOUT({IDELAYE2_chx_n_1,IDELAYE2_chx_n_2,IDELAYE2_chx_n_3,IDELAYE2_chx_n_4,IDELAYE2_chx_n_5}),
        .DATAIN(1'b0),
        .DATAOUT(adc_chx_idly),
        .IDATAIN(adc_chx_ibuf),
        .INC(1'b0),
        .LD(load),
        .LDPIPEEN(1'b0),
        .REGRST(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_generator
   (load,
    clk_out2);
  output load;
  input clk_out2;

  wire IDELAYE2_chx_i_10_n_0;
  wire IDELAYE2_chx_i_2_n_0;
  wire IDELAYE2_chx_i_3_n_0;
  wire IDELAYE2_chx_i_4_n_0;
  wire IDELAYE2_chx_i_5_n_0;
  wire IDELAYE2_chx_i_6_n_0;
  wire IDELAYE2_chx_i_7_n_0;
  wire IDELAYE2_chx_i_8_n_0;
  wire IDELAYE2_chx_i_9_n_0;
  wire clk_out2;
  wire \cntDelay[0]_i_3_n_0 ;
  wire \cntDelay[0]_i_4_n_0 ;
  wire \cntDelay[0]_i_5_n_0 ;
  wire \cntDelay[0]_i_6_n_0 ;
  wire [23:0]cntDelay_reg;
  wire \cntDelay_reg[0]_i_2_n_0 ;
  wire \cntDelay_reg[0]_i_2_n_1 ;
  wire \cntDelay_reg[0]_i_2_n_2 ;
  wire \cntDelay_reg[0]_i_2_n_3 ;
  wire \cntDelay_reg[0]_i_2_n_4 ;
  wire \cntDelay_reg[0]_i_2_n_5 ;
  wire \cntDelay_reg[0]_i_2_n_6 ;
  wire \cntDelay_reg[0]_i_2_n_7 ;
  wire \cntDelay_reg[12]_i_1_n_0 ;
  wire \cntDelay_reg[12]_i_1_n_1 ;
  wire \cntDelay_reg[12]_i_1_n_2 ;
  wire \cntDelay_reg[12]_i_1_n_3 ;
  wire \cntDelay_reg[12]_i_1_n_4 ;
  wire \cntDelay_reg[12]_i_1_n_5 ;
  wire \cntDelay_reg[12]_i_1_n_6 ;
  wire \cntDelay_reg[12]_i_1_n_7 ;
  wire \cntDelay_reg[16]_i_1_n_0 ;
  wire \cntDelay_reg[16]_i_1_n_1 ;
  wire \cntDelay_reg[16]_i_1_n_2 ;
  wire \cntDelay_reg[16]_i_1_n_3 ;
  wire \cntDelay_reg[16]_i_1_n_4 ;
  wire \cntDelay_reg[16]_i_1_n_5 ;
  wire \cntDelay_reg[16]_i_1_n_6 ;
  wire \cntDelay_reg[16]_i_1_n_7 ;
  wire \cntDelay_reg[20]_i_1_n_1 ;
  wire \cntDelay_reg[20]_i_1_n_2 ;
  wire \cntDelay_reg[20]_i_1_n_3 ;
  wire \cntDelay_reg[20]_i_1_n_4 ;
  wire \cntDelay_reg[20]_i_1_n_5 ;
  wire \cntDelay_reg[20]_i_1_n_6 ;
  wire \cntDelay_reg[20]_i_1_n_7 ;
  wire \cntDelay_reg[4]_i_1_n_0 ;
  wire \cntDelay_reg[4]_i_1_n_1 ;
  wire \cntDelay_reg[4]_i_1_n_2 ;
  wire \cntDelay_reg[4]_i_1_n_3 ;
  wire \cntDelay_reg[4]_i_1_n_4 ;
  wire \cntDelay_reg[4]_i_1_n_5 ;
  wire \cntDelay_reg[4]_i_1_n_6 ;
  wire \cntDelay_reg[4]_i_1_n_7 ;
  wire \cntDelay_reg[8]_i_1_n_0 ;
  wire \cntDelay_reg[8]_i_1_n_1 ;
  wire \cntDelay_reg[8]_i_1_n_2 ;
  wire \cntDelay_reg[8]_i_1_n_3 ;
  wire \cntDelay_reg[8]_i_1_n_4 ;
  wire \cntDelay_reg[8]_i_1_n_5 ;
  wire \cntDelay_reg[8]_i_1_n_6 ;
  wire \cntDelay_reg[8]_i_1_n_7 ;
  wire load;
  wire sel;
  wire [3:3]\NLW_cntDelay_reg[20]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAA020002AA02AA02)) 
    IDELAYE2_chx_i_1
       (.I0(IDELAYE2_chx_i_2_n_0),
        .I1(IDELAYE2_chx_i_3_n_0),
        .I2(IDELAYE2_chx_i_4_n_0),
        .I3(cntDelay_reg[18]),
        .I4(IDELAYE2_chx_i_5_n_0),
        .I5(cntDelay_reg[17]),
        .O(load));
  LUT4 #(
    .INIT(16'hFFFE)) 
    IDELAYE2_chx_i_10
       (.I0(cntDelay_reg[14]),
        .I1(cntDelay_reg[15]),
        .I2(cntDelay_reg[13]),
        .I3(cntDelay_reg[16]),
        .O(IDELAYE2_chx_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    IDELAYE2_chx_i_2
       (.I0(cntDelay_reg[19]),
        .I1(cntDelay_reg[22]),
        .I2(cntDelay_reg[23]),
        .I3(cntDelay_reg[21]),
        .I4(cntDelay_reg[20]),
        .O(IDELAYE2_chx_i_2_n_0));
  LUT4 #(
    .INIT(16'h010F)) 
    IDELAYE2_chx_i_3
       (.I0(cntDelay_reg[7]),
        .I1(cntDelay_reg[6]),
        .I2(IDELAYE2_chx_i_6_n_0),
        .I3(cntDelay_reg[8]),
        .O(IDELAYE2_chx_i_3_n_0));
  LUT5 #(
    .INIT(32'h15FFFFFF)) 
    IDELAYE2_chx_i_4
       (.I0(IDELAYE2_chx_i_7_n_0),
        .I1(cntDelay_reg[10]),
        .I2(cntDelay_reg[11]),
        .I3(cntDelay_reg[17]),
        .I4(cntDelay_reg[16]),
        .O(IDELAYE2_chx_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
    IDELAYE2_chx_i_5
       (.I0(IDELAYE2_chx_i_8_n_0),
        .I1(cntDelay_reg[2]),
        .I2(cntDelay_reg[0]),
        .I3(cntDelay_reg[6]),
        .I4(IDELAYE2_chx_i_9_n_0),
        .I5(IDELAYE2_chx_i_10_n_0),
        .O(IDELAYE2_chx_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    IDELAYE2_chx_i_6
       (.I0(cntDelay_reg[9]),
        .I1(cntDelay_reg[13]),
        .I2(cntDelay_reg[12]),
        .I3(cntDelay_reg[15]),
        .I4(cntDelay_reg[14]),
        .O(IDELAYE2_chx_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    IDELAYE2_chx_i_7
       (.I0(cntDelay_reg[14]),
        .I1(cntDelay_reg[15]),
        .I2(cntDelay_reg[12]),
        .I3(cntDelay_reg[13]),
        .O(IDELAYE2_chx_i_7_n_0));
  LUT6 #(
    .INIT(64'h0FFF1FFF0FFFFFFF)) 
    IDELAYE2_chx_i_8
       (.I0(cntDelay_reg[8]),
        .I1(cntDelay_reg[7]),
        .I2(cntDelay_reg[11]),
        .I3(cntDelay_reg[12]),
        .I4(cntDelay_reg[10]),
        .I5(cntDelay_reg[9]),
        .O(IDELAYE2_chx_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    IDELAYE2_chx_i_9
       (.I0(cntDelay_reg[8]),
        .I1(cntDelay_reg[10]),
        .I2(cntDelay_reg[3]),
        .I3(cntDelay_reg[5]),
        .I4(cntDelay_reg[4]),
        .I5(cntDelay_reg[1]),
        .O(IDELAYE2_chx_i_9_n_0));
  LUT6 #(
    .INIT(64'h1111111311131113)) 
    \cntDelay[0]_i_1 
       (.I0(cntDelay_reg[19]),
        .I1(\cntDelay[0]_i_3_n_0 ),
        .I2(cntDelay_reg[18]),
        .I3(cntDelay_reg[17]),
        .I4(cntDelay_reg[16]),
        .I5(\cntDelay[0]_i_4_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntDelay[0]_i_3 
       (.I0(cntDelay_reg[20]),
        .I1(cntDelay_reg[21]),
        .I2(cntDelay_reg[23]),
        .I3(cntDelay_reg[22]),
        .O(\cntDelay[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEEEEE)) 
    \cntDelay[0]_i_4 
       (.I0(cntDelay_reg[14]),
        .I1(cntDelay_reg[15]),
        .I2(cntDelay_reg[12]),
        .I3(cntDelay_reg[11]),
        .I4(\cntDelay[0]_i_6_n_0 ),
        .I5(cntDelay_reg[13]),
        .O(\cntDelay[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cntDelay[0]_i_5 
       (.I0(cntDelay_reg[0]),
        .O(\cntDelay[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cntDelay[0]_i_6 
       (.I0(cntDelay_reg[8]),
        .I1(cntDelay_reg[9]),
        .I2(cntDelay_reg[10]),
        .I3(cntDelay_reg[7]),
        .I4(cntDelay_reg[6]),
        .O(\cntDelay[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[0] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[0]_i_2_n_7 ),
        .Q(cntDelay_reg[0]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cntDelay_reg[0]_i_2_n_0 ,\cntDelay_reg[0]_i_2_n_1 ,\cntDelay_reg[0]_i_2_n_2 ,\cntDelay_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cntDelay_reg[0]_i_2_n_4 ,\cntDelay_reg[0]_i_2_n_5 ,\cntDelay_reg[0]_i_2_n_6 ,\cntDelay_reg[0]_i_2_n_7 }),
        .S({cntDelay_reg[3:1],\cntDelay[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[10] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[8]_i_1_n_5 ),
        .Q(cntDelay_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[11] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[8]_i_1_n_4 ),
        .Q(cntDelay_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[12] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[12]_i_1_n_7 ),
        .Q(cntDelay_reg[12]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[12]_i_1 
       (.CI(\cntDelay_reg[8]_i_1_n_0 ),
        .CO({\cntDelay_reg[12]_i_1_n_0 ,\cntDelay_reg[12]_i_1_n_1 ,\cntDelay_reg[12]_i_1_n_2 ,\cntDelay_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntDelay_reg[12]_i_1_n_4 ,\cntDelay_reg[12]_i_1_n_5 ,\cntDelay_reg[12]_i_1_n_6 ,\cntDelay_reg[12]_i_1_n_7 }),
        .S(cntDelay_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[13] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[12]_i_1_n_6 ),
        .Q(cntDelay_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[14] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[12]_i_1_n_5 ),
        .Q(cntDelay_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[15] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[12]_i_1_n_4 ),
        .Q(cntDelay_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[16] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[16]_i_1_n_7 ),
        .Q(cntDelay_reg[16]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[16]_i_1 
       (.CI(\cntDelay_reg[12]_i_1_n_0 ),
        .CO({\cntDelay_reg[16]_i_1_n_0 ,\cntDelay_reg[16]_i_1_n_1 ,\cntDelay_reg[16]_i_1_n_2 ,\cntDelay_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntDelay_reg[16]_i_1_n_4 ,\cntDelay_reg[16]_i_1_n_5 ,\cntDelay_reg[16]_i_1_n_6 ,\cntDelay_reg[16]_i_1_n_7 }),
        .S(cntDelay_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[17] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[16]_i_1_n_6 ),
        .Q(cntDelay_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[18] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[16]_i_1_n_5 ),
        .Q(cntDelay_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[19] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[16]_i_1_n_4 ),
        .Q(cntDelay_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[1] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[0]_i_2_n_6 ),
        .Q(cntDelay_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[20] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[20]_i_1_n_7 ),
        .Q(cntDelay_reg[20]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[20]_i_1 
       (.CI(\cntDelay_reg[16]_i_1_n_0 ),
        .CO({\NLW_cntDelay_reg[20]_i_1_CO_UNCONNECTED [3],\cntDelay_reg[20]_i_1_n_1 ,\cntDelay_reg[20]_i_1_n_2 ,\cntDelay_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntDelay_reg[20]_i_1_n_4 ,\cntDelay_reg[20]_i_1_n_5 ,\cntDelay_reg[20]_i_1_n_6 ,\cntDelay_reg[20]_i_1_n_7 }),
        .S(cntDelay_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[21] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[20]_i_1_n_6 ),
        .Q(cntDelay_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[22] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[20]_i_1_n_5 ),
        .Q(cntDelay_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[23] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[20]_i_1_n_4 ),
        .Q(cntDelay_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[2] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[0]_i_2_n_5 ),
        .Q(cntDelay_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[3] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[0]_i_2_n_4 ),
        .Q(cntDelay_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[4] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[4]_i_1_n_7 ),
        .Q(cntDelay_reg[4]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[4]_i_1 
       (.CI(\cntDelay_reg[0]_i_2_n_0 ),
        .CO({\cntDelay_reg[4]_i_1_n_0 ,\cntDelay_reg[4]_i_1_n_1 ,\cntDelay_reg[4]_i_1_n_2 ,\cntDelay_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntDelay_reg[4]_i_1_n_4 ,\cntDelay_reg[4]_i_1_n_5 ,\cntDelay_reg[4]_i_1_n_6 ,\cntDelay_reg[4]_i_1_n_7 }),
        .S(cntDelay_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[5] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[4]_i_1_n_6 ),
        .Q(cntDelay_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[6] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[4]_i_1_n_5 ),
        .Q(cntDelay_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[7] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[4]_i_1_n_4 ),
        .Q(cntDelay_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[8] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[8]_i_1_n_7 ),
        .Q(cntDelay_reg[8]),
        .R(1'b0));
  CARRY4 \cntDelay_reg[8]_i_1 
       (.CI(\cntDelay_reg[4]_i_1_n_0 ),
        .CO({\cntDelay_reg[8]_i_1_n_0 ,\cntDelay_reg[8]_i_1_n_1 ,\cntDelay_reg[8]_i_1_n_2 ,\cntDelay_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cntDelay_reg[8]_i_1_n_4 ,\cntDelay_reg[8]_i_1_n_5 ,\cntDelay_reg[8]_i_1_n_6 ,\cntDelay_reg[8]_i_1_n_7 }),
        .S(cntDelay_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cntDelay_reg[9] 
       (.C(clk_out2),
        .CE(sel),
        .D(\cntDelay_reg[8]_i_1_n_6 ),
        .Q(cntDelay_reg[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sys_ctrl
   (CLK,
    clk_out2,
    \FSM_sequential_AD_state_reg[1] ,
    clk_40m_i,
    ps_rst_n);
  output CLK;
  output clk_out2;
  output \FSM_sequential_AD_state_reg[1] ;
  input clk_40m_i;
  input ps_rst_n;

  wire CLK;
  wire \FSM_sequential_AD_state_reg[1] ;
  wire clk_40m_i;
  wire clk_out2;
  wire clk_wiz_2_inst_i_1_n_0;
  wire locked;
  wire ps_rst_n;
  wire rst_r1;
  wire rst_r1_i_1_n_0;
  wire rst_r2;
  wire sys_rst_n;
  wire sys_rst_n_i_1_n_0;
  wire sys_rst_nr;

  LUT1 #(
    .INIT(2'h1)) 
    \DataToTriCh0_reg_D[11]_i_1 
       (.I0(sys_rst_n),
        .O(\FSM_sequential_AD_state_reg[1] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_2 clk_wiz_2_inst
       (.clk_in1(clk_40m_i),
        .clk_out1(CLK),
        .clk_out2(clk_out2),
        .locked(locked),
        .reset(clk_wiz_2_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_wiz_2_inst_i_1
       (.I0(rst_r2),
        .O(clk_wiz_2_inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rst_r1_i_1
       (.I0(ps_rst_n),
        .O(rst_r1_i_1_n_0));
  FDCE rst_r1_reg
       (.C(clk_40m_i),
        .CE(1'b1),
        .CLR(rst_r1_i_1_n_0),
        .D(1'b1),
        .Q(rst_r1));
  FDCE rst_r2_reg
       (.C(clk_40m_i),
        .CE(1'b1),
        .CLR(rst_r1_i_1_n_0),
        .D(rst_r1),
        .Q(rst_r2));
  LUT1 #(
    .INIT(2'h1)) 
    sys_rst_n_i_1
       (.I0(sys_rst_nr),
        .O(sys_rst_n_i_1_n_0));
  FDCE sys_rst_n_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(sys_rst_n_i_1_n_0),
        .D(1'b1),
        .Q(sys_rst_n));
  FDRE sys_rst_nr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(locked),
        .Q(sys_rst_nr),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
