// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  7 02:03:45 2025
// Host        : Christopher-Desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vga_sprite_top_0_0_stub.v
// Design      : design_1_vga_sprite_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga_sprite_top,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pix_clk, pix_rst, VGA_Hsync, VGA_Vsync, VGA_Red, 
  VGA_Green, VGA_Blue, seg_data, apple_data)
/* synthesis syn_black_box black_box_pad_pin="pix_clk,pix_rst,VGA_Hsync,VGA_Vsync,VGA_Red[3:0],VGA_Green[3:0],VGA_Blue[3:0],seg_data[19:0],apple_data[19:0]" */;
  input pix_clk;
  input pix_rst;
  output VGA_Hsync;
  output VGA_Vsync;
  output [3:0]VGA_Red;
  output [3:0]VGA_Green;
  output [3:0]VGA_Blue;
  input [19:0]seg_data;
  input [19:0]apple_data;
endmodule
