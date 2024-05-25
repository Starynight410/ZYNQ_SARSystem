module sys_ctrl(
    input clk_i,
    input ext_rst_n,
    output reg sys_rst_n,
    output clk_out1,
    output clk_out2,
    output clk_out3
);

    //pll 复位信号产生，高有效
    //异步复位，同步释放
    reg rst_r1;
    reg rst_r2;  
    always @(posedge clk_i or negedge ext_rst_n)
    begin
        if(!ext_rst_n) rst_r1<=1'b0;
        else rst_r1<=1'b1;
    end  
    
    always @(posedge clk_i or negedge ext_rst_n)
    begin   
        if(!ext_rst_n) rst_r2<=1'b0;
        else rst_r2<=rst_r1;
    end
    
    //pll 模块例化
    wire clk_out1_w;
    wire clk_out2_w;
    wire clk_out3_w;
    wire locked;
  clk_wiz_2 clk_wiz_2_inst
     (
      // Clock out ports
      .clk_out1(clk_out1_w),     // output clk_out1
      .clk_out2(clk_out2_w),     // output clk_out2
      .clk_out3(clk_out3_w),     // output clk_out3
      // Status and control signals
      .reset(!rst_r2), // input reset
      .locked(locked),       // output locked
     // Clock in ports
      .clk_in1(clk_i));      // input clk_in
      
      assign clk_out1 = clk_out1_w;
      assign clk_out2 = clk_out2_w;
      assign clk_out3 = clk_out3_w;
      //系统复位处理逻辑
      reg sys_rst_nr;
      always @(posedge clk_out1_w)
      begin
        if(!locked) sys_rst_nr<=1'b0;
        else sys_rst_nr<=1'b1;
      end
      
      always @(posedge clk_out1_w or negedge sys_rst_nr)
      begin
        if(!sys_rst_nr) sys_rst_n<=1'b0;
        else sys_rst_n<=sys_rst_nr;
      end        
endmodule          


