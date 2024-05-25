`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/26 11:24:56
// Design Name: 
// Module Name: Adc9228_top
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


module Adc9228_top #(

    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH    = 32,
   // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH    = 32
)(
    //ADC ports
    //input ports 
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
    input pll_trig1, //信号源同步脉冲触发
    input pll_trig2, //同步脉冲触发
    
    //output ports
    output [15:0]DataToTriCh0_o,
    output [15:0]DataToTriCh1_o,
    output [15:0]DataToTriCh2_o,
    output [15:0]DataToTriCh3_o,
    
    output TrigInCh0_o,       //TriggerCh触发信号
    output TrigInCh1_o,
    output TrigInCh2_o,
    output TrigInCh3_o,
    
    output adcClkIn_p,  
    output adcClkIn_n,

    input clk_40m_i,
    input ps_rst_n,          //ps端预留复位
    output led,

    output clk_100m_o,      //100MHz作为模块输出,供给iTrigClk和axi_clk
    output pll_trig_debug1,
    output pll_trig_debug2,
    
    // command from ZYNQ through EMIO
    input Start_mode,    //0 represent not start yet, 1 represent start data sampling and transmitting
    
     // AXI lite interface  
    // Global Clock Signal
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXILite_aclk CLK" *)
      input wire  S_AXI_ACLK,
      // Global Reset Signal. This Signal is Active LOW
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXILite_aresetn RST" *)
      input wire  S_AXI_ARESETN,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWADDR" *)
      // Write address (issued by master, acceped by Slave)
      input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
      // Write channel Protection type. This signal indicates the
          // privilege and security level of the transaction, and whether
          // the transaction is a data access or an instruction access.
 (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWPROT" *)     
      input wire [2 : 0] S_AXI_AWPROT,
      // Write address valid. This signal indicates that the master signaling
          // valid write address and control information.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWVALID" *)          
      input wire  S_AXI_AWVALID,
      // Write address ready. This signal indicates that the slave is ready
          // to accept an address and associated control signals.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite AWREADY" *)          
      output wire  S_AXI_AWREADY,
      // Write data (issued by master, acceped by Slave) 
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WDATA" *)
      input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
      // Write strobes. This signal indicates which byte lanes hold
          // valid data. There is one write strobe bit for each eight
          // bits of the write data bus. 
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WSTRB" *)   
      input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
      // Write valid. This signal indicates that valid write
          // data and strobes are available.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WVALID" *) 
      input wire  S_AXI_WVALID,
      // Write ready. This signal indicates that the slave
          // can accept the write data.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite WREADY" *)
      output wire  S_AXI_WREADY,
      // Write response. This signal indicates the status
          // of the write transaction.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BRESP" *)
      output wire [1 : 0] S_AXI_BRESP,
      // Write response valid. This signal indicates that the channel
          // is signaling a valid write response.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BVALID" *)
      output wire  S_AXI_BVALID,
      // Response ready. This signal indicates that the master
          // can accept a write response.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite BREADY" *)
      input wire  S_AXI_BREADY,
      // Read address (issued by master, acceped by Slave)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARADDR" *)
      input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
      // Protection type. This signal indicates the privilege
          // and security level of the transaction, and whether the
          // transaction is a data access or an instruction access.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARPROT" *)
      input wire [2 : 0] S_AXI_ARPROT,
      // Read address valid. This signal indicates that the channel
          // is signaling valid read address and control information.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARVALID" *)
      input wire  S_AXI_ARVALID,
      // Read address ready. This signal indicates that the slave is
          // ready to accept an address and associated control signals.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite ARREADY" *)
      output wire  S_AXI_ARREADY,
      // Read data (issued by slave)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RDATA" *)
      output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
      // Read response. This signal indicates the status of the
          // read transfer.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RRESP" *)
      output wire [1 : 0] S_AXI_RRESP,
      // Read valid. This signal indicates that the channel is
          // signaling the required read data.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RVALID" *)
      output wire  S_AXI_RVALID,
      // Read ready. This signal indicates that the master can
          // accept the read data and response information.
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXILite RREADY" *)
      input wire  S_AXI_RREADY
);

    wire clk_out1_fromSysCtrl;
    wire clk_out2_fromSysCtrl;
    wire clk_10m_o;    
    wire sys_rst_n;
    wire TrigChirp;
    //wire pll_trig_debug1, pll_trig_debug2;
    
    reg [1:0] working_mode = 2'b00;     //1024点模式,暂时无法自定义
      
    //原始采集
    wire [15:0]data_AD0_w;        //adc的4路数据
    wire [15:0]data_AD1_w;       
    wire [15:0]data_AD2_w;      
    wire [15:0]data_AD3_w;       
    reg pll_reg1;
    reg pll_reg2;
    
    wire [31:0] delay_cnt_w;
    
    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]     axi_awaddr;
    reg      axi_awready;
    reg      axi_wready;
    reg [1 : 0]     axi_bresp;
    reg      axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]     axi_araddr;
    reg      axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0]     axi_rdata;
    reg [1 : 0]     axi_rresp;
    reg      axi_rvalid;
    
    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 1;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 4
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg3;
    wire     slv_reg_rden;
    wire     slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]     reg_data_out;
    integer     byte_index;
    reg     aw_en;
    
    always @(posedge clk_40m_i or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        pll_reg1 <= 1'b0;
        pll_reg2 <= 1'b0;
        end
        else begin
            pll_reg1 <= pll_trig1;
            pll_reg2 <= pll_trig2;
        end
    end
        
    assign pll_trig_debug1 = pll_reg1;
    assign pll_trig_debug2 = pll_reg2;
    
    sys_ctrl sys_ctrl_ins(
         .clk_i(clk_40m_i),                 //外界40m时钟输入
         .ext_rst_n(ps_rst_n),              //复位信号输入，由ps产生
         .sys_rst_n(sys_rst_n),             //复位信号输出
         .clk_out1(clk_out1_fromSysCtrl),
         .clk_out2(clk_out2_fromSysCtrl),
         .clk_out3(clk_100m_o)              //TrigCh和axi时钟100MHz
     );    
         
    adc_1 adc_1_ins(    
        .FCO_p(FCO_p),
        .FCO_n(FCO_n),
        .DCO_p(DCO_p),
        .DCO_n(DCO_n),
        
        .CHD_p(CHD_p),
        .CHD_n(CHD_n),
        .CHA_p(CHA_p),
        .CHA_n(CHA_n),
        .CHB_p(CHB_p),
        .CHB_n(CHB_n),
        .CHC_p(CHC_p),
        .CHC_n(CHC_n),
        
        .clk_10m_o(clk_10m_o),            //输出10M时钟作为全局时钟
        .ch0_dout(data_AD0_w),
        .ch1_dout(data_AD1_w),
        .ch2_dout(data_AD2_w),            
        .ch3_dout(data_AD3_w),
        
        .rst_n(sys_rst_n),                      //复位，低电平有效。由sys_ctrl模块而来
        .adcClkIn_p_o(adcClkIn_p),
        .adcClkIn_n_o(adcClkIn_n),              //adc接口给adc芯片的10m差分时钟，接着adc芯片会返回两个差分时钟分别为DCO=60m,FCO=10m.
        .clk_10m_i(clk_out1_fromSysCtrl),       //adc的10m采集时钟
        .clk_200m_i(clk_out2_fromSysCtrl),      //作为adc延迟的参考时钟
        
        .led(led)
    );
    
    wire [15:0]DataToTriCh0;    //10MHz
    wire [15:0]DataToTriCh1;
    wire [15:0]DataToTriCh2;
    wire [15:0]DataToTriCh3;
    
    wire Data_Ch0_wr_en;    //fifo wr_en
    wire Data_Ch1_wr_en;
    wire Data_Ch2_wr_en;
    wire Data_Ch3_wr_en;
    
    wire Data_Ch0_tlast;    //数据尾
    wire Data_Ch1_tlast;
    wire Data_Ch2_tlast;
    wire Data_Ch3_tlast;
        
    wire TrigInCh0;
    wire TrigInCh1;
    wire TrigInCh2;
    wire TrigInCh3;
    
    wire [10:0] count_Ch0;   //ila测试
    wire [10:0] count_Ch1;
    wire [10:0] count_Ch2;
    wire [10:0] count_Ch3;
    
    AD_control AD_control_inst(
    
        .AdcSampClk(clk_10m_o),    //10MHz,output by AD
        .reset_n(sys_rst_n),
        
        // Signal from RF Radar
        .PM(pll_trig1),
        .TRACK(1'b1),          //default high
        
        // Data from AD9228
        .AdcDataCh0(data_AD0_w),      //IF 1  
        .AdcDataCh1(data_AD1_w),      //IF 1 
        .AdcDataCh2(data_AD2_w),      //IF 2
        .AdcDataCh3(data_AD3_w),      //IF 3
         
        // command from ZYNQ through EMIO
        .Start_mode(Start_mode),    //0 represent not start yet, 1 represent start data sampling and transmitting
        
        //output ports to TriggerDMA
        .DataToTriCh0(DataToTriCh0),    //仿真结果比data_AD0_w延时3拍
        .DataToTriCh1(DataToTriCh1),
        .DataToTriCh2(DataToTriCh2),
        .DataToTriCh3(DataToTriCh3),
        
        .Data_Ch0_wr_en(Data_Ch0_wr_en),
        .Data_Ch1_wr_en(Data_Ch1_wr_en),
        .Data_Ch2_wr_en(Data_Ch2_wr_en),
        .Data_Ch3_wr_en(Data_Ch3_wr_en), 
        
        .Data_Ch0_tlast(Data_Ch0_tlast),
        .Data_Ch1_tlast(Data_Ch1_tlast),
        .Data_Ch2_tlast(Data_Ch2_tlast),
        .Data_Ch3_tlast(Data_Ch3_tlast),
                
        .TrigInCh0(TrigInCh0),      //根据DataToTriCh0和data_AD0_w时序延迟3拍
        .TrigInCh1(TrigInCh1),
        .TrigInCh2(TrigInCh2),
        .TrigInCh3(TrigInCh3),
        
        .count_Ch0(count_Ch0),  
        .count_Ch1(count_Ch1),
        .count_Ch2(count_Ch2),
        .count_Ch3(count_Ch3),        
        
        .delay_cnt_w(delay_cnt_w)
     );
    
    //组装数据
    wire [16:0] DataToTriCh0_pack = {TrigInCh0, DataToTriCh0};
    wire [16:0] DataToTriCh1_pack = {TrigInCh1, DataToTriCh1};
    wire [16:0] DataToTriCh2_pack = {TrigInCh2, DataToTriCh2};
    wire [16:0] DataToTriCh3_pack = {TrigInCh3, DataToTriCh3};
    
    // I/O Connections assignments
    assign S_AXI_AWREADY	= axi_awready;
    assign S_AXI_WREADY	= axi_wready;
    assign S_AXI_BRESP	= axi_bresp;
    assign S_AXI_BVALID	= axi_bvalid;
    assign S_AXI_ARREADY	= axi_arready;
    assign S_AXI_RDATA	= axi_rdata;
    assign S_AXI_RRESP	= axi_rresp;
    assign S_AXI_RVALID	= axi_rvalid;
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          2'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h1:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          2'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                    end
	        endcase
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
//	        2'h0   : reg_data_out <= slv_reg0;
            2'h0    :reg_data_out <= delay_cnt_w;
	        2'h1   : reg_data_out <= slv_reg1;
	        2'h2   : reg_data_out <= slv_reg2;
	        2'h3   : reg_data_out <= slv_reg3;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    
	
//--------------------------------------------------------------------------------------------------------
    //Ch0 数据速率转换
    reg [16:0] DataToTriCh0_pack_d1;
    reg [16:0] DataToTriCh0_pack_d2;
    
    //打2拍对齐
    always @ (posedge clk_10m_o) begin
       DataToTriCh0_pack_d1 <= DataToTriCh0_pack;
       DataToTriCh0_pack_d2 <= DataToTriCh0_pack_d1;
    end
    
    //将10MHz数据和触发转为100MHz输出
    wire [16:0] DataToTriCh0_o_pack;    //100MHz
    wire wr_rst_busy_0, rd_rst_busy_0;
    wire m_axis_tvalid_0;
    
    fifo_generator_0 fifo_generator_0_ins (
      .wr_rst_busy(wr_rst_busy_0),          // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy_0),          // output wire rd_rst_busy
      .m_aclk(clk_100m_o),                  // input wire m_aclk
      .s_aclk(clk_10m_o),                   // input wire s_aclk
      .s_aresetn(sys_rst_n),                // input wire s_aresetn
      .s_axis_tvalid(Data_Ch0_wr_en),       // input wire s_axis_tvalid
      .s_axis_tready(),                     // output wire s_axis_tready
//      .s_axis_tdata(DataToTriCh0_pack),   // input wire [15 : 0] s_axis_tdata
      .s_axis_tdata(DataToTriCh0_pack_d2),  // input wire [15 : 0] s_axis_tdata, delay 2 clap
      .s_axis_tlast(Data_Ch0_tlast),        // input wire s_axis_tlast
      .m_axis_tvalid(m_axis_tvalid_0),      // output wire m_axis_tvalid
      .m_axis_tready(m_axis_tvalid_0),      // input wire m_axis_tready
      .m_axis_tdata(DataToTriCh0_o_pack),   // output wire [15 : 0] m_axis_tdata
      .m_axis_tlast()                       // output wire m_axis_tlast
    );

    assign DataToTriCh0_o[15:0] = DataToTriCh0_o_pack[15:0];
    assign TrigInCh0_o = DataToTriCh0_o_pack[16:16] && m_axis_tvalid_0;
    
    //Ch1 数据速率转换
    reg [16:0] DataToTriCh1_pack_d1;
    reg [16:0] DataToTriCh1_pack_d2;
    
    //打2拍对齐
    always @ (posedge clk_10m_o) begin
       DataToTriCh1_pack_d1 <= DataToTriCh1_pack;
       DataToTriCh1_pack_d2 <= DataToTriCh1_pack_d1;
    end
    
    //将10MHz数据和触发转为100MHz输出
    wire [16:0] DataToTriCh1_o_pack;    //100MHz
    wire wr_rst_busy_1, rd_rst_busy_1;
    wire m_axis_tvalid_1;
    
    fifo_generator_0 fifo_generator_1_ins (
      .wr_rst_busy(wr_rst_busy_1),          // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy_1),          // output wire rd_rst_busy
      .m_aclk(clk_100m_o),                  // input wire m_aclk
      .s_aclk(clk_10m_o),                   // input wire s_aclk
      .s_aresetn(sys_rst_n),                // input wire s_aresetn
      .s_axis_tvalid(Data_Ch1_wr_en),       // input wire s_axis_tvalid
      .s_axis_tready(),                     // output wire s_axis_tready
//      .s_axis_tdata(DataToTriCh0_pack),   // input wire [16 : 0] s_axis_tdata
      .s_axis_tdata(DataToTriCh1_pack_d2),  // input wire [16 : 0] s_axis_tdata, delay 2 clap
      .s_axis_tlast(Data_Ch1_tlast),        // input wire s_axis_tlast
      .m_axis_tvalid(m_axis_tvalid_1),      // output wire m_axis_tvalid
      .m_axis_tready(m_axis_tvalid_1),      // input wire m_axis_tready
      .m_axis_tdata(DataToTriCh1_o_pack),   // output wire [16 : 0] m_axis_tdata
      .m_axis_tlast()                       // output wire m_axis_tlast
    );

    assign DataToTriCh1_o[15:0] = DataToTriCh1_o_pack[15:0];
    assign TrigInCh1_o = DataToTriCh1_o_pack[16:16] && m_axis_tvalid_1;
    
    //Ch2 数据速率转换
    reg [16:0] DataToTriCh2_pack_d1;
    reg [16:0] DataToTriCh2_pack_d2;
    
    //打3拍对齐
    always @ (posedge clk_10m_o) begin
       DataToTriCh2_pack_d1 <= DataToTriCh2_pack;
       DataToTriCh2_pack_d2 <= DataToTriCh2_pack_d1;
    end
    
    //将10MHz数据和触发转为100MHz输出
    wire [16:0] DataToTriCh2_o_pack;    //100MHz
    wire wr_rst_busy_2, rd_rst_busy_2;
    wire m_axis_tvalid_2;
    
    fifo_generator_0 fifo_generator_2_ins (
      .wr_rst_busy(wr_rst_busy_2),          // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy_2),          // output wire rd_rst_busy
      .m_aclk(clk_100m_o),                  // input wire m_aclk
      .s_aclk(clk_10m_o),                   // input wire s_aclk
      .s_aresetn(sys_rst_n),                // input wire s_aresetn
      .s_axis_tvalid(Data_Ch2_wr_en),       // input wire s_axis_tvalid
      .s_axis_tready(),                     // output wire s_axis_tready
//      .s_axis_tdata(DataToTriCh0_pack),   // input wire [16 : 0] s_axis_tdata
      .s_axis_tdata(DataToTriCh2_pack_d2),  // input wire [16 : 0] s_axis_tdata, delay 2 clap
      .s_axis_tlast(Data_Ch2_tlast),        // input wire s_axis_tlast
      .m_axis_tvalid(m_axis_tvalid_2),      // output wire m_axis_tvalid
      .m_axis_tready(m_axis_tvalid_2),      // input wire m_axis_tready
      .m_axis_tdata(DataToTriCh2_o_pack),   // output wire [16 : 0] m_axis_tdata
      .m_axis_tlast()                       // output wire m_axis_tlast
    );

    assign DataToTriCh2_o[15:0] = DataToTriCh2_o_pack[15:0];
    assign TrigInCh2_o = DataToTriCh2_o_pack[16:16] && m_axis_tvalid_2;
    
    //Ch3 数据速率转换
    reg [16:0] DataToTriCh3_pack_d1;
    reg [16:0] DataToTriCh3_pack_d2;
    
    //打3拍对齐
    always @ (posedge clk_10m_o) begin
       DataToTriCh3_pack_d1 <= DataToTriCh3_pack;
       DataToTriCh3_pack_d2 <= DataToTriCh3_pack_d1;
    end
    
    //将10MHz数据和触发转为100MHz输出
    wire [16:0] DataToTriCh3_o_pack;    //100MHz
    wire wr_rst_busy_3, rd_rst_busy_3;
    wire m_axis_tvalid_3;
    
    fifo_generator_0 fifo_generator_3_ins (
      .wr_rst_busy(wr_rst_busy_3),          // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy_3),          // output wire rd_rst_busy
      .m_aclk(clk_100m_o),                  // input wire m_aclk
      .s_aclk(clk_10m_o),                   // input wire s_aclk
      .s_aresetn(sys_rst_n),                // input wire s_aresetn
      .s_axis_tvalid(Data_Ch3_wr_en),       // input wire s_axis_tvalid
      .s_axis_tready(),                     // output wire s_axis_tready
//      .s_axis_tdata(DataToTriCh0_pack),   // input wire [16 : 0] s_axis_tdata
      .s_axis_tdata(DataToTriCh3_pack_d2),  // input wire [16 : 0] s_axis_tdata, delay 2 clap
      .s_axis_tlast(Data_Ch3_tlast),        // input wire s_axis_tlast
      .m_axis_tvalid(m_axis_tvalid_3),      // output wire m_axis_tvalid
      .m_axis_tready(m_axis_tvalid_3),      // input wire m_axis_tready
      .m_axis_tdata(DataToTriCh3_o_pack),   // output wire [16 : 0] m_axis_tdata
      .m_axis_tlast()                       // output wire m_axis_tlast
    );

    assign DataToTriCh3_o[15:0] = DataToTriCh3_o_pack[15:0];
    assign TrigInCh3_o = DataToTriCh3_o_pack[16:16] && m_axis_tvalid_3;
    
    
    //ila generate_vaild_0
    ila_1 ila_generate_vaild_0_ins (
        .clk(clk_out2_fromSysCtrl), // input wire clk
    
        .probe0(clk_10m_o),      // input wire [0:0]  probe0  
        .probe1(TrigInCh0),      // input wire [0:0]  probe1 
        .probe2(Data_Ch0_wr_en), // input wire [0:0]  probe2 
        .probe3(Data_Ch0_tlast), // input wire [0:0]  probe3
        .probe4(count_Ch0)       // input wire [10:0]  probe4
    );
    
    //ila fifo Ch0        
    ila_0 ila_fifo_0_ins (
        .clk(clk_out2_fromSysCtrl),     // input wire clk 200MHz
        
        .probe0(wr_rst_busy_0),         // input wire [0:0]  probe0  
        .probe1(rd_rst_busy_0),         // input wire [0:0]  probe1 
        .probe2(clk_100m_o),            // input wire [0:0]  probe2 
        .probe3(clk_10m_o),             // input wire [0:0]  probe3 
        .probe4(sys_rst_n),             // input wire [0:0]  probe4 
        .probe5(Data_Ch0_wr_en),        // input wire [0:0]  probe5 
        .probe6(DataToTriCh0_pack_d2),  // input wire [16:0]  probe6 
        .probe7(Data_Ch0_tlast),        // input wire [0:0]  probe7 
        .probe8(m_axis_tvalid_0),       // input wire [0:0]  probe8 
        .probe9(DataToTriCh0_o_pack),   // input wire [16:0]  probe9
        .probe10(TrigInCh0_o)           // input wire [0:0]  probe10
    );
    
endmodule