// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  7 02:03:45 2025
// Host        : Christopher-Desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado/SnakeGame/SnakeGame.srcs/sources_1/bd/Downloads/ip/design_1_vga_sprite_top_0_0/design_1_vga_sprite_top_0_0_sim_netlist.v
// Design      : design_1_vga_sprite_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vga_sprite_top_0_0,vga_sprite_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vga_sprite_top,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_vga_sprite_top_0_0
   (pix_clk,
    pix_rst,
    VGA_Hsync,
    VGA_Vsync,
    VGA_Red,
    VGA_Green,
    VGA_Blue,
    seg_data,
    apple_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clk, ASSOCIATED_RESET pix_rst, FREQ_HZ 25265957, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input pix_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 pix_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_rst, POLARITY ACTIVE_HIGH" *) input pix_rst;
  output VGA_Hsync;
  output VGA_Vsync;
  output [3:0]VGA_Red;
  output [3:0]VGA_Green;
  output [3:0]VGA_Blue;
  input [19:0]seg_data;
  input [19:0]apple_data;

  wire \<const0> ;
  wire [0:0]\^VGA_Green ;
  wire VGA_Hsync;
  wire [0:0]\^VGA_Red ;
  wire VGA_Vsync;
  wire [19:0]apple_data;
  wire pix_clk;
  wire pix_rst;
  wire [19:0]seg_data;

  assign VGA_Blue[3] = \<const0> ;
  assign VGA_Blue[2] = \<const0> ;
  assign VGA_Blue[1] = \<const0> ;
  assign VGA_Blue[0] = \<const0> ;
  assign VGA_Green[3] = \^VGA_Green [0];
  assign VGA_Green[2] = \^VGA_Green [0];
  assign VGA_Green[1] = \^VGA_Green [0];
  assign VGA_Green[0] = \^VGA_Green [0];
  assign VGA_Red[3] = \^VGA_Red [0];
  assign VGA_Red[2] = \^VGA_Red [0];
  assign VGA_Red[1] = \^VGA_Red [0];
  assign VGA_Red[0] = \^VGA_Red [0];
  GND GND
       (.G(\<const0> ));
  design_1_vga_sprite_top_0_0_vga_sprite_top inst
       (.VGA_Green(\^VGA_Green ),
        .VGA_Hsync(VGA_Hsync),
        .VGA_Red(\^VGA_Red ),
        .VGA_Vsync(VGA_Vsync),
        .apple_data(apple_data),
        .pix_clk(pix_clk),
        .pix_rst(pix_rst),
        .seg_data(seg_data));
endmodule

(* ORIG_REF_NAME = "vga640x480" *) 
module design_1_vga_sprite_top_0_0_vga640x480
   (S,
    \VGA_Green[3] ,
    VGA_Red,
    VGA_Green,
    \VGA_Red[3] ,
    \VGA_Green[3]_0 ,
    DI,
    \VGA_Green[3]_1 ,
    \VGA_Red[3]_0 ,
    \VGA_Red[3]_1 ,
    \VGA_Green[3]_2 ,
    \VGA_Green[3]_3 ,
    \VGA_Green[3]_4 ,
    \VGA_Red[3]_2 ,
    \VGA_Green[3]_5 ,
    \VGA_Red[3]_3 ,
    \VGA_Green[3]_6 ,
    \VGA_Green[3]_7 ,
    \VGA_Red[3]_4 ,
    \VGA_Red[3]_5 ,
    \VGA_Green[3]_8 ,
    \VGA_Red[3]_6 ,
    \VGA_Green[3]_9 ,
    \VGA_Red[3]_7 ,
    \VGA_Green[3]_10 ,
    \VGA_Red[3]_8 ,
    \VGA_Red[3]_9 ,
    \VGA_Red[3]_10 ,
    \VGA_Red[3]_11 ,
    \VGA_Red[3]_12 ,
    \VGA_Red[3]_13 ,
    \VGA_Red[3]_14 ,
    \VGA_Green[3]_11 ,
    \VGA_Green[3]_12 ,
    \VGA_Green[3]_13 ,
    \VGA_Green[3]_14 ,
    \VGA_Green[3]_15 ,
    \VGA_Green[3]_16 ,
    VGA_Vsync,
    VGA_Hsync,
    \VGA_Red[3]_15 ,
    \VGA_Red[3]_16 ,
    apple_data,
    seg_data,
    CO,
    \v_count_reg[9]_0 ,
    \h_count_reg[7]_0 ,
    \h_count_reg[6]_0 ,
    \v_count_reg[8]_0 ,
    \v_count_reg[9]_1 ,
    \h_count_reg[7]_1 ,
    \h_count_reg[6]_1 ,
    pix_rst,
    pix_clk);
  output [0:0]S;
  output [0:0]\VGA_Green[3] ;
  output [0:0]VGA_Red;
  output [0:0]VGA_Green;
  output [2:0]\VGA_Red[3] ;
  output [2:0]\VGA_Green[3]_0 ;
  output [1:0]DI;
  output [1:0]\VGA_Green[3]_1 ;
  output [3:0]\VGA_Red[3]_0 ;
  output [2:0]\VGA_Red[3]_1 ;
  output [3:0]\VGA_Green[3]_2 ;
  output [2:0]\VGA_Green[3]_3 ;
  output [3:0]\VGA_Green[3]_4 ;
  output [3:0]\VGA_Red[3]_2 ;
  output [3:0]\VGA_Green[3]_5 ;
  output [3:0]\VGA_Red[3]_3 ;
  output [3:0]\VGA_Green[3]_6 ;
  output [2:0]\VGA_Green[3]_7 ;
  output [3:0]\VGA_Red[3]_4 ;
  output [2:0]\VGA_Red[3]_5 ;
  output [1:0]\VGA_Green[3]_8 ;
  output [1:0]\VGA_Red[3]_6 ;
  output [0:0]\VGA_Green[3]_9 ;
  output [0:0]\VGA_Red[3]_7 ;
  output [0:0]\VGA_Green[3]_10 ;
  output [0:0]\VGA_Red[3]_8 ;
  output [3:0]\VGA_Red[3]_9 ;
  output [3:0]\VGA_Red[3]_10 ;
  output [0:0]\VGA_Red[3]_11 ;
  output [0:0]\VGA_Red[3]_12 ;
  output [3:0]\VGA_Red[3]_13 ;
  output [3:0]\VGA_Red[3]_14 ;
  output [3:0]\VGA_Green[3]_11 ;
  output [3:0]\VGA_Green[3]_12 ;
  output [0:0]\VGA_Green[3]_13 ;
  output [0:0]\VGA_Green[3]_14 ;
  output [3:0]\VGA_Green[3]_15 ;
  output [3:0]\VGA_Green[3]_16 ;
  output VGA_Vsync;
  output VGA_Hsync;
  output [3:0]\VGA_Red[3]_15 ;
  output [3:0]\VGA_Red[3]_16 ;
  input [19:0]apple_data;
  input [19:0]seg_data;
  input [0:0]CO;
  input [0:0]\v_count_reg[9]_0 ;
  input [0:0]\h_count_reg[7]_0 ;
  input [0:0]\h_count_reg[6]_0 ;
  input [0:0]\v_count_reg[8]_0 ;
  input [0:0]\v_count_reg[9]_1 ;
  input [0:0]\h_count_reg[7]_1 ;
  input [0:0]\h_count_reg[6]_1 ;
  input pix_rst;
  input pix_clk;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [0:0]S;
  wire [0:0]VGA_Green;
  wire [0:0]\VGA_Green[3] ;
  wire [2:0]\VGA_Green[3]_0 ;
  wire [1:0]\VGA_Green[3]_1 ;
  wire [0:0]\VGA_Green[3]_10 ;
  wire [3:0]\VGA_Green[3]_11 ;
  wire [3:0]\VGA_Green[3]_12 ;
  wire [0:0]\VGA_Green[3]_13 ;
  wire [0:0]\VGA_Green[3]_14 ;
  wire [3:0]\VGA_Green[3]_15 ;
  wire [3:0]\VGA_Green[3]_16 ;
  wire [3:0]\VGA_Green[3]_2 ;
  wire [2:0]\VGA_Green[3]_3 ;
  wire [3:0]\VGA_Green[3]_4 ;
  wire [3:0]\VGA_Green[3]_5 ;
  wire [3:0]\VGA_Green[3]_6 ;
  wire [2:0]\VGA_Green[3]_7 ;
  wire [1:0]\VGA_Green[3]_8 ;
  wire [0:0]\VGA_Green[3]_9 ;
  wire VGA_Hsync;
  wire [0:0]VGA_Red;
  wire \VGA_Red[0]_INST_0_i_1_n_0 ;
  wire \VGA_Red[0]_INST_0_i_2_n_0 ;
  wire [2:0]\VGA_Red[3] ;
  wire [3:0]\VGA_Red[3]_0 ;
  wire [2:0]\VGA_Red[3]_1 ;
  wire [3:0]\VGA_Red[3]_10 ;
  wire [0:0]\VGA_Red[3]_11 ;
  wire [0:0]\VGA_Red[3]_12 ;
  wire [3:0]\VGA_Red[3]_13 ;
  wire [3:0]\VGA_Red[3]_14 ;
  wire [3:0]\VGA_Red[3]_15 ;
  wire [3:0]\VGA_Red[3]_16 ;
  wire [3:0]\VGA_Red[3]_2 ;
  wire [3:0]\VGA_Red[3]_3 ;
  wire [3:0]\VGA_Red[3]_4 ;
  wire [2:0]\VGA_Red[3]_5 ;
  wire [1:0]\VGA_Red[3]_6 ;
  wire [0:0]\VGA_Red[3]_7 ;
  wire [0:0]\VGA_Red[3]_8 ;
  wire [3:0]\VGA_Red[3]_9 ;
  wire VGA_Vsync;
  wire VGA_Vsync_INST_0_i_1_n_0;
  wire [19:0]apple_data;
  wire [9:0]h_count0;
  wire \h_count[9]_i_3_n_0 ;
  wire \h_count[9]_i_4_n_0 ;
  wire [0:0]\h_count_reg[6]_0 ;
  wire [0:0]\h_count_reg[6]_1 ;
  wire [0:0]\h_count_reg[7]_0 ;
  wire [0:0]\h_count_reg[7]_1 ;
  wire [9:0]h_count_reg__0;
  wire hit_apple3_carry__0_i_3_n_0;
  wire hit_apple3_carry__0_i_4_n_0;
  wire o_screenend0;
  wire o_y1;
  wire pix_clk;
  wire pix_rst;
  wire [19:0]seg_data;
  wire [9:0]v_count;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[5]_i_2_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire [0:0]\v_count_reg[8]_0 ;
  wire [0:0]\v_count_reg[9]_0 ;
  wire [0:0]\v_count_reg[9]_1 ;
  wire [7:7]xpos;

  LUT5 #(
    .INIT(32'h00000020)) 
    \VGA_Green[0]_INST_0 
       (.I0(\v_count_reg[8]_0 ),
        .I1(\v_count_reg[9]_1 ),
        .I2(\h_count_reg[7]_1 ),
        .I3(\h_count_reg[6]_1 ),
        .I4(\VGA_Red[0]_INST_0_i_1_n_0 ),
        .O(VGA_Green));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAB)) 
    VGA_Hsync_INST_0
       (.I0(h_count_reg__0[7]),
        .I1(h_count_reg__0[6]),
        .I2(h_count_reg__0[4]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[8]),
        .I5(h_count_reg__0[9]),
        .O(VGA_Hsync));
  LUT5 #(
    .INIT(32'h00000020)) 
    \VGA_Red[0]_INST_0 
       (.I0(CO),
        .I1(\v_count_reg[9]_0 ),
        .I2(\h_count_reg[7]_0 ),
        .I3(\h_count_reg[6]_0 ),
        .I4(\VGA_Red[0]_INST_0_i_1_n_0 ),
        .O(VGA_Red));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \VGA_Red[0]_INST_0_i_1 
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(v_count[5]),
        .I4(v_count[6]),
        .I5(v_count[9]),
        .O(\VGA_Red[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000001F)) 
    \VGA_Red[0]_INST_0_i_2 
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .O(\VGA_Red[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    VGA_Vsync_INST_0
       (.I0(v_count[1]),
        .I1(v_count[4]),
        .I2(v_count[3]),
        .I3(v_count[2]),
        .I4(VGA_Vsync_INST_0_i_1_n_0),
        .I5(v_count[9]),
        .O(VGA_Vsync));
  LUT4 #(
    .INIT(16'h7FFF)) 
    VGA_Vsync_INST_0_i_1
       (.I0(v_count[8]),
        .I1(v_count[7]),
        .I2(v_count[5]),
        .I3(v_count[6]),
        .O(VGA_Vsync_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    __19_carry__0_i_1
       (.I0(v_count[9]),
        .I1(v_count[6]),
        .I2(apple_data[16]),
        .O(\VGA_Red[3]_5 [2]));
  LUT6 #(
    .INIT(64'h15005500FFFFFFFF)) 
    __19_carry__0_i_2
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(v_count[5]),
        .I4(v_count[6]),
        .I5(apple_data[15]),
        .O(\VGA_Red[3]_5 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A5A5A5A)) 
    __19_carry__0_i_3
       (.I0(apple_data[15]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Red[3]_5 [0]));
  LUT5 #(
    .INIT(32'hF0F0D22D)) 
    __19_carry__0_i_4
       (.I0(apple_data[16]),
        .I1(v_count[6]),
        .I2(apple_data[17]),
        .I3(v_count[7]),
        .I4(o_y1),
        .O(\VGA_Red[3]_4 [3]));
  LUT5 #(
    .INIT(32'h5A5AD22D)) 
    __19_carry__0_i_5
       (.I0(apple_data[15]),
        .I1(v_count[5]),
        .I2(apple_data[16]),
        .I3(v_count[6]),
        .I4(o_y1),
        .O(\VGA_Red[3]_4 [2]));
  LUT4 #(
    .INIT(16'hA659)) 
    __19_carry__0_i_6
       (.I0(apple_data[15]),
        .I1(v_count[5]),
        .I2(o_y1),
        .I3(apple_data[14]),
        .O(\VGA_Red[3]_4 [1]));
  LUT3 #(
    .INIT(8'h1E)) 
    __19_carry__0_i_7
       (.I0(v_count[4]),
        .I1(o_y1),
        .I2(apple_data[14]),
        .O(\VGA_Red[3]_4 [0]));
  LUT3 #(
    .INIT(8'hEF)) 
    __19_carry__1_i_1
       (.I0(v_count[9]),
        .I1(v_count[7]),
        .I2(apple_data[17]),
        .O(\VGA_Red[3]_8 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    __19_carry__1_i_3
       (.I0(apple_data[18]),
        .I1(v_count[8]),
        .I2(o_y1),
        .I3(apple_data[19]),
        .O(\VGA_Red[3]_6 [1]));
  LUT5 #(
    .INIT(32'hF0F0D22D)) 
    __19_carry__1_i_4
       (.I0(apple_data[17]),
        .I1(v_count[7]),
        .I2(apple_data[18]),
        .I3(v_count[8]),
        .I4(o_y1),
        .O(\VGA_Red[3]_6 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    __19_carry_i_1
       (.I0(v_count[3]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Red[3]_16 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    __19_carry_i_2
       (.I0(v_count[2]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Red[3]_16 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    __19_carry_i_3
       (.I0(v_count[1]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Red[3]_16 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    __19_carry_i_4
       (.I0(v_count[0]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Red[3]_16 [0]));
  LUT3 #(
    .INIT(8'hE1)) 
    __19_carry_i_5
       (.I0(o_y1),
        .I1(v_count[3]),
        .I2(apple_data[13]),
        .O(\VGA_Red[3]_3 [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    __19_carry_i_6
       (.I0(o_y1),
        .I1(v_count[2]),
        .I2(apple_data[12]),
        .O(\VGA_Red[3]_3 [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    __19_carry_i_7
       (.I0(o_y1),
        .I1(v_count[1]),
        .I2(apple_data[11]),
        .O(\VGA_Red[3]_3 [1]));
  LUT3 #(
    .INIT(8'hE1)) 
    __19_carry_i_8
       (.I0(o_y1),
        .I1(v_count[0]),
        .I2(apple_data[10]),
        .O(\VGA_Red[3]_3 [0]));
  LUT6 #(
    .INIT(64'h99999980FFFFFFFF)) 
    __39_carry__0_i_1
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(seg_data[6]),
        .O(\VGA_Green[3]_3 [2]));
  LUT6 #(
    .INIT(64'h33333320FFFFFFFF)) 
    __39_carry__0_i_2
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(seg_data[5]),
        .O(\VGA_Green[3]_3 [1]));
  LUT6 #(
    .INIT(64'hAAAA5556AAAA5656)) 
    __39_carry__0_i_3
       (.I0(seg_data[5]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Green[3]_3 [0]));
  LUT6 #(
    .INIT(64'h999999993C9696C3)) 
    __39_carry__0_i_4
       (.I0(seg_data[6]),
        .I1(seg_data[7]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .I5(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_2 [3]));
  LUT5 #(
    .INIT(32'h9999693C)) 
    __39_carry__0_i_5
       (.I0(seg_data[5]),
        .I1(seg_data[6]),
        .I2(h_count_reg__0[6]),
        .I3(h_count_reg__0[5]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_2 [2]));
  LUT4 #(
    .INIT(16'hA956)) 
    __39_carry__0_i_6
       (.I0(seg_data[5]),
        .I1(h_count_reg__0[5]),
        .I2(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I3(seg_data[4]),
        .O(\VGA_Green[3]_2 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    __39_carry__0_i_7
       (.I0(h_count_reg__0[4]),
        .I1(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I2(seg_data[4]),
        .O(\VGA_Green[3]_2 [0]));
  LUT6 #(
    .INIT(64'hE01FE000FFFFFFFF)) 
    __39_carry__1_i_1
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(seg_data[8]),
        .O(\VGA_Green[3]_1 [1]));
  LUT6 #(
    .INIT(64'h1E1E1E00FFFFFFFF)) 
    __39_carry__1_i_2
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(seg_data[7]),
        .O(\VGA_Green[3]_1 [0]));
  LUT6 #(
    .INIT(64'hFFE00000FFFFFFFF)) 
    __39_carry__1_i_3
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(seg_data[9]),
        .O(\VGA_Green[3]_0 [2]));
  LUT4 #(
    .INIT(16'hD22D)) 
    __39_carry__1_i_4
       (.I0(seg_data[8]),
        .I1(hit_apple3_carry__0_i_3_n_0),
        .I2(seg_data[9]),
        .I3(hit_apple3_carry__0_i_4_n_0),
        .O(\VGA_Green[3]_0 [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    __39_carry__1_i_5
       (.I0(seg_data[7]),
        .I1(xpos),
        .I2(seg_data[8]),
        .I3(hit_apple3_carry__0_i_3_n_0),
        .O(\VGA_Green[3]_0 [0]));
  LUT3 #(
    .INIT(8'h4B)) 
    __39_carry_i_1
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[3]),
        .I2(seg_data[3]),
        .O(\VGA_Green[3]_4 [3]));
  LUT3 #(
    .INIT(8'h4B)) 
    __39_carry_i_2
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[2]),
        .I2(seg_data[2]),
        .O(\VGA_Green[3]_4 [2]));
  LUT3 #(
    .INIT(8'h4B)) 
    __39_carry_i_3
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[1]),
        .I2(seg_data[1]),
        .O(\VGA_Green[3]_4 [1]));
  LUT3 #(
    .INIT(8'h4B)) 
    __39_carry_i_4
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[0]),
        .I2(seg_data[0]),
        .O(\VGA_Green[3]_4 [0]));
  LUT3 #(
    .INIT(8'hEF)) 
    __59_carry__0_i_1
       (.I0(v_count[9]),
        .I1(v_count[6]),
        .I2(seg_data[16]),
        .O(\VGA_Green[3]_7 [2]));
  LUT6 #(
    .INIT(64'h15005500FFFFFFFF)) 
    __59_carry__0_i_2
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(v_count[5]),
        .I4(v_count[6]),
        .I5(seg_data[15]),
        .O(\VGA_Green[3]_7 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A5A5A5A)) 
    __59_carry__0_i_3
       (.I0(seg_data[15]),
        .I1(v_count[6]),
        .I2(v_count[5]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(v_count[9]),
        .O(\VGA_Green[3]_7 [0]));
  LUT5 #(
    .INIT(32'hF0F0D22D)) 
    __59_carry__0_i_4
       (.I0(seg_data[16]),
        .I1(v_count[6]),
        .I2(seg_data[17]),
        .I3(v_count[7]),
        .I4(o_y1),
        .O(\VGA_Green[3]_6 [3]));
  LUT5 #(
    .INIT(32'h5A5AD22D)) 
    __59_carry__0_i_5
       (.I0(seg_data[15]),
        .I1(v_count[5]),
        .I2(seg_data[16]),
        .I3(v_count[6]),
        .I4(o_y1),
        .O(\VGA_Green[3]_6 [2]));
  LUT4 #(
    .INIT(16'hA659)) 
    __59_carry__0_i_6
       (.I0(seg_data[15]),
        .I1(v_count[5]),
        .I2(o_y1),
        .I3(seg_data[14]),
        .O(\VGA_Green[3]_6 [1]));
  LUT3 #(
    .INIT(8'h1E)) 
    __59_carry__0_i_7
       (.I0(v_count[4]),
        .I1(o_y1),
        .I2(seg_data[14]),
        .O(\VGA_Green[3]_6 [0]));
  LUT3 #(
    .INIT(8'hEF)) 
    __59_carry__1_i_1
       (.I0(v_count[9]),
        .I1(v_count[7]),
        .I2(seg_data[17]),
        .O(\VGA_Green[3]_10 ));
  LUT4 #(
    .INIT(16'h02FD)) 
    __59_carry__1_i_3
       (.I0(seg_data[18]),
        .I1(v_count[8]),
        .I2(o_y1),
        .I3(seg_data[19]),
        .O(\VGA_Green[3]_8 [1]));
  LUT5 #(
    .INIT(32'hF0F0D22D)) 
    __59_carry__1_i_4
       (.I0(seg_data[17]),
        .I1(v_count[7]),
        .I2(seg_data[18]),
        .I3(v_count[8]),
        .I4(o_y1),
        .O(\VGA_Green[3]_8 [0]));
  LUT3 #(
    .INIT(8'hE1)) 
    __59_carry_i_1
       (.I0(o_y1),
        .I1(v_count[3]),
        .I2(seg_data[13]),
        .O(\VGA_Green[3]_5 [3]));
  LUT3 #(
    .INIT(8'hE1)) 
    __59_carry_i_2
       (.I0(o_y1),
        .I1(v_count[2]),
        .I2(seg_data[12]),
        .O(\VGA_Green[3]_5 [2]));
  LUT3 #(
    .INIT(8'hE1)) 
    __59_carry_i_3
       (.I0(o_y1),
        .I1(v_count[1]),
        .I2(seg_data[11]),
        .O(\VGA_Green[3]_5 [1]));
  LUT3 #(
    .INIT(8'hE1)) 
    __59_carry_i_4
       (.I0(o_y1),
        .I1(v_count[0]),
        .I2(seg_data[10]),
        .O(\VGA_Green[3]_5 [0]));
  LUT6 #(
    .INIT(64'h99999980FFFFFFFF)) 
    _carry__0_i_1
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(apple_data[6]),
        .O(\VGA_Red[3]_1 [2]));
  LUT6 #(
    .INIT(64'h33333320FFFFFFFF)) 
    _carry__0_i_2
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(apple_data[5]),
        .O(\VGA_Red[3]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAA5556AAAA5656)) 
    _carry__0_i_3
       (.I0(apple_data[5]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Red[3]_1 [0]));
  LUT6 #(
    .INIT(64'h999999993C9696C3)) 
    _carry__0_i_4
       (.I0(apple_data[6]),
        .I1(apple_data[7]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .I5(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_0 [3]));
  LUT5 #(
    .INIT(32'h9999693C)) 
    _carry__0_i_5
       (.I0(apple_data[5]),
        .I1(apple_data[6]),
        .I2(h_count_reg__0[6]),
        .I3(h_count_reg__0[5]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_0 [2]));
  LUT4 #(
    .INIT(16'hA956)) 
    _carry__0_i_6
       (.I0(apple_data[5]),
        .I1(h_count_reg__0[5]),
        .I2(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I3(apple_data[4]),
        .O(\VGA_Red[3]_0 [1]));
  LUT3 #(
    .INIT(8'hD2)) 
    _carry__0_i_7
       (.I0(h_count_reg__0[4]),
        .I1(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I2(apple_data[4]),
        .O(\VGA_Red[3]_0 [0]));
  LUT6 #(
    .INIT(64'hE01FE000FFFFFFFF)) 
    _carry__1_i_1
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(apple_data[8]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h1E1E1E00FFFFFFFF)) 
    _carry__1_i_2
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(apple_data[7]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hFFE00000FFFFFFFF)) 
    _carry__1_i_3
       (.I0(h_count_reg__0[6]),
        .I1(h_count_reg__0[5]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .I5(apple_data[9]),
        .O(\VGA_Red[3] [2]));
  LUT4 #(
    .INIT(16'hD22D)) 
    _carry__1_i_4
       (.I0(apple_data[8]),
        .I1(hit_apple3_carry__0_i_3_n_0),
        .I2(apple_data[9]),
        .I3(hit_apple3_carry__0_i_4_n_0),
        .O(\VGA_Red[3] [1]));
  LUT4 #(
    .INIT(16'hD22D)) 
    _carry__1_i_5
       (.I0(apple_data[7]),
        .I1(xpos),
        .I2(apple_data[8]),
        .I3(hit_apple3_carry__0_i_3_n_0),
        .O(\VGA_Red[3] [0]));
  LUT5 #(
    .INIT(32'h0E0E0EE0)) 
    _carry__1_i_6
       (.I0(h_count_reg__0[9]),
        .I1(h_count_reg__0[8]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .O(xpos));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8A8A8)) 
    _carry_i_1
       (.I0(h_count_reg__0[3]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Red[3]_15 [3]));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8A8A8)) 
    _carry_i_2
       (.I0(h_count_reg__0[2]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Red[3]_15 [2]));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8A8A8)) 
    _carry_i_3
       (.I0(h_count_reg__0[1]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Red[3]_15 [1]));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8A8A8)) 
    _carry_i_4
       (.I0(h_count_reg__0[0]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[5]),
        .I5(h_count_reg__0[6]),
        .O(\VGA_Red[3]_15 [0]));
  LUT3 #(
    .INIT(8'h4B)) 
    _carry_i_5
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[3]),
        .I2(apple_data[3]),
        .O(\VGA_Red[3]_2 [3]));
  LUT3 #(
    .INIT(8'h4B)) 
    _carry_i_6
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[2]),
        .I2(apple_data[2]),
        .O(\VGA_Red[3]_2 [2]));
  LUT3 #(
    .INIT(8'h4B)) 
    _carry_i_7
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[1]),
        .I2(apple_data[1]),
        .O(\VGA_Red[3]_2 [1]));
  LUT3 #(
    .INIT(8'h4B)) 
    _carry_i_8
       (.I0(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I1(h_count_reg__0[0]),
        .I2(apple_data[0]),
        .O(\VGA_Red[3]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(h_count_reg__0[0]),
        .O(h_count0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[1]_i_1 
       (.I0(h_count_reg__0[0]),
        .I1(h_count_reg__0[1]),
        .O(h_count0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[2]_i_1 
       (.I0(h_count_reg__0[0]),
        .I1(h_count_reg__0[1]),
        .I2(h_count_reg__0[2]),
        .O(h_count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(h_count_reg__0[1]),
        .I1(h_count_reg__0[0]),
        .I2(h_count_reg__0[2]),
        .I3(h_count_reg__0[3]),
        .O(h_count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(h_count_reg__0[2]),
        .I1(h_count_reg__0[0]),
        .I2(h_count_reg__0[1]),
        .I3(h_count_reg__0[3]),
        .I4(h_count_reg__0[4]),
        .O(h_count0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \h_count[5]_i_1 
       (.I0(h_count_reg__0[3]),
        .I1(h_count_reg__0[1]),
        .I2(h_count_reg__0[0]),
        .I3(h_count_reg__0[2]),
        .I4(h_count_reg__0[4]),
        .I5(h_count_reg__0[5]),
        .O(h_count0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_count[6]_i_1 
       (.I0(\h_count[9]_i_4_n_0 ),
        .I1(h_count_reg__0[6]),
        .O(h_count0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \h_count[7]_i_1 
       (.I0(\h_count[9]_i_4_n_0 ),
        .I1(h_count_reg__0[6]),
        .I2(h_count_reg__0[7]),
        .O(h_count0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[8]_i_1 
       (.I0(h_count_reg__0[6]),
        .I1(\h_count[9]_i_4_n_0 ),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[8]),
        .O(h_count0[8]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \h_count[9]_i_1 
       (.I0(h_count_reg__0[4]),
        .I1(h_count_reg__0[3]),
        .I2(h_count_reg__0[2]),
        .I3(h_count_reg__0[7]),
        .I4(h_count_reg__0[6]),
        .I5(\h_count[9]_i_3_n_0 ),
        .O(o_screenend0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[9]_i_2 
       (.I0(h_count_reg__0[7]),
        .I1(\h_count[9]_i_4_n_0 ),
        .I2(h_count_reg__0[6]),
        .I3(h_count_reg__0[8]),
        .I4(h_count_reg__0[9]),
        .O(h_count0[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    \h_count[9]_i_3 
       (.I0(h_count_reg__0[5]),
        .I1(h_count_reg__0[9]),
        .I2(h_count_reg__0[8]),
        .I3(h_count_reg__0[1]),
        .I4(h_count_reg__0[0]),
        .O(\h_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \h_count[9]_i_4 
       (.I0(h_count_reg__0[5]),
        .I1(h_count_reg__0[3]),
        .I2(h_count_reg__0[1]),
        .I3(h_count_reg__0[0]),
        .I4(h_count_reg__0[2]),
        .I5(h_count_reg__0[4]),
        .O(\h_count[9]_i_4_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[0]),
        .Q(h_count_reg__0[0]),
        .R(o_screenend0));
  FDRE \h_count_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[1]),
        .Q(h_count_reg__0[1]),
        .R(o_screenend0));
  FDRE \h_count_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[2]),
        .Q(h_count_reg__0[2]),
        .R(o_screenend0));
  FDRE \h_count_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[3]),
        .Q(h_count_reg__0[3]),
        .R(o_screenend0));
  FDRE \h_count_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[4]),
        .Q(h_count_reg__0[4]),
        .R(o_screenend0));
  FDRE \h_count_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[5]),
        .Q(h_count_reg__0[5]),
        .R(o_screenend0));
  FDRE \h_count_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[6]),
        .Q(h_count_reg__0[6]),
        .R(o_screenend0));
  FDRE \h_count_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[7]),
        .Q(h_count_reg__0[7]),
        .R(o_screenend0));
  FDRE \h_count_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[8]),
        .Q(h_count_reg__0[8]),
        .R(o_screenend0));
  FDRE \h_count_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(h_count0[9]),
        .Q(h_count_reg__0[9]),
        .R(o_screenend0));
  LUT4 #(
    .INIT(16'h0054)) 
    hit_apple1_carry__0_i_1
       (.I0(apple_data[18]),
        .I1(v_count[8]),
        .I2(o_y1),
        .I3(apple_data[19]),
        .O(\VGA_Red[3]_7 ));
  LUT4 #(
    .INIT(16'h00E1)) 
    hit_apple1_carry__0_i_2
       (.I0(v_count[8]),
        .I1(o_y1),
        .I2(apple_data[18]),
        .I3(apple_data[19]),
        .O(S));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_apple1_carry_i_1
       (.I0(v_count[6]),
        .I1(apple_data[16]),
        .I2(apple_data[17]),
        .I3(v_count[7]),
        .I4(o_y1),
        .O(\VGA_Red[3]_14 [3]));
  LUT5 #(
    .INIT(32'h03032F02)) 
    hit_apple1_carry_i_2
       (.I0(v_count[4]),
        .I1(apple_data[14]),
        .I2(apple_data[15]),
        .I3(v_count[5]),
        .I4(o_y1),
        .O(\VGA_Red[3]_14 [2]));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_apple1_carry_i_3
       (.I0(v_count[2]),
        .I1(apple_data[12]),
        .I2(apple_data[13]),
        .I3(v_count[3]),
        .I4(o_y1),
        .O(\VGA_Red[3]_14 [1]));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_apple1_carry_i_4
       (.I0(v_count[0]),
        .I1(apple_data[10]),
        .I2(apple_data[11]),
        .I3(v_count[1]),
        .I4(o_y1),
        .O(\VGA_Red[3]_14 [0]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_apple1_carry_i_5
       (.I0(v_count[6]),
        .I1(apple_data[16]),
        .I2(v_count[7]),
        .I3(o_y1),
        .I4(apple_data[17]),
        .O(\VGA_Red[3]_13 [3]));
  LUT5 #(
    .INIT(32'h0090CC09)) 
    hit_apple1_carry_i_6
       (.I0(v_count[4]),
        .I1(apple_data[14]),
        .I2(v_count[5]),
        .I3(o_y1),
        .I4(apple_data[15]),
        .O(\VGA_Red[3]_13 [2]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_apple1_carry_i_7
       (.I0(v_count[2]),
        .I1(apple_data[12]),
        .I2(v_count[3]),
        .I3(o_y1),
        .I4(apple_data[13]),
        .O(\VGA_Red[3]_13 [1]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_apple1_carry_i_8
       (.I0(v_count[0]),
        .I1(apple_data[10]),
        .I2(v_count[1]),
        .I3(o_y1),
        .I4(apple_data[11]),
        .O(\VGA_Red[3]_13 [0]));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    hit_apple1_carry_i_9
       (.I0(v_count[9]),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(v_count[5]),
        .I4(v_count[6]),
        .O(o_y1));
  LUT4 #(
    .INIT(16'h2F02)) 
    hit_apple3_carry__0_i_1
       (.I0(hit_apple3_carry__0_i_3_n_0),
        .I1(apple_data[8]),
        .I2(apple_data[9]),
        .I3(hit_apple3_carry__0_i_4_n_0),
        .O(\VGA_Red[3]_12 ));
  LUT4 #(
    .INIT(16'h9009)) 
    hit_apple3_carry__0_i_2
       (.I0(hit_apple3_carry__0_i_3_n_0),
        .I1(apple_data[8]),
        .I2(hit_apple3_carry__0_i_4_n_0),
        .I3(apple_data[9]),
        .O(\VGA_Red[3]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC2C2C222)) 
    hit_apple3_carry__0_i_3
       (.I0(h_count_reg__0[9]),
        .I1(h_count_reg__0[8]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .O(hit_apple3_carry__0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA8A8A888)) 
    hit_apple3_carry__0_i_4
       (.I0(h_count_reg__0[9]),
        .I1(h_count_reg__0[8]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .O(hit_apple3_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000017030371)) 
    hit_apple3_carry_i_1
       (.I0(apple_data[6]),
        .I1(apple_data[7]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .I5(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_10 [3]));
  LUT5 #(
    .INIT(32'h0000022F)) 
    hit_apple3_carry_i_2
       (.I0(h_count_reg__0[4]),
        .I1(apple_data[4]),
        .I2(apple_data[5]),
        .I3(h_count_reg__0[5]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_10 [2]));
  LUT5 #(
    .INIT(32'h00002F02)) 
    hit_apple3_carry_i_3
       (.I0(h_count_reg__0[2]),
        .I1(apple_data[2]),
        .I2(apple_data[3]),
        .I3(h_count_reg__0[3]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_10 [1]));
  LUT5 #(
    .INIT(32'h00002F02)) 
    hit_apple3_carry_i_4
       (.I0(h_count_reg__0[0]),
        .I1(apple_data[0]),
        .I2(apple_data[1]),
        .I3(h_count_reg__0[1]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Red[3]_10 [0]));
  LUT6 #(
    .INIT(64'h0000211855558442)) 
    hit_apple3_carry_i_5
       (.I0(apple_data[6]),
        .I1(h_count_reg__0[7]),
        .I2(h_count_reg__0[5]),
        .I3(h_count_reg__0[6]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I5(apple_data[7]),
        .O(\VGA_Red[3]_9 [3]));
  LUT5 #(
    .INIT(32'h00093390)) 
    hit_apple3_carry_i_6
       (.I0(h_count_reg__0[4]),
        .I1(apple_data[4]),
        .I2(h_count_reg__0[5]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(apple_data[5]),
        .O(\VGA_Red[3]_9 [2]));
  LUT5 #(
    .INIT(32'h00903309)) 
    hit_apple3_carry_i_7
       (.I0(h_count_reg__0[2]),
        .I1(apple_data[2]),
        .I2(h_count_reg__0[3]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(apple_data[3]),
        .O(\VGA_Red[3]_9 [1]));
  LUT5 #(
    .INIT(32'h00903309)) 
    hit_apple3_carry_i_8
       (.I0(h_count_reg__0[0]),
        .I1(apple_data[0]),
        .I2(h_count_reg__0[1]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(apple_data[1]),
        .O(\VGA_Red[3]_9 [0]));
  LUT4 #(
    .INIT(16'h0054)) 
    hit_seg1_carry__0_i_1
       (.I0(seg_data[18]),
        .I1(v_count[8]),
        .I2(o_y1),
        .I3(seg_data[19]),
        .O(\VGA_Green[3]_9 ));
  LUT4 #(
    .INIT(16'h00E1)) 
    hit_seg1_carry__0_i_2
       (.I0(v_count[8]),
        .I1(o_y1),
        .I2(seg_data[18]),
        .I3(seg_data[19]),
        .O(\VGA_Green[3] ));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_seg1_carry_i_1
       (.I0(v_count[6]),
        .I1(seg_data[16]),
        .I2(seg_data[17]),
        .I3(v_count[7]),
        .I4(o_y1),
        .O(\VGA_Green[3]_16 [3]));
  LUT5 #(
    .INIT(32'h03032F02)) 
    hit_seg1_carry_i_2
       (.I0(v_count[4]),
        .I1(seg_data[14]),
        .I2(seg_data[15]),
        .I3(v_count[5]),
        .I4(o_y1),
        .O(\VGA_Green[3]_16 [2]));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_seg1_carry_i_3
       (.I0(v_count[2]),
        .I1(seg_data[12]),
        .I2(seg_data[13]),
        .I3(v_count[3]),
        .I4(o_y1),
        .O(\VGA_Green[3]_16 [1]));
  LUT5 #(
    .INIT(32'h3F3F2F02)) 
    hit_seg1_carry_i_4
       (.I0(v_count[0]),
        .I1(seg_data[10]),
        .I2(seg_data[11]),
        .I3(v_count[1]),
        .I4(o_y1),
        .O(\VGA_Green[3]_16 [0]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_seg1_carry_i_5
       (.I0(v_count[6]),
        .I1(seg_data[16]),
        .I2(v_count[7]),
        .I3(o_y1),
        .I4(seg_data[17]),
        .O(\VGA_Green[3]_15 [3]));
  LUT5 #(
    .INIT(32'h0090CC09)) 
    hit_seg1_carry_i_6
       (.I0(v_count[4]),
        .I1(seg_data[14]),
        .I2(v_count[5]),
        .I3(o_y1),
        .I4(seg_data[15]),
        .O(\VGA_Green[3]_15 [2]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_seg1_carry_i_7
       (.I0(v_count[2]),
        .I1(seg_data[12]),
        .I2(v_count[3]),
        .I3(o_y1),
        .I4(seg_data[13]),
        .O(\VGA_Green[3]_15 [1]));
  LUT5 #(
    .INIT(32'hCC900009)) 
    hit_seg1_carry_i_8
       (.I0(v_count[0]),
        .I1(seg_data[10]),
        .I2(v_count[1]),
        .I3(o_y1),
        .I4(seg_data[11]),
        .O(\VGA_Green[3]_15 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    hit_seg3_carry__0_i_1
       (.I0(hit_apple3_carry__0_i_3_n_0),
        .I1(seg_data[8]),
        .I2(seg_data[9]),
        .I3(hit_apple3_carry__0_i_4_n_0),
        .O(\VGA_Green[3]_14 ));
  LUT4 #(
    .INIT(16'h9009)) 
    hit_seg3_carry__0_i_2
       (.I0(hit_apple3_carry__0_i_3_n_0),
        .I1(seg_data[8]),
        .I2(hit_apple3_carry__0_i_4_n_0),
        .I3(seg_data[9]),
        .O(\VGA_Green[3]_13 ));
  LUT6 #(
    .INIT(64'h0000000017030371)) 
    hit_seg3_carry_i_1
       (.I0(seg_data[6]),
        .I1(seg_data[7]),
        .I2(h_count_reg__0[7]),
        .I3(h_count_reg__0[5]),
        .I4(h_count_reg__0[6]),
        .I5(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_12 [3]));
  LUT5 #(
    .INIT(32'h0000022F)) 
    hit_seg3_carry_i_2
       (.I0(h_count_reg__0[4]),
        .I1(seg_data[4]),
        .I2(seg_data[5]),
        .I3(h_count_reg__0[5]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_12 [2]));
  LUT5 #(
    .INIT(32'h00002F02)) 
    hit_seg3_carry_i_3
       (.I0(h_count_reg__0[2]),
        .I1(seg_data[2]),
        .I2(seg_data[3]),
        .I3(h_count_reg__0[3]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_12 [1]));
  LUT5 #(
    .INIT(32'h00002F02)) 
    hit_seg3_carry_i_4
       (.I0(h_count_reg__0[0]),
        .I1(seg_data[0]),
        .I2(seg_data[1]),
        .I3(h_count_reg__0[1]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .O(\VGA_Green[3]_12 [0]));
  LUT6 #(
    .INIT(64'h0000211855558442)) 
    hit_seg3_carry_i_5
       (.I0(seg_data[6]),
        .I1(h_count_reg__0[7]),
        .I2(h_count_reg__0[5]),
        .I3(h_count_reg__0[6]),
        .I4(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I5(seg_data[7]),
        .O(\VGA_Green[3]_11 [3]));
  LUT5 #(
    .INIT(32'h00093390)) 
    hit_seg3_carry_i_6
       (.I0(h_count_reg__0[4]),
        .I1(seg_data[4]),
        .I2(h_count_reg__0[5]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(seg_data[5]),
        .O(\VGA_Green[3]_11 [2]));
  LUT5 #(
    .INIT(32'h00903309)) 
    hit_seg3_carry_i_7
       (.I0(h_count_reg__0[2]),
        .I1(seg_data[2]),
        .I2(h_count_reg__0[3]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(seg_data[3]),
        .O(\VGA_Green[3]_11 [1]));
  LUT5 #(
    .INIT(32'h00903309)) 
    hit_seg3_carry_i_8
       (.I0(h_count_reg__0[0]),
        .I1(seg_data[0]),
        .I2(h_count_reg__0[1]),
        .I3(\VGA_Red[0]_INST_0_i_2_n_0 ),
        .I4(seg_data[1]),
        .O(\VGA_Green[3]_11 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_count[0]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[0]),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_count[1]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[1]),
        .I2(v_count[0]),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count[2]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[2]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .O(\v_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count[3]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[3]),
        .I2(v_count[2]),
        .I3(v_count[0]),
        .I4(v_count[1]),
        .O(\v_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count[4]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[4]),
        .I2(v_count[3]),
        .I3(v_count[1]),
        .I4(v_count[0]),
        .I5(v_count[2]),
        .O(\v_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_count[5]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[5]),
        .I2(\v_count[5]_i_2_n_0 ),
        .O(\v_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count[5]_i_2 
       (.I0(v_count[4]),
        .I1(v_count[2]),
        .I2(v_count[0]),
        .I3(v_count[1]),
        .I4(v_count[3]),
        .O(\v_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_count[6]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[6]),
        .I2(\v_count[9]_i_5_n_0 ),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count[7]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[7]),
        .I2(v_count[6]),
        .I3(\v_count[9]_i_5_n_0 ),
        .O(\v_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count[8]_i_1 
       (.I0(o_screenend0),
        .I1(v_count[8]),
        .I2(v_count[7]),
        .I3(\v_count[9]_i_5_n_0 ),
        .I4(v_count[6]),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \v_count[9]_i_1 
       (.I0(v_count[6]),
        .I1(v_count[5]),
        .I2(v_count[4]),
        .I3(v_count[7]),
        .I4(v_count[8]),
        .I5(\v_count[9]_i_4_n_0 ),
        .O(\v_count[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_count[9]_i_2 
       (.I0(pix_rst),
        .I1(o_screenend0),
        .O(\v_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count[9]_i_3 
       (.I0(o_screenend0),
        .I1(v_count[9]),
        .I2(v_count[8]),
        .I3(v_count[6]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(v_count[7]),
        .O(\v_count[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \v_count[9]_i_4 
       (.I0(v_count[0]),
        .I1(v_count[2]),
        .I2(v_count[3]),
        .I3(v_count[1]),
        .I4(v_count[9]),
        .O(\v_count[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \v_count[9]_i_5 
       (.I0(v_count[5]),
        .I1(v_count[3]),
        .I2(v_count[1]),
        .I3(v_count[0]),
        .I4(v_count[2]),
        .I5(v_count[4]),
        .O(\v_count[9]_i_5_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(v_count[0]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[1] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(v_count[1]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[2] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(v_count[2]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[3] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(v_count[3]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[4] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(v_count[4]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[5] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(v_count[5]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[6] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(v_count[6]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[7] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(v_count[7]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[8] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(v_count[8]),
        .R(\v_count[9]_i_1_n_0 ));
  FDRE \v_count_reg[9] 
       (.C(pix_clk),
        .CE(\v_count[9]_i_2_n_0 ),
        .D(\v_count[9]_i_3_n_0 ),
        .Q(v_count[9]),
        .R(\v_count[9]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "vga_sprite_top" *) 
module design_1_vga_sprite_top_0_0_vga_sprite_top
   (VGA_Red,
    VGA_Green,
    VGA_Vsync,
    VGA_Hsync,
    apple_data,
    seg_data,
    pix_clk,
    pix_rst);
  output [0:0]VGA_Red;
  output [0:0]VGA_Green;
  output VGA_Vsync;
  output VGA_Hsync;
  input [19:0]apple_data;
  input [19:0]seg_data;
  input pix_clk;
  input pix_rst;

  wire [0:0]VGA_Green;
  wire VGA_Hsync;
  wire [0:0]VGA_Red;
  wire VGA_Vsync;
  wire __19_carry__0_n_0;
  wire __19_carry__0_n_1;
  wire __19_carry__0_n_2;
  wire __19_carry__0_n_3;
  wire __19_carry__1_i_2_n_0;
  wire __19_carry__1_n_1;
  wire __19_carry__1_n_2;
  wire __19_carry__1_n_3;
  wire __19_carry_n_0;
  wire __19_carry_n_1;
  wire __19_carry_n_2;
  wire __19_carry_n_3;
  wire __39_carry__0_n_0;
  wire __39_carry__0_n_1;
  wire __39_carry__0_n_2;
  wire __39_carry__0_n_3;
  wire __39_carry__1_n_1;
  wire __39_carry__1_n_2;
  wire __39_carry__1_n_3;
  wire __39_carry_n_0;
  wire __39_carry_n_1;
  wire __39_carry_n_2;
  wire __39_carry_n_3;
  wire __59_carry__0_n_0;
  wire __59_carry__0_n_1;
  wire __59_carry__0_n_2;
  wire __59_carry__0_n_3;
  wire __59_carry__1_i_2_n_0;
  wire __59_carry__1_n_1;
  wire __59_carry__1_n_2;
  wire __59_carry__1_n_3;
  wire __59_carry_n_0;
  wire __59_carry_n_1;
  wire __59_carry_n_2;
  wire __59_carry_n_3;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [19:0]apple_data;
  wire hit_apple1;
  wire hit_apple1_carry_n_0;
  wire hit_apple1_carry_n_1;
  wire hit_apple1_carry_n_2;
  wire hit_apple1_carry_n_3;
  wire hit_apple3;
  wire hit_apple3_carry_n_0;
  wire hit_apple3_carry_n_1;
  wire hit_apple3_carry_n_2;
  wire hit_apple3_carry_n_3;
  wire hit_seg1;
  wire hit_seg1_carry_n_0;
  wire hit_seg1_carry_n_1;
  wire hit_seg1_carry_n_2;
  wire hit_seg1_carry_n_3;
  wire hit_seg3;
  wire hit_seg3_carry_n_0;
  wire hit_seg3_carry_n_1;
  wire hit_seg3_carry_n_2;
  wire hit_seg3_carry_n_3;
  wire pix_clk;
  wire pix_rst;
  wire [19:0]seg_data;
  wire u_vga_n_0;
  wire u_vga_n_1;
  wire u_vga_n_10;
  wire u_vga_n_100;
  wire u_vga_n_101;
  wire u_vga_n_11;
  wire u_vga_n_12;
  wire u_vga_n_13;
  wire u_vga_n_14;
  wire u_vga_n_15;
  wire u_vga_n_16;
  wire u_vga_n_17;
  wire u_vga_n_18;
  wire u_vga_n_19;
  wire u_vga_n_20;
  wire u_vga_n_21;
  wire u_vga_n_22;
  wire u_vga_n_23;
  wire u_vga_n_24;
  wire u_vga_n_25;
  wire u_vga_n_26;
  wire u_vga_n_27;
  wire u_vga_n_28;
  wire u_vga_n_29;
  wire u_vga_n_30;
  wire u_vga_n_31;
  wire u_vga_n_32;
  wire u_vga_n_33;
  wire u_vga_n_34;
  wire u_vga_n_35;
  wire u_vga_n_36;
  wire u_vga_n_37;
  wire u_vga_n_38;
  wire u_vga_n_39;
  wire u_vga_n_4;
  wire u_vga_n_40;
  wire u_vga_n_41;
  wire u_vga_n_42;
  wire u_vga_n_43;
  wire u_vga_n_44;
  wire u_vga_n_45;
  wire u_vga_n_46;
  wire u_vga_n_47;
  wire u_vga_n_48;
  wire u_vga_n_49;
  wire u_vga_n_5;
  wire u_vga_n_50;
  wire u_vga_n_51;
  wire u_vga_n_52;
  wire u_vga_n_53;
  wire u_vga_n_54;
  wire u_vga_n_55;
  wire u_vga_n_56;
  wire u_vga_n_57;
  wire u_vga_n_58;
  wire u_vga_n_59;
  wire u_vga_n_6;
  wire u_vga_n_60;
  wire u_vga_n_61;
  wire u_vga_n_62;
  wire u_vga_n_63;
  wire u_vga_n_64;
  wire u_vga_n_65;
  wire u_vga_n_66;
  wire u_vga_n_67;
  wire u_vga_n_68;
  wire u_vga_n_69;
  wire u_vga_n_7;
  wire u_vga_n_70;
  wire u_vga_n_71;
  wire u_vga_n_72;
  wire u_vga_n_73;
  wire u_vga_n_74;
  wire u_vga_n_75;
  wire u_vga_n_76;
  wire u_vga_n_77;
  wire u_vga_n_78;
  wire u_vga_n_79;
  wire u_vga_n_8;
  wire u_vga_n_80;
  wire u_vga_n_81;
  wire u_vga_n_82;
  wire u_vga_n_83;
  wire u_vga_n_84;
  wire u_vga_n_85;
  wire u_vga_n_86;
  wire u_vga_n_87;
  wire u_vga_n_88;
  wire u_vga_n_89;
  wire u_vga_n_9;
  wire u_vga_n_90;
  wire u_vga_n_91;
  wire u_vga_n_92;
  wire u_vga_n_93;
  wire u_vga_n_94;
  wire u_vga_n_95;
  wire u_vga_n_96;
  wire u_vga_n_97;
  wire u_vga_n_98;
  wire u_vga_n_99;
  wire [3:0]xpos__0;
  wire [3:0]ypos;
  wire [3:0]NLW___19_carry_O_UNCONNECTED;
  wire [3:0]NLW___19_carry__0_O_UNCONNECTED;
  wire [3:3]NLW___19_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW___19_carry__1_O_UNCONNECTED;
  wire [3:0]NLW___39_carry_O_UNCONNECTED;
  wire [3:0]NLW___39_carry__0_O_UNCONNECTED;
  wire [3:3]NLW___39_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW___39_carry__1_O_UNCONNECTED;
  wire [3:0]NLW___59_carry_O_UNCONNECTED;
  wire [3:0]NLW___59_carry__0_O_UNCONNECTED;
  wire [3:3]NLW___59_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW___59_carry__1_O_UNCONNECTED;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]NLW__carry__0_O_UNCONNECTED;
  wire [3:3]NLW__carry__1_CO_UNCONNECTED;
  wire [3:0]NLW__carry__1_O_UNCONNECTED;
  wire [3:0]NLW_hit_apple1_carry_O_UNCONNECTED;
  wire [3:1]NLW_hit_apple1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hit_apple1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_hit_apple3_carry_O_UNCONNECTED;
  wire [3:1]NLW_hit_apple3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hit_apple3_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_hit_seg1_carry_O_UNCONNECTED;
  wire [3:1]NLW_hit_seg1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hit_seg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_hit_seg3_carry_O_UNCONNECTED;
  wire [3:1]NLW_hit_seg3_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_hit_seg3_carry__0_O_UNCONNECTED;

  CARRY4 __19_carry
       (.CI(1'b0),
        .CO({__19_carry_n_0,__19_carry_n_1,__19_carry_n_2,__19_carry_n_3}),
        .CYINIT(1'b1),
        .DI(ypos),
        .O(NLW___19_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_40,u_vga_n_41,u_vga_n_42,u_vga_n_43}));
  CARRY4 __19_carry__0
       (.CI(__19_carry_n_0),
        .CO({__19_carry__0_n_0,__19_carry__0_n_1,__19_carry__0_n_2,__19_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_vga_n_55,u_vga_n_56,u_vga_n_57,apple_data[14]}),
        .O(NLW___19_carry__0_O_UNCONNECTED[3:0]),
        .S({u_vga_n_51,u_vga_n_52,u_vga_n_53,u_vga_n_54}));
  CARRY4 __19_carry__1
       (.CI(__19_carry__0_n_0),
        .CO({NLW___19_carry__1_CO_UNCONNECTED[3],__19_carry__1_n_1,__19_carry__1_n_2,__19_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,apple_data[19],u_vga_n_65}),
        .O(NLW___19_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,__19_carry__1_i_2_n_0,u_vga_n_60,u_vga_n_61}));
  LUT1 #(
    .INIT(2'h1)) 
    __19_carry__1_i_2
       (.I0(apple_data[19]),
        .O(__19_carry__1_i_2_n_0));
  CARRY4 __39_carry
       (.CI(1'b0),
        .CO({__39_carry_n_0,__39_carry_n_1,__39_carry_n_2,__39_carry_n_3}),
        .CYINIT(1'b1),
        .DI(xpos__0),
        .O(NLW___39_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_28,u_vga_n_29,u_vga_n_30,u_vga_n_31}));
  CARRY4 __39_carry__0
       (.CI(__39_carry_n_0),
        .CO({__39_carry__0_n_0,__39_carry__0_n_1,__39_carry__0_n_2,__39_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_vga_n_25,u_vga_n_26,u_vga_n_27,seg_data[4]}),
        .O(NLW___39_carry__0_O_UNCONNECTED[3:0]),
        .S({u_vga_n_21,u_vga_n_22,u_vga_n_23,u_vga_n_24}));
  CARRY4 __39_carry__1
       (.CI(__39_carry__0_n_0),
        .CO({NLW___39_carry__1_CO_UNCONNECTED[3],__39_carry__1_n_1,__39_carry__1_n_2,__39_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,u_vga_n_12,u_vga_n_13}),
        .O(NLW___39_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,u_vga_n_7,u_vga_n_8,u_vga_n_9}));
  CARRY4 __59_carry
       (.CI(1'b0),
        .CO({__59_carry_n_0,__59_carry_n_1,__59_carry_n_2,__59_carry_n_3}),
        .CYINIT(1'b1),
        .DI(ypos),
        .O(NLW___59_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_36,u_vga_n_37,u_vga_n_38,u_vga_n_39}));
  CARRY4 __59_carry__0
       (.CI(__59_carry_n_0),
        .CO({__59_carry__0_n_0,__59_carry__0_n_1,__59_carry__0_n_2,__59_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_vga_n_48,u_vga_n_49,u_vga_n_50,seg_data[14]}),
        .O(NLW___59_carry__0_O_UNCONNECTED[3:0]),
        .S({u_vga_n_44,u_vga_n_45,u_vga_n_46,u_vga_n_47}));
  CARRY4 __59_carry__1
       (.CI(__59_carry__0_n_0),
        .CO({NLW___59_carry__1_CO_UNCONNECTED[3],__59_carry__1_n_1,__59_carry__1_n_2,__59_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,seg_data[19],u_vga_n_64}),
        .O(NLW___59_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,__59_carry__1_i_2_n_0,u_vga_n_58,u_vga_n_59}));
  LUT1 #(
    .INIT(2'h1)) 
    __59_carry__1_i_2
       (.I0(seg_data[19]),
        .O(__59_carry__1_i_2_n_0));
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI(xpos__0),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_32,u_vga_n_33,u_vga_n_34,u_vga_n_35}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({u_vga_n_18,u_vga_n_19,u_vga_n_20,apple_data[4]}),
        .O(NLW__carry__0_O_UNCONNECTED[3:0]),
        .S({u_vga_n_14,u_vga_n_15,u_vga_n_16,u_vga_n_17}));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({NLW__carry__1_CO_UNCONNECTED[3],_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,u_vga_n_10,u_vga_n_11}),
        .O(NLW__carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,u_vga_n_4,u_vga_n_5,u_vga_n_6}));
  CARRY4 hit_apple1_carry
       (.CI(1'b0),
        .CO({hit_apple1_carry_n_0,hit_apple1_carry_n_1,hit_apple1_carry_n_2,hit_apple1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({u_vga_n_80,u_vga_n_81,u_vga_n_82,u_vga_n_83}),
        .O(NLW_hit_apple1_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_76,u_vga_n_77,u_vga_n_78,u_vga_n_79}));
  CARRY4 hit_apple1_carry__0
       (.CI(hit_apple1_carry_n_0),
        .CO({NLW_hit_apple1_carry__0_CO_UNCONNECTED[3:1],hit_apple1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,u_vga_n_63}),
        .O(NLW_hit_apple1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_vga_n_0}));
  CARRY4 hit_apple3_carry
       (.CI(1'b0),
        .CO({hit_apple3_carry_n_0,hit_apple3_carry_n_1,hit_apple3_carry_n_2,hit_apple3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({u_vga_n_70,u_vga_n_71,u_vga_n_72,u_vga_n_73}),
        .O(NLW_hit_apple3_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_66,u_vga_n_67,u_vga_n_68,u_vga_n_69}));
  CARRY4 hit_apple3_carry__0
       (.CI(hit_apple3_carry_n_0),
        .CO({NLW_hit_apple3_carry__0_CO_UNCONNECTED[3:1],hit_apple3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,u_vga_n_75}),
        .O(NLW_hit_apple3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_vga_n_74}));
  CARRY4 hit_seg1_carry
       (.CI(1'b0),
        .CO({hit_seg1_carry_n_0,hit_seg1_carry_n_1,hit_seg1_carry_n_2,hit_seg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({u_vga_n_98,u_vga_n_99,u_vga_n_100,u_vga_n_101}),
        .O(NLW_hit_seg1_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_94,u_vga_n_95,u_vga_n_96,u_vga_n_97}));
  CARRY4 hit_seg1_carry__0
       (.CI(hit_seg1_carry_n_0),
        .CO({NLW_hit_seg1_carry__0_CO_UNCONNECTED[3:1],hit_seg1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,u_vga_n_62}),
        .O(NLW_hit_seg1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_vga_n_1}));
  CARRY4 hit_seg3_carry
       (.CI(1'b0),
        .CO({hit_seg3_carry_n_0,hit_seg3_carry_n_1,hit_seg3_carry_n_2,hit_seg3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({u_vga_n_88,u_vga_n_89,u_vga_n_90,u_vga_n_91}),
        .O(NLW_hit_seg3_carry_O_UNCONNECTED[3:0]),
        .S({u_vga_n_84,u_vga_n_85,u_vga_n_86,u_vga_n_87}));
  CARRY4 hit_seg3_carry__0
       (.CI(hit_seg3_carry_n_0),
        .CO({NLW_hit_seg3_carry__0_CO_UNCONNECTED[3:1],hit_seg3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,u_vga_n_93}),
        .O(NLW_hit_seg3_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_vga_n_92}));
  design_1_vga_sprite_top_0_0_vga640x480 u_vga
       (.CO(hit_apple1),
        .DI({u_vga_n_10,u_vga_n_11}),
        .S(u_vga_n_0),
        .VGA_Green(VGA_Green),
        .\VGA_Green[3] (u_vga_n_1),
        .\VGA_Green[3]_0 ({u_vga_n_7,u_vga_n_8,u_vga_n_9}),
        .\VGA_Green[3]_1 ({u_vga_n_12,u_vga_n_13}),
        .\VGA_Green[3]_10 (u_vga_n_64),
        .\VGA_Green[3]_11 ({u_vga_n_84,u_vga_n_85,u_vga_n_86,u_vga_n_87}),
        .\VGA_Green[3]_12 ({u_vga_n_88,u_vga_n_89,u_vga_n_90,u_vga_n_91}),
        .\VGA_Green[3]_13 (u_vga_n_92),
        .\VGA_Green[3]_14 (u_vga_n_93),
        .\VGA_Green[3]_15 ({u_vga_n_94,u_vga_n_95,u_vga_n_96,u_vga_n_97}),
        .\VGA_Green[3]_16 ({u_vga_n_98,u_vga_n_99,u_vga_n_100,u_vga_n_101}),
        .\VGA_Green[3]_2 ({u_vga_n_21,u_vga_n_22,u_vga_n_23,u_vga_n_24}),
        .\VGA_Green[3]_3 ({u_vga_n_25,u_vga_n_26,u_vga_n_27}),
        .\VGA_Green[3]_4 ({u_vga_n_28,u_vga_n_29,u_vga_n_30,u_vga_n_31}),
        .\VGA_Green[3]_5 ({u_vga_n_36,u_vga_n_37,u_vga_n_38,u_vga_n_39}),
        .\VGA_Green[3]_6 ({u_vga_n_44,u_vga_n_45,u_vga_n_46,u_vga_n_47}),
        .\VGA_Green[3]_7 ({u_vga_n_48,u_vga_n_49,u_vga_n_50}),
        .\VGA_Green[3]_8 ({u_vga_n_58,u_vga_n_59}),
        .\VGA_Green[3]_9 (u_vga_n_62),
        .VGA_Hsync(VGA_Hsync),
        .VGA_Red(VGA_Red),
        .\VGA_Red[3] ({u_vga_n_4,u_vga_n_5,u_vga_n_6}),
        .\VGA_Red[3]_0 ({u_vga_n_14,u_vga_n_15,u_vga_n_16,u_vga_n_17}),
        .\VGA_Red[3]_1 ({u_vga_n_18,u_vga_n_19,u_vga_n_20}),
        .\VGA_Red[3]_10 ({u_vga_n_70,u_vga_n_71,u_vga_n_72,u_vga_n_73}),
        .\VGA_Red[3]_11 (u_vga_n_74),
        .\VGA_Red[3]_12 (u_vga_n_75),
        .\VGA_Red[3]_13 ({u_vga_n_76,u_vga_n_77,u_vga_n_78,u_vga_n_79}),
        .\VGA_Red[3]_14 ({u_vga_n_80,u_vga_n_81,u_vga_n_82,u_vga_n_83}),
        .\VGA_Red[3]_15 (xpos__0),
        .\VGA_Red[3]_16 (ypos),
        .\VGA_Red[3]_2 ({u_vga_n_32,u_vga_n_33,u_vga_n_34,u_vga_n_35}),
        .\VGA_Red[3]_3 ({u_vga_n_40,u_vga_n_41,u_vga_n_42,u_vga_n_43}),
        .\VGA_Red[3]_4 ({u_vga_n_51,u_vga_n_52,u_vga_n_53,u_vga_n_54}),
        .\VGA_Red[3]_5 ({u_vga_n_55,u_vga_n_56,u_vga_n_57}),
        .\VGA_Red[3]_6 ({u_vga_n_60,u_vga_n_61}),
        .\VGA_Red[3]_7 (u_vga_n_63),
        .\VGA_Red[3]_8 (u_vga_n_65),
        .\VGA_Red[3]_9 ({u_vga_n_66,u_vga_n_67,u_vga_n_68,u_vga_n_69}),
        .VGA_Vsync(VGA_Vsync),
        .apple_data(apple_data),
        .\h_count_reg[6]_0 (_carry__1_n_1),
        .\h_count_reg[6]_1 (__39_carry__1_n_1),
        .\h_count_reg[7]_0 (hit_apple3),
        .\h_count_reg[7]_1 (hit_seg3),
        .pix_clk(pix_clk),
        .pix_rst(pix_rst),
        .seg_data(seg_data),
        .\v_count_reg[8]_0 (hit_seg1),
        .\v_count_reg[9]_0 (__19_carry__1_n_1),
        .\v_count_reg[9]_1 (__59_carry__1_n_1));
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
