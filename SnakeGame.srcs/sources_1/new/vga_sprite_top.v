`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 12:04:01 AM
// Design Name: 
// Module Name: vga_sprite_top
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


module vga_sprite_top (
  // clocks & resets
  input  wire        pix_clk,    // 25 MHz from clk_wiz_0.clk_out2
  input  wire        pix_rst,    // 25 MHz-domain reset (proc_sys_reset_25.peripheral_reset)
  // VGA core outputs
  output wire        VGA_Hsync,
  output wire        VGA_Vsync,
  output wire [3:0]  VGA_Red,
  output wire [3:0]  VGA_Green,
  output wire [3:0]  VGA_Blue,
  // sprite coords from AXI-GPIO
  input  wire [19:0] seg_data,    // gpio_io_o of axi_gpio_seg
  input  wire [19:0] apple_data   // gpio_io_o of axi_gpio_apple
);

  // 1) instantiate the VGA timing generator
  wire        active;
  wire [9:0]  xpos;
  wire [8:0]  ypos;

  vga640x480 u_vga (
    .i_clk      (pix_clk),
    .i_pix_stb  (1'b1),
    .i_rst      (pix_rst),
    .o_hs       (VGA_Hsync),
    .o_vs       (VGA_Vsync),
    .o_blanking (), 
    .o_active   (active),
    .o_screenend(), .o_animate(),
    .o_x        (xpos),
    .o_y        (ypos)
  );

  // 2) unpack your two 20-bit registers
  wire [9:0] seg_x   = seg_data[ 9: 0];
  wire [9:0] seg_y   = seg_data[19:10];
  wire [9:0] app_x   = apple_data[ 9: 0];
  wire [9:0] app_y   = apple_data[19:10];

  // sprite size (in pixels)
  localparam S = 16;

  // 3) hit tests
  wire hit_seg   = active
    && xpos>=seg_x && xpos< seg_x + S
    && ypos>=seg_y && ypos< seg_y + S;

  wire hit_apple = active
    && xpos>=app_x && xpos< app_x + S
    && ypos>=app_y && ypos< app_y + S;

  // 4) simple 1-bit color ? 4-bit DAC
  wire [3:0] red   = hit_apple ? 4'hF : 4'h0;
  wire [3:0] green = hit_seg   ? 4'hF : 4'h0;
  wire [3:0] blue  = 4'h0;

  assign VGA_Red   = active ? red   : 4'h0;
  assign VGA_Green = active ? green : 4'h0;
  assign VGA_Blue  = active ? blue  : 4'h0;

endmodule
