-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May  7 02:03:45 2025
-- Host        : Christopher-Desktop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_vga_sprite_top_0_0_sim_netlist.vhdl
-- Design      : design_1_vga_sprite_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480 is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Green[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_Red : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_Green : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VGA_Green[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VGA_Green[3]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VGA_Red[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VGA_Green[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VGA_Green[3]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_7\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VGA_Red[3]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_5\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \VGA_Green[3]_8\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VGA_Red[3]_6\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \VGA_Green[3]_9\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]_7\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Green[3]_10\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]_8\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]_9\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_10\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_11\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]_12\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Red[3]_13\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_14\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_11\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_12\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_13\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Green[3]_14\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \VGA_Green[3]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Green[3]_16\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    VGA_Vsync : out STD_LOGIC;
    VGA_Hsync : out STD_LOGIC;
    \VGA_Red[3]_15\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \VGA_Red[3]_16\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    apple_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    seg_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_count_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \h_count_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \h_count_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_count_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_count_reg[9]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \h_count_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \h_count_reg[6]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pix_rst : in STD_LOGIC;
    pix_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480 is
  signal \VGA_Red[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \VGA_Red[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal VGA_Vsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal h_count0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \h_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \h_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \hit_apple3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \hit_apple3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal o_screenend0 : STD_LOGIC;
  signal o_y1 : STD_LOGIC;
  signal v_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \v_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal xpos : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \h_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hit_apple3_carry__0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hit_apple3_carry__0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_count[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_count[8]_i_1\ : label is "soft_lutpair5";
begin
\VGA_Green[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \v_count_reg[8]_0\(0),
      I1 => \v_count_reg[9]_1\(0),
      I2 => \h_count_reg[7]_1\(0),
      I3 => \h_count_reg[6]_1\(0),
      I4 => \VGA_Red[0]_INST_0_i_1_n_0\,
      O => VGA_Green(0)
    );
VGA_Hsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAB"
    )
        port map (
      I0 => \h_count_reg__0\(7),
      I1 => \h_count_reg__0\(6),
      I2 => \h_count_reg__0\(4),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(8),
      I5 => \h_count_reg__0\(9),
      O => VGA_Hsync
    );
\VGA_Red[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => CO(0),
      I1 => \v_count_reg[9]_0\(0),
      I2 => \h_count_reg[7]_0\(0),
      I3 => \h_count_reg[6]_0\(0),
      I4 => \VGA_Red[0]_INST_0_i_1_n_0\,
      O => VGA_Red(0)
    );
\VGA_Red[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_count(5),
      I4 => v_count(6),
      I5 => v_count(9),
      O => \VGA_Red[0]_INST_0_i_1_n_0\
    );
\VGA_Red[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      O => \VGA_Red[0]_INST_0_i_2_n_0\
    );
VGA_Vsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(4),
      I2 => v_count(3),
      I3 => v_count(2),
      I4 => VGA_Vsync_INST_0_i_1_n_0,
      I5 => v_count(9),
      O => VGA_Vsync
    );
VGA_Vsync_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => v_count(8),
      I1 => v_count(7),
      I2 => v_count(5),
      I3 => v_count(6),
      O => VGA_Vsync_INST_0_i_1_n_0
    );
\__19_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(6),
      I2 => apple_data(16),
      O => \VGA_Red[3]_5\(2)
    );
\__19_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15005500FFFFFFFF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_count(5),
      I4 => v_count(6),
      I5 => apple_data(15),
      O => \VGA_Red[3]_5\(1)
    );
\__19_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA9A5A5A5A"
    )
        port map (
      I0 => apple_data(15),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Red[3]_5\(0)
    );
\__19_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0D22D"
    )
        port map (
      I0 => apple_data(16),
      I1 => v_count(6),
      I2 => apple_data(17),
      I3 => v_count(7),
      I4 => o_y1,
      O => \VGA_Red[3]_4\(3)
    );
\__19_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AD22D"
    )
        port map (
      I0 => apple_data(15),
      I1 => v_count(5),
      I2 => apple_data(16),
      I3 => v_count(6),
      I4 => o_y1,
      O => \VGA_Red[3]_4\(2)
    );
\__19_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => apple_data(15),
      I1 => v_count(5),
      I2 => o_y1,
      I3 => apple_data(14),
      O => \VGA_Red[3]_4\(1)
    );
\__19_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => v_count(4),
      I1 => o_y1,
      I2 => apple_data(14),
      O => \VGA_Red[3]_4\(0)
    );
\__19_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(7),
      I2 => apple_data(17),
      O => \VGA_Red[3]_8\(0)
    );
\__19_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FD"
    )
        port map (
      I0 => apple_data(18),
      I1 => v_count(8),
      I2 => o_y1,
      I3 => apple_data(19),
      O => \VGA_Red[3]_6\(1)
    );
\__19_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0D22D"
    )
        port map (
      I0 => apple_data(17),
      I1 => v_count(7),
      I2 => apple_data(18),
      I3 => v_count(8),
      I4 => o_y1,
      O => \VGA_Red[3]_6\(0)
    );
\__19_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => v_count(3),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Red[3]_16\(3)
    );
\__19_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => v_count(2),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Red[3]_16\(2)
    );
\__19_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => v_count(1),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Red[3]_16\(1)
    );
\__19_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Red[3]_16\(0)
    );
\__19_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(3),
      I2 => apple_data(13),
      O => \VGA_Red[3]_3\(3)
    );
\__19_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(2),
      I2 => apple_data(12),
      O => \VGA_Red[3]_3\(2)
    );
\__19_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(1),
      I2 => apple_data(11),
      O => \VGA_Red[3]_3\(1)
    );
\__19_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(0),
      I2 => apple_data(10),
      O => \VGA_Red[3]_3\(0)
    );
\__39_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999980FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => seg_data(6),
      O => \VGA_Green[3]_3\(2)
    );
\__39_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333320FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => seg_data(5),
      O => \VGA_Green[3]_3\(1)
    );
\__39_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5556AAAA5656"
    )
        port map (
      I0 => seg_data(5),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Green[3]_3\(0)
    );
\__39_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999993C9696C3"
    )
        port map (
      I0 => seg_data(6),
      I1 => seg_data(7),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      I5 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_2\(3)
    );
\__39_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9999693C"
    )
        port map (
      I0 => seg_data(5),
      I1 => seg_data(6),
      I2 => \h_count_reg__0\(6),
      I3 => \h_count_reg__0\(5),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_2\(2)
    );
\__39_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => seg_data(5),
      I1 => \h_count_reg__0\(5),
      I2 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I3 => seg_data(4),
      O => \VGA_Green[3]_2\(1)
    );
\__39_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I2 => seg_data(4),
      O => \VGA_Green[3]_2\(0)
    );
\__39_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01FE000FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => seg_data(8),
      O => \VGA_Green[3]_1\(1)
    );
\__39_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E1E1E00FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => seg_data(7),
      O => \VGA_Green[3]_1\(0)
    );
\__39_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE00000FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => seg_data(9),
      O => \VGA_Green[3]_0\(2)
    );
\__39_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => seg_data(8),
      I1 => \hit_apple3_carry__0_i_3_n_0\,
      I2 => seg_data(9),
      I3 => \hit_apple3_carry__0_i_4_n_0\,
      O => \VGA_Green[3]_0\(1)
    );
\__39_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => seg_data(7),
      I1 => xpos(7),
      I2 => seg_data(8),
      I3 => \hit_apple3_carry__0_i_3_n_0\,
      O => \VGA_Green[3]_0\(0)
    );
\__39_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(3),
      I2 => seg_data(3),
      O => \VGA_Green[3]_4\(3)
    );
\__39_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(2),
      I2 => seg_data(2),
      O => \VGA_Green[3]_4\(2)
    );
\__39_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(1),
      I2 => seg_data(1),
      O => \VGA_Green[3]_4\(1)
    );
\__39_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(0),
      I2 => seg_data(0),
      O => \VGA_Green[3]_4\(0)
    );
\__59_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(6),
      I2 => seg_data(16),
      O => \VGA_Green[3]_7\(2)
    );
\__59_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15005500FFFFFFFF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_count(5),
      I4 => v_count(6),
      I5 => seg_data(15),
      O => \VGA_Green[3]_7\(1)
    );
\__59_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA9A5A5A5A"
    )
        port map (
      I0 => seg_data(15),
      I1 => v_count(6),
      I2 => v_count(5),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => v_count(9),
      O => \VGA_Green[3]_7\(0)
    );
\__59_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0D22D"
    )
        port map (
      I0 => seg_data(16),
      I1 => v_count(6),
      I2 => seg_data(17),
      I3 => v_count(7),
      I4 => o_y1,
      O => \VGA_Green[3]_6\(3)
    );
\__59_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5AD22D"
    )
        port map (
      I0 => seg_data(15),
      I1 => v_count(5),
      I2 => seg_data(16),
      I3 => v_count(6),
      I4 => o_y1,
      O => \VGA_Green[3]_6\(2)
    );
\__59_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => seg_data(15),
      I1 => v_count(5),
      I2 => o_y1,
      I3 => seg_data(14),
      O => \VGA_Green[3]_6\(1)
    );
\__59_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => v_count(4),
      I1 => o_y1,
      I2 => seg_data(14),
      O => \VGA_Green[3]_6\(0)
    );
\__59_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(7),
      I2 => seg_data(17),
      O => \VGA_Green[3]_10\(0)
    );
\__59_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FD"
    )
        port map (
      I0 => seg_data(18),
      I1 => v_count(8),
      I2 => o_y1,
      I3 => seg_data(19),
      O => \VGA_Green[3]_8\(1)
    );
\__59_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0D22D"
    )
        port map (
      I0 => seg_data(17),
      I1 => v_count(7),
      I2 => seg_data(18),
      I3 => v_count(8),
      I4 => o_y1,
      O => \VGA_Green[3]_8\(0)
    );
\__59_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(3),
      I2 => seg_data(13),
      O => \VGA_Green[3]_5\(3)
    );
\__59_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(2),
      I2 => seg_data(12),
      O => \VGA_Green[3]_5\(2)
    );
\__59_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(1),
      I2 => seg_data(11),
      O => \VGA_Green[3]_5\(1)
    );
\__59_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => o_y1,
      I1 => v_count(0),
      I2 => seg_data(10),
      O => \VGA_Green[3]_5\(0)
    );
\_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999980FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => apple_data(6),
      O => \VGA_Red[3]_1\(2)
    );
\_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33333320FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => apple_data(5),
      O => \VGA_Red[3]_1\(1)
    );
\_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA5556AAAA5656"
    )
        port map (
      I0 => apple_data(5),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Red[3]_1\(0)
    );
\_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999993C9696C3"
    )
        port map (
      I0 => apple_data(6),
      I1 => apple_data(7),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      I5 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_0\(3)
    );
\_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9999693C"
    )
        port map (
      I0 => apple_data(5),
      I1 => apple_data(6),
      I2 => \h_count_reg__0\(6),
      I3 => \h_count_reg__0\(5),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_0\(2)
    );
\_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A956"
    )
        port map (
      I0 => apple_data(5),
      I1 => \h_count_reg__0\(5),
      I2 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I3 => apple_data(4),
      O => \VGA_Red[3]_0\(1)
    );
\_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I2 => apple_data(4),
      O => \VGA_Red[3]_0\(0)
    );
\_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01FE000FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => apple_data(8),
      O => DI(1)
    );
\_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E1E1E00FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => apple_data(7),
      O => DI(0)
    );
\_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE00000FFFFFFFF"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count_reg__0\(5),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      I5 => apple_data(9),
      O => \VGA_Red[3]\(2)
    );
\_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => apple_data(8),
      I1 => \hit_apple3_carry__0_i_3_n_0\,
      I2 => apple_data(9),
      I3 => \hit_apple3_carry__0_i_4_n_0\,
      O => \VGA_Red[3]\(1)
    );
\_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => apple_data(7),
      I1 => xpos(7),
      I2 => apple_data(8),
      I3 => \hit_apple3_carry__0_i_3_n_0\,
      O => \VGA_Red[3]\(0)
    );
\_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0E0EE0"
    )
        port map (
      I0 => \h_count_reg__0\(9),
      I1 => \h_count_reg__0\(8),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      O => xpos(7)
    );
\_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
        port map (
      I0 => \h_count_reg__0\(3),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Red[3]_15\(3)
    );
\_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Red[3]_15\(2)
    );
\_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
        port map (
      I0 => \h_count_reg__0\(1),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Red[3]_15\(1)
    );
\_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8A8A8"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(5),
      I5 => \h_count_reg__0\(6),
      O => \VGA_Red[3]_15\(0)
    );
\_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(3),
      I2 => apple_data(3),
      O => \VGA_Red[3]_2\(3)
    );
\_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(2),
      I2 => apple_data(2),
      O => \VGA_Red[3]_2\(2)
    );
\_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(1),
      I2 => apple_data(1),
      O => \VGA_Red[3]_2\(1)
    );
\_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I1 => \h_count_reg__0\(0),
      I2 => apple_data(0),
      O => \VGA_Red[3]_2\(0)
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      O => h_count0(0)
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => \h_count_reg__0\(1),
      O => h_count0(1)
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => \h_count_reg__0\(1),
      I2 => \h_count_reg__0\(2),
      O => h_count0(2)
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_count_reg__0\(1),
      I1 => \h_count_reg__0\(0),
      I2 => \h_count_reg__0\(2),
      I3 => \h_count_reg__0\(3),
      O => h_count0(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => \h_count_reg__0\(0),
      I2 => \h_count_reg__0\(1),
      I3 => \h_count_reg__0\(3),
      I4 => \h_count_reg__0\(4),
      O => h_count0(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \h_count_reg__0\(3),
      I1 => \h_count_reg__0\(1),
      I2 => \h_count_reg__0\(0),
      I3 => \h_count_reg__0\(2),
      I4 => \h_count_reg__0\(4),
      I5 => \h_count_reg__0\(5),
      O => h_count0(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_count[9]_i_4_n_0\,
      I1 => \h_count_reg__0\(6),
      O => h_count0(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_count[9]_i_4_n_0\,
      I1 => \h_count_reg__0\(6),
      I2 => \h_count_reg__0\(7),
      O => h_count0(7)
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \h_count_reg__0\(6),
      I1 => \h_count[9]_i_4_n_0\,
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(8),
      O => h_count0(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => \h_count_reg__0\(3),
      I2 => \h_count_reg__0\(2),
      I3 => \h_count_reg__0\(7),
      I4 => \h_count_reg__0\(6),
      I5 => \h_count[9]_i_3_n_0\,
      O => o_screenend0
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \h_count_reg__0\(7),
      I1 => \h_count[9]_i_4_n_0\,
      I2 => \h_count_reg__0\(6),
      I3 => \h_count_reg__0\(8),
      I4 => \h_count_reg__0\(9),
      O => h_count0(9)
    );
\h_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7F"
    )
        port map (
      I0 => \h_count_reg__0\(5),
      I1 => \h_count_reg__0\(9),
      I2 => \h_count_reg__0\(8),
      I3 => \h_count_reg__0\(1),
      I4 => \h_count_reg__0\(0),
      O => \h_count[9]_i_3_n_0\
    );
\h_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \h_count_reg__0\(5),
      I1 => \h_count_reg__0\(3),
      I2 => \h_count_reg__0\(1),
      I3 => \h_count_reg__0\(0),
      I4 => \h_count_reg__0\(2),
      I5 => \h_count_reg__0\(4),
      O => \h_count[9]_i_4_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(0),
      Q => \h_count_reg__0\(0),
      R => o_screenend0
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(1),
      Q => \h_count_reg__0\(1),
      R => o_screenend0
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(2),
      Q => \h_count_reg__0\(2),
      R => o_screenend0
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(3),
      Q => \h_count_reg__0\(3),
      R => o_screenend0
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(4),
      Q => \h_count_reg__0\(4),
      R => o_screenend0
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(5),
      Q => \h_count_reg__0\(5),
      R => o_screenend0
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(6),
      Q => \h_count_reg__0\(6),
      R => o_screenend0
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(7),
      Q => \h_count_reg__0\(7),
      R => o_screenend0
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(8),
      Q => \h_count_reg__0\(8),
      R => o_screenend0
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => h_count0(9),
      Q => \h_count_reg__0\(9),
      R => o_screenend0
    );
\hit_apple1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => apple_data(18),
      I1 => v_count(8),
      I2 => o_y1,
      I3 => apple_data(19),
      O => \VGA_Red[3]_7\(0)
    );
\hit_apple1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E1"
    )
        port map (
      I0 => v_count(8),
      I1 => o_y1,
      I2 => apple_data(18),
      I3 => apple_data(19),
      O => S(0)
    );
hit_apple1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(6),
      I1 => apple_data(16),
      I2 => apple_data(17),
      I3 => v_count(7),
      I4 => o_y1,
      O => \VGA_Red[3]_14\(3)
    );
hit_apple1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03032F02"
    )
        port map (
      I0 => v_count(4),
      I1 => apple_data(14),
      I2 => apple_data(15),
      I3 => v_count(5),
      I4 => o_y1,
      O => \VGA_Red[3]_14\(2)
    );
hit_apple1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(2),
      I1 => apple_data(12),
      I2 => apple_data(13),
      I3 => v_count(3),
      I4 => o_y1,
      O => \VGA_Red[3]_14\(1)
    );
hit_apple1_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(0),
      I1 => apple_data(10),
      I2 => apple_data(11),
      I3 => v_count(1),
      I4 => o_y1,
      O => \VGA_Red[3]_14\(0)
    );
hit_apple1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(6),
      I1 => apple_data(16),
      I2 => v_count(7),
      I3 => o_y1,
      I4 => apple_data(17),
      O => \VGA_Red[3]_13\(3)
    );
hit_apple1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0090CC09"
    )
        port map (
      I0 => v_count(4),
      I1 => apple_data(14),
      I2 => v_count(5),
      I3 => o_y1,
      I4 => apple_data(15),
      O => \VGA_Red[3]_13\(2)
    );
hit_apple1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(2),
      I1 => apple_data(12),
      I2 => v_count(3),
      I3 => o_y1,
      I4 => apple_data(13),
      O => \VGA_Red[3]_13\(1)
    );
hit_apple1_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(0),
      I1 => apple_data(10),
      I2 => v_count(1),
      I3 => o_y1,
      I4 => apple_data(11),
      O => \VGA_Red[3]_13\(0)
    );
hit_apple1_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => v_count(9),
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => v_count(5),
      I4 => v_count(6),
      O => o_y1
    );
\hit_apple3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \hit_apple3_carry__0_i_3_n_0\,
      I1 => apple_data(8),
      I2 => apple_data(9),
      I3 => \hit_apple3_carry__0_i_4_n_0\,
      O => \VGA_Red[3]_12\(0)
    );
\hit_apple3_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \hit_apple3_carry__0_i_3_n_0\,
      I1 => apple_data(8),
      I2 => \hit_apple3_carry__0_i_4_n_0\,
      I3 => apple_data(9),
      O => \VGA_Red[3]_11\(0)
    );
\hit_apple3_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C2C2C222"
    )
        port map (
      I0 => \h_count_reg__0\(9),
      I1 => \h_count_reg__0\(8),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      O => \hit_apple3_carry__0_i_3_n_0\
    );
\hit_apple3_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A8A888"
    )
        port map (
      I0 => \h_count_reg__0\(9),
      I1 => \h_count_reg__0\(8),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      O => \hit_apple3_carry__0_i_4_n_0\
    );
hit_apple3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000017030371"
    )
        port map (
      I0 => apple_data(6),
      I1 => apple_data(7),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      I5 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_10\(3)
    );
hit_apple3_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000022F"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => apple_data(4),
      I2 => apple_data(5),
      I3 => \h_count_reg__0\(5),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_10\(2)
    );
hit_apple3_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F02"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => apple_data(2),
      I2 => apple_data(3),
      I3 => \h_count_reg__0\(3),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_10\(1)
    );
hit_apple3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F02"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => apple_data(0),
      I2 => apple_data(1),
      I3 => \h_count_reg__0\(1),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Red[3]_10\(0)
    );
hit_apple3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000211855558442"
    )
        port map (
      I0 => apple_data(6),
      I1 => \h_count_reg__0\(7),
      I2 => \h_count_reg__0\(5),
      I3 => \h_count_reg__0\(6),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I5 => apple_data(7),
      O => \VGA_Red[3]_9\(3)
    );
hit_apple3_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00093390"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => apple_data(4),
      I2 => \h_count_reg__0\(5),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => apple_data(5),
      O => \VGA_Red[3]_9\(2)
    );
hit_apple3_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => apple_data(2),
      I2 => \h_count_reg__0\(3),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => apple_data(3),
      O => \VGA_Red[3]_9\(1)
    );
hit_apple3_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => apple_data(0),
      I2 => \h_count_reg__0\(1),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => apple_data(1),
      O => \VGA_Red[3]_9\(0)
    );
\hit_seg1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => seg_data(18),
      I1 => v_count(8),
      I2 => o_y1,
      I3 => seg_data(19),
      O => \VGA_Green[3]_9\(0)
    );
\hit_seg1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E1"
    )
        port map (
      I0 => v_count(8),
      I1 => o_y1,
      I2 => seg_data(18),
      I3 => seg_data(19),
      O => \VGA_Green[3]\(0)
    );
hit_seg1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(6),
      I1 => seg_data(16),
      I2 => seg_data(17),
      I3 => v_count(7),
      I4 => o_y1,
      O => \VGA_Green[3]_16\(3)
    );
hit_seg1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03032F02"
    )
        port map (
      I0 => v_count(4),
      I1 => seg_data(14),
      I2 => seg_data(15),
      I3 => v_count(5),
      I4 => o_y1,
      O => \VGA_Green[3]_16\(2)
    );
hit_seg1_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(2),
      I1 => seg_data(12),
      I2 => seg_data(13),
      I3 => v_count(3),
      I4 => o_y1,
      O => \VGA_Green[3]_16\(1)
    );
hit_seg1_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3F2F02"
    )
        port map (
      I0 => v_count(0),
      I1 => seg_data(10),
      I2 => seg_data(11),
      I3 => v_count(1),
      I4 => o_y1,
      O => \VGA_Green[3]_16\(0)
    );
hit_seg1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(6),
      I1 => seg_data(16),
      I2 => v_count(7),
      I3 => o_y1,
      I4 => seg_data(17),
      O => \VGA_Green[3]_15\(3)
    );
hit_seg1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0090CC09"
    )
        port map (
      I0 => v_count(4),
      I1 => seg_data(14),
      I2 => v_count(5),
      I3 => o_y1,
      I4 => seg_data(15),
      O => \VGA_Green[3]_15\(2)
    );
hit_seg1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(2),
      I1 => seg_data(12),
      I2 => v_count(3),
      I3 => o_y1,
      I4 => seg_data(13),
      O => \VGA_Green[3]_15\(1)
    );
hit_seg1_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC900009"
    )
        port map (
      I0 => v_count(0),
      I1 => seg_data(10),
      I2 => v_count(1),
      I3 => o_y1,
      I4 => seg_data(11),
      O => \VGA_Green[3]_15\(0)
    );
\hit_seg3_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \hit_apple3_carry__0_i_3_n_0\,
      I1 => seg_data(8),
      I2 => seg_data(9),
      I3 => \hit_apple3_carry__0_i_4_n_0\,
      O => \VGA_Green[3]_14\(0)
    );
\hit_seg3_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \hit_apple3_carry__0_i_3_n_0\,
      I1 => seg_data(8),
      I2 => \hit_apple3_carry__0_i_4_n_0\,
      I3 => seg_data(9),
      O => \VGA_Green[3]_13\(0)
    );
hit_seg3_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000017030371"
    )
        port map (
      I0 => seg_data(6),
      I1 => seg_data(7),
      I2 => \h_count_reg__0\(7),
      I3 => \h_count_reg__0\(5),
      I4 => \h_count_reg__0\(6),
      I5 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_12\(3)
    );
hit_seg3_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000022F"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => seg_data(4),
      I2 => seg_data(5),
      I3 => \h_count_reg__0\(5),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_12\(2)
    );
hit_seg3_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F02"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => seg_data(2),
      I2 => seg_data(3),
      I3 => \h_count_reg__0\(3),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_12\(1)
    );
hit_seg3_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002F02"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => seg_data(0),
      I2 => seg_data(1),
      I3 => \h_count_reg__0\(1),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      O => \VGA_Green[3]_12\(0)
    );
hit_seg3_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000211855558442"
    )
        port map (
      I0 => seg_data(6),
      I1 => \h_count_reg__0\(7),
      I2 => \h_count_reg__0\(5),
      I3 => \h_count_reg__0\(6),
      I4 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I5 => seg_data(7),
      O => \VGA_Green[3]_11\(3)
    );
hit_seg3_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00093390"
    )
        port map (
      I0 => \h_count_reg__0\(4),
      I1 => seg_data(4),
      I2 => \h_count_reg__0\(5),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => seg_data(5),
      O => \VGA_Green[3]_11\(2)
    );
hit_seg3_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \h_count_reg__0\(2),
      I1 => seg_data(2),
      I2 => \h_count_reg__0\(3),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => seg_data(3),
      O => \VGA_Green[3]_11\(1)
    );
hit_seg3_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00903309"
    )
        port map (
      I0 => \h_count_reg__0\(0),
      I1 => seg_data(0),
      I2 => \h_count_reg__0\(1),
      I3 => \VGA_Red[0]_INST_0_i_2_n_0\,
      I4 => seg_data(1),
      O => \VGA_Green[3]_11\(0)
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(0),
      O => \v_count[0]_i_1_n_0\
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(1),
      I2 => v_count(0),
      O => \v_count[1]_i_1_n_0\
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(2),
      I2 => v_count(1),
      I3 => v_count(0),
      O => \v_count[2]_i_1_n_0\
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(3),
      I2 => v_count(2),
      I3 => v_count(0),
      I4 => v_count(1),
      O => \v_count[3]_i_1_n_0\
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(4),
      I2 => v_count(3),
      I3 => v_count(1),
      I4 => v_count(0),
      I5 => v_count(2),
      O => \v_count[4]_i_1_n_0\
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(5),
      I2 => \v_count[5]_i_2_n_0\,
      O => \v_count[5]_i_1_n_0\
    );
\v_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_count(4),
      I1 => v_count(2),
      I2 => v_count(0),
      I3 => v_count(1),
      I4 => v_count(3),
      O => \v_count[5]_i_2_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(6),
      I2 => \v_count[9]_i_5_n_0\,
      O => \v_count[6]_i_1_n_0\
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(7),
      I2 => v_count(6),
      I3 => \v_count[9]_i_5_n_0\,
      O => \v_count[7]_i_1_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(8),
      I2 => v_count(7),
      I3 => \v_count[9]_i_5_n_0\,
      I4 => v_count(6),
      O => \v_count[8]_i_1_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => v_count(6),
      I1 => v_count(5),
      I2 => v_count(4),
      I3 => v_count(7),
      I4 => v_count(8),
      I5 => \v_count[9]_i_4_n_0\,
      O => \v_count[9]_i_1_n_0\
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pix_rst,
      I1 => o_screenend0,
      O => \v_count[9]_i_2_n_0\
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => o_screenend0,
      I1 => v_count(9),
      I2 => v_count(8),
      I3 => v_count(6),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => v_count(7),
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => v_count(0),
      I1 => v_count(2),
      I2 => v_count(3),
      I3 => v_count(1),
      I4 => v_count(9),
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => v_count(5),
      I1 => v_count(3),
      I2 => v_count(1),
      I3 => v_count(0),
      I4 => v_count(2),
      I5 => v_count(4),
      O => \v_count[9]_i_5_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[0]_i_1_n_0\,
      Q => v_count(0),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[1]_i_1_n_0\,
      Q => v_count(1),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[2]_i_1_n_0\,
      Q => v_count(2),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[3]_i_1_n_0\,
      Q => v_count(3),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[4]_i_1_n_0\,
      Q => v_count(4),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[5]_i_1_n_0\,
      Q => v_count(5),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[6]_i_1_n_0\,
      Q => v_count(6),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[7]_i_1_n_0\,
      Q => v_count(7),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[8]_i_1_n_0\,
      Q => v_count(8),
      R => \v_count[9]_i_1_n_0\
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => \v_count[9]_i_2_n_0\,
      D => \v_count[9]_i_3_n_0\,
      Q => v_count(9),
      R => \v_count[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_sprite_top is
  port (
    VGA_Red : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_Green : out STD_LOGIC_VECTOR ( 0 to 0 );
    VGA_Vsync : out STD_LOGIC;
    VGA_Hsync : out STD_LOGIC;
    apple_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    seg_data : in STD_LOGIC_VECTOR ( 19 downto 0 );
    pix_clk : in STD_LOGIC;
    pix_rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_sprite_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_sprite_top is
  signal \__19_carry__0_n_0\ : STD_LOGIC;
  signal \__19_carry__0_n_1\ : STD_LOGIC;
  signal \__19_carry__0_n_2\ : STD_LOGIC;
  signal \__19_carry__0_n_3\ : STD_LOGIC;
  signal \__19_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \__19_carry__1_n_1\ : STD_LOGIC;
  signal \__19_carry__1_n_2\ : STD_LOGIC;
  signal \__19_carry__1_n_3\ : STD_LOGIC;
  signal \__19_carry_n_0\ : STD_LOGIC;
  signal \__19_carry_n_1\ : STD_LOGIC;
  signal \__19_carry_n_2\ : STD_LOGIC;
  signal \__19_carry_n_3\ : STD_LOGIC;
  signal \__39_carry__0_n_0\ : STD_LOGIC;
  signal \__39_carry__0_n_1\ : STD_LOGIC;
  signal \__39_carry__0_n_2\ : STD_LOGIC;
  signal \__39_carry__0_n_3\ : STD_LOGIC;
  signal \__39_carry__1_n_1\ : STD_LOGIC;
  signal \__39_carry__1_n_2\ : STD_LOGIC;
  signal \__39_carry__1_n_3\ : STD_LOGIC;
  signal \__39_carry_n_0\ : STD_LOGIC;
  signal \__39_carry_n_1\ : STD_LOGIC;
  signal \__39_carry_n_2\ : STD_LOGIC;
  signal \__39_carry_n_3\ : STD_LOGIC;
  signal \__59_carry__0_n_0\ : STD_LOGIC;
  signal \__59_carry__0_n_1\ : STD_LOGIC;
  signal \__59_carry__0_n_2\ : STD_LOGIC;
  signal \__59_carry__0_n_3\ : STD_LOGIC;
  signal \__59_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \__59_carry__1_n_1\ : STD_LOGIC;
  signal \__59_carry__1_n_2\ : STD_LOGIC;
  signal \__59_carry__1_n_3\ : STD_LOGIC;
  signal \__59_carry_n_0\ : STD_LOGIC;
  signal \__59_carry_n_1\ : STD_LOGIC;
  signal \__59_carry_n_2\ : STD_LOGIC;
  signal \__59_carry_n_3\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal hit_apple1 : STD_LOGIC;
  signal hit_apple1_carry_n_0 : STD_LOGIC;
  signal hit_apple1_carry_n_1 : STD_LOGIC;
  signal hit_apple1_carry_n_2 : STD_LOGIC;
  signal hit_apple1_carry_n_3 : STD_LOGIC;
  signal hit_apple3 : STD_LOGIC;
  signal hit_apple3_carry_n_0 : STD_LOGIC;
  signal hit_apple3_carry_n_1 : STD_LOGIC;
  signal hit_apple3_carry_n_2 : STD_LOGIC;
  signal hit_apple3_carry_n_3 : STD_LOGIC;
  signal hit_seg1 : STD_LOGIC;
  signal hit_seg1_carry_n_0 : STD_LOGIC;
  signal hit_seg1_carry_n_1 : STD_LOGIC;
  signal hit_seg1_carry_n_2 : STD_LOGIC;
  signal hit_seg1_carry_n_3 : STD_LOGIC;
  signal hit_seg3 : STD_LOGIC;
  signal hit_seg3_carry_n_0 : STD_LOGIC;
  signal hit_seg3_carry_n_1 : STD_LOGIC;
  signal hit_seg3_carry_n_2 : STD_LOGIC;
  signal hit_seg3_carry_n_3 : STD_LOGIC;
  signal u_vga_n_0 : STD_LOGIC;
  signal u_vga_n_1 : STD_LOGIC;
  signal u_vga_n_10 : STD_LOGIC;
  signal u_vga_n_100 : STD_LOGIC;
  signal u_vga_n_101 : STD_LOGIC;
  signal u_vga_n_11 : STD_LOGIC;
  signal u_vga_n_12 : STD_LOGIC;
  signal u_vga_n_13 : STD_LOGIC;
  signal u_vga_n_14 : STD_LOGIC;
  signal u_vga_n_15 : STD_LOGIC;
  signal u_vga_n_16 : STD_LOGIC;
  signal u_vga_n_17 : STD_LOGIC;
  signal u_vga_n_18 : STD_LOGIC;
  signal u_vga_n_19 : STD_LOGIC;
  signal u_vga_n_20 : STD_LOGIC;
  signal u_vga_n_21 : STD_LOGIC;
  signal u_vga_n_22 : STD_LOGIC;
  signal u_vga_n_23 : STD_LOGIC;
  signal u_vga_n_24 : STD_LOGIC;
  signal u_vga_n_25 : STD_LOGIC;
  signal u_vga_n_26 : STD_LOGIC;
  signal u_vga_n_27 : STD_LOGIC;
  signal u_vga_n_28 : STD_LOGIC;
  signal u_vga_n_29 : STD_LOGIC;
  signal u_vga_n_30 : STD_LOGIC;
  signal u_vga_n_31 : STD_LOGIC;
  signal u_vga_n_32 : STD_LOGIC;
  signal u_vga_n_33 : STD_LOGIC;
  signal u_vga_n_34 : STD_LOGIC;
  signal u_vga_n_35 : STD_LOGIC;
  signal u_vga_n_36 : STD_LOGIC;
  signal u_vga_n_37 : STD_LOGIC;
  signal u_vga_n_38 : STD_LOGIC;
  signal u_vga_n_39 : STD_LOGIC;
  signal u_vga_n_4 : STD_LOGIC;
  signal u_vga_n_40 : STD_LOGIC;
  signal u_vga_n_41 : STD_LOGIC;
  signal u_vga_n_42 : STD_LOGIC;
  signal u_vga_n_43 : STD_LOGIC;
  signal u_vga_n_44 : STD_LOGIC;
  signal u_vga_n_45 : STD_LOGIC;
  signal u_vga_n_46 : STD_LOGIC;
  signal u_vga_n_47 : STD_LOGIC;
  signal u_vga_n_48 : STD_LOGIC;
  signal u_vga_n_49 : STD_LOGIC;
  signal u_vga_n_5 : STD_LOGIC;
  signal u_vga_n_50 : STD_LOGIC;
  signal u_vga_n_51 : STD_LOGIC;
  signal u_vga_n_52 : STD_LOGIC;
  signal u_vga_n_53 : STD_LOGIC;
  signal u_vga_n_54 : STD_LOGIC;
  signal u_vga_n_55 : STD_LOGIC;
  signal u_vga_n_56 : STD_LOGIC;
  signal u_vga_n_57 : STD_LOGIC;
  signal u_vga_n_58 : STD_LOGIC;
  signal u_vga_n_59 : STD_LOGIC;
  signal u_vga_n_6 : STD_LOGIC;
  signal u_vga_n_60 : STD_LOGIC;
  signal u_vga_n_61 : STD_LOGIC;
  signal u_vga_n_62 : STD_LOGIC;
  signal u_vga_n_63 : STD_LOGIC;
  signal u_vga_n_64 : STD_LOGIC;
  signal u_vga_n_65 : STD_LOGIC;
  signal u_vga_n_66 : STD_LOGIC;
  signal u_vga_n_67 : STD_LOGIC;
  signal u_vga_n_68 : STD_LOGIC;
  signal u_vga_n_69 : STD_LOGIC;
  signal u_vga_n_7 : STD_LOGIC;
  signal u_vga_n_70 : STD_LOGIC;
  signal u_vga_n_71 : STD_LOGIC;
  signal u_vga_n_72 : STD_LOGIC;
  signal u_vga_n_73 : STD_LOGIC;
  signal u_vga_n_74 : STD_LOGIC;
  signal u_vga_n_75 : STD_LOGIC;
  signal u_vga_n_76 : STD_LOGIC;
  signal u_vga_n_77 : STD_LOGIC;
  signal u_vga_n_78 : STD_LOGIC;
  signal u_vga_n_79 : STD_LOGIC;
  signal u_vga_n_8 : STD_LOGIC;
  signal u_vga_n_80 : STD_LOGIC;
  signal u_vga_n_81 : STD_LOGIC;
  signal u_vga_n_82 : STD_LOGIC;
  signal u_vga_n_83 : STD_LOGIC;
  signal u_vga_n_84 : STD_LOGIC;
  signal u_vga_n_85 : STD_LOGIC;
  signal u_vga_n_86 : STD_LOGIC;
  signal u_vga_n_87 : STD_LOGIC;
  signal u_vga_n_88 : STD_LOGIC;
  signal u_vga_n_89 : STD_LOGIC;
  signal u_vga_n_9 : STD_LOGIC;
  signal u_vga_n_90 : STD_LOGIC;
  signal u_vga_n_91 : STD_LOGIC;
  signal u_vga_n_92 : STD_LOGIC;
  signal u_vga_n_93 : STD_LOGIC;
  signal u_vga_n_94 : STD_LOGIC;
  signal u_vga_n_95 : STD_LOGIC;
  signal u_vga_n_96 : STD_LOGIC;
  signal u_vga_n_97 : STD_LOGIC;
  signal u_vga_n_98 : STD_LOGIC;
  signal u_vga_n_99 : STD_LOGIC;
  signal \xpos__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ypos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___19_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___19_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___19_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW___19_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___39_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___39_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___39_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW___39_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___59_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___59_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW___59_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW___59_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hit_apple1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hit_apple1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hit_apple1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hit_apple3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hit_apple3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hit_apple3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hit_seg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hit_seg1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hit_seg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_hit_seg3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hit_seg3_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hit_seg3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\__19_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \__19_carry_n_0\,
      CO(2) => \__19_carry_n_1\,
      CO(1) => \__19_carry_n_2\,
      CO(0) => \__19_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => ypos(3 downto 0),
      O(3 downto 0) => \NLW___19_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_40,
      S(2) => u_vga_n_41,
      S(1) => u_vga_n_42,
      S(0) => u_vga_n_43
    );
\__19_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \__19_carry_n_0\,
      CO(3) => \__19_carry__0_n_0\,
      CO(2) => \__19_carry__0_n_1\,
      CO(1) => \__19_carry__0_n_2\,
      CO(0) => \__19_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_vga_n_55,
      DI(2) => u_vga_n_56,
      DI(1) => u_vga_n_57,
      DI(0) => apple_data(14),
      O(3 downto 0) => \NLW___19_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_51,
      S(2) => u_vga_n_52,
      S(1) => u_vga_n_53,
      S(0) => u_vga_n_54
    );
\__19_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \__19_carry__0_n_0\,
      CO(3) => \NLW___19_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \__19_carry__1_n_1\,
      CO(1) => \__19_carry__1_n_2\,
      CO(0) => \__19_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => apple_data(19),
      DI(0) => u_vga_n_65,
      O(3 downto 0) => \NLW___19_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \__19_carry__1_i_2_n_0\,
      S(1) => u_vga_n_60,
      S(0) => u_vga_n_61
    );
\__19_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => apple_data(19),
      O => \__19_carry__1_i_2_n_0\
    );
\__39_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \__39_carry_n_0\,
      CO(2) => \__39_carry_n_1\,
      CO(1) => \__39_carry_n_2\,
      CO(0) => \__39_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \xpos__0\(3 downto 0),
      O(3 downto 0) => \NLW___39_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_28,
      S(2) => u_vga_n_29,
      S(1) => u_vga_n_30,
      S(0) => u_vga_n_31
    );
\__39_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \__39_carry_n_0\,
      CO(3) => \__39_carry__0_n_0\,
      CO(2) => \__39_carry__0_n_1\,
      CO(1) => \__39_carry__0_n_2\,
      CO(0) => \__39_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_vga_n_25,
      DI(2) => u_vga_n_26,
      DI(1) => u_vga_n_27,
      DI(0) => seg_data(4),
      O(3 downto 0) => \NLW___39_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_21,
      S(2) => u_vga_n_22,
      S(1) => u_vga_n_23,
      S(0) => u_vga_n_24
    );
\__39_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \__39_carry__0_n_0\,
      CO(3) => \NLW___39_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \__39_carry__1_n_1\,
      CO(1) => \__39_carry__1_n_2\,
      CO(0) => \__39_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => u_vga_n_12,
      DI(0) => u_vga_n_13,
      O(3 downto 0) => \NLW___39_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => u_vga_n_7,
      S(1) => u_vga_n_8,
      S(0) => u_vga_n_9
    );
\__59_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \__59_carry_n_0\,
      CO(2) => \__59_carry_n_1\,
      CO(1) => \__59_carry_n_2\,
      CO(0) => \__59_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => ypos(3 downto 0),
      O(3 downto 0) => \NLW___59_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_36,
      S(2) => u_vga_n_37,
      S(1) => u_vga_n_38,
      S(0) => u_vga_n_39
    );
\__59_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \__59_carry_n_0\,
      CO(3) => \__59_carry__0_n_0\,
      CO(2) => \__59_carry__0_n_1\,
      CO(1) => \__59_carry__0_n_2\,
      CO(0) => \__59_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_vga_n_48,
      DI(2) => u_vga_n_49,
      DI(1) => u_vga_n_50,
      DI(0) => seg_data(14),
      O(3 downto 0) => \NLW___59_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_44,
      S(2) => u_vga_n_45,
      S(1) => u_vga_n_46,
      S(0) => u_vga_n_47
    );
\__59_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \__59_carry__0_n_0\,
      CO(3) => \NLW___59_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \__59_carry__1_n_1\,
      CO(1) => \__59_carry__1_n_2\,
      CO(0) => \__59_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => seg_data(19),
      DI(0) => u_vga_n_64,
      O(3 downto 0) => \NLW___59_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \__59_carry__1_i_2_n_0\,
      S(1) => u_vga_n_58,
      S(0) => u_vga_n_59
    );
\__59_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => seg_data(19),
      O => \__59_carry__1_i_2_n_0\
    );
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \xpos__0\(3 downto 0),
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_32,
      S(2) => u_vga_n_33,
      S(1) => u_vga_n_34,
      S(0) => u_vga_n_35
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => u_vga_n_18,
      DI(2) => u_vga_n_19,
      DI(1) => u_vga_n_20,
      DI(0) => apple_data(4),
      O(3 downto 0) => \NLW__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => u_vga_n_14,
      S(2) => u_vga_n_15,
      S(1) => u_vga_n_16,
      S(0) => u_vga_n_17
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \NLW__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => u_vga_n_10,
      DI(0) => u_vga_n_11,
      O(3 downto 0) => \NLW__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => u_vga_n_4,
      S(1) => u_vga_n_5,
      S(0) => u_vga_n_6
    );
hit_apple1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hit_apple1_carry_n_0,
      CO(2) => hit_apple1_carry_n_1,
      CO(1) => hit_apple1_carry_n_2,
      CO(0) => hit_apple1_carry_n_3,
      CYINIT => '1',
      DI(3) => u_vga_n_80,
      DI(2) => u_vga_n_81,
      DI(1) => u_vga_n_82,
      DI(0) => u_vga_n_83,
      O(3 downto 0) => NLW_hit_apple1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_vga_n_76,
      S(2) => u_vga_n_77,
      S(1) => u_vga_n_78,
      S(0) => u_vga_n_79
    );
\hit_apple1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hit_apple1_carry_n_0,
      CO(3 downto 1) => \NLW_hit_apple1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => hit_apple1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => u_vga_n_63,
      O(3 downto 0) => \NLW_hit_apple1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => u_vga_n_0
    );
hit_apple3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hit_apple3_carry_n_0,
      CO(2) => hit_apple3_carry_n_1,
      CO(1) => hit_apple3_carry_n_2,
      CO(0) => hit_apple3_carry_n_3,
      CYINIT => '1',
      DI(3) => u_vga_n_70,
      DI(2) => u_vga_n_71,
      DI(1) => u_vga_n_72,
      DI(0) => u_vga_n_73,
      O(3 downto 0) => NLW_hit_apple3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_vga_n_66,
      S(2) => u_vga_n_67,
      S(1) => u_vga_n_68,
      S(0) => u_vga_n_69
    );
\hit_apple3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hit_apple3_carry_n_0,
      CO(3 downto 1) => \NLW_hit_apple3_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => hit_apple3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => u_vga_n_75,
      O(3 downto 0) => \NLW_hit_apple3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => u_vga_n_74
    );
hit_seg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hit_seg1_carry_n_0,
      CO(2) => hit_seg1_carry_n_1,
      CO(1) => hit_seg1_carry_n_2,
      CO(0) => hit_seg1_carry_n_3,
      CYINIT => '1',
      DI(3) => u_vga_n_98,
      DI(2) => u_vga_n_99,
      DI(1) => u_vga_n_100,
      DI(0) => u_vga_n_101,
      O(3 downto 0) => NLW_hit_seg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_vga_n_94,
      S(2) => u_vga_n_95,
      S(1) => u_vga_n_96,
      S(0) => u_vga_n_97
    );
\hit_seg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hit_seg1_carry_n_0,
      CO(3 downto 1) => \NLW_hit_seg1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => hit_seg1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => u_vga_n_62,
      O(3 downto 0) => \NLW_hit_seg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => u_vga_n_1
    );
hit_seg3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hit_seg3_carry_n_0,
      CO(2) => hit_seg3_carry_n_1,
      CO(1) => hit_seg3_carry_n_2,
      CO(0) => hit_seg3_carry_n_3,
      CYINIT => '1',
      DI(3) => u_vga_n_88,
      DI(2) => u_vga_n_89,
      DI(1) => u_vga_n_90,
      DI(0) => u_vga_n_91,
      O(3 downto 0) => NLW_hit_seg3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_vga_n_84,
      S(2) => u_vga_n_85,
      S(1) => u_vga_n_86,
      S(0) => u_vga_n_87
    );
\hit_seg3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hit_seg3_carry_n_0,
      CO(3 downto 1) => \NLW_hit_seg3_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => hit_seg3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => u_vga_n_93,
      O(3 downto 0) => \NLW_hit_seg3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => u_vga_n_92
    );
u_vga: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga640x480
     port map (
      CO(0) => hit_apple1,
      DI(1) => u_vga_n_10,
      DI(0) => u_vga_n_11,
      S(0) => u_vga_n_0,
      VGA_Green(0) => VGA_Green(0),
      \VGA_Green[3]\(0) => u_vga_n_1,
      \VGA_Green[3]_0\(2) => u_vga_n_7,
      \VGA_Green[3]_0\(1) => u_vga_n_8,
      \VGA_Green[3]_0\(0) => u_vga_n_9,
      \VGA_Green[3]_1\(1) => u_vga_n_12,
      \VGA_Green[3]_1\(0) => u_vga_n_13,
      \VGA_Green[3]_10\(0) => u_vga_n_64,
      \VGA_Green[3]_11\(3) => u_vga_n_84,
      \VGA_Green[3]_11\(2) => u_vga_n_85,
      \VGA_Green[3]_11\(1) => u_vga_n_86,
      \VGA_Green[3]_11\(0) => u_vga_n_87,
      \VGA_Green[3]_12\(3) => u_vga_n_88,
      \VGA_Green[3]_12\(2) => u_vga_n_89,
      \VGA_Green[3]_12\(1) => u_vga_n_90,
      \VGA_Green[3]_12\(0) => u_vga_n_91,
      \VGA_Green[3]_13\(0) => u_vga_n_92,
      \VGA_Green[3]_14\(0) => u_vga_n_93,
      \VGA_Green[3]_15\(3) => u_vga_n_94,
      \VGA_Green[3]_15\(2) => u_vga_n_95,
      \VGA_Green[3]_15\(1) => u_vga_n_96,
      \VGA_Green[3]_15\(0) => u_vga_n_97,
      \VGA_Green[3]_16\(3) => u_vga_n_98,
      \VGA_Green[3]_16\(2) => u_vga_n_99,
      \VGA_Green[3]_16\(1) => u_vga_n_100,
      \VGA_Green[3]_16\(0) => u_vga_n_101,
      \VGA_Green[3]_2\(3) => u_vga_n_21,
      \VGA_Green[3]_2\(2) => u_vga_n_22,
      \VGA_Green[3]_2\(1) => u_vga_n_23,
      \VGA_Green[3]_2\(0) => u_vga_n_24,
      \VGA_Green[3]_3\(2) => u_vga_n_25,
      \VGA_Green[3]_3\(1) => u_vga_n_26,
      \VGA_Green[3]_3\(0) => u_vga_n_27,
      \VGA_Green[3]_4\(3) => u_vga_n_28,
      \VGA_Green[3]_4\(2) => u_vga_n_29,
      \VGA_Green[3]_4\(1) => u_vga_n_30,
      \VGA_Green[3]_4\(0) => u_vga_n_31,
      \VGA_Green[3]_5\(3) => u_vga_n_36,
      \VGA_Green[3]_5\(2) => u_vga_n_37,
      \VGA_Green[3]_5\(1) => u_vga_n_38,
      \VGA_Green[3]_5\(0) => u_vga_n_39,
      \VGA_Green[3]_6\(3) => u_vga_n_44,
      \VGA_Green[3]_6\(2) => u_vga_n_45,
      \VGA_Green[3]_6\(1) => u_vga_n_46,
      \VGA_Green[3]_6\(0) => u_vga_n_47,
      \VGA_Green[3]_7\(2) => u_vga_n_48,
      \VGA_Green[3]_7\(1) => u_vga_n_49,
      \VGA_Green[3]_7\(0) => u_vga_n_50,
      \VGA_Green[3]_8\(1) => u_vga_n_58,
      \VGA_Green[3]_8\(0) => u_vga_n_59,
      \VGA_Green[3]_9\(0) => u_vga_n_62,
      VGA_Hsync => VGA_Hsync,
      VGA_Red(0) => VGA_Red(0),
      \VGA_Red[3]\(2) => u_vga_n_4,
      \VGA_Red[3]\(1) => u_vga_n_5,
      \VGA_Red[3]\(0) => u_vga_n_6,
      \VGA_Red[3]_0\(3) => u_vga_n_14,
      \VGA_Red[3]_0\(2) => u_vga_n_15,
      \VGA_Red[3]_0\(1) => u_vga_n_16,
      \VGA_Red[3]_0\(0) => u_vga_n_17,
      \VGA_Red[3]_1\(2) => u_vga_n_18,
      \VGA_Red[3]_1\(1) => u_vga_n_19,
      \VGA_Red[3]_1\(0) => u_vga_n_20,
      \VGA_Red[3]_10\(3) => u_vga_n_70,
      \VGA_Red[3]_10\(2) => u_vga_n_71,
      \VGA_Red[3]_10\(1) => u_vga_n_72,
      \VGA_Red[3]_10\(0) => u_vga_n_73,
      \VGA_Red[3]_11\(0) => u_vga_n_74,
      \VGA_Red[3]_12\(0) => u_vga_n_75,
      \VGA_Red[3]_13\(3) => u_vga_n_76,
      \VGA_Red[3]_13\(2) => u_vga_n_77,
      \VGA_Red[3]_13\(1) => u_vga_n_78,
      \VGA_Red[3]_13\(0) => u_vga_n_79,
      \VGA_Red[3]_14\(3) => u_vga_n_80,
      \VGA_Red[3]_14\(2) => u_vga_n_81,
      \VGA_Red[3]_14\(1) => u_vga_n_82,
      \VGA_Red[3]_14\(0) => u_vga_n_83,
      \VGA_Red[3]_15\(3 downto 0) => \xpos__0\(3 downto 0),
      \VGA_Red[3]_16\(3 downto 0) => ypos(3 downto 0),
      \VGA_Red[3]_2\(3) => u_vga_n_32,
      \VGA_Red[3]_2\(2) => u_vga_n_33,
      \VGA_Red[3]_2\(1) => u_vga_n_34,
      \VGA_Red[3]_2\(0) => u_vga_n_35,
      \VGA_Red[3]_3\(3) => u_vga_n_40,
      \VGA_Red[3]_3\(2) => u_vga_n_41,
      \VGA_Red[3]_3\(1) => u_vga_n_42,
      \VGA_Red[3]_3\(0) => u_vga_n_43,
      \VGA_Red[3]_4\(3) => u_vga_n_51,
      \VGA_Red[3]_4\(2) => u_vga_n_52,
      \VGA_Red[3]_4\(1) => u_vga_n_53,
      \VGA_Red[3]_4\(0) => u_vga_n_54,
      \VGA_Red[3]_5\(2) => u_vga_n_55,
      \VGA_Red[3]_5\(1) => u_vga_n_56,
      \VGA_Red[3]_5\(0) => u_vga_n_57,
      \VGA_Red[3]_6\(1) => u_vga_n_60,
      \VGA_Red[3]_6\(0) => u_vga_n_61,
      \VGA_Red[3]_7\(0) => u_vga_n_63,
      \VGA_Red[3]_8\(0) => u_vga_n_65,
      \VGA_Red[3]_9\(3) => u_vga_n_66,
      \VGA_Red[3]_9\(2) => u_vga_n_67,
      \VGA_Red[3]_9\(1) => u_vga_n_68,
      \VGA_Red[3]_9\(0) => u_vga_n_69,
      VGA_Vsync => VGA_Vsync,
      apple_data(19 downto 0) => apple_data(19 downto 0),
      \h_count_reg[6]_0\(0) => \_carry__1_n_1\,
      \h_count_reg[6]_1\(0) => \__39_carry__1_n_1\,
      \h_count_reg[7]_0\(0) => hit_apple3,
      \h_count_reg[7]_1\(0) => hit_seg3,
      pix_clk => pix_clk,
      pix_rst => pix_rst,
      seg_data(19 downto 0) => seg_data(19 downto 0),
      \v_count_reg[8]_0\(0) => hit_seg1,
      \v_count_reg[9]_0\(0) => \__19_carry__1_n_1\,
      \v_count_reg[9]_1\(0) => \__59_carry__1_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_vga_sprite_top_0_0,vga_sprite_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vga_sprite_top,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^vga_green\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^vga_red\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pix_clk : signal is "xilinx.com:signal:clock:1.0 pix_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pix_clk : signal is "XIL_INTERFACENAME pix_clk, ASSOCIATED_RESET pix_rst, FREQ_HZ 25265957, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of pix_rst : signal is "xilinx.com:signal:reset:1.0 pix_rst RST";
  attribute X_INTERFACE_PARAMETER of pix_rst : signal is "XIL_INTERFACENAME pix_rst, POLARITY ACTIVE_HIGH";
begin
  VGA_Blue(3) <= \<const0>\;
  VGA_Blue(2) <= \<const0>\;
  VGA_Blue(1) <= \<const0>\;
  VGA_Blue(0) <= \<const0>\;
  VGA_Green(3) <= \^vga_green\(0);
  VGA_Green(2) <= \^vga_green\(0);
  VGA_Green(1) <= \^vga_green\(0);
  VGA_Green(0) <= \^vga_green\(0);
  VGA_Red(3) <= \^vga_red\(0);
  VGA_Red(2) <= \^vga_red\(0);
  VGA_Red(1) <= \^vga_red\(0);
  VGA_Red(0) <= \^vga_red\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_sprite_top
     port map (
      VGA_Green(0) => \^vga_green\(0),
      VGA_Hsync => VGA_Hsync,
      VGA_Red(0) => \^vga_red\(0),
      VGA_Vsync => VGA_Vsync,
      apple_data(19 downto 0) => apple_data(19 downto 0),
      pix_clk => pix_clk,
      pix_rst => pix_rst,
      seg_data(19 downto 0) => seg_data(19 downto 0)
    );
end STRUCTURE;
