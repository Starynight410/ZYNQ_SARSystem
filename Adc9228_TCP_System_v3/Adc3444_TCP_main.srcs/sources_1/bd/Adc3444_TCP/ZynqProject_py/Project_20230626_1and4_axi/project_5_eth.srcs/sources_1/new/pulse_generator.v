`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/27 01:07:13
// Design Name: 
// Module Name: pulse_generator
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
//parameter T_1ms = 24'd200_000;
//parameter T_2ms = 24'd400_000;
//parameter T_3ms = 24'd600_000;

module pulse_generator
# (parameter T_1ms = 24'd200_000,
   parameter T_2ms = 24'd400_000,
   parameter T_3ms = 24'd600_000)
(
    input wire clk_200m,
    output wire load
    );

reg [23:0] cntDelay = 24'd0;

always @(posedge clk_200m) begin
    if(cntDelay < T_3ms)
        cntDelay <= cntDelay + 1'b1;
end

assign load = ((T_1ms <= cntDelay) && (cntDelay <= T_2ms)) ? 1'b1 : 1'b0;

endmodule
