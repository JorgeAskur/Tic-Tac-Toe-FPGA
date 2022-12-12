-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/17/2022 20:33:53"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gato IS
    PORT (
	clk : IN std_logic;
	c0 : BUFFER std_logic;
	datos_gumnut : IN std_logic_vector(7 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	disp_en : BUFFER std_logic;
	column : BUFFER std_logic_vector(31 DOWNTO 0);
	row : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END gato;

-- Design Ports Information
-- datos_gumnut[0]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[1]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- disp_en	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[0]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[1]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[2]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[4]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[6]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[7]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[8]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[9]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[10]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[11]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[12]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[13]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[15]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[16]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[17]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[18]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[19]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[20]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[21]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[22]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[23]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[24]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[25]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[26]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[27]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[28]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[29]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[30]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- column[31]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[0]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[3]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[5]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[7]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[8]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[9]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[10]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[11]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[12]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[13]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[14]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[15]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[16]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[17]	=>  Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[18]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[19]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[20]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[21]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[22]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[23]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[24]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[25]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[26]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[27]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[28]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[29]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[30]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- row[31]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- c0	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- datos_gumnut[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[4]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- datos_gumnut[3]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gato IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_datos_gumnut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_disp_en : std_logic;
SIGNAL ww_column : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(31 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datos_gumnut[0]~input_o\ : std_logic;
SIGNAL \datos_gumnut[1]~input_o\ : std_logic;
SIGNAL \datos_gumnut[7]~input_o\ : std_logic;
SIGNAL \c0~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datos_gumnut[4]~input_o\ : std_logic;
SIGNAL \datos_gumnut[3]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count[0]~12_combout\ : std_logic;
SIGNAL \datos_gumnut[2]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \CurrentState.S0~0_combout\ : std_logic;
SIGNAL \CurrentState.S0~q\ : std_logic;
SIGNAL \datos_gumnut[5]~input_o\ : std_logic;
SIGNAL \datos_gumnut[6]~input_o\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \CurrentState.S2~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \CurrentState.S1~q\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|Add1~14\ : std_logic;
SIGNAL \U1|Add1~15_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|h_count~3_combout\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|h_count~0_combout\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|h_count~1_combout\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|h_count~2_combout\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|h_count~5_combout\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|h_count~8_combout\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|h_count~4_combout\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|h_count~9_combout\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|h_count~7_combout\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|h_count~6_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|Add1~24_combout\ : std_logic;
SIGNAL \U1|Add1~16\ : std_logic;
SIGNAL \U1|Add1~17_combout\ : std_logic;
SIGNAL \U1|Add1~25_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|Add1~18\ : std_logic;
SIGNAL \U1|Add1~19_combout\ : std_logic;
SIGNAL \U1|Add1~21_combout\ : std_logic;
SIGNAL \U1|v_count[9]~feeder_combout\ : std_logic;
SIGNAL \U1|Add1~0_combout\ : std_logic;
SIGNAL \U1|Add1~1_combout\ : std_logic;
SIGNAL \U1|Add1~28_combout\ : std_logic;
SIGNAL \U1|Add1~2\ : std_logic;
SIGNAL \U1|Add1~3_combout\ : std_logic;
SIGNAL \U1|Add1~27_combout\ : std_logic;
SIGNAL \U1|Add1~4\ : std_logic;
SIGNAL \U1|Add1~5_combout\ : std_logic;
SIGNAL \U1|Add1~29_combout\ : std_logic;
SIGNAL \U1|Add1~6\ : std_logic;
SIGNAL \U1|Add1~7_combout\ : std_logic;
SIGNAL \U1|Add1~30_combout\ : std_logic;
SIGNAL \U1|Add1~8\ : std_logic;
SIGNAL \U1|Add1~9_combout\ : std_logic;
SIGNAL \U1|Add1~26_combout\ : std_logic;
SIGNAL \U1|Add1~10\ : std_logic;
SIGNAL \U1|Add1~11_combout\ : std_logic;
SIGNAL \U1|Add1~22_combout\ : std_logic;
SIGNAL \U1|v_count[5]~feeder_combout\ : std_logic;
SIGNAL \U1|Add1~12\ : std_logic;
SIGNAL \U1|Add1~13_combout\ : std_logic;
SIGNAL \U1|Add1~23_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|disp_ena~q\ : std_logic;
SIGNAL \U1|row[5]~feeder_combout\ : std_logic;
SIGNAL \U1|LessThan7~0_combout\ : std_logic;
SIGNAL \U1|row[7]~feeder_combout\ : std_logic;
SIGNAL \FSM~1_combout\ : std_logic;
SIGNAL \U1|row[1]~feeder_combout\ : std_logic;
SIGNAL \FSM~3_combout\ : std_logic;
SIGNAL \FSM~2_combout\ : std_logic;
SIGNAL \FSM~4_combout\ : std_logic;
SIGNAL \U1|column[0]~feeder_combout\ : std_logic;
SIGNAL \FSM~0_combout\ : std_logic;
SIGNAL \FSM~5_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_B~5_combout\ : std_logic;
SIGNAL \FSM~6_combout\ : std_logic;
SIGNAL \VGA_B~1_combout\ : std_logic;
SIGNAL \VGA_B~2_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \VGA_B~3_combout\ : std_logic;
SIGNAL \VGA_B~4_combout\ : std_logic;
SIGNAL \VGA_B~6_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|h_sync~q\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|v_sync~q\ : std_logic;
SIGNAL \U0|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|row\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_datos_gumnut[2]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
c0 <= ww_c0;
ww_datos_gumnut <= datos_gumnut;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
disp_en <= ww_disp_en;
column <= ww_column;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\U0|altpll_component|auto_generated|wire_pll1_clk\(0) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(0);
\U0|altpll_component|auto_generated|wire_pll1_clk\(1) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(1);
\U0|altpll_component|auto_generated|wire_pll1_clk\(2) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(2);
\U0|altpll_component|auto_generated|wire_pll1_clk\(3) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(3);
\U0|altpll_component|auto_generated|wire_pll1_clk\(4) <= \U0|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|altpll_component|auto_generated|wire_pll1_clk\(0));

\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ <= (vcc & vcc & vcc & \U0|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_datos_gumnut[2]~input_o\ <= NOT \datos_gumnut[2]~input_o\;

-- Location: LCCOMB_X44_Y50_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|h_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|v_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X49_Y54_N30
\disp_en~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|disp_ena~q\,
	devoe => ww_devoe,
	o => ww_disp_en);

-- Location: IOOBUF_X34_Y39_N30
\column[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(0),
	devoe => ww_devoe,
	o => ww_column(0));

-- Location: IOOBUF_X34_Y39_N16
\column[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(1),
	devoe => ww_devoe,
	o => ww_column(1));

-- Location: IOOBUF_X31_Y39_N23
\column[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(2),
	devoe => ww_devoe,
	o => ww_column(2));

-- Location: IOOBUF_X46_Y54_N23
\column[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(3),
	devoe => ww_devoe,
	o => ww_column(3));

-- Location: IOOBUF_X46_Y54_N2
\column[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(4),
	devoe => ww_devoe,
	o => ww_column(4));

-- Location: IOOBUF_X46_Y54_N9
\column[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(5),
	devoe => ww_devoe,
	o => ww_column(5));

-- Location: IOOBUF_X78_Y42_N9
\column[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(6),
	devoe => ww_devoe,
	o => ww_column(6));

-- Location: IOOBUF_X31_Y39_N2
\column[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(7),
	devoe => ww_devoe,
	o => ww_column(7));

-- Location: IOOBUF_X34_Y39_N2
\column[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(8),
	devoe => ww_devoe,
	o => ww_column(8));

-- Location: IOOBUF_X34_Y39_N9
\column[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|column\(9),
	devoe => ww_devoe,
	o => ww_column(9));

-- Location: IOOBUF_X0_Y36_N23
\column[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(10));

-- Location: IOOBUF_X56_Y54_N30
\column[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(11));

-- Location: IOOBUF_X18_Y0_N23
\column[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(12));

-- Location: IOOBUF_X26_Y39_N16
\column[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(13));

-- Location: IOOBUF_X26_Y0_N16
\column[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(14));

-- Location: IOOBUF_X56_Y54_N16
\column[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(15));

-- Location: IOOBUF_X22_Y39_N16
\column[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(16));

-- Location: IOOBUF_X78_Y21_N16
\column[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(17));

-- Location: IOOBUF_X78_Y17_N9
\column[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(18));

-- Location: IOOBUF_X69_Y54_N9
\column[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(19));

-- Location: IOOBUF_X49_Y0_N30
\column[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(20));

-- Location: IOOBUF_X0_Y23_N23
\column[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(21));

-- Location: IOOBUF_X34_Y0_N16
\column[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(22));

-- Location: IOOBUF_X69_Y54_N2
\column[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(23));

-- Location: IOOBUF_X78_Y31_N16
\column[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(24));

-- Location: IOOBUF_X29_Y39_N2
\column[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(25));

-- Location: IOOBUF_X18_Y0_N16
\column[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(26));

-- Location: IOOBUF_X22_Y0_N2
\column[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(27));

-- Location: IOOBUF_X20_Y0_N23
\column[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(28));

-- Location: IOOBUF_X58_Y0_N9
\column[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(29));

-- Location: IOOBUF_X0_Y35_N9
\column[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(30));

-- Location: IOOBUF_X60_Y54_N9
\column[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_column(31));

-- Location: IOOBUF_X36_Y39_N16
\row[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(0),
	devoe => ww_devoe,
	o => ww_row(0));

-- Location: IOOBUF_X31_Y39_N30
\row[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(1),
	devoe => ww_devoe,
	o => ww_row(1));

-- Location: IOOBUF_X31_Y39_N9
\row[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(2),
	devoe => ww_devoe,
	o => ww_row(2));

-- Location: IOOBUF_X36_Y39_N30
\row[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(3),
	devoe => ww_devoe,
	o => ww_row(3));

-- Location: IOOBUF_X49_Y54_N23
\row[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(4),
	devoe => ww_devoe,
	o => ww_row(4));

-- Location: IOOBUF_X34_Y39_N23
\row[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(5),
	devoe => ww_devoe,
	o => ww_row(5));

-- Location: IOOBUF_X46_Y54_N30
\row[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(6),
	devoe => ww_devoe,
	o => ww_row(6));

-- Location: IOOBUF_X31_Y39_N16
\row[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(7),
	devoe => ww_devoe,
	o => ww_row(7));

-- Location: IOOBUF_X36_Y39_N23
\row[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|row\(8),
	devoe => ww_devoe,
	o => ww_row(8));

-- Location: IOOBUF_X78_Y34_N24
\row[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(9));

-- Location: IOOBUF_X0_Y30_N2
\row[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(10));

-- Location: IOOBUF_X26_Y39_N23
\row[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(11));

-- Location: IOOBUF_X24_Y39_N2
\row[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(12));

-- Location: IOOBUF_X0_Y15_N16
\row[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(13));

-- Location: IOOBUF_X0_Y13_N16
\row[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(14));

-- Location: IOOBUF_X78_Y43_N9
\row[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(15));

-- Location: IOOBUF_X60_Y54_N16
\row[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(16));

-- Location: IOOBUF_X62_Y0_N9
\row[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(17));

-- Location: IOOBUF_X22_Y0_N9
\row[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(18));

-- Location: IOOBUF_X69_Y0_N9
\row[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(19));

-- Location: IOOBUF_X78_Y16_N9
\row[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(20));

-- Location: IOOBUF_X31_Y0_N16
\row[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(21));

-- Location: IOOBUF_X58_Y54_N23
\row[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(22));

-- Location: IOOBUF_X51_Y0_N16
\row[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(23));

-- Location: IOOBUF_X78_Y42_N16
\row[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(24));

-- Location: IOOBUF_X54_Y54_N2
\row[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(25));

-- Location: IOOBUF_X69_Y0_N23
\row[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(26));

-- Location: IOOBUF_X78_Y44_N16
\row[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(27));

-- Location: IOOBUF_X51_Y0_N9
\row[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(28));

-- Location: IOOBUF_X74_Y54_N16
\row[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(29));

-- Location: IOOBUF_X22_Y0_N30
\row[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(30));

-- Location: IOOBUF_X78_Y45_N2
\row[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_row(31));

-- Location: IOOBUF_X0_Y3_N23
\c0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_c0);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\U0|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \U0|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \U0|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \U0|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \U0|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_PLL1E0
\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N29
\datos_gumnut[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(4),
	o => \datos_gumnut[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\datos_gumnut[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(3),
	o => \datos_gumnut[3]~input_o\);

-- Location: LCCOMB_X50_Y46_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (GND)
-- \Add0~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X51_Y46_N6
\count[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~12_combout\ = !\Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \count[0]~12_combout\);

-- Location: IOIBUF_X49_Y54_N1
\datos_gumnut[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(2),
	o => \datos_gumnut[2]~input_o\);

-- Location: FF_X51_Y46_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~12_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X50_Y46_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (!\Add0~1\)) # (!count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X50_Y46_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X50_Y46_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & (\Add0~3\ $ (GND))) # (!count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X50_Y46_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X50_Y46_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (!\Add0~5\)) # (!count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X50_Y46_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X50_Y46_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & (\Add0~7\ $ (GND))) # (!count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X50_Y46_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X50_Y46_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (!\Add0~9\)) # (!count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X50_Y46_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X50_Y46_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & (\Add0~11\ $ (GND))) # (!count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X51_Y45_N8
\count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (!\Equal0~10_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~12_combout\,
	combout => \count~11_combout\);

-- Location: FF_X51_Y45_N9
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~11_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X50_Y46_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count(7) & (!\Add0~13\)) # (!count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X50_Y46_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X51_Y45_N10
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!count(5) & (!count(7) & (count(6) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(7),
	datac => count(6),
	datad => count(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X50_Y46_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count(8) & (\Add0~15\ $ (GND))) # (!count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X50_Y46_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X50_Y46_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count(9) & (!\Add0~17\)) # (!count(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X50_Y46_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X50_Y46_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count(10) & (\Add0~19\ $ (GND))) # (!count(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X50_Y46_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X50_Y46_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count(11) & (!\Add0~21\)) # (!count(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X51_Y46_N20
\count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\Add0~22_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~10_combout\);

-- Location: FF_X51_Y46_N21
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~10_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X50_Y46_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count(12) & (\Add0~23\ $ (GND))) # (!count(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X51_Y45_N2
\count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (!\Equal0~10_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~24_combout\,
	combout => \count~9_combout\);

-- Location: FF_X51_Y45_N3
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~9_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X50_Y46_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count(13) & (!\Add0~25\)) # (!count(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X51_Y45_N0
\count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\Add0~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~8_combout\);

-- Location: FF_X51_Y45_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X50_Y46_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count(14) & (\Add0~27\ $ (GND))) # (!count(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X51_Y46_N2
\count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (!\Equal0~10_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~28_combout\,
	combout => \count~7_combout\);

-- Location: FF_X51_Y46_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X50_Y46_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count(15) & (!\Add0~29\)) # (!count(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X50_Y46_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X51_Y45_N12
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(15) & (count(12) & (count(14) & count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(12),
	datac => count(14),
	datad => count(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X50_Y47_N16
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(8) & !count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datac => count(9),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X51_Y45_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (!count(10) & count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => count(10),
	datad => count(11),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X50_Y45_N0
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count(16) & (\Add0~31\ $ (GND))) # (!count(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X51_Y45_N20
\count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (!\Equal0~10_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~32_combout\,
	combout => \count~6_combout\);

-- Location: FF_X51_Y45_N21
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X50_Y45_N2
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count(17) & (!\Add0~33\)) # (!count(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X50_Y45_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X50_Y45_N4
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count(18) & (\Add0~35\ $ (GND))) # (!count(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X51_Y45_N18
\count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal0~10_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~36_combout\,
	combout => \count~5_combout\);

-- Location: FF_X51_Y45_N19
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X50_Y45_N6
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count(19) & (!\Add0~37\)) # (!count(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X51_Y45_N24
\count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal0~10_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~38_combout\,
	combout => \count~4_combout\);

-- Location: FF_X51_Y45_N25
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X50_Y45_N8
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count(20) & (\Add0~39\ $ (GND))) # (!count(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X51_Y45_N30
\count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~40_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~3_combout\);

-- Location: FF_X51_Y45_N31
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X50_Y45_N10
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count(21) & (!\Add0~41\)) # (!count(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X51_Y45_N28
\count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~42_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~2_combout\);

-- Location: FF_X51_Y45_N29
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~2_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X50_Y45_N12
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count(22) & (\Add0~43\ $ (GND))) # (!count(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X51_Y45_N26
\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~44_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => \Equal0~10_combout\,
	combout => \count~1_combout\);

-- Location: FF_X51_Y45_N27
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~1_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X50_Y45_N14
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count(23) & (!\Add0~45\)) # (!count(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X50_Y45_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X49_Y45_N12
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(21) & (count(22) & (!count(23) & count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datab => count(22),
	datac => count(23),
	datad => count(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y45_N16
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (count(24) & (\Add0~47\ $ (GND))) # (!count(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((count(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X51_Y46_N16
\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (!\Equal0~10_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datac => \Add0~48_combout\,
	combout => \count~0_combout\);

-- Location: FF_X51_Y46_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~0_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X50_Y45_N18
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (count(25) & (!\Add0~49\)) # (!count(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X50_Y45_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X50_Y45_N20
\Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (count(26) & (\Add0~51\ $ (GND))) # (!count(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((count(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X50_Y45_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X50_Y45_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (count(27) & (!\Add0~53\)) # (!count(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X50_Y45_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X50_Y45_N24
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (count(28) & (\Add0~55\ $ (GND))) # (!count(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((count(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X50_Y45_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X50_Y45_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (count(29) & (!\Add0~57\)) # (!count(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X50_Y45_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X50_Y45_N28
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (count(30) & (\Add0~59\ $ (GND))) # (!count(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((count(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X50_Y45_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X50_Y45_N30
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = count(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X50_Y45_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X49_Y45_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(29) & (!count(30) & (!count(31) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(30),
	datac => count(31),
	datad => count(28),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X51_Y45_N22
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(17) & (count(18) & (count(19) & count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(18),
	datac => count(19),
	datad => count(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X49_Y45_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(26) & (!count(27) & (count(24) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(24),
	datad => count(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X49_Y45_N6
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X51_Y46_N8
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!count(1) & (!count(2) & (!count(3) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X51_Y45_N4
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & (\Equal0~4_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X51_Y45_N16
\CurrentState.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CurrentState.S0~0_combout\ = (\CurrentState.S0~q\) # ((\datos_gumnut[3]~input_o\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos_gumnut[3]~input_o\,
	datab => \Equal0~10_combout\,
	datac => \CurrentState.S0~q\,
	combout => \CurrentState.S0~0_combout\);

-- Location: FF_X51_Y45_N17
\CurrentState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CurrentState.S0~0_combout\,
	clrn => \ALT_INV_datos_gumnut[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.S0~q\);

-- Location: IOIBUF_X51_Y54_N1
\datos_gumnut[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(5),
	o => \datos_gumnut[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\datos_gumnut[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(6),
	o => \datos_gumnut[6]~input_o\);

-- Location: LCCOMB_X51_Y46_N22
\Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!\datos_gumnut[5]~input_o\ & !\datos_gumnut[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datos_gumnut[5]~input_o\,
	datad => \datos_gumnut[6]~input_o\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X51_Y46_N24
\Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\datos_gumnut[4]~input_o\ & (((\CurrentState.S1~q\)))) # (!\datos_gumnut[4]~input_o\ & (\Selector9~1_combout\ & (\Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \Selector9~0_combout\,
	datac => \datos_gumnut[4]~input_o\,
	datad => \CurrentState.S1~q\,
	combout => \Selector9~2_combout\);

-- Location: FF_X51_Y46_N25
\CurrentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \ALT_INV_datos_gumnut[2]~input_o\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.S2~q\);

-- Location: LCCOMB_X51_Y46_N28
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\CurrentState.S2~q\) # ((!\CurrentState.S1~q\ & \CurrentState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \CurrentState.S0~q\,
	datad => \CurrentState.S2~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X51_Y46_N18
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\CurrentState.S1~q\ & (((\Selector9~0_combout\ & \datos_gumnut[5]~input_o\)) # (!\datos_gumnut[6]~input_o\))) # (!\CurrentState.S1~q\ & (\Selector9~0_combout\ & (\datos_gumnut[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \Selector9~0_combout\,
	datac => \datos_gumnut[5]~input_o\,
	datad => \datos_gumnut[6]~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X51_Y46_N10
\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\datos_gumnut[4]~input_o\ & (!\CurrentState.S0~q\ & ((\datos_gumnut[3]~input_o\)))) # (!\datos_gumnut[4]~input_o\ & ((\Selector8~0_combout\) # ((!\CurrentState.S0~q\ & \datos_gumnut[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos_gumnut[4]~input_o\,
	datab => \CurrentState.S0~q\,
	datac => \Selector8~0_combout\,
	datad => \datos_gumnut[3]~input_o\,
	combout => \Selector8~1_combout\);

-- Location: FF_X51_Y46_N11
\CurrentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_datos_gumnut[2]~input_o\,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CurrentState.S1~q\);

-- Location: CLKCTRL_G18
\U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: FF_X46_Y41_N17
\U1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(6));

-- Location: LCCOMB_X45_Y41_N18
\U1|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~13_combout\ = (\U1|v_count\(6) & (\U1|Add1~12\ $ (GND))) # (!\U1|v_count\(6) & (!\U1|Add1~12\ & VCC))
-- \U1|Add1~14\ = CARRY((\U1|v_count\(6) & !\U1|Add1~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(6),
	datad => VCC,
	cin => \U1|Add1~12\,
	combout => \U1|Add1~13_combout\,
	cout => \U1|Add1~14\);

-- Location: LCCOMB_X45_Y41_N20
\U1|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~15_combout\ = (\U1|v_count\(7) & (!\U1|Add1~14\)) # (!\U1|v_count\(7) & ((\U1|Add1~14\) # (GND)))
-- \U1|Add1~16\ = CARRY((!\U1|Add1~14\) # (!\U1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(7),
	datad => VCC,
	cin => \U1|Add1~14\,
	combout => \U1|Add1~15_combout\,
	cout => \U1|Add1~16\);

-- Location: LCCOMB_X46_Y42_N4
\U1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|h_count\(0) $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(0),
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X46_Y42_N24
\U1|h_count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~3_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~2_combout\,
	datac => \U1|Add0~0_combout\,
	combout => \U1|h_count~3_combout\);

-- Location: FF_X46_Y42_N25
\U1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(0));

-- Location: LCCOMB_X46_Y42_N6
\U1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|h_count\(1) & (!\U1|Add0~1\)) # (!\U1|h_count\(1) & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(1),
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: LCCOMB_X46_Y41_N14
\U1|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~0_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|Add0~2_combout\,
	combout => \U1|h_count~0_combout\);

-- Location: FF_X46_Y41_N15
\U1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(1));

-- Location: LCCOMB_X46_Y42_N8
\U1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|h_count\(2) & (\U1|Add0~3\ $ (GND))) # (!\U1|h_count\(2) & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|h_count\(2) & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(2),
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X46_Y42_N26
\U1|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~1_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~2_combout\,
	datac => \U1|Add0~4_combout\,
	combout => \U1|h_count~1_combout\);

-- Location: FF_X46_Y42_N27
\U1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(2));

-- Location: LCCOMB_X46_Y42_N10
\U1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|h_count\(3) & (!\U1|Add0~5\)) # (!\U1|h_count\(3) & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(3),
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X46_Y42_N0
\U1|h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~2_combout\ = (\U1|Add0~6_combout\ & \U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~6_combout\,
	datac => \U1|LessThan0~2_combout\,
	combout => \U1|h_count~2_combout\);

-- Location: FF_X46_Y42_N1
\U1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(3));

-- Location: LCCOMB_X46_Y42_N12
\U1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|h_count\(4) & (\U1|Add0~7\ $ (GND))) # (!\U1|h_count\(4) & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|h_count\(4) & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(4),
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: LCCOMB_X47_Y42_N22
\U1|h_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~5_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan0~2_combout\,
	datad => \U1|Add0~8_combout\,
	combout => \U1|h_count~5_combout\);

-- Location: FF_X47_Y42_N23
\U1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(4));

-- Location: LCCOMB_X46_Y42_N14
\U1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|h_count\(5) & (!\U1|Add0~9\)) # (!\U1|h_count\(5) & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(5),
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: LCCOMB_X47_Y42_N12
\U1|h_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~8_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan0~2_combout\,
	datad => \U1|Add0~10_combout\,
	combout => \U1|h_count~8_combout\);

-- Location: FF_X47_Y42_N13
\U1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(5));

-- Location: LCCOMB_X46_Y42_N16
\U1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|h_count\(6) & (\U1|Add0~11\ $ (GND))) # (!\U1|h_count\(6) & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|h_count\(6) & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(6),
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X47_Y42_N18
\U1|h_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~4_combout\ = (\U1|Add0~12_combout\ & \U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|Add0~12_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|h_count~4_combout\);

-- Location: FF_X47_Y42_N19
\U1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(6));

-- Location: LCCOMB_X46_Y42_N18
\U1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|h_count\(7) & (!\U1|Add0~13\)) # (!\U1|h_count\(7) & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(7),
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: LCCOMB_X47_Y42_N0
\U1|h_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~9_combout\ = (\U1|Add0~14_combout\ & \U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~14_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|h_count~9_combout\);

-- Location: FF_X47_Y42_N1
\U1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(7));

-- Location: LCCOMB_X46_Y42_N20
\U1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|h_count\(8) & (\U1|Add0~15\ $ (GND))) # (!\U1|h_count\(8) & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|h_count\(8) & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|h_count\(8),
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X47_Y42_N8
\U1|h_count~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~7_combout\ = (\U1|Add0~16_combout\ & \U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~16_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|h_count~7_combout\);

-- Location: FF_X47_Y42_N9
\U1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(8));

-- Location: LCCOMB_X46_Y42_N22
\U1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = \U1|Add0~17\ $ (\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|h_count\(9),
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\);

-- Location: LCCOMB_X47_Y42_N2
\U1|h_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|h_count~6_combout\ = (\U1|LessThan0~2_combout\ & \U1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LessThan0~2_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|h_count~6_combout\);

-- Location: FF_X47_Y42_N3
\U1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_count\(9));

-- Location: LCCOMB_X46_Y42_N2
\U1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (((!\U1|h_count\(4)) # (!\U1|h_count\(2))) # (!\U1|h_count\(3))) # (!\U1|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(1),
	datab => \U1|h_count\(3),
	datac => \U1|h_count\(2),
	datad => \U1|h_count\(4),
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y42_N28
\U1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (\U1|h_count\(5)) # ((\U1|h_count\(7)) # ((\U1|h_count\(0) & !\U1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(5),
	datab => \U1|h_count\(0),
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|h_count\(7),
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y42_N30
\U1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (((!\U1|LessThan0~1_combout\ & !\U1|h_count\(6))) # (!\U1|h_count\(8))) # (!\U1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count\(9),
	datab => \U1|LessThan0~1_combout\,
	datac => \U1|h_count\(8),
	datad => \U1|h_count\(6),
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X45_Y41_N28
\U1|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~24_combout\ = (\U1|Add1~15_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(7) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~15_combout\ & (((\U1|v_count\(7) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~15_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|v_count\(7),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~24_combout\);

-- Location: FF_X45_Y41_N29
\U1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(7));

-- Location: LCCOMB_X45_Y41_N22
\U1|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~17_combout\ = (\U1|v_count\(8) & (\U1|Add1~16\ $ (GND))) # (!\U1|v_count\(8) & (!\U1|Add1~16\ & VCC))
-- \U1|Add1~18\ = CARRY((\U1|v_count\(8) & !\U1|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(8),
	datad => VCC,
	cin => \U1|Add1~16\,
	combout => \U1|Add1~17_combout\,
	cout => \U1|Add1~18\);

-- Location: LCCOMB_X44_Y41_N14
\U1|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~25_combout\ = (\U1|Add1~0_combout\ & ((\U1|Add1~17_combout\) # ((\U1|v_count\(8) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~0_combout\ & (((\U1|v_count\(8) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add1~17_combout\,
	datac => \U1|v_count\(8),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~25_combout\);

-- Location: FF_X44_Y41_N15
\U1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(8));

-- Location: LCCOMB_X45_Y41_N2
\U1|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (!\U1|v_count\(8) & (!\U1|v_count\(7) & ((!\U1|v_count\(3)) # (!\U1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(8),
	datab => \U1|v_count\(7),
	datac => \U1|v_count\(2),
	datad => \U1|v_count\(3),
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y41_N28
\U1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (!\U1|v_count\(6) & (!\U1|v_count\(4) & !\U1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(6),
	datac => \U1|v_count\(4),
	datad => \U1|v_count\(5),
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y41_N24
\U1|Add1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~19_combout\ = \U1|Add1~18\ $ (\U1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|v_count\(9),
	cin => \U1|Add1~18\,
	combout => \U1|Add1~19_combout\);

-- Location: LCCOMB_X46_Y41_N18
\U1|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~21_combout\ = (\U1|v_count\(9) & ((\U1|LessThan0~2_combout\) # ((\U1|Add1~19_combout\ & \U1|Add1~0_combout\)))) # (!\U1|v_count\(9) & (\U1|Add1~19_combout\ & ((\U1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(9),
	datab => \U1|Add1~19_combout\,
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|Add1~0_combout\,
	combout => \U1|Add1~21_combout\);

-- Location: LCCOMB_X46_Y41_N6
\U1|v_count[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|v_count[9]~feeder_combout\ = \U1|Add1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~21_combout\,
	combout => \U1|v_count[9]~feeder_combout\);

-- Location: FF_X46_Y41_N7
\U1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(9));

-- Location: LCCOMB_X46_Y41_N24
\U1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~0_combout\ = (!\U1|LessThan0~2_combout\ & (((\U1|LessThan1~0_combout\ & \U1|LessThan1~1_combout\)) # (!\U1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan1~0_combout\,
	datab => \U1|LessThan1~1_combout\,
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|v_count\(9),
	combout => \U1|Add1~0_combout\);

-- Location: LCCOMB_X45_Y41_N6
\U1|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~1_combout\ = \U1|v_count\(0) $ (VCC)
-- \U1|Add1~2\ = CARRY(\U1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(0),
	datad => VCC,
	combout => \U1|Add1~1_combout\,
	cout => \U1|Add1~2\);

-- Location: LCCOMB_X45_Y41_N30
\U1|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~28_combout\ = (\U1|Add1~1_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(0) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~1_combout\ & (((\U1|v_count\(0) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~1_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|v_count\(0),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~28_combout\);

-- Location: FF_X45_Y41_N31
\U1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(0));

-- Location: LCCOMB_X45_Y41_N8
\U1|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~3_combout\ = (\U1|v_count\(1) & (!\U1|Add1~2\)) # (!\U1|v_count\(1) & ((\U1|Add1~2\) # (GND)))
-- \U1|Add1~4\ = CARRY((!\U1|Add1~2\) # (!\U1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(1),
	datad => VCC,
	cin => \U1|Add1~2\,
	combout => \U1|Add1~3_combout\,
	cout => \U1|Add1~4\);

-- Location: LCCOMB_X44_Y41_N16
\U1|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~27_combout\ = (\U1|Add1~0_combout\ & ((\U1|Add1~3_combout\) # ((\U1|v_count\(1) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~0_combout\ & (((\U1|v_count\(1) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~0_combout\,
	datab => \U1|Add1~3_combout\,
	datac => \U1|v_count\(1),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~27_combout\);

-- Location: FF_X44_Y41_N17
\U1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(1));

-- Location: LCCOMB_X45_Y41_N10
\U1|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~5_combout\ = (\U1|v_count\(2) & (\U1|Add1~4\ $ (GND))) # (!\U1|v_count\(2) & (!\U1|Add1~4\ & VCC))
-- \U1|Add1~6\ = CARRY((\U1|v_count\(2) & !\U1|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(2),
	datad => VCC,
	cin => \U1|Add1~4\,
	combout => \U1|Add1~5_combout\,
	cout => \U1|Add1~6\);

-- Location: LCCOMB_X45_Y41_N26
\U1|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~29_combout\ = (\U1|Add1~5_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(2) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~5_combout\ & (((\U1|v_count\(2) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~5_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|v_count\(2),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~29_combout\);

-- Location: FF_X45_Y41_N27
\U1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(2));

-- Location: LCCOMB_X45_Y41_N12
\U1|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~7_combout\ = (\U1|v_count\(3) & (!\U1|Add1~6\)) # (!\U1|v_count\(3) & ((\U1|Add1~6\) # (GND)))
-- \U1|Add1~8\ = CARRY((!\U1|Add1~6\) # (!\U1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(3),
	datad => VCC,
	cin => \U1|Add1~6\,
	combout => \U1|Add1~7_combout\,
	cout => \U1|Add1~8\);

-- Location: LCCOMB_X45_Y41_N0
\U1|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~30_combout\ = (\U1|Add1~7_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(3) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~7_combout\ & (((\U1|v_count\(3) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~7_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|v_count\(3),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~30_combout\);

-- Location: FF_X45_Y41_N1
\U1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(3));

-- Location: LCCOMB_X45_Y41_N14
\U1|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~9_combout\ = (\U1|v_count\(4) & (\U1|Add1~8\ $ (GND))) # (!\U1|v_count\(4) & (!\U1|Add1~8\ & VCC))
-- \U1|Add1~10\ = CARRY((\U1|v_count\(4) & !\U1|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|v_count\(4),
	datad => VCC,
	cin => \U1|Add1~8\,
	combout => \U1|Add1~9_combout\,
	cout => \U1|Add1~10\);

-- Location: LCCOMB_X45_Y41_N4
\U1|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~26_combout\ = (\U1|Add1~9_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(4) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~9_combout\ & (((\U1|v_count\(4) & \U1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~9_combout\,
	datab => \U1|Add1~0_combout\,
	datac => \U1|v_count\(4),
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|Add1~26_combout\);

-- Location: FF_X45_Y41_N5
\U1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(4));

-- Location: LCCOMB_X45_Y41_N16
\U1|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~11_combout\ = (\U1|v_count\(5) & (!\U1|Add1~10\)) # (!\U1|v_count\(5) & ((\U1|Add1~10\) # (GND)))
-- \U1|Add1~12\ = CARRY((!\U1|Add1~10\) # (!\U1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|v_count\(5),
	datad => VCC,
	cin => \U1|Add1~10\,
	combout => \U1|Add1~11_combout\,
	cout => \U1|Add1~12\);

-- Location: LCCOMB_X46_Y41_N20
\U1|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~22_combout\ = (\U1|Add1~11_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(5) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~11_combout\ & (\U1|v_count\(5) & (\U1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~11_combout\,
	datab => \U1|v_count\(5),
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|Add1~0_combout\,
	combout => \U1|Add1~22_combout\);

-- Location: LCCOMB_X46_Y41_N2
\U1|v_count[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|v_count[5]~feeder_combout\ = \U1|Add1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~22_combout\,
	combout => \U1|v_count[5]~feeder_combout\);

-- Location: FF_X46_Y41_N3
\U1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|v_count[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_count\(5));

-- Location: LCCOMB_X46_Y41_N22
\U1|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Add1~23_combout\ = (\U1|Add1~13_combout\ & ((\U1|Add1~0_combout\) # ((\U1|v_count\(6) & \U1|LessThan0~2_combout\)))) # (!\U1|Add1~13_combout\ & (\U1|v_count\(6) & (\U1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~13_combout\,
	datab => \U1|v_count\(6),
	datac => \U1|LessThan0~2_combout\,
	datad => \U1|Add1~0_combout\,
	combout => \U1|Add1~23_combout\);

-- Location: LCCOMB_X44_Y41_N18
\U1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = (\U1|Add1~23_combout\ & (\U1|Add1~24_combout\ & (\U1|Add1~25_combout\ & \U1|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~23_combout\,
	datab => \U1|Add1~24_combout\,
	datac => \U1|Add1~25_combout\,
	datad => \U1|Add1~22_combout\,
	combout => \U1|process_0~0_combout\);

-- Location: LCCOMB_X47_Y42_N4
\U1|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan6~0_combout\ = (((!\U1|Add0~14_combout\ & !\U1|Add0~16_combout\)) # (!\U1|Add0~18_combout\)) # (!\U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~2_combout\,
	datab => \U1|Add0~14_combout\,
	datac => \U1|Add0~16_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|LessThan6~0_combout\);

-- Location: LCCOMB_X44_Y41_N0
\U1|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = (!\U1|process_0~0_combout\ & (\U1|LessThan6~0_combout\ & !\U1|Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|process_0~0_combout\,
	datac => \U1|LessThan6~0_combout\,
	datad => \U1|Add1~21_combout\,
	combout => \U1|process_0~1_combout\);

-- Location: FF_X44_Y41_N1
\U1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|disp_ena~q\);

-- Location: LCCOMB_X44_Y41_N22
\U1|row[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|row[5]~feeder_combout\ = \U1|Add1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~22_combout\,
	combout => \U1|row[5]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N20
\U1|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|LessThan7~0_combout\ = (!\U1|process_0~0_combout\ & !\U1|Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|process_0~0_combout\,
	datad => \U1|Add1~21_combout\,
	combout => \U1|LessThan7~0_combout\);

-- Location: FF_X44_Y41_N23
\U1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|row[5]~feeder_combout\,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(5));

-- Location: LCCOMB_X44_Y41_N4
\U1|row[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|row[7]~feeder_combout\ = \U1|Add1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~24_combout\,
	combout => \U1|row[7]~feeder_combout\);

-- Location: FF_X44_Y41_N5
\U1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|row[7]~feeder_combout\,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(7));

-- Location: FF_X44_Y41_N25
\U1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~25_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(8));

-- Location: FF_X44_Y41_N11
\U1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~23_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(6));

-- Location: LCCOMB_X44_Y41_N24
\FSM~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~1_combout\ = (\U1|row\(5)) # ((\U1|row\(7)) # ((\U1|row\(8)) # (\U1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|row\(5),
	datab => \U1|row\(7),
	datac => \U1|row\(8),
	datad => \U1|row\(6),
	combout => \FSM~1_combout\);

-- Location: FF_X47_Y42_N11
\U1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~9_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(7));

-- Location: LCCOMB_X44_Y41_N12
\U1|row[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|row[1]~feeder_combout\ = \U1|Add1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|Add1~27_combout\,
	combout => \U1|row[1]~feeder_combout\);

-- Location: FF_X44_Y41_N13
\U1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|row[1]~feeder_combout\,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(1));

-- Location: FF_X44_Y41_N31
\U1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~28_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(0));

-- Location: FF_X44_Y41_N9
\U1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~29_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(2));

-- Location: FF_X44_Y41_N27
\U1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~30_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(3));

-- Location: LCCOMB_X44_Y41_N8
\FSM~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~3_combout\ = (\U1|row\(1) & ((\U1|row\(2) $ (\U1|row\(3))))) # (!\U1|row\(1) & ((\U1|row\(3)) # ((\U1|row\(0) & \U1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|row\(1),
	datab => \U1|row\(0),
	datac => \U1|row\(2),
	datad => \U1|row\(3),
	combout => \FSM~3_combout\);

-- Location: FF_X47_Y42_N31
\U1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~7_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(8));

-- Location: FF_X47_Y42_N29
\U1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~6_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(9));

-- Location: FF_X47_Y42_N25
\U1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~8_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(5));

-- Location: FF_X47_Y42_N27
\U1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~5_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(4));

-- Location: LCCOMB_X47_Y42_N24
\FSM~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~2_combout\ = (!\U1|column\(8) & (!\U1|column\(9) & (!\U1|column\(5) & \U1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|column\(8),
	datab => \U1|column\(9),
	datac => \U1|column\(5),
	datad => \U1|column\(4),
	combout => \FSM~2_combout\);

-- Location: LCCOMB_X46_Y40_N16
\FSM~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~4_combout\ = (!\FSM~1_combout\ & (!\U1|column\(7) & (\FSM~3_combout\ & \FSM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM~1_combout\,
	datab => \U1|column\(7),
	datac => \FSM~3_combout\,
	datad => \FSM~2_combout\,
	combout => \FSM~4_combout\);

-- Location: FF_X46_Y41_N13
\U1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~2_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(3));

-- Location: LCCOMB_X46_Y41_N30
\U1|column[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|column[0]~feeder_combout\ = \U1|h_count~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|h_count~3_combout\,
	combout => \U1|column[0]~feeder_combout\);

-- Location: FF_X46_Y41_N31
\U1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|column[0]~feeder_combout\,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(0));

-- Location: FF_X46_Y41_N9
\U1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~0_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(1));

-- Location: FF_X46_Y41_N11
\U1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~1_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(2));

-- Location: LCCOMB_X46_Y41_N0
\FSM~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~0_combout\ = (\U1|column\(3) & (((\U1|column\(1) & \U1|column\(2))))) # (!\U1|column\(3) & (((!\U1|column\(0) & !\U1|column\(1))) # (!\U1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|column\(3),
	datab => \U1|column\(0),
	datac => \U1|column\(1),
	datad => \U1|column\(2),
	combout => \FSM~0_combout\);

-- Location: FF_X44_Y41_N3
\U1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|Add1~26_combout\,
	sload => VCC,
	ena => \U1|LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|row\(4));

-- Location: FF_X47_Y42_N17
\U1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \U1|h_count~4_combout\,
	sload => VCC,
	ena => \U1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|column\(6));

-- Location: LCCOMB_X47_Y42_N20
\FSM~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~5_combout\ = ((\FSM~0_combout\) # ((\U1|column\(6)) # (!\U1|row\(4)))) # (!\FSM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM~4_combout\,
	datab => \FSM~0_combout\,
	datac => \U1|row\(4),
	datad => \U1|column\(6),
	combout => \FSM~5_combout\);

-- Location: LCCOMB_X51_Y46_N12
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\U1|disp_ena~q\ & ((\CurrentState.S2~q\) # ((!\CurrentState.S1~q\ & \CurrentState.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \CurrentState.S0~q\,
	datac => \CurrentState.S2~q\,
	datad => \U1|disp_ena~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X51_Y46_N14
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\CurrentState.S1~q\ & (\U1|disp_ena~q\ & \FSM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \U1|disp_ena~q\,
	datac => \FSM~5_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X51_Y40_N0
\VGA_G~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\U1|disp_ena~q\ & \CurrentState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|disp_ena~q\,
	datad => \CurrentState.S0~q\,
	combout => \VGA_G~0_combout\);

-- Location: LCCOMB_X44_Y41_N26
\VGA_B~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~5_combout\ = (\U1|row\(2) & (((!\U1|row\(3))))) # (!\U1|row\(2) & ((\U1|row\(3) & ((!\U1|row\(1)))) # (!\U1|row\(3) & ((\U1|row\(0)) # (\U1|row\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|row\(2),
	datab => \U1|row\(0),
	datac => \U1|row\(3),
	datad => \U1|row\(1),
	combout => \VGA_B~5_combout\);

-- Location: LCCOMB_X47_Y42_N10
\FSM~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM~6_combout\ = (((\U1|column\(6)) # (!\U1|column\(7))) # (!\U1|column\(5))) # (!\U1|column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|column\(8),
	datab => \U1|column\(5),
	datac => \U1|column\(7),
	datad => \U1|column\(6),
	combout => \FSM~6_combout\);

-- Location: LCCOMB_X47_Y42_N28
\VGA_B~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~1_combout\ = (\FSM~6_combout\ & (\U1|column\(3))) # (!\FSM~6_combout\ & ((\U1|column\(9) & (\U1|column\(3))) # (!\U1|column\(9) & ((\U1|column\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM~6_combout\,
	datab => \U1|column\(3),
	datac => \U1|column\(9),
	datad => \U1|column\(4),
	combout => \VGA_B~1_combout\);

-- Location: LCCOMB_X46_Y41_N26
\VGA_B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~2_combout\ = (\U1|column\(2)) # ((\U1|column\(0) & (\U1|column\(1) & !\VGA_B~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|column\(2),
	datab => \U1|column\(0),
	datac => \U1|column\(1),
	datad => \VGA_B~1_combout\,
	combout => \VGA_B~2_combout\);

-- Location: LCCOMB_X47_Y42_N16
\VGA_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\U1|column\(7) & (\U1|column\(6) & \FSM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|column\(7),
	datac => \U1|column\(6),
	datad => \FSM~2_combout\,
	combout => \VGA_B~0_combout\);

-- Location: LCCOMB_X46_Y41_N4
\VGA_B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~3_combout\ = (\U1|column\(3) & ((\VGA_B~2_combout\ & ((\VGA_B~1_combout\))) # (!\VGA_B~2_combout\ & (!\VGA_B~0_combout\)))) # (!\U1|column\(3) & ((\VGA_B~2_combout\ & (!\VGA_B~0_combout\)) # (!\VGA_B~2_combout\ & ((!\VGA_B~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|column\(3),
	datab => \VGA_B~2_combout\,
	datac => \VGA_B~0_combout\,
	datad => \VGA_B~1_combout\,
	combout => \VGA_B~3_combout\);

-- Location: LCCOMB_X44_Y41_N10
\VGA_B~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~4_combout\ = (\U1|row\(5) & (\U1|row\(7) & (!\U1|row\(6) & !\U1|row\(8)))) # (!\U1|row\(5) & (!\U1|row\(7) & (\U1|row\(6) & \U1|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|row\(5),
	datab => \U1|row\(7),
	datac => \U1|row\(6),
	datad => \U1|row\(8),
	combout => \VGA_B~4_combout\);

-- Location: LCCOMB_X44_Y41_N2
\VGA_B~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_B~6_combout\ = (\VGA_B~3_combout\ & (((\U1|row\(4)) # (!\VGA_B~4_combout\)) # (!\VGA_B~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_B~5_combout\,
	datab => \VGA_B~3_combout\,
	datac => \U1|row\(4),
	datad => \VGA_B~4_combout\,
	combout => \VGA_B~6_combout\);

-- Location: LCCOMB_X51_Y46_N0
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\CurrentState.S1~q\ & (((\FSM~5_combout\)))) # (!\CurrentState.S1~q\ & ((\CurrentState.S0~q\) # ((\CurrentState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \CurrentState.S0~q\,
	datac => \FSM~5_combout\,
	datad => \CurrentState.S2~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X51_Y46_N26
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\U1|disp_ena~q\ & ((\Selector7~0_combout\ & ((\VGA_B~6_combout\))) # (!\Selector7~0_combout\ & (!\CurrentState.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CurrentState.S1~q\,
	datab => \U1|disp_ena~q\,
	datac => \VGA_B~6_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X47_Y42_N14
\U1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = ((\U1|Add0~10_combout\ & (\U1|Add0~12_combout\ & \U1|Add0~8_combout\)) # (!\U1|Add0~10_combout\ & (!\U1|Add0~12_combout\ & !\U1|Add0~8_combout\))) # (!\U1|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~10_combout\,
	datab => \U1|LessThan0~2_combout\,
	datac => \U1|Add0~12_combout\,
	datad => \U1|Add0~8_combout\,
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X47_Y42_N6
\U1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = ((\U1|h_count~7_combout\) # ((\U1|process_0~2_combout\) # (!\U1|h_count~6_combout\))) # (!\U1|h_count~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|h_count~9_combout\,
	datab => \U1|h_count~7_combout\,
	datac => \U1|process_0~2_combout\,
	datad => \U1|h_count~6_combout\,
	combout => \U1|process_0~3_combout\);

-- Location: FF_X47_Y42_N7
\U1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|h_sync~q\);

-- Location: LCCOMB_X44_Y41_N6
\U1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = (\U1|Add1~29_combout\) # (((\U1|Add1~26_combout\) # (\U1|Add1~21_combout\)) # (!\U1|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add1~29_combout\,
	datab => \U1|Add1~30_combout\,
	datac => \U1|Add1~26_combout\,
	datad => \U1|Add1~21_combout\,
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X44_Y41_N28
\U1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (\U1|process_0~4_combout\) # ((!\U1|Add1~27_combout\) # (!\U1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~4_combout\,
	datab => \U1|process_0~0_combout\,
	datad => \U1|Add1~27_combout\,
	combout => \U1|process_0~5_combout\);

-- Location: FF_X44_Y41_N29
\U1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \U1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|v_sync~q\);

-- Location: IOIBUF_X78_Y35_N1
\datos_gumnut[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(0),
	o => \datos_gumnut[0]~input_o\);

-- Location: IOIBUF_X78_Y16_N15
\datos_gumnut[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(1),
	o => \datos_gumnut[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\datos_gumnut[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_gumnut(7),
	o => \datos_gumnut[7]~input_o\);

-- Location: IOIBUF_X0_Y3_N22
\c0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c0,
	o => \c0~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


