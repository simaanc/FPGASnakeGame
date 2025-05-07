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
  input  wire        pix_clk,
  input  wire        pix_rst,

  // coords from AXI-GPIO
  input  wire [19:0] seg_data,
  input  wire [19:0] apple_data,

  // VGA pins
  output wire        VGA_Hsync,
  output wire        VGA_Vsync,
  output wire [3:0]  VGA_Red,
  output wire [3:0]  VGA_Green,
  output wire [3:0]  VGA_Blue
);

  // 1) VGA timing
  wire        active;
  wire [9:0]  xpos;
  wire [8:0]  ypos;
  vga640x480 u_vga (
    .i_clk      (pix_clk),
    .i_pix_stb  (1'b1),
    .i_rst      (pix_rst),
    .o_hs       (VGA_Hsync),
    .o_vs       (VGA_Vsync),
    .o_active   (active),
    .o_x        (xpos),
    .o_y        (ypos),
    .o_blanking (), .o_screenend(), .o_animate()
  );

  // 2) Unpack XY
  wire [9:0] seg_x = seg_data[9:0],   seg_y = seg_data[19:10];
  wire [9:0] app_x = apple_data[9:0], app_y = apple_data[19:10];

  // 3) Two sprite engines w/ different BASE_ADDR
  wire seg_pix, app_pix;
  vga_sprite_rom #(.BASE_ADDR(0))  u_seg_rom (
    .pix_clk(pix_clk), .pix_rst(pix_rst),
    .active(active), .xpos(xpos), .ypos(ypos),
    .spr_x(seg_x), .spr_y(seg_y),
    .pixel_on(seg_pix)
  );
  vga_sprite_rom #(.BASE_ADDR(16)) u_app_rom (
    .pix_clk(pix_clk), .pix_rst(pix_rst),
    .active(active), .xpos(xpos), .ypos(ypos),
    .spr_x(app_x), .spr_y(app_y),
    .pixel_on(app_pix)
  );

  // 4) Color mux
  assign VGA_Red   = active ? (app_pix ? 4'hF : 4'h0) : 4'h0;
  assign VGA_Green = active ? (seg_pix ? 4'hF : 4'h0) : 4'h0;
  assign VGA_Blue  = 4'h0;

endmodule

