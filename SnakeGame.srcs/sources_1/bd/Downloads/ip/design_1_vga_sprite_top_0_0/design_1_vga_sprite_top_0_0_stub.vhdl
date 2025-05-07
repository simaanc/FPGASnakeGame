-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May  7 02:03:45 2025
-- Host        : Christopher-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vivado/SnakeGame/SnakeGame.srcs/sources_1/bd/Downloads/ip/design_1_vga_sprite_top_0_0/design_1_vga_sprite_top_0_0_stub.vhdl
-- Design      : design_1_vga_sprite_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vga_sprite_top_0_0 is
  Port ( 
    pix_clk : in STD_LOGIC;
    pix_rst : in STD_LOGIC;
    VGA_Hsync : out STD_LOGIC;
    VGA_Vsync : out STD_LOGIC;
    VGA_Red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_Green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_Blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    apple_data : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );

end design_1_vga_sprite_top_0_0;

architecture stub of design_1_vga_sprite_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pix_clk,pix_rst,VGA_Hsync,VGA_Vsync,VGA_Red[3:0],VGA_Green[3:0],VGA_Blue[3:0],seg_data[19:0],apple_data[19:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vga_sprite_top,Vivado 2018.2";
begin
end;
