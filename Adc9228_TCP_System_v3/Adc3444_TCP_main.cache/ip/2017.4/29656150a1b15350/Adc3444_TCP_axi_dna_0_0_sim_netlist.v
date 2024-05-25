// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed May 25 16:31:01 2022
// Host        : DESKTOP-N01S6N9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_axi_dna_0_0_sim_netlist.v
// Design      : Adc3444_TCP_axi_dna_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Adc3444_TCP_axi_dna_0_0,axi_dna,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dna,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axil_clk,
    s_axil_rstn,
    s_axil_awaddr,
    s_axil_awprot,
    s_axil_awvalid,
    s_axil_awready,
    s_axil_wdata,
    s_axil_wstrb,
    s_axil_wvalid,
    s_axil_wready,
    s_axil_bresp,
    s_axil_bvalid,
    s_axil_bready,
    s_axil_araddr,
    s_axil_arprot,
    s_axil_arvalid,
    s_axil_arready,
    s_axil_rdata,
    s_axil_rresp,
    s_axil_rvalid,
    s_axil_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axil_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil_clk, ASSOCIATED_BUSIF s_axil, ASSOCIATED_RESET s_axil_rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc3444_top_0_1_AdcSampClk" *) input s_axil_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axil_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil_rstn, POLARITY ACTIVE_LOW" *) input s_axil_rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWADDR" *) input [15:0]s_axil_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWPROT" *) input [2:0]s_axil_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWVALID" *) input s_axil_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil AWREADY" *) output s_axil_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WDATA" *) input [31:0]s_axil_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WSTRB" *) input [3:0]s_axil_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WVALID" *) input s_axil_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil WREADY" *) output s_axil_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BRESP" *) output [1:0]s_axil_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BVALID" *) output s_axil_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil BREADY" *) input s_axil_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARADDR" *) input [15:0]s_axil_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARPROT" *) input [2:0]s_axil_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARVALID" *) input s_axil_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil ARREADY" *) output s_axil_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RDATA" *) output [31:0]s_axil_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RRESP" *) output [1:0]s_axil_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RVALID" *) output s_axil_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axil RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axil, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Adc3444_TCP_Adc3444_top_0_1_AdcSampClk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s_axil_rready;

  wire \<const0> ;
  wire [15:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arvalid;
  wire s_axil_awready;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid;
  wire s_axil_clk;
  wire [31:0]s_axil_rdata;
  wire s_axil_rready;
  wire s_axil_rstn;
  wire s_axil_rvalid;
  wire s_axil_wvalid;

  assign s_axil_bresp[1] = \<const0> ;
  assign s_axil_bresp[0] = \<const0> ;
  assign s_axil_rresp[1] = \<const0> ;
  assign s_axil_rresp[0] = \<const0> ;
  assign s_axil_wready = s_axil_awready;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna inst
       (.s_axil_araddr(s_axil_araddr[9:2]),
        .s_axil_arready(s_axil_arready),
        .s_axil_arvalid(s_axil_arvalid),
        .s_axil_awready(s_axil_awready),
        .s_axil_awvalid(s_axil_awvalid),
        .s_axil_bready(s_axil_bready),
        .s_axil_bvalid(s_axil_bvalid),
        .s_axil_clk(s_axil_clk),
        .s_axil_rdata(s_axil_rdata),
        .s_axil_rready(s_axil_rready),
        .s_axil_rstn(s_axil_rstn),
        .s_axil_rvalid(s_axil_rvalid),
        .s_axil_wvalid(s_axil_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_dna
   (s_axil_arready,
    s_axil_rvalid,
    s_axil_bvalid,
    s_axil_awready,
    s_axil_rdata,
    s_axil_arvalid,
    s_axil_rready,
    s_axil_araddr,
    s_axil_clk,
    s_axil_rstn,
    s_axil_bready,
    s_axil_awvalid,
    s_axil_wvalid);
  output s_axil_arready;
  output s_axil_rvalid;
  output s_axil_bvalid;
  output s_axil_awready;
  output [31:0]s_axil_rdata;
  input s_axil_arvalid;
  input s_axil_rready;
  input [7:0]s_axil_araddr;
  input s_axil_clk;
  input s_axil_rstn;
  input s_axil_bready;
  input s_axil_awvalid;
  input s_axil_wvalid;

  wire [31:0]dna_cnt;
  wire dna_cnt0_carry__0_n_0;
  wire dna_cnt0_carry__0_n_1;
  wire dna_cnt0_carry__0_n_2;
  wire dna_cnt0_carry__0_n_3;
  wire dna_cnt0_carry__1_n_0;
  wire dna_cnt0_carry__1_n_1;
  wire dna_cnt0_carry__1_n_2;
  wire dna_cnt0_carry__1_n_3;
  wire dna_cnt0_carry__2_n_0;
  wire dna_cnt0_carry__2_n_1;
  wire dna_cnt0_carry__2_n_2;
  wire dna_cnt0_carry__2_n_3;
  wire dna_cnt0_carry__3_n_0;
  wire dna_cnt0_carry__3_n_1;
  wire dna_cnt0_carry__3_n_2;
  wire dna_cnt0_carry__3_n_3;
  wire dna_cnt0_carry__4_n_0;
  wire dna_cnt0_carry__4_n_1;
  wire dna_cnt0_carry__4_n_2;
  wire dna_cnt0_carry__4_n_3;
  wire dna_cnt0_carry__5_n_0;
  wire dna_cnt0_carry__5_n_1;
  wire dna_cnt0_carry__5_n_2;
  wire dna_cnt0_carry__5_n_3;
  wire dna_cnt0_carry__6_n_2;
  wire dna_cnt0_carry__6_n_3;
  wire dna_cnt0_carry_n_0;
  wire dna_cnt0_carry_n_1;
  wire dna_cnt0_carry_n_2;
  wire dna_cnt0_carry_n_3;
  wire \dna_cnt[0]_i_1_n_0 ;
  wire \dna_cnt[1]_i_1_n_0 ;
  wire \dna_cnt[31]_i_1_n_0 ;
  wire \dna_cnt[31]_i_2_n_0 ;
  wire \dna_cnt[31]_i_3_n_0 ;
  wire \dna_cnt[31]_i_4_n_0 ;
  wire \dna_cnt[31]_i_5_n_0 ;
  wire \dna_cnt[31]_i_6_n_0 ;
  wire \dna_cnt[31]_i_7_n_0 ;
  wire \dna_cnt[31]_i_8_n_0 ;
  wire \dna_cnt[31]_i_9_n_0 ;
  wire \dna_cnt[3]_i_1_n_0 ;
  wire \dna_cnt[4]_i_1_n_0 ;
  wire \dna_cnt[5]_i_1_n_0 ;
  wire dna_dout;
  wire dna_read;
  wire dna_read_i_2_n_0;
  wire dna_read_reg0;
  wire dna_read_reg21_in;
  wire \dna_reg_reg_n_0_[0] ;
  wire \dna_reg_reg_n_0_[10] ;
  wire \dna_reg_reg_n_0_[11] ;
  wire \dna_reg_reg_n_0_[12] ;
  wire \dna_reg_reg_n_0_[13] ;
  wire \dna_reg_reg_n_0_[14] ;
  wire \dna_reg_reg_n_0_[15] ;
  wire \dna_reg_reg_n_0_[16] ;
  wire \dna_reg_reg_n_0_[17] ;
  wire \dna_reg_reg_n_0_[18] ;
  wire \dna_reg_reg_n_0_[19] ;
  wire \dna_reg_reg_n_0_[1] ;
  wire \dna_reg_reg_n_0_[20] ;
  wire \dna_reg_reg_n_0_[21] ;
  wire \dna_reg_reg_n_0_[22] ;
  wire \dna_reg_reg_n_0_[23] ;
  wire \dna_reg_reg_n_0_[24] ;
  wire \dna_reg_reg_n_0_[25] ;
  wire \dna_reg_reg_n_0_[26] ;
  wire \dna_reg_reg_n_0_[27] ;
  wire \dna_reg_reg_n_0_[28] ;
  wire \dna_reg_reg_n_0_[29] ;
  wire \dna_reg_reg_n_0_[2] ;
  wire \dna_reg_reg_n_0_[30] ;
  wire \dna_reg_reg_n_0_[31] ;
  wire \dna_reg_reg_n_0_[32] ;
  wire \dna_reg_reg_n_0_[33] ;
  wire \dna_reg_reg_n_0_[34] ;
  wire \dna_reg_reg_n_0_[35] ;
  wire \dna_reg_reg_n_0_[36] ;
  wire \dna_reg_reg_n_0_[37] ;
  wire \dna_reg_reg_n_0_[38] ;
  wire \dna_reg_reg_n_0_[39] ;
  wire \dna_reg_reg_n_0_[3] ;
  wire \dna_reg_reg_n_0_[40] ;
  wire \dna_reg_reg_n_0_[41] ;
  wire \dna_reg_reg_n_0_[42] ;
  wire \dna_reg_reg_n_0_[43] ;
  wire \dna_reg_reg_n_0_[44] ;
  wire \dna_reg_reg_n_0_[45] ;
  wire \dna_reg_reg_n_0_[46] ;
  wire \dna_reg_reg_n_0_[47] ;
  wire \dna_reg_reg_n_0_[48] ;
  wire \dna_reg_reg_n_0_[49] ;
  wire \dna_reg_reg_n_0_[4] ;
  wire \dna_reg_reg_n_0_[50] ;
  wire \dna_reg_reg_n_0_[51] ;
  wire \dna_reg_reg_n_0_[52] ;
  wire \dna_reg_reg_n_0_[53] ;
  wire \dna_reg_reg_n_0_[54] ;
  wire \dna_reg_reg_n_0_[55] ;
  wire \dna_reg_reg_n_0_[56] ;
  wire \dna_reg_reg_n_0_[5] ;
  wire \dna_reg_reg_n_0_[6] ;
  wire \dna_reg_reg_n_0_[7] ;
  wire \dna_reg_reg_n_0_[8] ;
  wire \dna_reg_reg_n_0_[9] ;
  wire dna_shift;
  wire dna_shift_i_1_n_0;
  wire [31:1]p_1_in;
  wire [31:0]rFPGADNA0;
  wire [24:0]rFPGADNA1;
  wire rFPGADNA2;
  wire [7:0]s_axil_araddr;
  wire s_axil_arready;
  wire s_axil_arready_next;
  wire s_axil_arvalid;
  wire s_axil_awready;
  wire s_axil_awready_next;
  wire s_axil_awvalid;
  wire s_axil_bready;
  wire s_axil_bvalid;
  wire s_axil_bvalid_reg_i_1_n_0;
  wire s_axil_clk;
  wire [31:0]s_axil_rdata;
  wire s_axil_rdata_reg;
  wire \s_axil_rdata_reg[0]_i_1_n_0 ;
  wire \s_axil_rdata_reg[10]_i_1_n_0 ;
  wire \s_axil_rdata_reg[11]_i_1_n_0 ;
  wire \s_axil_rdata_reg[12]_i_1_n_0 ;
  wire \s_axil_rdata_reg[13]_i_1_n_0 ;
  wire \s_axil_rdata_reg[14]_i_1_n_0 ;
  wire \s_axil_rdata_reg[15]_i_1_n_0 ;
  wire \s_axil_rdata_reg[16]_i_1_n_0 ;
  wire \s_axil_rdata_reg[17]_i_1_n_0 ;
  wire \s_axil_rdata_reg[18]_i_1_n_0 ;
  wire \s_axil_rdata_reg[19]_i_1_n_0 ;
  wire \s_axil_rdata_reg[1]_i_1_n_0 ;
  wire \s_axil_rdata_reg[20]_i_1_n_0 ;
  wire \s_axil_rdata_reg[21]_i_1_n_0 ;
  wire \s_axil_rdata_reg[22]_i_1_n_0 ;
  wire \s_axil_rdata_reg[23]_i_1_n_0 ;
  wire \s_axil_rdata_reg[24]_i_1_n_0 ;
  wire \s_axil_rdata_reg[25]_i_1_n_0 ;
  wire \s_axil_rdata_reg[26]_i_1_n_0 ;
  wire \s_axil_rdata_reg[27]_i_1_n_0 ;
  wire \s_axil_rdata_reg[28]_i_1_n_0 ;
  wire \s_axil_rdata_reg[29]_i_1_n_0 ;
  wire \s_axil_rdata_reg[2]_i_1_n_0 ;
  wire \s_axil_rdata_reg[30]_i_1_n_0 ;
  wire \s_axil_rdata_reg[31]_i_2_n_0 ;
  wire \s_axil_rdata_reg[31]_i_3_n_0 ;
  wire \s_axil_rdata_reg[3]_i_1_n_0 ;
  wire \s_axil_rdata_reg[4]_i_1_n_0 ;
  wire \s_axil_rdata_reg[5]_i_1_n_0 ;
  wire \s_axil_rdata_reg[6]_i_1_n_0 ;
  wire \s_axil_rdata_reg[7]_i_1_n_0 ;
  wire \s_axil_rdata_reg[8]_i_1_n_0 ;
  wire \s_axil_rdata_reg[9]_i_1_n_0 ;
  wire s_axil_rready;
  wire s_axil_rstn;
  wire s_axil_rvalid;
  wire s_axil_rvalid_reg_i_1_n_0;
  wire s_axil_wvalid;
  wire [3:2]NLW_dna_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_dna_cnt0_carry__6_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  DNA_PORT #(
    .SIM_DNA_VALUE(57'h010203040506070)) 
    DNA_PORT_inst
       (.CLK(s_axil_clk),
        .DIN(1'b0),
        .DOUT(dna_dout),
        .READ(dna_read),
        .SHIFT(dna_shift));
  CARRY4 dna_cnt0_carry
       (.CI(1'b0),
        .CO({dna_cnt0_carry_n_0,dna_cnt0_carry_n_1,dna_cnt0_carry_n_2,dna_cnt0_carry_n_3}),
        .CYINIT(dna_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(dna_cnt[4:1]));
  CARRY4 dna_cnt0_carry__0
       (.CI(dna_cnt0_carry_n_0),
        .CO({dna_cnt0_carry__0_n_0,dna_cnt0_carry__0_n_1,dna_cnt0_carry__0_n_2,dna_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(dna_cnt[8:5]));
  CARRY4 dna_cnt0_carry__1
       (.CI(dna_cnt0_carry__0_n_0),
        .CO({dna_cnt0_carry__1_n_0,dna_cnt0_carry__1_n_1,dna_cnt0_carry__1_n_2,dna_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(dna_cnt[12:9]));
  CARRY4 dna_cnt0_carry__2
       (.CI(dna_cnt0_carry__1_n_0),
        .CO({dna_cnt0_carry__2_n_0,dna_cnt0_carry__2_n_1,dna_cnt0_carry__2_n_2,dna_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(dna_cnt[16:13]));
  CARRY4 dna_cnt0_carry__3
       (.CI(dna_cnt0_carry__2_n_0),
        .CO({dna_cnt0_carry__3_n_0,dna_cnt0_carry__3_n_1,dna_cnt0_carry__3_n_2,dna_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(dna_cnt[20:17]));
  CARRY4 dna_cnt0_carry__4
       (.CI(dna_cnt0_carry__3_n_0),
        .CO({dna_cnt0_carry__4_n_0,dna_cnt0_carry__4_n_1,dna_cnt0_carry__4_n_2,dna_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(dna_cnt[24:21]));
  CARRY4 dna_cnt0_carry__5
       (.CI(dna_cnt0_carry__4_n_0),
        .CO({dna_cnt0_carry__5_n_0,dna_cnt0_carry__5_n_1,dna_cnt0_carry__5_n_2,dna_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[28:25]),
        .S(dna_cnt[28:25]));
  CARRY4 dna_cnt0_carry__6
       (.CI(dna_cnt0_carry__5_n_0),
        .CO({NLW_dna_cnt0_carry__6_CO_UNCONNECTED[3:2],dna_cnt0_carry__6_n_2,dna_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_dna_cnt0_carry__6_O_UNCONNECTED[3],p_1_in[31:29]}),
        .S({1'b0,dna_cnt[31:29]}));
  LUT5 #(
    .INIT(32'h55555557)) 
    \dna_cnt[0]_i_1 
       (.I0(dna_cnt[0]),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \dna_cnt[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \dna_cnt[31]_i_1 
       (.I0(s_axil_rstn),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dna_cnt[31]_i_2 
       (.I0(dna_cnt[20]),
        .I1(dna_cnt[21]),
        .I2(dna_cnt[18]),
        .I3(dna_cnt[19]),
        .I4(\dna_cnt[31]_i_6_n_0 ),
        .O(\dna_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dna_cnt[31]_i_3 
       (.I0(dna_cnt[12]),
        .I1(dna_cnt[13]),
        .I2(dna_cnt[10]),
        .I3(dna_cnt[11]),
        .I4(\dna_cnt[31]_i_7_n_0 ),
        .O(\dna_cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dna_cnt[31]_i_4 
       (.I0(dna_cnt[31]),
        .I1(dna_cnt[30]),
        .I2(dna_cnt[2]),
        .I3(\dna_cnt[31]_i_8_n_0 ),
        .I4(\dna_cnt[31]_i_9_n_0 ),
        .O(\dna_cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \dna_cnt[31]_i_5 
       (.I0(dna_cnt[0]),
        .I1(dna_cnt[4]),
        .I2(dna_cnt[5]),
        .I3(dna_cnt[3]),
        .I4(dna_cnt[1]),
        .O(\dna_cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dna_cnt[31]_i_6 
       (.I0(dna_cnt[23]),
        .I1(dna_cnt[22]),
        .I2(dna_cnt[25]),
        .I3(dna_cnt[24]),
        .O(\dna_cnt[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dna_cnt[31]_i_7 
       (.I0(dna_cnt[15]),
        .I1(dna_cnt[14]),
        .I2(dna_cnt[17]),
        .I3(dna_cnt[16]),
        .O(\dna_cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dna_cnt[31]_i_8 
       (.I0(dna_cnt[27]),
        .I1(dna_cnt[26]),
        .I2(dna_cnt[29]),
        .I3(dna_cnt[28]),
        .O(\dna_cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dna_cnt[31]_i_9 
       (.I0(dna_cnt[7]),
        .I1(dna_cnt[6]),
        .I2(dna_cnt[9]),
        .I3(dna_cnt[8]),
        .O(\dna_cnt[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \dna_cnt[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \dna_cnt[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \dna_cnt[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(\dna_cnt[31]_i_2_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_4_n_0 ),
        .I4(\dna_cnt[31]_i_5_n_0 ),
        .O(\dna_cnt[5]_i_1_n_0 ));
  FDRE \dna_cnt_reg[0] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_cnt[0]_i_1_n_0 ),
        .Q(dna_cnt[0]),
        .R(s_axil_rstn));
  FDRE \dna_cnt_reg[10] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(dna_cnt[10]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[11] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(dna_cnt[11]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[12] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(dna_cnt[12]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[13] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(dna_cnt[13]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[14] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(dna_cnt[14]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[15] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(dna_cnt[15]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[16] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(dna_cnt[16]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[17] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(dna_cnt[17]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[18] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(dna_cnt[18]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[19] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(dna_cnt[19]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[1] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_cnt[1]_i_1_n_0 ),
        .Q(dna_cnt[1]),
        .R(s_axil_rstn));
  FDRE \dna_cnt_reg[20] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(dna_cnt[20]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[21] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(dna_cnt[21]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[22] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(dna_cnt[22]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[23] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(dna_cnt[23]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[24] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(dna_cnt[24]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[25] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(dna_cnt[25]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[26] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(dna_cnt[26]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[27] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(dna_cnt[27]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[28] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(dna_cnt[28]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[29] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(dna_cnt[29]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[2] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(dna_cnt[2]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[30] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(dna_cnt[30]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[31] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(dna_cnt[31]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[3] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_cnt[3]_i_1_n_0 ),
        .Q(dna_cnt[3]),
        .R(s_axil_rstn));
  FDRE \dna_cnt_reg[4] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_cnt[4]_i_1_n_0 ),
        .Q(dna_cnt[4]),
        .R(s_axil_rstn));
  FDRE \dna_cnt_reg[5] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_cnt[5]_i_1_n_0 ),
        .Q(dna_cnt[5]),
        .R(s_axil_rstn));
  FDRE \dna_cnt_reg[6] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(dna_cnt[6]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[7] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(dna_cnt[7]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[8] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(dna_cnt[8]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  FDRE \dna_cnt_reg[9] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(dna_cnt[9]),
        .R(\dna_cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    dna_read_i_1
       (.I0(dna_read_i_2_n_0),
        .I1(\dna_cnt[31]_i_4_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_2_n_0 ),
        .O(dna_read_reg0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dna_read_i_2
       (.I0(dna_cnt[3]),
        .I1(dna_cnt[4]),
        .I2(dna_cnt[0]),
        .I3(dna_cnt[1]),
        .I4(s_axil_rstn),
        .I5(dna_cnt[5]),
        .O(dna_read_i_2_n_0));
  FDRE dna_read_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(dna_read_reg0),
        .Q(dna_read),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dna_reg[56]_i_1 
       (.I0(\dna_cnt[31]_i_5_n_0 ),
        .I1(\dna_cnt[31]_i_4_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_2_n_0 ),
        .O(dna_read_reg21_in));
  FDRE \dna_reg_reg[0] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(dna_dout),
        .Q(\dna_reg_reg_n_0_[0] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[10] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[9] ),
        .Q(\dna_reg_reg_n_0_[10] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[11] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[10] ),
        .Q(\dna_reg_reg_n_0_[11] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[12] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[11] ),
        .Q(\dna_reg_reg_n_0_[12] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[13] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[12] ),
        .Q(\dna_reg_reg_n_0_[13] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[14] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[13] ),
        .Q(\dna_reg_reg_n_0_[14] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[15] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[14] ),
        .Q(\dna_reg_reg_n_0_[15] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[16] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[15] ),
        .Q(\dna_reg_reg_n_0_[16] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[17] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[16] ),
        .Q(\dna_reg_reg_n_0_[17] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[18] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[17] ),
        .Q(\dna_reg_reg_n_0_[18] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[19] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[18] ),
        .Q(\dna_reg_reg_n_0_[19] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[1] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[0] ),
        .Q(\dna_reg_reg_n_0_[1] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[20] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[19] ),
        .Q(\dna_reg_reg_n_0_[20] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[21] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[20] ),
        .Q(\dna_reg_reg_n_0_[21] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[22] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[21] ),
        .Q(\dna_reg_reg_n_0_[22] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[23] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[22] ),
        .Q(\dna_reg_reg_n_0_[23] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[24] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[23] ),
        .Q(\dna_reg_reg_n_0_[24] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[25] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[24] ),
        .Q(\dna_reg_reg_n_0_[25] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[26] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[25] ),
        .Q(\dna_reg_reg_n_0_[26] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[27] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[26] ),
        .Q(\dna_reg_reg_n_0_[27] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[28] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[27] ),
        .Q(\dna_reg_reg_n_0_[28] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[29] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[28] ),
        .Q(\dna_reg_reg_n_0_[29] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[2] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[1] ),
        .Q(\dna_reg_reg_n_0_[2] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[30] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[29] ),
        .Q(\dna_reg_reg_n_0_[30] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[31] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[30] ),
        .Q(\dna_reg_reg_n_0_[31] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[32] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[31] ),
        .Q(\dna_reg_reg_n_0_[32] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[33] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[32] ),
        .Q(\dna_reg_reg_n_0_[33] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[34] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[33] ),
        .Q(\dna_reg_reg_n_0_[34] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[35] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[34] ),
        .Q(\dna_reg_reg_n_0_[35] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[36] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[35] ),
        .Q(\dna_reg_reg_n_0_[36] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[37] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[36] ),
        .Q(\dna_reg_reg_n_0_[37] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[38] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[37] ),
        .Q(\dna_reg_reg_n_0_[38] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[39] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[38] ),
        .Q(\dna_reg_reg_n_0_[39] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[3] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[2] ),
        .Q(\dna_reg_reg_n_0_[3] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[40] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[39] ),
        .Q(\dna_reg_reg_n_0_[40] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[41] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[40] ),
        .Q(\dna_reg_reg_n_0_[41] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[42] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[41] ),
        .Q(\dna_reg_reg_n_0_[42] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[43] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[42] ),
        .Q(\dna_reg_reg_n_0_[43] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[44] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[43] ),
        .Q(\dna_reg_reg_n_0_[44] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[45] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[44] ),
        .Q(\dna_reg_reg_n_0_[45] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[46] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[45] ),
        .Q(\dna_reg_reg_n_0_[46] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[47] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[46] ),
        .Q(\dna_reg_reg_n_0_[47] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[48] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[47] ),
        .Q(\dna_reg_reg_n_0_[48] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[49] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[48] ),
        .Q(\dna_reg_reg_n_0_[49] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[4] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[3] ),
        .Q(\dna_reg_reg_n_0_[4] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[50] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[49] ),
        .Q(\dna_reg_reg_n_0_[50] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[51] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[50] ),
        .Q(\dna_reg_reg_n_0_[51] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[52] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[51] ),
        .Q(\dna_reg_reg_n_0_[52] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[53] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[52] ),
        .Q(\dna_reg_reg_n_0_[53] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[54] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[53] ),
        .Q(\dna_reg_reg_n_0_[54] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[55] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[54] ),
        .Q(\dna_reg_reg_n_0_[55] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[56] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[55] ),
        .Q(\dna_reg_reg_n_0_[56] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[5] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[4] ),
        .Q(\dna_reg_reg_n_0_[5] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[6] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[5] ),
        .Q(\dna_reg_reg_n_0_[6] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[7] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[6] ),
        .Q(\dna_reg_reg_n_0_[7] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[8] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[7] ),
        .Q(\dna_reg_reg_n_0_[8] ),
        .R(s_axil_rstn));
  FDRE \dna_reg_reg[9] 
       (.C(s_axil_clk),
        .CE(dna_read_reg21_in),
        .D(\dna_reg_reg_n_0_[8] ),
        .Q(\dna_reg_reg_n_0_[9] ),
        .R(s_axil_rstn));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    dna_shift_i_1
       (.I0(\dna_cnt[31]_i_5_n_0 ),
        .I1(\dna_cnt[31]_i_4_n_0 ),
        .I2(\dna_cnt[31]_i_3_n_0 ),
        .I3(\dna_cnt[31]_i_2_n_0 ),
        .I4(s_axil_rstn),
        .O(dna_shift_i_1_n_0));
  FDRE dna_shift_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(dna_shift_i_1_n_0),
        .Q(dna_shift),
        .R(1'b0));
  FDRE \rFPGADNA0_reg[0] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[0] ),
        .Q(rFPGADNA0[0]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[10] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[10] ),
        .Q(rFPGADNA0[10]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[11] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[11] ),
        .Q(rFPGADNA0[11]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[12] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[12] ),
        .Q(rFPGADNA0[12]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[13] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[13] ),
        .Q(rFPGADNA0[13]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[14] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[14] ),
        .Q(rFPGADNA0[14]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[15] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[15] ),
        .Q(rFPGADNA0[15]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[16] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[16] ),
        .Q(rFPGADNA0[16]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[17] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[17] ),
        .Q(rFPGADNA0[17]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[18] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[18] ),
        .Q(rFPGADNA0[18]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[19] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[19] ),
        .Q(rFPGADNA0[19]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[1] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[1] ),
        .Q(rFPGADNA0[1]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[20] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[20] ),
        .Q(rFPGADNA0[20]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[21] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[21] ),
        .Q(rFPGADNA0[21]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[22] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[22] ),
        .Q(rFPGADNA0[22]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[23] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[23] ),
        .Q(rFPGADNA0[23]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[24] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[24] ),
        .Q(rFPGADNA0[24]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[25] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[25] ),
        .Q(rFPGADNA0[25]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[26] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[26] ),
        .Q(rFPGADNA0[26]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[27] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[27] ),
        .Q(rFPGADNA0[27]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[28] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[28] ),
        .Q(rFPGADNA0[28]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[29] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[29] ),
        .Q(rFPGADNA0[29]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[2] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[2] ),
        .Q(rFPGADNA0[2]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[30] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[30] ),
        .Q(rFPGADNA0[30]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[31] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[31] ),
        .Q(rFPGADNA0[31]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[3] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[3] ),
        .Q(rFPGADNA0[3]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[4] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[4] ),
        .Q(rFPGADNA0[4]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[5] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[5] ),
        .Q(rFPGADNA0[5]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[6] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[6] ),
        .Q(rFPGADNA0[6]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[7] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[7] ),
        .Q(rFPGADNA0[7]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[8] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[8] ),
        .Q(rFPGADNA0[8]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA0_reg[9] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[9] ),
        .Q(rFPGADNA0[9]),
        .R(rFPGADNA2));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rFPGADNA1[24]_i_1 
       (.I0(\dna_cnt[31]_i_2_n_0 ),
        .I1(\dna_cnt[31]_i_3_n_0 ),
        .I2(\dna_cnt[31]_i_4_n_0 ),
        .I3(\dna_cnt[31]_i_5_n_0 ),
        .I4(s_axil_rstn),
        .O(rFPGADNA2));
  FDRE \rFPGADNA1_reg[0] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[32] ),
        .Q(rFPGADNA1[0]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[10] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[42] ),
        .Q(rFPGADNA1[10]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[11] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[43] ),
        .Q(rFPGADNA1[11]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[12] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[44] ),
        .Q(rFPGADNA1[12]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[13] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[45] ),
        .Q(rFPGADNA1[13]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[14] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[46] ),
        .Q(rFPGADNA1[14]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[15] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[47] ),
        .Q(rFPGADNA1[15]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[16] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[48] ),
        .Q(rFPGADNA1[16]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[17] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[49] ),
        .Q(rFPGADNA1[17]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[18] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[50] ),
        .Q(rFPGADNA1[18]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[19] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[51] ),
        .Q(rFPGADNA1[19]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[1] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[33] ),
        .Q(rFPGADNA1[1]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[20] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[52] ),
        .Q(rFPGADNA1[20]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[21] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[53] ),
        .Q(rFPGADNA1[21]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[22] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[54] ),
        .Q(rFPGADNA1[22]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[23] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[55] ),
        .Q(rFPGADNA1[23]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[24] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[56] ),
        .Q(rFPGADNA1[24]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[2] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[34] ),
        .Q(rFPGADNA1[2]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[3] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[35] ),
        .Q(rFPGADNA1[3]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[4] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[36] ),
        .Q(rFPGADNA1[4]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[5] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[37] ),
        .Q(rFPGADNA1[5]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[6] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[38] ),
        .Q(rFPGADNA1[6]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[7] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[39] ),
        .Q(rFPGADNA1[7]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[8] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[40] ),
        .Q(rFPGADNA1[8]),
        .R(rFPGADNA2));
  FDRE \rFPGADNA1_reg[9] 
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(\dna_reg_reg_n_0_[41] ),
        .Q(rFPGADNA1[9]),
        .R(rFPGADNA2));
  LUT4 #(
    .INIT(16'h4404)) 
    s_axil_arready_reg_i_1
       (.I0(s_axil_arready),
        .I1(s_axil_arvalid),
        .I2(s_axil_rvalid),
        .I3(s_axil_rready),
        .O(s_axil_arready_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_arready_reg_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(s_axil_arready_next),
        .Q(s_axil_arready),
        .R(s_axil_rstn));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008088)) 
    s_axil_awready_reg0
       (.I0(s_axil_wvalid),
        .I1(s_axil_awvalid),
        .I2(s_axil_bready),
        .I3(s_axil_bvalid),
        .I4(s_axil_awready),
        .O(s_axil_awready_next));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_awready_reg_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(s_axil_awready_next),
        .Q(s_axil_awready),
        .R(s_axil_rstn));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5D0C0C0C)) 
    s_axil_bvalid_reg_i_1
       (.I0(s_axil_awready),
        .I1(s_axil_bvalid),
        .I2(s_axil_bready),
        .I3(s_axil_awvalid),
        .I4(s_axil_wvalid),
        .O(s_axil_bvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_bvalid_reg_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(s_axil_bvalid_reg_i_1_n_0),
        .Q(s_axil_bvalid),
        .R(s_axil_rstn));
  LUT5 #(
    .INIT(32'hFFDCEEDC)) 
    \s_axil_rdata_reg[0]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(rFPGADNA0[0]),
        .I3(s_axil_araddr[0]),
        .I4(rFPGADNA1[0]),
        .O(\s_axil_rdata_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[10]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[10]),
        .I4(rFPGADNA0[10]),
        .O(\s_axil_rdata_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[11]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[11]),
        .I4(rFPGADNA0[11]),
        .O(\s_axil_rdata_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[12]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[12]),
        .I4(rFPGADNA0[12]),
        .O(\s_axil_rdata_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[13]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[13]),
        .I4(rFPGADNA0[13]),
        .O(\s_axil_rdata_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[14]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[14]),
        .I4(rFPGADNA0[14]),
        .O(\s_axil_rdata_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[15]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[15]),
        .I4(rFPGADNA0[15]),
        .O(\s_axil_rdata_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[16]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[16]),
        .I4(rFPGADNA0[16]),
        .O(\s_axil_rdata_reg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[17]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[17]),
        .I4(rFPGADNA0[17]),
        .O(\s_axil_rdata_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[18]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[18]),
        .I4(rFPGADNA0[18]),
        .O(\s_axil_rdata_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[19]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[19]),
        .I4(rFPGADNA0[19]),
        .O(\s_axil_rdata_reg[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDCEEDC)) 
    \s_axil_rdata_reg[1]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(rFPGADNA0[1]),
        .I3(s_axil_araddr[0]),
        .I4(rFPGADNA1[1]),
        .O(\s_axil_rdata_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[20]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[20]),
        .I4(rFPGADNA0[20]),
        .O(\s_axil_rdata_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[21]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[21]),
        .I4(rFPGADNA0[21]),
        .O(\s_axil_rdata_reg[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[22]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[22]),
        .I4(rFPGADNA0[22]),
        .O(\s_axil_rdata_reg[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[23]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[23]),
        .I4(rFPGADNA0[23]),
        .O(\s_axil_rdata_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[24]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[24]),
        .I4(rFPGADNA0[24]),
        .O(\s_axil_rdata_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[25]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[25]),
        .O(\s_axil_rdata_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[26]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[26]),
        .O(\s_axil_rdata_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[27]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[27]),
        .O(\s_axil_rdata_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[28]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[28]),
        .O(\s_axil_rdata_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[29]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[29]),
        .O(\s_axil_rdata_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFDCEEDC)) 
    \s_axil_rdata_reg[2]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(rFPGADNA0[2]),
        .I3(s_axil_araddr[0]),
        .I4(rFPGADNA1[2]),
        .O(\s_axil_rdata_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[30]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[30]),
        .O(\s_axil_rdata_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00B00000)) 
    \s_axil_rdata_reg[31]_i_1 
       (.I0(s_axil_rready),
        .I1(s_axil_rvalid),
        .I2(s_axil_arvalid),
        .I3(s_axil_arready),
        .I4(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .O(s_axil_rdata_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \s_axil_rdata_reg[31]_i_2 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA0[31]),
        .O(\s_axil_rdata_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axil_rdata_reg[31]_i_3 
       (.I0(s_axil_araddr[6]),
        .I1(s_axil_araddr[7]),
        .I2(s_axil_araddr[4]),
        .I3(s_axil_araddr[5]),
        .I4(s_axil_araddr[3]),
        .I5(s_axil_araddr[2]),
        .O(\s_axil_rdata_reg[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[3]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[3]),
        .I4(rFPGADNA0[3]),
        .O(\s_axil_rdata_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[4]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[4]),
        .I4(rFPGADNA0[4]),
        .O(\s_axil_rdata_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[5]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[5]),
        .I4(rFPGADNA0[5]),
        .O(\s_axil_rdata_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[6]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[6]),
        .I4(rFPGADNA0[6]),
        .O(\s_axil_rdata_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[7]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[7]),
        .I4(rFPGADNA0[7]),
        .O(\s_axil_rdata_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[8]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[8]),
        .I4(rFPGADNA0[8]),
        .O(\s_axil_rdata_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11011000)) 
    \s_axil_rdata_reg[9]_i_1 
       (.I0(s_axil_araddr[1]),
        .I1(\s_axil_rdata_reg[31]_i_3_n_0 ),
        .I2(s_axil_araddr[0]),
        .I3(rFPGADNA1[9]),
        .I4(rFPGADNA0[9]),
        .O(\s_axil_rdata_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[0] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[0]_i_1_n_0 ),
        .Q(s_axil_rdata[0]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[10] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[10]_i_1_n_0 ),
        .Q(s_axil_rdata[10]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[11] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[11]_i_1_n_0 ),
        .Q(s_axil_rdata[11]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[12] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[12]_i_1_n_0 ),
        .Q(s_axil_rdata[12]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[13] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[13]_i_1_n_0 ),
        .Q(s_axil_rdata[13]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[14] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[14]_i_1_n_0 ),
        .Q(s_axil_rdata[14]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[15] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[15]_i_1_n_0 ),
        .Q(s_axil_rdata[15]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[16] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[16]_i_1_n_0 ),
        .Q(s_axil_rdata[16]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[17] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[17]_i_1_n_0 ),
        .Q(s_axil_rdata[17]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[18] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[18]_i_1_n_0 ),
        .Q(s_axil_rdata[18]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[19] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[19]_i_1_n_0 ),
        .Q(s_axil_rdata[19]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[1] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[1]_i_1_n_0 ),
        .Q(s_axil_rdata[1]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[20] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[20]_i_1_n_0 ),
        .Q(s_axil_rdata[20]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[21] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[21]_i_1_n_0 ),
        .Q(s_axil_rdata[21]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[22] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[22]_i_1_n_0 ),
        .Q(s_axil_rdata[22]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[23] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[23]_i_1_n_0 ),
        .Q(s_axil_rdata[23]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[24] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[24]_i_1_n_0 ),
        .Q(s_axil_rdata[24]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[25] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[25]_i_1_n_0 ),
        .Q(s_axil_rdata[25]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[26] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[26]_i_1_n_0 ),
        .Q(s_axil_rdata[26]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[27] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[27]_i_1_n_0 ),
        .Q(s_axil_rdata[27]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[28] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[28]_i_1_n_0 ),
        .Q(s_axil_rdata[28]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[29] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[29]_i_1_n_0 ),
        .Q(s_axil_rdata[29]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[2] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[2]_i_1_n_0 ),
        .Q(s_axil_rdata[2]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[30] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[30]_i_1_n_0 ),
        .Q(s_axil_rdata[30]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[31] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[31]_i_2_n_0 ),
        .Q(s_axil_rdata[31]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[3] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[3]_i_1_n_0 ),
        .Q(s_axil_rdata[3]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[4] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[4]_i_1_n_0 ),
        .Q(s_axil_rdata[4]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[5] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[5]_i_1_n_0 ),
        .Q(s_axil_rdata[5]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[6] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[6]_i_1_n_0 ),
        .Q(s_axil_rdata[6]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[7] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[7]_i_1_n_0 ),
        .Q(s_axil_rdata[7]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[8] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[8]_i_1_n_0 ),
        .Q(s_axil_rdata[8]),
        .R(s_axil_rdata_reg));
  FDRE #(
    .INIT(1'b0)) 
    \s_axil_rdata_reg_reg[9] 
       (.C(s_axil_clk),
        .CE(s_axil_arready_next),
        .D(\s_axil_rdata_reg[9]_i_1_n_0 ),
        .Q(s_axil_rdata[9]),
        .R(s_axil_rdata_reg));
  LUT4 #(
    .INIT(16'h22F2)) 
    s_axil_rvalid_reg_i_1
       (.I0(s_axil_arvalid),
        .I1(s_axil_arready),
        .I2(s_axil_rvalid),
        .I3(s_axil_rready),
        .O(s_axil_rvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axil_rvalid_reg_reg
       (.C(s_axil_clk),
        .CE(1'b1),
        .D(s_axil_rvalid_reg_i_1_n_0),
        .Q(s_axil_rvalid),
        .R(s_axil_rstn));
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
