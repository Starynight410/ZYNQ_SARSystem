`timescale 1ns/1ps

module tb_TriggerCh;

    reg clk_40m_i;
    reg sys_rst_n;

    //output ports
    wire [15:0]DataToTriCh0_o;
    wire [15:0]DataToTriCh1_o;
    wire [15:0]DataToTriCh2_o;
    wire [15:0]DataToTriCh3_o;
    
    wire TrigInCh0_o;       //TriggerCh触发信号
    wire TrigInCh1_o;
    wire TrigInCh2_o;
    wire TrigInCh3_o;
    
    wire clk_100m_o;
    
    initial                 
    begin
        clk_40m_i          <= 1'b0;
        sys_rst_n          <= 1'b0;
        #12.5;
        sys_rst_n          <= 1'b1;
        forever
        begin    
            clk_40m_i      <= 1'b1;
            #12.5;
            clk_40m_i      <= 1'b0;
            #12.5;
        end
    end
    
    wire LOCKED;
    wire clk_out1_fromSysCtrl;
    wire clk_out2_fromSysCtrl;

    wire [31:0] delay_cnt_w ; 
    
    clk_wiz_2 clk_wiz_2_inst(
        // Clock out ports
        .clk_out1(clk_out1_fromSysCtrl),     // output clk_out1
        .clk_out2(clk_out2_fromSysCtrl),     // output clk_out2
        .clk_out3(clk_100m_o),     // output clk_out3
        // Status and control signals
        .reset(!sys_rst_n), // input reset
        .locked(LOCKED),       // output locked
        // Clock in ports
        .clk_in1(clk_40m_i)  // input clk_in
    );    
    
    
    reg FCO_p, FCO_n;   //10MHz
    reg DCO_p, DCO_n;   //60MHz
    reg CHA_p, CHA_n;
    reg CHB_p, CHB_n;
    reg CHC_p, CHC_n;
    reg CHD_p, CHD_n;
    
    wire clk_10m_o;
    wire [15:0] data_AD0_w, data_AD1_w, data_AD2_w, data_AD3_w;
    wire adcClkIn_p, adcClkIn_n;
    wire led;
    
    initial                 
    begin
        FCO_p <= 1'b1;
        FCO_n <= 1'b0;
        #50;
        forever
        begin    
            FCO_p <= 1'b0;
            FCO_n <= 1'b1;
            #50;
            FCO_p <= 1'b1;
            FCO_n <= 1'b0;
            #50;
        end
    end
    
    initial                 
        begin
            DCO_p <= 1'b1;
            DCO_n <= 1'b0;
            #8.3;
            forever
            begin    
                DCO_p <= 1'b0;
                DCO_n <= 1'b1;
                #8.3;
                DCO_p <= 1'b1;
                DCO_n <= 1'b0;
                #8.3;
            end
        end
        
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

    /*
    * AXI-lite slave interface
    */
    parameter AXIL_ADDR_WIDTH           = 32              ;
    parameter AXIL_DATA_WIDTH           = 32              ;
    parameter AXIL_STRB_WIDTH           = AXIL_DATA_WIDTH/8    ;
    /*
    * AXI master interface
    */
    parameter AXI_ID_WIDTH         = 2               ;
    parameter AXI_ADDR_WIDTH       = 32              ;
    parameter AXI_DATA_WIDTH       = 64              ;
    parameter AXI_MAX_BURST_LEN    = 256             ;
    parameter AXI_STRB_WIDTH       = AXI_DATA_WIDTH/8;

    wire                          iTrigClk =  clk_100m_o  ;
    reg                           iTrigRstn              ;

    reg                           s_axil_clk              ;
    reg                           s_axil_rst              ;
    reg clk;

    reg [15:0] AdcDataCh0;  //测试递增数
    reg [15:0] AdcDataCh1;
    reg [15:0] AdcDataCh2;
    reg [15:0] AdcDataCh3;
    
    reg PM;
    reg TRACK;
    reg Start_mode;

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
    
    wire tb_clk = clk_10m_o;    //10MHz传递增数
    initial
        begin
           sys_rst_n <= 1'b1;
           #100
           sys_rst_n <= 1'b0;
           #20;
           sys_rst_n <= 1'b1;
        end
        
    always@(posedge tb_clk or negedge sys_rst_n)begin
        if(!sys_rst_n) begin
            AdcDataCh0 <= 16'd1111;
            AdcDataCh1 <= 16'd1111;
            AdcDataCh2 <= 16'd1111;
            AdcDataCh3 <= 16'd1111;
        end
        else begin
            AdcDataCh0 <= AdcDataCh0 + 1;
            AdcDataCh1 <= AdcDataCh1 + 1;
            AdcDataCh2 <= AdcDataCh2 + 1;
            AdcDataCh3 <= AdcDataCh3 + 1;
        end
    end
    
    initial begin
        Start_mode <= 0;
        #1000;
        Start_mode <= 1; //开始采集
        #2700000;
        Start_mode <= 0;
    end
    
    initial begin
        PM <= 0;
        TRACK <= 1;
        #1000
        forever begin
            TRACK <= 0;
            #20
            TRACK <= 1;
            #1000
            PM <= 1;
            #200000;
            PM <= 0;
            #200000;   // 100us
            
            PM <= 1;
            #200000;
            PM <= 0;
            #200000;   // 100us
            
            PM <= 1;
            #200000;
            PM <= 0;
            #200000;   // 100us
            
        end
    end
    
    AD_control AD_control_inst(
        .AdcSampClk(clk_10m_o),    //10MHz,output by AD
        .reset_n(sys_rst_n),
        
        // Signal from RF Radar
        .PM(PM),
        .TRACK(1'b1),          //default high
        
        // Data from AD9228
        .AdcDataCh0(AdcDataCh0),      //IF 1  
        .AdcDataCh1(AdcDataCh1),      //IF 1 
        .AdcDataCh2(AdcDataCh2),      //IF 2
        .AdcDataCh3(AdcDataCh3),      //IF 3
         
        // command from ZYNQ through EMIO
        .Start_mode(Start_mode),    //0 represent not start yet, 1 represent start data sampling and transmitting
        
        //output ports to TriggerDMA
        .DataToTriCh0(DataToTriCh0),    //仿真结果比AdcDataCh0延时3拍
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
                
        .TrigInCh0(TrigInCh0),
        .TrigInCh1(TrigInCh1),
        .TrigInCh2(TrigInCh2),
        .TrigInCh3(TrigInCh3),
        
        .delay_cnt_w(delay_cnt_w)
     );
    
    initial begin
        iTrigRstn <= 1'b0;
        repeat(100) begin
            @(posedge iTrigClk)
                iTrigRstn <= 1'b0;
        end
        iTrigRstn <= 1'b1;
    end

    wire                          m_axi_clk               ;
    wire                          m_axi_rstn               ;

    initial                 
    begin
        s_axil_clk          <= 1'b0;
        #10000;
        forever
        begin    
            s_axil_clk      <= 1'b1;
            #5;
            s_axil_clk      <= 1'b0;
            #5;
        end
    end

    initial begin
        s_axil_rst <= 1'b1;
        repeat(100) begin
            @(posedge s_axil_clk)
                s_axil_rst <= 1'b1;
        end
        s_axil_rst <= 1'b0;
    end

    wire [AXIL_ADDR_WIDTH-1:0] s_axil_awaddr                             ;
    wire [2:0]                 s_axil_awprot                             ;
    wire                       s_axil_awvalid                            ;
    wire [AXIL_DATA_WIDTH-1:0] s_axil_wdata                              ;
    wire [AXIL_STRB_WIDTH-1:0] s_axil_wstrb                              ;
    wire                       s_axil_wvalid                             ;
    wire                       s_axil_bready                             ;
    wire [AXIL_ADDR_WIDTH-1:0] s_axil_araddr                             ;
    wire [2:0]                 s_axil_arprot                             ;
    wire                       s_axil_arvalid                            ;
    wire                       s_axil_rready                             ;

    wire                       s_axil_awready                            ;
    wire                       s_axil_wready                             ;
    wire [1:0]                 s_axil_bresp                              ;
    wire                       s_axil_bvalid                             ;
    wire                       s_axil_arready                            ;
    wire [AXIL_DATA_WIDTH-1:0] s_axil_rdata                              ;
    wire [1:0]                 s_axil_rresp                              ;
    wire                       s_axil_rvalid                             ;

    wire                       m_axi_awready                             ;
    wire                       m_axi_wready                              ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_bid                                 ;
    wire [1:0]                 m_axi_bresp                               ;
    wire                       m_axi_bvalid                              ;
    wire                       m_axi_arready                             ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_rid                                 ;
    wire [AXI_DATA_WIDTH-1:0]  m_axi_rdata                               ;
    wire [1:0]                 m_axi_rresp                               ;
    wire                       m_axi_rlast                               ;
    wire                       m_axi_rvalid                              ;

    wire [AXI_ID_WIDTH-1:0]    m_axi_awid                                ;
    wire [AXI_ADDR_WIDTH-1:0]  m_axi_awaddr                              ;
    wire [7:0]                 m_axi_awlen                               ;
    wire [2:0]                 m_axi_awsize                              ;
    wire [1:0]                 m_axi_awburst                             ;
    wire                       m_axi_awlock                              ;
    wire [3:0]                 m_axi_awcache                             ;
    wire [2:0]                 m_axi_awprot                              ;
    wire                       m_axi_awvalid                             ;
    wire [AXI_DATA_WIDTH-1:0]  m_axi_wdata                               ;
    wire [AXI_STRB_WIDTH-1:0]  m_axi_wstrb                               ;
    wire                       m_axi_wlast                               ;
    wire                       m_axi_wvalid                              ;
    wire                       m_axi_bready                              ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_arid                                ;
    wire [AXI_ADDR_WIDTH-1:0]  m_axi_araddr                              ;
    wire [7:0]                 m_axi_arlen                               ;
    wire [2:0]                 m_axi_arsize                              ;
    wire [1:0]                 m_axi_arburst                             ;
    wire                       m_axi_arlock                              ;
    wire [3:0]                 m_axi_arcache                             ;
    wire [2:0]                 m_axi_arprot                              ;
    wire                       m_axi_arvalid                             ;
    wire                       m_axi_rready                              ;

    axi_ram #(
        .DATA_WIDTH      (64      ),
        .ADDR_WIDTH      (20      ),
        .ID_WIDTH        ( 8      ),
        .PIPELINE_OUTPUT ( 0      )
    )
    axi_ram (
        .clk           (m_axi_clk     ),
        .rst           (~m_axi_rstn     ),
        .s_axi_awid    (m_axi_awid    ),
        .s_axi_awaddr  (m_axi_awaddr  ),
        .s_axi_awlen   (m_axi_awlen   ),
        .s_axi_awsize  (m_axi_awsize  ),
        .s_axi_awburst (m_axi_awburst ),
        .s_axi_awlock  (m_axi_awlock  ),
        .s_axi_awcache (m_axi_awcache ),
        .s_axi_awprot  (m_axi_awprot  ),
        .s_axi_awvalid (m_axi_awvalid ),
        .s_axi_awready (m_axi_awready ),
        .s_axi_wdata   (m_axi_wdata   ),
        .s_axi_wstrb   (m_axi_wstrb   ),
        .s_axi_wlast   (m_axi_wlast   ),
        .s_axi_wvalid  (m_axi_wvalid  ),
        .s_axi_wready  (m_axi_wready  ),
        .s_axi_bid     (m_axi_bid     ),
        .s_axi_bresp   (m_axi_bresp   ),
        .s_axi_bvalid  (m_axi_bvalid  ),
        .s_axi_bready  (m_axi_bready  ),
        .s_axi_arid    (m_axi_arid    ),
        .s_axi_araddr  (m_axi_araddr  ),
        .s_axi_arlen   (m_axi_arlen   ),
        .s_axi_arsize  (m_axi_arsize  ),
        .s_axi_arburst (m_axi_arburst ),
        .s_axi_arlock  (m_axi_arlock  ),
        .s_axi_arcache (m_axi_arcache ),
        .s_axi_arprot  (m_axi_arprot  ),
        .s_axi_arvalid (m_axi_arvalid ),
        .s_axi_arready (m_axi_arready ),
        .s_axi_rid     (m_axi_rid     ),
        .s_axi_rdata   (m_axi_rdata   ),
        .s_axi_rresp   (m_axi_rresp   ),
        .s_axi_rlast   (m_axi_rlast   ),
        .s_axi_rvalid  (m_axi_rvalid  ),
        .s_axi_rready  (m_axi_rready  )
    );

    wire            s_axi_aclk = s_axil_clk;
    wire            s_axi_aresetn = ~s_axil_rst;

    reg             s_axi_cfg_wvalid;
    reg      [31:0] s_axi_cfg_waddr ;
    reg      [31:0] s_axi_cfg_wdata ;
    wire            s_axi_cfg_wready;

    reg             s_axi_cfg_rvalid;
    reg      [31:0] s_axi_cfg_raddr ;
    wire     [31:0] s_axi_cfg_rdata ;
    wire            s_axi_cfg_rdv   ;
    wire            s_axi_cfg_rready;
    
    axil_write inst_axil_write
    (
        .s_axi_aclk       (s_axi_aclk),
        .s_axi_aresetn    (s_axi_aresetn),
        .s_axi_awready    (s_axil_awready),
        .s_axi_wready     (s_axil_wready),
        .s_axi_bvalid     (s_axil_bvalid),
        .s_axi_bresp      (s_axil_bresp),
        .s_axi_awaddr     (s_axil_awaddr),
        .s_axi_awvalid    (s_axil_awvalid),
        .s_axi_wdata      (s_axil_wdata),
        .s_axi_wvalid     (s_axil_wvalid),
        .s_axi_bready     (s_axil_bready),

        .s_axi_cfg_wvalid (s_axi_cfg_wvalid),
        .s_axi_cfg_waddr  (s_axi_cfg_waddr),
        .s_axi_cfg_wdata  (s_axi_cfg_wdata),
        .s_axi_cfg_wready (s_axi_cfg_wready)
    );

    axil_read inst_axil_read
    (
        .s_axi_aclk       (s_axi_aclk),
        .s_axi_aresetn    (s_axi_aresetn),
        .s_axi_arready    (s_axil_arready),
        .s_axi_rvalid     (s_axil_rvalid),
        .s_axi_rdata      (s_axil_rdata),
        .s_axi_rresp      (s_axil_rresp),
        .s_axi_araddr     (s_axil_araddr),
        .s_axi_arvalid    (s_axil_arvalid),
        .s_axi_rready     (s_axil_rready),

        .s_axi_cfg_rvalid (s_axi_cfg_rvalid),
        .s_axi_cfg_raddr  (s_axi_cfg_raddr),
        .s_axi_cfg_rdata  (s_axi_cfg_rdata),
        .s_axi_cfg_rdv    (s_axi_cfg_rdv),
        .s_axi_cfg_rready (s_axi_cfg_rready)
    );


  // AXI-Lite Write task
  task axi_write;
    input [29:0] offset;
    input [31:0] data;
    reg   [31:0] addr;
    reg    [1:0] resp;
    begin
        while (s_axi_cfg_wready == 1'b0)
            @(posedge s_axi_aclk);
        s_axi_cfg_wvalid <= 1'b1;
        s_axi_cfg_waddr <= {offset, 2'b00};
        s_axi_cfg_wdata <= data;
        @(posedge s_axi_aclk);
        s_axi_cfg_wvalid <= 1'b0;
        while (s_axi_cfg_wready == 1'b0)
            @(posedge s_axi_aclk);
        @(posedge s_axi_aclk);
    end
  endtask // axi_write
  
  // AXI-Lite Read task
  task axi_read;
    input  [29:0] offset;
    output [31:0] data;
    reg    [31:0] addr;
    reg     [1:0] resp;
    begin
        while (s_axi_cfg_rready == 1'b0)
        @(posedge s_axi_aclk);
        s_axi_cfg_rvalid <= 1'b1;
        s_axi_cfg_raddr <= {offset, 2'b00};
        @(posedge s_axi_aclk);
        s_axi_cfg_rvalid <= 1'b0;
        while (s_axi_cfg_rdv == 1'b0) begin
//            data <= s_axi_cfg_rdata;
            @(posedge s_axi_aclk);
        end
        data = s_axi_cfg_rdata;
        @(posedge s_axi_aclk);
    end
  endtask // axi_read

    //组装数据
    wire [16:0] DataToTriCh0_pack = {TrigInCh0, DataToTriCh0};
    wire [16:0] DataToTriCh1_pack = {TrigInCh1, DataToTriCh1};
    wire [16:0] DataToTriCh2_pack = {TrigInCh2, DataToTriCh2};
    wire [16:0] DataToTriCh3_pack = {TrigInCh3, DataToTriCh3};
    
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
    
    TriggerCh inst_TriggerCh (
        .s_axil_clk     (iTrigClk),     //100MHz
        .s_axil_rstn     (iTrigRstn),

        .iTrigClk       (iTrigClk),
        .iTrigRstn      (iTrigRstn),

        .iAdcData       (DataToTriCh0),
        .iAdcData_Tri   (TrigInCh0),

        .s_axil_awaddr  (s_axil_awaddr),
        .s_axil_awprot  (s_axil_awprot),
        .s_axil_awvalid (s_axil_awvalid),
        .s_axil_awready (s_axil_awready),
        .s_axil_wdata   (s_axil_wdata),
        .s_axil_wstrb   (4'hF),
        .s_axil_wvalid  (s_axil_wvalid),
        .s_axil_wready  (s_axil_wready),
        .s_axil_bresp   (s_axil_bresp),
        .s_axil_bvalid  (s_axil_bvalid),
        .s_axil_bready  (s_axil_bready),
        .s_axil_araddr  (s_axil_araddr),
        .s_axil_arprot  (s_axil_arprot),
        .s_axil_arvalid (s_axil_arvalid),
        .s_axil_arready (s_axil_arready),
        .s_axil_rdata   (s_axil_rdata),
        .s_axil_rresp   (s_axil_rresp),
        .s_axil_rvalid  (s_axil_rvalid),
        .s_axil_rready  (s_axil_rready),

        .m_axi_clk      (m_axi_clk),
        .m_axi_rstn     (m_axi_rstn),
        .m_axi_awid     (m_axi_awid),
        .m_axi_awaddr   (m_axi_awaddr),
        .m_axi_awlen    (m_axi_awlen),
        .m_axi_awsize   (m_axi_awsize),
        .m_axi_awburst  (m_axi_awburst),
        .m_axi_awlock   (m_axi_awlock),
        .m_axi_awcache  (m_axi_awcache),
        .m_axi_awprot   (m_axi_awprot),
        .m_axi_awqos    (m_axi_awqos),
        .m_axi_awuser   (m_axi_awuser),
        .m_axi_awvalid  (m_axi_awvalid),
        .m_axi_awready  (m_axi_awready),
        .m_axi_wdata    (m_axi_wdata),
        .m_axi_wstrb    (m_axi_wstrb),
        .m_axi_wlast    (m_axi_wlast),
        .m_axi_wvalid   (m_axi_wvalid),
        .m_axi_wready   (m_axi_wready),
        .m_axi_bid      (m_axi_bid),
        .m_axi_bresp    (m_axi_bresp),
        .m_axi_bvalid   (m_axi_bvalid),
        .m_axi_bready   (m_axi_bready),
        .m_axi_arid     (m_axi_arid),
        .m_axi_araddr   (m_axi_araddr),
        .m_axi_arlen    (m_axi_arlen),
        .m_axi_arsize   (m_axi_arsize),
        .m_axi_arburst  (m_axi_arburst),
        .m_axi_arlock   (m_axi_arlock),
        .m_axi_arcache  (m_axi_arcache),
        .m_axi_arprot   (m_axi_arprot),
        .m_axi_arqos    (m_axi_arqos),
        .m_axi_aruser   (m_axi_aruser),
        .m_axi_arvalid  (m_axi_arvalid),
        .m_axi_arready  (m_axi_arready),
        .m_axi_rid      (m_axi_rid),
        .m_axi_rdata    (m_axi_rdata),
        .m_axi_rresp    (m_axi_rresp),
        .m_axi_rlast    (m_axi_rlast),
        .m_axi_rvalid   (m_axi_rvalid),
        .m_axi_rready   (m_axi_rready)
    );


    `define _TrigGenAMPHIGHThreshold 8'h00
    `define _TrigGenAMPLOWHThreshold 8'h01
    `define _TrigGenAMPLOWLThreshold 8'h02
    `define _TrigGenPulseThreshold   8'h03
    `define _TrigGenDemodThreshold   8'h04
    `define _TrigGenSFTimeout        8'h05
    `define _TrigGenUpdate           8'h06
    `define _TrigGenFcode0_7         8'h07
    `define _TrigGenMFADDR0_1        8'h08
    `define _TrigGenMFADDR2_3        8'h09
    `define _TrigGenMFADDR4_5        8'h0A
    `define _TrigGenMFADDR6_7        8'h0B
    
    `define _TrigMuxEnableMask       8'h10
    `define _TrigMuxAndMask          8'h11
    `define _TrigMuxOrMask           8'h12
    `define _TrigMuxSel              8'h13
    `define _TrigMuxUpdate           8'h14
    
    `define _TrigDMAStart            8'h20
    `define _TrigDMAPosition         8'h21
    `define _TrigDMALength           8'h22
    `define _TrigDMAStartAddr        8'h23
    `define _TrigDMADDRSpace         8'h24
    `define _TrigDMAUpdate           8'h25
    
    `define _TrigStatus              8'h26
    `define _TrigToggle              8'h27
    `define _TrigVector              8'h28
    
    `define _TrigReset               8'h30


    initial
        begin
            s_axi_cfg_wvalid <= 1'b0;
            s_axi_cfg_waddr <= 32'd0;
            s_axi_cfg_wdata <= 32'd0;
            
            s_axi_cfg_rvalid <= 1'b0;
            s_axi_cfg_raddr  <= 32'd0;
            
            repeat (500) begin
                @(posedge s_axil_clk); 
            end

            axi_write({`_TrigGenAMPHIGHThreshold}, 32'd3000);
            axi_write({`_TrigGenAMPLOWHThreshold}, 32'd500);
            axi_write({`_TrigGenAMPLOWLThreshold}, 32'd200);
            axi_write({`_TrigGenPulseThreshold  }, 32'd20);
            axi_write({`_TrigGenDemodThreshold  }, 32'd20);
//            axi_write({`_TrigGenFcode           }, 32'hC);
//            axi_write({`_TrigGenMFADDR          }, 32'h401);
            axi_write({`_TrigGenSFTimeout       }, 32'd120);
            axi_write({`_TrigGenUpdate          }, 32'd1);

            axi_write({`_TrigMuxEnableMask      }, 32'h00000002);
            axi_write({`_TrigMuxAndMask         }, 32'hffffffff);
            axi_write({`_TrigMuxOrMask          }, 32'hffffffff);
            axi_write({`_TrigMuxSel             }, 32'h0);
            axi_write({`_TrigMuxUpdate          }, 32'd1);

            axi_write({`_TrigDMAStart           }, 32'd0);
            axi_write({`_TrigDMAPosition        }, 32'd0);
            axi_write({`_TrigDMALength          }, 32'd1024);
//            axi_write({`_TrigDMAStartAddr       }, 32'h0013cfc0);
            axi_write({`_TrigDMAStartAddr       }, 32'h0022cac0);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            
            repeat (500) begin
                @(posedge s_axil_clk); 
            end
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            // AXIL32_IN(`_TrigStatus             , );
            // AXIL32_IN(`_TrigToggle             , );
            // AXIL32_IN(`_TrigVector             , );
            
            #700000;
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            
             #900000;
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
        end
        
endmodule
