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

-- DATE "12/02/2024 18:19:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	button : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- output[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \processador|state.RESET~0_combout\ : std_logic;
SIGNAL \processador|reseted~0_combout\ : std_logic;
SIGNAL \processador|reseted~q\ : std_logic;
SIGNAL \processador|process_0~0_combout\ : std_logic;
SIGNAL \processador|state.RESET~q\ : std_logic;
SIGNAL \processador|m_w[7]~feeder_combout\ : std_logic;
SIGNAL \processador|Add0~0_combout\ : std_logic;
SIGNAL \processador|Add0~1\ : std_logic;
SIGNAL \processador|Add0~3_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \processador|var~0_combout\ : std_logic;
SIGNAL \processador|var~1_combout\ : std_logic;
SIGNAL \processador|var~q\ : std_logic;
SIGNAL \processador|process_0~1_combout\ : std_logic;
SIGNAL \processador|Add0~4\ : std_logic;
SIGNAL \processador|Add0~6_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \processador|command[14]~9_combout\ : std_logic;
SIGNAL \processador|op_type[0]~0_combout\ : std_logic;
SIGNAL \processador|Add0~7\ : std_logic;
SIGNAL \processador|Add0~9_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \processador|iinstruction~1_combout\ : std_logic;
SIGNAL \processador|reg2[1]~0_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~1_combout\ : std_logic;
SIGNAL \processador|iinstruction~3_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~0_combout\ : std_logic;
SIGNAL \processador|registers~38_combout\ : std_logic;
SIGNAL \processador|registers~39_combout\ : std_logic;
SIGNAL \processador|registers[0][4]~feeder_combout\ : std_logic;
SIGNAL \processador|reg2~1_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~15_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~7_combout\ : std_logic;
SIGNAL \processador|Add0~10\ : std_logic;
SIGNAL \processador|Add0~12_combout\ : std_logic;
SIGNAL \processador|Mux23~10_combout\ : std_logic;
SIGNAL \processador|LessThan7~1_combout\ : std_logic;
SIGNAL \processador|Mux23~11_combout\ : std_logic;
SIGNAL \processador|Mux23~0_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~18_combout\ : std_logic;
SIGNAL \processador|LessThan7~0_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~19_combout\ : std_logic;
SIGNAL \processador|registers~45_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \processador|registers~43_combout\ : std_logic;
SIGNAL \processador|registers~44_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~q\ : std_logic;
SIGNAL \processador|Add0~13\ : std_logic;
SIGNAL \processador|Add0~15_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \processador|registers~48_combout\ : std_logic;
SIGNAL \processador|registers~49_combout\ : std_logic;
SIGNAL \processador|registers[1][2]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][4]~8_combout\ : std_logic;
SIGNAL \processador|registers[1][4]~12_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~4_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~5_combout\ : std_logic;
SIGNAL \processador|flags~2_combout\ : std_logic;
SIGNAL \processador|registers[1][4]~6_combout\ : std_logic;
SIGNAL \processador|registers[1][4]~13_combout\ : std_logic;
SIGNAL \processador|registers[1][2]~q\ : std_logic;
SIGNAL \processador|registers[0][2]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][2]~q\ : std_logic;
SIGNAL \processador|Mux1~0_combout\ : std_logic;
SIGNAL \processador|Mux1~1_combout\ : std_logic;
SIGNAL \processador|registers~50_combout\ : std_logic;
SIGNAL \processador|output[0]~7_combout\ : std_logic;
SIGNAL \processador|Mux23~1_combout\ : std_logic;
SIGNAL \processador|regI~10_combout\ : std_logic;
SIGNAL \processador|regI~11_combout\ : std_logic;
SIGNAL \processador|Mux23~2_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \processador|registers~28_combout\ : std_logic;
SIGNAL \processador|registers~29_combout\ : std_logic;
SIGNAL \processador|registers[1][6]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][6]~q\ : std_logic;
SIGNAL \processador|registers[0][6]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][6]~q\ : std_logic;
SIGNAL \processador|Mux5~0_combout\ : std_logic;
SIGNAL \processador|Mux5~1_combout\ : std_logic;
SIGNAL \processador|registers~30_combout\ : std_logic;
SIGNAL \processador|regI~2_combout\ : std_logic;
SIGNAL \processador|Add2~1\ : std_logic;
SIGNAL \processador|Add2~2_combout\ : std_logic;
SIGNAL \processador|regI~3_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \processador|registers~20_combout\ : std_logic;
SIGNAL \processador|regI~0_combout\ : std_logic;
SIGNAL \processador|regI~1_combout\ : std_logic;
SIGNAL \processador|Add2~0_combout\ : std_logic;
SIGNAL \processador|Add4~0_combout\ : std_logic;
SIGNAL \processador|Add5~0_combout\ : std_logic;
SIGNAL \processador|Add7~0_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \processador|registers~60_combout\ : std_logic;
SIGNAL \processador|registers~58_combout\ : std_logic;
SIGNAL \processador|registers~59_combout\ : std_logic;
SIGNAL \processador|registers[1][0]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][0]~q\ : std_logic;
SIGNAL \processador|registers[0][0]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][0]~q\ : std_logic;
SIGNAL \processador|Mux7~0_combout\ : std_logic;
SIGNAL \processador|Mux7~1_combout\ : std_logic;
SIGNAL \processador|Add0~16\ : std_logic;
SIGNAL \processador|Add0~18_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \processador|registers~53_combout\ : std_logic;
SIGNAL \processador|registers~54_combout\ : std_logic;
SIGNAL \processador|registers[1][1]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][1]~q\ : std_logic;
SIGNAL \processador|registers[0][1]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][1]~q\ : std_logic;
SIGNAL \processador|Mux0~0_combout\ : std_logic;
SIGNAL \processador|Mux0~1_combout\ : std_logic;
SIGNAL \processador|registers~55_combout\ : std_logic;
SIGNAL \processador|regI~12_combout\ : std_logic;
SIGNAL \processador|regI~13_combout\ : std_logic;
SIGNAL \processador|Add5~1\ : std_logic;
SIGNAL \processador|Add5~3\ : std_logic;
SIGNAL \processador|Add5~5\ : std_logic;
SIGNAL \processador|Add5~7\ : std_logic;
SIGNAL \processador|Add5~9\ : std_logic;
SIGNAL \processador|Add5~11\ : std_logic;
SIGNAL \processador|Add5~12_combout\ : std_logic;
SIGNAL \processador|Add6~1\ : std_logic;
SIGNAL \processador|Add6~3\ : std_logic;
SIGNAL \processador|Add6~5\ : std_logic;
SIGNAL \processador|Add6~7\ : std_logic;
SIGNAL \processador|Add6~9\ : std_logic;
SIGNAL \processador|Add6~11\ : std_logic;
SIGNAL \processador|Add6~12_combout\ : std_logic;
SIGNAL \processador|Add8~1\ : std_logic;
SIGNAL \processador|Add8~3\ : std_logic;
SIGNAL \processador|Add8~5\ : std_logic;
SIGNAL \processador|Add8~7\ : std_logic;
SIGNAL \processador|Add8~9\ : std_logic;
SIGNAL \processador|Add8~11\ : std_logic;
SIGNAL \processador|Add8~12_combout\ : std_logic;
SIGNAL \processador|Mux17~0_combout\ : std_logic;
SIGNAL \processador|Add7~1\ : std_logic;
SIGNAL \processador|Add7~3\ : std_logic;
SIGNAL \processador|Add7~5\ : std_logic;
SIGNAL \processador|Add7~7\ : std_logic;
SIGNAL \processador|Add7~9\ : std_logic;
SIGNAL \processador|Add7~11\ : std_logic;
SIGNAL \processador|Add7~12_combout\ : std_logic;
SIGNAL \processador|Mux17~1_combout\ : std_logic;
SIGNAL \processador|Add2~11\ : std_logic;
SIGNAL \processador|Add2~12_combout\ : std_logic;
SIGNAL \processador|Add4~3\ : std_logic;
SIGNAL \processador|Add4~5\ : std_logic;
SIGNAL \processador|Add4~7\ : std_logic;
SIGNAL \processador|Add4~9\ : std_logic;
SIGNAL \processador|Add4~11\ : std_logic;
SIGNAL \processador|Add4~12_combout\ : std_logic;
SIGNAL \processador|Mux17~2_combout\ : std_logic;
SIGNAL \processador|Mux17~3_combout\ : std_logic;
SIGNAL \processador|Mux17~4_combout\ : std_logic;
SIGNAL \processador|Mux17~5_combout\ : std_logic;
SIGNAL \processador|Mux17~6_combout\ : std_logic;
SIGNAL \processador|registers~56_combout\ : std_logic;
SIGNAL \processador|registers~57_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~26_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~23_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~24_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~25_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~27_combout\ : std_logic;
SIGNAL \processador|registers[2][1]~q\ : std_logic;
SIGNAL \processador|Mux9~0_combout\ : std_logic;
SIGNAL \processador|Mux9~1_combout\ : std_logic;
SIGNAL \processador|address~19_combout\ : std_logic;
SIGNAL \processador|address~20_combout\ : std_logic;
SIGNAL \processador|Add0~20_combout\ : std_logic;
SIGNAL \processador|address[1]~reg0_q\ : std_logic;
SIGNAL \processador|Add0~19\ : std_logic;
SIGNAL \processador|Add0~21_combout\ : std_logic;
SIGNAL \processador|address~21_combout\ : std_logic;
SIGNAL \processador|address~22_combout\ : std_logic;
SIGNAL \processador|Add0~23_combout\ : std_logic;
SIGNAL \processador|address[0]~reg0_q\ : std_logic;
SIGNAL \processador|regI~14_combout\ : std_logic;
SIGNAL \processador|regI~15_combout\ : std_logic;
SIGNAL \processador|Add2~13\ : std_logic;
SIGNAL \processador|Add2~14_combout\ : std_logic;
SIGNAL \processador|Add4~13\ : std_logic;
SIGNAL \processador|Add4~14_combout\ : std_logic;
SIGNAL \processador|Add7~13\ : std_logic;
SIGNAL \processador|Add7~14_combout\ : std_logic;
SIGNAL \processador|Add5~13\ : std_logic;
SIGNAL \processador|Add5~14_combout\ : std_logic;
SIGNAL \processador|Add6~13\ : std_logic;
SIGNAL \processador|Add6~14_combout\ : std_logic;
SIGNAL \processador|Add8~13\ : std_logic;
SIGNAL \processador|Add8~14_combout\ : std_logic;
SIGNAL \processador|Mux16~0_combout\ : std_logic;
SIGNAL \processador|Mux16~1_combout\ : std_logic;
SIGNAL \processador|Mux16~2_combout\ : std_logic;
SIGNAL \processador|Mux16~3_combout\ : std_logic;
SIGNAL \processador|Mux16~4_combout\ : std_logic;
SIGNAL \processador|Mux16~5_combout\ : std_logic;
SIGNAL \processador|Mux16~6_combout\ : std_logic;
SIGNAL \processador|registers~61_combout\ : std_logic;
SIGNAL \processador|registers~62_combout\ : std_logic;
SIGNAL \processador|registers[2][0]~q\ : std_logic;
SIGNAL \processador|Mux8~0_combout\ : std_logic;
SIGNAL \processador|Mux8~1_combout\ : std_logic;
SIGNAL \processador|LessThan5~1_cout\ : std_logic;
SIGNAL \processador|LessThan5~3_cout\ : std_logic;
SIGNAL \processador|LessThan5~5_cout\ : std_logic;
SIGNAL \processador|LessThan5~7_cout\ : std_logic;
SIGNAL \processador|LessThan5~9_cout\ : std_logic;
SIGNAL \processador|LessThan5~11_cout\ : std_logic;
SIGNAL \processador|LessThan5~13_cout\ : std_logic;
SIGNAL \processador|LessThan5~14_combout\ : std_logic;
SIGNAL \processador|LessThan6~1_cout\ : std_logic;
SIGNAL \processador|LessThan6~3_cout\ : std_logic;
SIGNAL \processador|LessThan6~5_cout\ : std_logic;
SIGNAL \processador|LessThan6~7_cout\ : std_logic;
SIGNAL \processador|LessThan6~9_cout\ : std_logic;
SIGNAL \processador|LessThan6~11_cout\ : std_logic;
SIGNAL \processador|LessThan6~13_cout\ : std_logic;
SIGNAL \processador|LessThan6~14_combout\ : std_logic;
SIGNAL \processador|Mux23~3_combout\ : std_logic;
SIGNAL \processador|Add6~0_combout\ : std_logic;
SIGNAL \processador|Add8~0_combout\ : std_logic;
SIGNAL \processador|Mux23~4_combout\ : std_logic;
SIGNAL \processador|Mux23~5_combout\ : std_logic;
SIGNAL \processador|Mux23~6_combout\ : std_logic;
SIGNAL \processador|Mux23~7_combout\ : std_logic;
SIGNAL \processador|Mux23~8_combout\ : std_logic;
SIGNAL \processador|Mux23~9_combout\ : std_logic;
SIGNAL \processador|Mux23~12_combout\ : std_logic;
SIGNAL \processador|registers~21_combout\ : std_logic;
SIGNAL \processador|registers~22_combout\ : std_logic;
SIGNAL \processador|registers[2][7]~q\ : std_logic;
SIGNAL \processador|registers~2_combout\ : std_logic;
SIGNAL \processador|registers~3_combout\ : std_logic;
SIGNAL \processador|registers[0][7]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][7]~q\ : std_logic;
SIGNAL \processador|registers[1][7]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][7]~q\ : std_logic;
SIGNAL \processador|Mux6~0_combout\ : std_logic;
SIGNAL \processador|Mux6~1_combout\ : std_logic;
SIGNAL \processador|Add4~1\ : std_logic;
SIGNAL \processador|Add4~2_combout\ : std_logic;
SIGNAL \processador|Add7~2_combout\ : std_logic;
SIGNAL \processador|Add5~2_combout\ : std_logic;
SIGNAL \processador|Add6~2_combout\ : std_logic;
SIGNAL \processador|Add8~2_combout\ : std_logic;
SIGNAL \processador|Mux22~0_combout\ : std_logic;
SIGNAL \processador|Mux22~1_combout\ : std_logic;
SIGNAL \processador|Mux22~2_combout\ : std_logic;
SIGNAL \processador|Mux22~3_combout\ : std_logic;
SIGNAL \processador|Mux22~4_combout\ : std_logic;
SIGNAL \processador|Mux22~5_combout\ : std_logic;
SIGNAL \processador|Mux22~6_combout\ : std_logic;
SIGNAL \processador|registers~31_combout\ : std_logic;
SIGNAL \processador|registers~32_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~q\ : std_logic;
SIGNAL \processador|Mux14~0_combout\ : std_logic;
SIGNAL \processador|Mux14~1_combout\ : std_logic;
SIGNAL \processador|Add2~3\ : std_logic;
SIGNAL \processador|Add2~5\ : std_logic;
SIGNAL \processador|Add2~7\ : std_logic;
SIGNAL \processador|Add2~9\ : std_logic;
SIGNAL \processador|Add2~10_combout\ : std_logic;
SIGNAL \processador|Add4~10_combout\ : std_logic;
SIGNAL \processador|Add5~10_combout\ : std_logic;
SIGNAL \processador|Add7~10_combout\ : std_logic;
SIGNAL \processador|Add8~10_combout\ : std_logic;
SIGNAL \processador|Add6~10_combout\ : std_logic;
SIGNAL \processador|Mux18~0_combout\ : std_logic;
SIGNAL \processador|Mux18~1_combout\ : std_logic;
SIGNAL \processador|Mux18~2_combout\ : std_logic;
SIGNAL \processador|Mux18~3_combout\ : std_logic;
SIGNAL \processador|Mux18~4_combout\ : std_logic;
SIGNAL \processador|Mux18~5_combout\ : std_logic;
SIGNAL \processador|Mux18~6_combout\ : std_logic;
SIGNAL \processador|Mux18~7_combout\ : std_logic;
SIGNAL \processador|registers~51_combout\ : std_logic;
SIGNAL \processador|registers~52_combout\ : std_logic;
SIGNAL \processador|registers[2][2]~q\ : std_logic;
SIGNAL \processador|Mux10~0_combout\ : std_logic;
SIGNAL \processador|Mux10~1_combout\ : std_logic;
SIGNAL \processador|address~17_combout\ : std_logic;
SIGNAL \processador|address~18_combout\ : std_logic;
SIGNAL \processador|Add0~17_combout\ : std_logic;
SIGNAL \processador|address[2]~reg0_q\ : std_logic;
SIGNAL \processador|command~3_combout\ : std_logic;
SIGNAL \processador|command[6]~2_combout\ : std_logic;
SIGNAL \processador|reg1~0_combout\ : std_logic;
SIGNAL \processador|registers[1][3]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][3]~q\ : std_logic;
SIGNAL \processador|Mux11~0_combout\ : std_logic;
SIGNAL \processador|Mux11~1_combout\ : std_logic;
SIGNAL \processador|registers~46_combout\ : std_logic;
SIGNAL \processador|registers~47_combout\ : std_logic;
SIGNAL \processador|registers[2][3]~q\ : std_logic;
SIGNAL \processador|Mux2~0_combout\ : std_logic;
SIGNAL \processador|Mux2~1_combout\ : std_logic;
SIGNAL \processador|regI~8_combout\ : std_logic;
SIGNAL \processador|Add2~8_combout\ : std_logic;
SIGNAL \processador|Add4~8_combout\ : std_logic;
SIGNAL \processador|Mux19~2_combout\ : std_logic;
SIGNAL \processador|regI~9_combout\ : std_logic;
SIGNAL \processador|Add7~8_combout\ : std_logic;
SIGNAL \processador|Add5~8_combout\ : std_logic;
SIGNAL \processador|Add8~8_combout\ : std_logic;
SIGNAL \processador|Add6~8_combout\ : std_logic;
SIGNAL \processador|Mux19~0_combout\ : std_logic;
SIGNAL \processador|Mux19~1_combout\ : std_logic;
SIGNAL \processador|Mux19~3_combout\ : std_logic;
SIGNAL \processador|Mux19~4_combout\ : std_logic;
SIGNAL \processador|Mux19~5_combout\ : std_logic;
SIGNAL \processador|Mux19~6_combout\ : std_logic;
SIGNAL \processador|address~15_combout\ : std_logic;
SIGNAL \processador|address~16_combout\ : std_logic;
SIGNAL \processador|Add0~14_combout\ : std_logic;
SIGNAL \processador|address[3]~reg0_q\ : std_logic;
SIGNAL \processador|command~5_combout\ : std_logic;
SIGNAL \processador|iinstruction~0_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~10_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~9_combout\ : std_logic;
SIGNAL \processador|registers[2][6]~11_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~16_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~14_combout\ : std_logic;
SIGNAL \processador|registers[0][3]~17_combout\ : std_logic;
SIGNAL \processador|registers[0][4]~q\ : std_logic;
SIGNAL \processador|registers[1][4]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][4]~q\ : std_logic;
SIGNAL \processador|Mux3~0_combout\ : std_logic;
SIGNAL \processador|Mux3~1_combout\ : std_logic;
SIGNAL \processador|registers~40_combout\ : std_logic;
SIGNAL \processador|regI~6_combout\ : std_logic;
SIGNAL \processador|regI~7_combout\ : std_logic;
SIGNAL \processador|Add2~6_combout\ : std_logic;
SIGNAL \processador|Add4~6_combout\ : std_logic;
SIGNAL \processador|Add7~6_combout\ : std_logic;
SIGNAL \processador|Add5~6_combout\ : std_logic;
SIGNAL \processador|Add8~6_combout\ : std_logic;
SIGNAL \processador|Add6~6_combout\ : std_logic;
SIGNAL \processador|Mux20~0_combout\ : std_logic;
SIGNAL \processador|Mux20~1_combout\ : std_logic;
SIGNAL \processador|Mux20~2_combout\ : std_logic;
SIGNAL \processador|Mux20~3_combout\ : std_logic;
SIGNAL \processador|Mux20~4_combout\ : std_logic;
SIGNAL \processador|Mux20~5_combout\ : std_logic;
SIGNAL \processador|Mux20~6_combout\ : std_logic;
SIGNAL \processador|Mux20~7_combout\ : std_logic;
SIGNAL \processador|registers~41_combout\ : std_logic;
SIGNAL \processador|registers~42_combout\ : std_logic;
SIGNAL \processador|registers[2][4]~q\ : std_logic;
SIGNAL \processador|Mux12~0_combout\ : std_logic;
SIGNAL \processador|Mux12~1_combout\ : std_logic;
SIGNAL \processador|address~13_combout\ : std_logic;
SIGNAL \processador|address~14_combout\ : std_logic;
SIGNAL \processador|Add0~11_combout\ : std_logic;
SIGNAL \processador|address[4]~reg0_q\ : std_logic;
SIGNAL \processador|command~10_combout\ : std_logic;
SIGNAL \processador|reg2~2_combout\ : std_logic;
SIGNAL \processador|registers~33_combout\ : std_logic;
SIGNAL \processador|registers~34_combout\ : std_logic;
SIGNAL \processador|registers[0][5]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[0][5]~q\ : std_logic;
SIGNAL \processador|registers[1][5]~feeder_combout\ : std_logic;
SIGNAL \processador|registers[1][5]~q\ : std_logic;
SIGNAL \processador|Mux4~0_combout\ : std_logic;
SIGNAL \processador|Mux4~1_combout\ : std_logic;
SIGNAL \processador|registers~35_combout\ : std_logic;
SIGNAL \processador|regI~4_combout\ : std_logic;
SIGNAL \processador|regI~5_combout\ : std_logic;
SIGNAL \processador|Add2~4_combout\ : std_logic;
SIGNAL \processador|Add4~4_combout\ : std_logic;
SIGNAL \processador|Add7~4_combout\ : std_logic;
SIGNAL \processador|Add5~4_combout\ : std_logic;
SIGNAL \processador|Add6~4_combout\ : std_logic;
SIGNAL \processador|Add8~4_combout\ : std_logic;
SIGNAL \processador|Mux21~0_combout\ : std_logic;
SIGNAL \processador|Mux21~1_combout\ : std_logic;
SIGNAL \processador|Mux21~2_combout\ : std_logic;
SIGNAL \processador|Mux21~3_combout\ : std_logic;
SIGNAL \processador|Mux21~4_combout\ : std_logic;
SIGNAL \processador|Mux21~5_combout\ : std_logic;
SIGNAL \processador|Mux21~6_combout\ : std_logic;
SIGNAL \processador|registers~36_combout\ : std_logic;
SIGNAL \processador|registers~37_combout\ : std_logic;
SIGNAL \processador|registers[2][5]~q\ : std_logic;
SIGNAL \processador|Mux13~0_combout\ : std_logic;
SIGNAL \processador|Mux13~1_combout\ : std_logic;
SIGNAL \processador|address~11_combout\ : std_logic;
SIGNAL \processador|address~12_combout\ : std_logic;
SIGNAL \processador|Add0~8_combout\ : std_logic;
SIGNAL \processador|address[5]~reg0_q\ : std_logic;
SIGNAL \processador|command~8_combout\ : std_logic;
SIGNAL \processador|iinstruction~2_combout\ : std_logic;
SIGNAL \processador|Mux69~0_combout\ : std_logic;
SIGNAL \processador|Mux69~1_combout\ : std_logic;
SIGNAL \processador|state.MEM~q\ : std_logic;
SIGNAL \processador|state~20_combout\ : std_logic;
SIGNAL \processador|reseted~1_combout\ : std_logic;
SIGNAL \processador|state~17_combout\ : std_logic;
SIGNAL \processador|command~0_combout\ : std_logic;
SIGNAL \processador|state~18_combout\ : std_logic;
SIGNAL \processador|state~19_combout\ : std_logic;
SIGNAL \processador|state~21_combout\ : std_logic;
SIGNAL \processador|state.OP~q\ : std_logic;
SIGNAL \processador|output[0]~4_combout\ : std_logic;
SIGNAL \processador|flags~9_combout\ : std_logic;
SIGNAL \processador|flags~6_combout\ : std_logic;
SIGNAL \processador|flags~4_combout\ : std_logic;
SIGNAL \processador|flags~3_combout\ : std_logic;
SIGNAL \processador|flags~5_combout\ : std_logic;
SIGNAL \processador|flags~7_combout\ : std_logic;
SIGNAL \processador|flags~8_combout\ : std_logic;
SIGNAL \processador|flags~10_combout\ : std_logic;
SIGNAL \processador|flags~11_combout\ : std_logic;
SIGNAL \processador|flags~12_combout\ : std_logic;
SIGNAL \processador|flags~13_combout\ : std_logic;
SIGNAL \processador|flags~14_combout\ : std_logic;
SIGNAL \processador|flags~16_combout\ : std_logic;
SIGNAL \processador|output[0]~5_combout\ : std_logic;
SIGNAL \processador|flags~15_combout\ : std_logic;
SIGNAL \processador|address[0]~3_combout\ : std_logic;
SIGNAL \processador|address[0]~4_combout\ : std_logic;
SIGNAL \processador|address[0]~5_combout\ : std_logic;
SIGNAL \processador|address[0]~6_combout\ : std_logic;
SIGNAL \processador|address~9_combout\ : std_logic;
SIGNAL \processador|address~10_combout\ : std_logic;
SIGNAL \processador|Add0~5_combout\ : std_logic;
SIGNAL \processador|address[6]~reg0_q\ : std_logic;
SIGNAL \processador|command~6_combout\ : std_logic;
SIGNAL \processador|LessThan1~0_combout\ : std_logic;
SIGNAL \processador|address[0]~0_combout\ : std_logic;
SIGNAL \processador|address[0]~1_combout\ : std_logic;
SIGNAL \processador|address[0]~2_combout\ : std_logic;
SIGNAL \processador|address~7_combout\ : std_logic;
SIGNAL \processador|address~8_combout\ : std_logic;
SIGNAL \processador|Add0~2_combout\ : std_logic;
SIGNAL \processador|address[7]~reg0_q\ : std_logic;
SIGNAL \processador|command~1_combout\ : std_logic;
SIGNAL \processador|m_w[4]~0_combout\ : std_logic;
SIGNAL \processador|command~7_combout\ : std_logic;
SIGNAL \processador|op_type~1_combout\ : std_logic;
SIGNAL \processador|state~23_combout\ : std_logic;
SIGNAL \processador|state~24_combout\ : std_logic;
SIGNAL \processador|mem_step~0_combout\ : std_logic;
SIGNAL \processador|mem_step~1_combout\ : std_logic;
SIGNAL \processador|mem_step~2_combout\ : std_logic;
SIGNAL \processador|mem_step~q\ : std_logic;
SIGNAL \processador|state~22_combout\ : std_logic;
SIGNAL \processador|state~25_combout\ : std_logic;
SIGNAL \processador|state~26_combout\ : std_logic;
SIGNAL \processador|state.RINST~q\ : std_logic;
SIGNAL \processador|state.IDLE~q\ : std_logic;
SIGNAL \processador|state~16_combout\ : std_logic;
SIGNAL \processador|stmem~0_combout\ : std_logic;
SIGNAL \processador|stmem~1_combout\ : std_logic;
SIGNAL \processador|stmem~q\ : std_logic;
SIGNAL \processador|command~4_combout\ : std_logic;
SIGNAL \processador|reg1~1_combout\ : std_logic;
SIGNAL \processador|Mux15~0_combout\ : std_logic;
SIGNAL \processador|Mux15~1_combout\ : std_logic;
SIGNAL \processador|output[0]~feeder_combout\ : std_logic;
SIGNAL \processador|output[0]~6_combout\ : std_logic;
SIGNAL \processador|output[1]~feeder_combout\ : std_logic;
SIGNAL \processador|output[2]~feeder_combout\ : std_logic;
SIGNAL \processador|output[3]~feeder_combout\ : std_logic;
SIGNAL \processador|output[4]~feeder_combout\ : std_logic;
SIGNAL \processador|output[5]~feeder_combout\ : std_logic;
SIGNAL \processador|output[6]~feeder_combout\ : std_logic;
SIGNAL \processador|output[7]~feeder_combout\ : std_logic;
SIGNAL \processador|op_type\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \memoria|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|flags\ : std_logic_vector(0 TO 3);
SIGNAL \processador|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|reg1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \processador|iinstruction\ : std_logic_vector(0 TO 3);
SIGNAL \processador|command\ : std_logic_vector(0 TO 15);
SIGNAL \processador|reg2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \processador|int\ : std_logic_vector(0 TO 7);
SIGNAL \processador|regI\ : std_logic_vector(0 TO 7);
SIGNAL \processador|m_w\ : std_logic_vector(0 TO 7);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \processador|ALT_INV_state.OP~q\ : std_logic;
SIGNAL \processador|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \processador|ALT_INV_state.RESET~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_button <= button;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \processador|m_w\(0) & \processador|m_w\(1) & \processador|m_w\(2) & \processador|m_w\(3) & 
\processador|m_w\(4) & \processador|m_w\(5) & \processador|m_w\(6) & \processador|m_w\(7));

\memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\processador|address[0]~reg0_q\ & \processador|address[1]~reg0_q\ & \processador|address[2]~reg0_q\ & \processador|address[3]~reg0_q\ & \processador|address[4]~reg0_q\ & 
\processador|address[5]~reg0_q\ & \processador|address[6]~reg0_q\ & \processador|address[7]~reg0_q\);

\memoria|altsyncram_component|auto_generated|q_a\(0) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memoria|altsyncram_component|auto_generated|q_a\(1) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memoria|altsyncram_component|auto_generated|q_a\(2) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memoria|altsyncram_component|auto_generated|q_a\(3) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memoria|altsyncram_component|auto_generated|q_a\(4) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memoria|altsyncram_component|auto_generated|q_a\(5) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memoria|altsyncram_component|auto_generated|q_a\(6) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memoria|altsyncram_component|auto_generated|q_a\(7) <= \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\processador|ALT_INV_state.OP~q\ <= NOT \processador|state.OP~q\;
\processador|ALT_INV_process_0~0_combout\ <= NOT \processador|process_0~0_combout\;
\processador|ALT_INV_state.RESET~q\ <= NOT \processador|state.RESET~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|output\(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X115_Y53_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X80_Y51_N20
\processador|state.RESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state.RESET~0_combout\ = (\processador|state.RESET~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|state.RESET~q\,
	datad => \reset~input_o\,
	combout => \processador|state.RESET~0_combout\);

-- Location: LCCOMB_X80_Y51_N18
\processador|reseted~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reseted~0_combout\ = (\processador|reseted~q\) # ((\reset~input_o\ & !\processador|state.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \processador|reseted~q\,
	datad => \processador|state.RESET~q\,
	combout => \processador|reseted~0_combout\);

-- Location: FF_X80_Y51_N19
\processador|reseted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|reseted~0_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|reseted~q\);

-- Location: LCCOMB_X80_Y51_N28
\processador|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|process_0~0_combout\ = (!\reset~input_o\ & \processador|reseted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \processador|reseted~q\,
	combout => \processador|process_0~0_combout\);

-- Location: FF_X80_Y51_N21
\processador|state.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|state.RESET~0_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|state.RESET~q\);

-- Location: LCCOMB_X81_Y52_N16
\processador|m_w[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|m_w[7]~feeder_combout\ = \processador|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|Mux15~1_combout\,
	combout => \processador|m_w[7]~feeder_combout\);

-- Location: LCCOMB_X76_Y51_N16
\processador|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~0_combout\ = \processador|address[7]~reg0_q\ $ (VCC)
-- \processador|Add0~1\ = CARRY(\processador|address[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[7]~reg0_q\,
	datad => VCC,
	combout => \processador|Add0~0_combout\,
	cout => \processador|Add0~1\);

-- Location: LCCOMB_X76_Y51_N18
\processador|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~3_combout\ = (\processador|address[6]~reg0_q\ & (!\processador|Add0~1\)) # (!\processador|address[6]~reg0_q\ & ((\processador|Add0~1\) # (GND)))
-- \processador|Add0~4\ = CARRY((!\processador|Add0~1\) # (!\processador|address[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|address[6]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~1\,
	combout => \processador|Add0~3_combout\,
	cout => \processador|Add0~4\);

-- Location: IOIBUF_X115_Y40_N8
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X79_Y48_N28
\processador|var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|var~0_combout\ = (!\processador|process_0~0_combout\ & (\processador|state.OP~q\ & (!\button~input_o\ & \processador|op_type\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|process_0~0_combout\,
	datab => \processador|state.OP~q\,
	datac => \button~input_o\,
	datad => \processador|op_type\(1),
	combout => \processador|var~0_combout\);

-- Location: LCCOMB_X79_Y48_N18
\processador|var~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|var~1_combout\ = (\processador|var~0_combout\) # ((\processador|var~q\ & ((\processador|process_0~0_combout\) # (!\button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \processador|var~0_combout\,
	datac => \processador|var~q\,
	datad => \processador|process_0~0_combout\,
	combout => \processador|var~1_combout\);

-- Location: FF_X79_Y48_N19
\processador|var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|var~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|var~q\);

-- Location: LCCOMB_X79_Y48_N26
\processador|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|process_0~1_combout\ = (\processador|var~q\) # (\button~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|var~q\,
	datac => \button~input_o\,
	combout => \processador|process_0~1_combout\);

-- Location: LCCOMB_X76_Y51_N20
\processador|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~6_combout\ = (\processador|address[5]~reg0_q\ & (\processador|Add0~4\ $ (GND))) # (!\processador|address[5]~reg0_q\ & (!\processador|Add0~4\ & VCC))
-- \processador|Add0~7\ = CARRY((\processador|address[5]~reg0_q\ & !\processador|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|address[5]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~4\,
	combout => \processador|Add0~6_combout\,
	cout => \processador|Add0~7\);

-- Location: IOIBUF_X115_Y15_N8
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X82_Y51_N22
\processador|command[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command[14]~9_combout\ = ((\processador|state.RINST~q\ & \processador|mem_step~q\)) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datac => \processador|state.RINST~q\,
	datad => \processador|mem_step~q\,
	combout => \processador|command[14]~9_combout\);

-- Location: FF_X79_Y51_N7
\processador|command[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~4_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(13));

-- Location: LCCOMB_X80_Y51_N26
\processador|op_type[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|op_type[0]~0_combout\ = (\processador|state.IDLE~q\ & ((\reset~input_o\) # (!\processador|reseted~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reseted~q\,
	datab => \reset~input_o\,
	datad => \processador|state.IDLE~q\,
	combout => \processador|op_type[0]~0_combout\);

-- Location: FF_X81_Y48_N5
\processador|int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(13),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(5));

-- Location: LCCOMB_X76_Y51_N22
\processador|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~9_combout\ = (\processador|address[4]~reg0_q\ & (!\processador|Add0~7\)) # (!\processador|address[4]~reg0_q\ & ((\processador|Add0~7\) # (GND)))
-- \processador|Add0~10\ = CARRY((!\processador|Add0~7\) # (!\processador|address[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[4]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~7\,
	combout => \processador|Add0~9_combout\,
	cout => \processador|Add0~10\);

-- Location: IOIBUF_X115_Y13_N8
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X79_Y51_N12
\processador|iinstruction~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|iinstruction~1_combout\ = (\processador|state.RESET~q\ & \processador|command\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \processador|command\(3),
	combout => \processador|iinstruction~1_combout\);

-- Location: LCCOMB_X79_Y51_N14
\processador|reg2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reg2[1]~0_combout\ = (\processador|state.IDLE~q\) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|state.IDLE~q\,
	datad => \processador|state.RESET~q\,
	combout => \processador|reg2[1]~0_combout\);

-- Location: FF_X79_Y51_N13
\processador|iinstruction[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|iinstruction~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|iinstruction\(3));

-- Location: LCCOMB_X80_Y50_N30
\processador|registers[0][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~1_combout\ = (\processador|op_type\(1)) # (\processador|iinstruction\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|op_type\(1),
	datad => \processador|iinstruction\(3),
	combout => \processador|registers[0][3]~1_combout\);

-- Location: LCCOMB_X79_Y52_N18
\processador|iinstruction~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|iinstruction~3_combout\ = (\processador|state.RESET~q\ & \processador|command\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \processador|command\(0),
	combout => \processador|iinstruction~3_combout\);

-- Location: FF_X79_Y52_N19
\processador|iinstruction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|iinstruction~3_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|iinstruction\(0));

-- Location: LCCOMB_X79_Y51_N20
\processador|registers[0][3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~0_combout\ = (!\processador|op_type\(1) & (((\processador|iinstruction\(0)) # (\processador|iinstruction\(3))) # (!\processador|command\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|op_type\(1),
	datac => \processador|iinstruction\(0),
	datad => \processador|iinstruction\(3),
	combout => \processador|registers[0][3]~0_combout\);

-- Location: FF_X79_Y51_N3
\processador|command[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(12));

-- Location: FF_X81_Y48_N7
\processador|int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(12),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(4));

-- Location: LCCOMB_X82_Y49_N8
\processador|registers~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~38_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|registers[0][3]~1_combout\) # ((\processador|Mux3~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & (!\processador|registers[0][3]~1_combout\ & 
-- (\processador|int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \processador|registers[0][3]~1_combout\,
	datac => \processador|int\(4),
	datad => \processador|Mux3~1_combout\,
	combout => \processador|registers~38_combout\);

-- Location: LCCOMB_X82_Y49_N2
\processador|registers~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~39_combout\ = (\processador|registers[0][3]~1_combout\ & ((\processador|registers~38_combout\ & (\processador|Mux12~1_combout\)) # (!\processador|registers~38_combout\ & ((\input[3]~input_o\))))) # 
-- (!\processador|registers[0][3]~1_combout\ & (((\processador|registers~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|registers[0][3]~1_combout\,
	datac => \processador|registers~38_combout\,
	datad => \input[3]~input_o\,
	combout => \processador|registers~39_combout\);

-- Location: LCCOMB_X79_Y49_N26
\processador|registers[0][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][4]~feeder_combout\ = \processador|registers~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~39_combout\,
	combout => \processador|registers[0][4]~feeder_combout\);

-- Location: FF_X79_Y51_N17
\processador|command[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~7_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(8));

-- Location: LCCOMB_X80_Y48_N4
\processador|reg2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reg2~1_combout\ = (\processador|command\(8) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|command\(8),
	datad => \processador|state.RESET~q\,
	combout => \processador|reg2~1_combout\);

-- Location: FF_X80_Y48_N5
\processador|reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|reg2~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|reg2\(0));

-- Location: LCCOMB_X79_Y52_N6
\processador|registers[0][3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~15_combout\ = (\processador|iinstruction\(3) & ((\processador|command\(4)) # ((\processador|reg2\(1)) # (\processador|reg2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|iinstruction\(3),
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|registers[0][3]~15_combout\);

-- Location: LCCOMB_X79_Y48_N8
\processador|registers[2][6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~7_combout\ = (\processador|op_type\(1) & ((\button~input_o\) # ((\processador|var~q\) # (\processador|op_type\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datab => \processador|var~q\,
	datac => \processador|op_type\(0),
	datad => \processador|op_type\(1),
	combout => \processador|registers[2][6]~7_combout\);

-- Location: LCCOMB_X76_Y51_N24
\processador|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~12_combout\ = (\processador|address[3]~reg0_q\ & (\processador|Add0~10\ $ (GND))) # (!\processador|address[3]~reg0_q\ & (!\processador|Add0~10\ & VCC))
-- \processador|Add0~13\ = CARRY((\processador|address[3]~reg0_q\ & !\processador|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|address[3]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~10\,
	combout => \processador|Add0~12_combout\,
	cout => \processador|Add0~13\);

-- Location: LCCOMB_X81_Y52_N18
\processador|Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~10_combout\ = ((\processador|iinstruction\(3) & ((\processador|iinstruction\(1)) # (!\processador|iinstruction\(2)))) # (!\processador|iinstruction\(3) & ((\processador|iinstruction\(2)) # (!\processador|iinstruction\(1))))) # 
-- (!\processador|command\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(1),
	datad => \processador|command\(4),
	combout => \processador|Mux23~10_combout\);

-- Location: LCCOMB_X82_Y50_N6
\processador|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan7~1_combout\ = (!\processador|iinstruction\(3) & !\processador|iinstruction\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(2),
	combout => \processador|LessThan7~1_combout\);

-- Location: LCCOMB_X81_Y52_N4
\processador|Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~11_combout\ = (\processador|iinstruction\(0) & (\processador|Mux23~10_combout\)) # (!\processador|iinstruction\(0) & (((\processador|iinstruction\(1) & !\processador|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(0),
	datab => \processador|Mux23~10_combout\,
	datac => \processador|iinstruction\(1),
	datad => \processador|LessThan7~1_combout\,
	combout => \processador|Mux23~11_combout\);

-- Location: LCCOMB_X82_Y51_N20
\processador|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~0_combout\ = (\processador|iinstruction\(1)) # (\processador|iinstruction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|iinstruction\(1),
	datad => \processador|iinstruction\(0),
	combout => \processador|Mux23~0_combout\);

-- Location: FF_X79_Y51_N9
\processador|command[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~6_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(11));

-- Location: FF_X81_Y48_N9
\processador|int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(11),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(3));

-- Location: LCCOMB_X80_Y52_N6
\processador|registers[2][6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~18_combout\ = (\processador|iinstruction\(3)) # ((!\processador|iinstruction\(0) & ((!\processador|iinstruction\(2)) # (!\processador|iinstruction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(0),
	combout => \processador|registers[2][6]~18_combout\);

-- Location: LCCOMB_X81_Y52_N6
\processador|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan7~0_combout\ = (!\processador|iinstruction\(0) & (((!\processador|iinstruction\(3) & !\processador|iinstruction\(2))) # (!\processador|iinstruction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(1),
	datad => \processador|iinstruction\(0),
	combout => \processador|LessThan7~0_combout\);

-- Location: LCCOMB_X81_Y52_N24
\processador|registers[2][6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~19_combout\ = (\processador|LessThan7~0_combout\) # ((!\processador|iinstruction\(3) & ((\processador|iinstruction\(0)) # (!\processador|command\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|command\(4),
	datac => \processador|LessThan7~0_combout\,
	datad => \processador|iinstruction\(0),
	combout => \processador|registers[2][6]~19_combout\);

-- Location: LCCOMB_X77_Y50_N2
\processador|registers~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~45_combout\ = (\processador|registers[2][6]~18_combout\ & (((\processador|registers[2][6]~19_combout\)))) # (!\processador|registers[2][6]~18_combout\ & ((\processador|registers[2][6]~19_combout\ & (\processador|Mux2~1_combout\)) # 
-- (!\processador|registers[2][6]~19_combout\ & ((\processador|int\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|int\(3),
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|registers[2][6]~19_combout\,
	combout => \processador|registers~45_combout\);

-- Location: IOIBUF_X115_Y18_N8
\input[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X82_Y49_N16
\processador|registers~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~43_combout\ = (\processador|registers[0][3]~0_combout\ & (((\processador|registers[0][3]~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & ((\processador|registers[0][3]~1_combout\ & (\input[4]~input_o\)) # 
-- (!\processador|registers[0][3]~1_combout\ & ((\processador|int\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \input[4]~input_o\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|int\(3),
	combout => \processador|registers~43_combout\);

-- Location: LCCOMB_X82_Y49_N26
\processador|registers~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~44_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|registers~43_combout\ & ((\processador|Mux11~1_combout\))) # (!\processador|registers~43_combout\ & (\processador|Mux2~1_combout\)))) # 
-- (!\processador|registers[0][3]~0_combout\ & (((\processador|registers~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|Mux11~1_combout\,
	datac => \processador|registers[0][3]~0_combout\,
	datad => \processador|registers~43_combout\,
	combout => \processador|registers~44_combout\);

-- Location: LCCOMB_X79_Y49_N0
\processador|registers[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~feeder_combout\ = \processador|registers~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~44_combout\,
	combout => \processador|registers[0][3]~feeder_combout\);

-- Location: FF_X79_Y49_N1
\processador|registers[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][3]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(4),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][3]~q\);

-- Location: LCCOMB_X76_Y51_N26
\processador|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~15_combout\ = (\processador|address[2]~reg0_q\ & (!\processador|Add0~13\)) # (!\processador|address[2]~reg0_q\ & ((\processador|Add0~13\) # (GND)))
-- \processador|Add0~16\ = CARRY((!\processador|Add0~13\) # (!\processador|address[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|address[2]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~13\,
	combout => \processador|Add0~15_combout\,
	cout => \processador|Add0~16\);

-- Location: IOIBUF_X115_Y11_N8
\input[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X79_Y51_N27
\processador|command[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~5_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(10));

-- Location: FF_X81_Y48_N11
\processador|int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(10),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(2));

-- Location: LCCOMB_X82_Y49_N24
\processador|registers~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~48_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|Mux1~1_combout\) # ((\processador|registers[0][3]~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & (((!\processador|registers[0][3]~1_combout\ & 
-- \processador|int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \processador|Mux1~1_combout\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|int\(2),
	combout => \processador|registers~48_combout\);

-- Location: LCCOMB_X82_Y49_N6
\processador|registers~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~49_combout\ = (\processador|registers~48_combout\ & ((\processador|Mux10~1_combout\) # ((!\processador|registers[0][3]~1_combout\)))) # (!\processador|registers~48_combout\ & (((\processador|registers[0][3]~1_combout\ & 
-- \input[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|registers~48_combout\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \input[5]~input_o\,
	combout => \processador|registers~49_combout\);

-- Location: LCCOMB_X80_Y49_N14
\processador|registers[1][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][2]~feeder_combout\ = \processador|registers~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~49_combout\,
	combout => \processador|registers[1][2]~feeder_combout\);

-- Location: LCCOMB_X79_Y52_N10
\processador|registers[1][4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][4]~8_combout\ = (\processador|iinstruction\(3) & ((\processador|command\(4)) # ((\processador|reg2\(1)) # (!\processador|reg2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|iinstruction\(3),
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|registers[1][4]~8_combout\);

-- Location: LCCOMB_X79_Y52_N0
\processador|registers[1][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][4]~12_combout\ = (\processador|registers[2][6]~7_combout\) # ((!\processador|op_type\(1) & ((\processador|registers[1][4]~8_combout\) # (!\processador|registers[2][6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][4]~8_combout\,
	datab => \processador|registers[2][6]~7_combout\,
	datac => \processador|op_type\(1),
	datad => \processador|registers[2][6]~11_combout\,
	combout => \processador|registers[1][4]~12_combout\);

-- Location: LCCOMB_X80_Y52_N14
\processador|registers[2][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~4_combout\ = ((\processador|iinstruction\(2)) # ((\processador|iinstruction\(3)) # (!\processador|iinstruction\(0)))) # (!\processador|iinstruction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(0),
	combout => \processador|registers[2][6]~4_combout\);

-- Location: LCCOMB_X80_Y52_N20
\processador|registers[2][6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~5_combout\ = (\processador|state~16_combout\ & ((\processador|state.OP~q\) # ((\processador|state.MEM~q\ & !\processador|registers[2][6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.MEM~q\,
	datab => \processador|registers[2][6]~4_combout\,
	datac => \processador|state~16_combout\,
	datad => \processador|state.OP~q\,
	combout => \processador|registers[2][6]~5_combout\);

-- Location: LCCOMB_X80_Y52_N24
\processador|flags~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~2_combout\ = (\processador|iinstruction\(3) & (!\processador|op_type\(1) & \processador|state.OP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datac => \processador|op_type\(1),
	datad => \processador|state.OP~q\,
	combout => \processador|flags~2_combout\);

-- Location: LCCOMB_X80_Y52_N18
\processador|registers[1][4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][4]~6_combout\ = ((!\processador|flags~2_combout\ & ((\processador|reg1\(1)) # (!\processador|reg1\(0))))) # (!\processador|registers[2][6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg1\(0),
	datab => \processador|registers[2][6]~5_combout\,
	datac => \processador|reg1\(1),
	datad => \processador|flags~2_combout\,
	combout => \processador|registers[1][4]~6_combout\);

-- Location: LCCOMB_X79_Y49_N6
\processador|registers[1][4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][4]~13_combout\ = ((!\processador|registers[1][4]~6_combout\ & ((!\processador|registers[1][4]~12_combout\) # (!\processador|state.OP~q\)))) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.OP~q\,
	datab => \processador|state.RESET~q\,
	datac => \processador|registers[1][4]~12_combout\,
	datad => \processador|registers[1][4]~6_combout\,
	combout => \processador|registers[1][4]~13_combout\);

-- Location: FF_X80_Y49_N15
\processador|registers[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][2]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(5),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][2]~q\);

-- Location: LCCOMB_X79_Y49_N18
\processador|registers[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][2]~feeder_combout\ = \processador|registers~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~49_combout\,
	combout => \processador|registers[0][2]~feeder_combout\);

-- Location: FF_X79_Y49_N19
\processador|registers[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][2]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(5),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][2]~q\);

-- Location: LCCOMB_X80_Y49_N24
\processador|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux1~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & (\processador|registers[1][2]~q\)) # (!\processador|reg2\(0) & ((\processador|registers[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][2]~q\,
	datab => \processador|registers[0][2]~q\,
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y49_N14
\processador|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux1~1_combout\ = (\processador|Mux1~0_combout\) # ((\processador|registers[2][2]~q\ & \processador|reg2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][2]~q\,
	datab => \processador|Mux1~0_combout\,
	datad => \processador|reg2\(1),
	combout => \processador|Mux1~1_combout\);

-- Location: LCCOMB_X81_Y51_N8
\processador|registers~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~50_combout\ = (\processador|registers[2][6]~19_combout\ & (((\processador|registers[2][6]~18_combout\)))) # (!\processador|registers[2][6]~19_combout\ & ((\processador|registers[2][6]~18_combout\ & ((\processador|Mux10~1_combout\))) 
-- # (!\processador|registers[2][6]~18_combout\ & (\processador|int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|Mux10~1_combout\,
	combout => \processador|registers~50_combout\);

-- Location: LCCOMB_X80_Y51_N22
\processador|output[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[0]~7_combout\ = (\processador|state.RESET~q\ & (\processador|output[0]~4_combout\ & ((\reset~input_o\) # (!\processador|reseted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reseted~q\,
	datab => \processador|state.RESET~q\,
	datac => \reset~input_o\,
	datad => \processador|output[0]~4_combout\,
	combout => \processador|output[0]~7_combout\);

-- Location: FF_X82_Y48_N5
\processador|regI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux18~7_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(2));

-- Location: LCCOMB_X82_Y51_N30
\processador|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~1_combout\ = (\processador|iinstruction\(0)) # ((!\processador|iinstruction\(1) & (\processador|iinstruction\(3) & \processador|iinstruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|iinstruction\(0),
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(2),
	combout => \processador|Mux23~1_combout\);

-- Location: LCCOMB_X82_Y49_N28
\processador|regI~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~10_combout\ = (\processador|Mux10~1_combout\) # ((\processador|command\(4) & ((\processador|int\(2)))) # (!\processador|command\(4) & (\processador|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|Mux1~1_combout\,
	datac => \processador|command\(4),
	datad => \processador|int\(2),
	combout => \processador|regI~10_combout\);

-- Location: LCCOMB_X82_Y49_N30
\processador|regI~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~11_combout\ = (\processador|Mux10~1_combout\ & ((\processador|command\(4) & ((\processador|int\(2)))) # (!\processador|command\(4) & (\processador|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|Mux1~1_combout\,
	datac => \processador|command\(4),
	datad => \processador|int\(2),
	combout => \processador|regI~11_combout\);

-- Location: LCCOMB_X82_Y50_N0
\processador|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~2_combout\ = (\processador|iinstruction\(2)) # ((\processador|command\(4) & !\processador|iinstruction\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(3),
	combout => \processador|Mux23~2_combout\);

-- Location: FF_X79_Y51_N5
\processador|command[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~3_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(14));

-- Location: FF_X81_Y48_N3
\processador|int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(14),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(6));

-- Location: IOIBUF_X115_Y14_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X82_Y49_N18
\processador|registers~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~28_combout\ = (\processador|registers[0][3]~0_combout\ & (((\processador|registers[0][3]~1_combout\) # (\processador|Mux5~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & (\processador|int\(6) & 
-- (!\processador|registers[0][3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \processador|int\(6),
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|Mux5~1_combout\,
	combout => \processador|registers~28_combout\);

-- Location: LCCOMB_X82_Y49_N12
\processador|registers~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~29_combout\ = (\processador|registers~28_combout\ & (((\processador|Mux14~1_combout\) # (!\processador|registers[0][3]~1_combout\)))) # (!\processador|registers~28_combout\ & (\input[1]~input_o\ & 
-- (\processador|registers[0][3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \processador|registers~28_combout\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|Mux14~1_combout\,
	combout => \processador|registers~29_combout\);

-- Location: LCCOMB_X80_Y49_N30
\processador|registers[1][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][6]~feeder_combout\ = \processador|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~29_combout\,
	combout => \processador|registers[1][6]~feeder_combout\);

-- Location: FF_X80_Y49_N31
\processador|registers[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][6]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(1),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][6]~q\);

-- Location: LCCOMB_X79_Y49_N30
\processador|registers[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][6]~feeder_combout\ = \processador|registers~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~29_combout\,
	combout => \processador|registers[0][6]~feeder_combout\);

-- Location: FF_X79_Y49_N31
\processador|registers[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][6]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(1),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][6]~q\);

-- Location: LCCOMB_X80_Y48_N16
\processador|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux5~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & (\processador|registers[1][6]~q\)) # (!\processador|reg2\(0) & ((\processador|registers[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][6]~q\,
	datab => \processador|reg2\(0),
	datac => \processador|reg2\(1),
	datad => \processador|registers[0][6]~q\,
	combout => \processador|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y48_N26
\processador|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux5~1_combout\ = (\processador|Mux5~0_combout\) # ((\processador|reg2\(1) & \processador|registers[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datac => \processador|registers[2][6]~q\,
	datad => \processador|Mux5~0_combout\,
	combout => \processador|Mux5~1_combout\);

-- Location: LCCOMB_X77_Y49_N4
\processador|registers~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~30_combout\ = (\processador|registers[2][6]~18_combout\ & (((\processador|Mux14~1_combout\) # (\processador|registers[2][6]~19_combout\)))) # (!\processador|registers[2][6]~18_combout\ & (\processador|int\(6) & 
-- ((!\processador|registers[2][6]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][6]~18_combout\,
	datab => \processador|int\(6),
	datac => \processador|Mux14~1_combout\,
	datad => \processador|registers[2][6]~19_combout\,
	combout => \processador|registers~30_combout\);

-- Location: FF_X77_Y51_N9
\processador|regI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux22~6_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(6));

-- Location: LCCOMB_X77_Y51_N14
\processador|regI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~2_combout\ = (\processador|Mux14~1_combout\) # ((\processador|command\(4) & (\processador|int\(6))) # (!\processador|command\(4) & ((\processador|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|Mux14~1_combout\,
	datac => \processador|int\(6),
	datad => \processador|Mux5~1_combout\,
	combout => \processador|regI~2_combout\);

-- Location: FF_X79_Y51_N1
\processador|command[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~10_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(15));

-- Location: FF_X81_Y48_N1
\processador|int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(15),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(7));

-- Location: LCCOMB_X79_Y50_N8
\processador|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~0_combout\ = (\processador|int\(7) & (\processador|Mux15~1_combout\ $ (VCC))) # (!\processador|int\(7) & (\processador|Mux15~1_combout\ & VCC))
-- \processador|Add2~1\ = CARRY((\processador|int\(7) & \processador|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(7),
	datab => \processador|Mux15~1_combout\,
	datad => VCC,
	combout => \processador|Add2~0_combout\,
	cout => \processador|Add2~1\);

-- Location: LCCOMB_X79_Y50_N10
\processador|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~2_combout\ = (\processador|int\(6) & ((\processador|Mux14~1_combout\ & (\processador|Add2~1\ & VCC)) # (!\processador|Mux14~1_combout\ & (!\processador|Add2~1\)))) # (!\processador|int\(6) & ((\processador|Mux14~1_combout\ & 
-- (!\processador|Add2~1\)) # (!\processador|Mux14~1_combout\ & ((\processador|Add2~1\) # (GND)))))
-- \processador|Add2~3\ = CARRY((\processador|int\(6) & (!\processador|Mux14~1_combout\ & !\processador|Add2~1\)) # (!\processador|int\(6) & ((!\processador|Add2~1\) # (!\processador|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(6),
	datab => \processador|Mux14~1_combout\,
	datad => VCC,
	cin => \processador|Add2~1\,
	combout => \processador|Add2~2_combout\,
	cout => \processador|Add2~3\);

-- Location: LCCOMB_X77_Y51_N18
\processador|regI~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~3_combout\ = (\processador|Mux14~1_combout\ & ((\processador|command\(4) & (\processador|int\(6))) # (!\processador|command\(4) & ((\processador|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|int\(6),
	datac => \processador|Mux14~1_combout\,
	datad => \processador|Mux5~1_combout\,
	combout => \processador|regI~3_combout\);

-- Location: IOIBUF_X115_Y17_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X77_Y49_N24
\processador|registers~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~20_combout\ = (\processador|registers[2][6]~18_combout\ & (((\processador|registers[2][6]~19_combout\)))) # (!\processador|registers[2][6]~18_combout\ & ((\processador|registers[2][6]~19_combout\ & (\processador|Mux6~1_combout\)) # 
-- (!\processador|registers[2][6]~19_combout\ & ((\processador|int\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux6~1_combout\,
	datab => \processador|int\(7),
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|registers[2][6]~19_combout\,
	combout => \processador|registers~20_combout\);

-- Location: FF_X76_Y50_N9
\processador|regI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux23~12_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(7));

-- Location: LCCOMB_X77_Y50_N28
\processador|regI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~0_combout\ = (\processador|Mux15~1_combout\) # ((\processador|command\(4) & ((\processador|int\(7)))) # (!\processador|command\(4) & (\processador|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|Mux6~1_combout\,
	datac => \processador|command\(4),
	datad => \processador|int\(7),
	combout => \processador|regI~0_combout\);

-- Location: LCCOMB_X80_Y50_N6
\processador|regI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~1_combout\ = (\processador|Mux15~1_combout\ & ((\processador|command\(4) & (\processador|int\(7))) # (!\processador|command\(4) & ((\processador|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|command\(4),
	datac => \processador|int\(7),
	datad => \processador|Mux6~1_combout\,
	combout => \processador|regI~1_combout\);

-- Location: LCCOMB_X80_Y51_N0
\processador|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~0_combout\ = (\processador|Mux15~1_combout\ & (\processador|Mux6~1_combout\ $ (VCC))) # (!\processador|Mux15~1_combout\ & (\processador|Mux6~1_combout\ & VCC))
-- \processador|Add4~1\ = CARRY((\processador|Mux15~1_combout\ & \processador|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|Mux6~1_combout\,
	datad => VCC,
	combout => \processador|Add4~0_combout\,
	cout => \processador|Add4~1\);

-- Location: LCCOMB_X81_Y48_N16
\processador|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~0_combout\ = (\processador|Mux15~1_combout\ & (\processador|int\(7) $ (VCC))) # (!\processador|Mux15~1_combout\ & ((\processador|int\(7)) # (GND)))
-- \processador|Add5~1\ = CARRY((\processador|int\(7)) # (!\processador|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|int\(7),
	datad => VCC,
	combout => \processador|Add5~0_combout\,
	cout => \processador|Add5~1\);

-- Location: LCCOMB_X80_Y50_N8
\processador|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~0_combout\ = (\processador|Mux15~1_combout\ & (\processador|Mux6~1_combout\ $ (VCC))) # (!\processador|Mux15~1_combout\ & ((\processador|Mux6~1_combout\) # (GND)))
-- \processador|Add7~1\ = CARRY((\processador|Mux6~1_combout\) # (!\processador|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|Mux6~1_combout\,
	datad => VCC,
	combout => \processador|Add7~0_combout\,
	cout => \processador|Add7~1\);

-- Location: FF_X81_Y48_N15
\processador|int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(8),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(0));

-- Location: IOIBUF_X115_Y15_N1
\input[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X82_Y48_N22
\processador|registers~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~60_combout\ = (\processador|registers[2][6]~18_combout\ & (((\processador|Mux8~1_combout\) # (\processador|registers[2][6]~19_combout\)))) # (!\processador|registers[2][6]~18_combout\ & (\processador|int\(0) & 
-- ((!\processador|registers[2][6]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(0),
	datab => \processador|registers[2][6]~18_combout\,
	datac => \processador|Mux8~1_combout\,
	datad => \processador|registers[2][6]~19_combout\,
	combout => \processador|registers~60_combout\);

-- Location: LCCOMB_X82_Y49_N4
\processador|registers~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~58_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|Mux7~1_combout\) # ((\processador|registers[0][3]~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & (((!\processador|registers[0][3]~1_combout\ & 
-- \processador|int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \processador|Mux7~1_combout\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|int\(0),
	combout => \processador|registers~58_combout\);

-- Location: LCCOMB_X82_Y49_N10
\processador|registers~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~59_combout\ = (\processador|registers~58_combout\ & ((\processador|Mux8~1_combout\) # ((!\processador|registers[0][3]~1_combout\)))) # (!\processador|registers~58_combout\ & (((\processador|registers[0][3]~1_combout\ & 
-- \input[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux8~1_combout\,
	datab => \processador|registers~58_combout\,
	datac => \processador|registers[0][3]~1_combout\,
	datad => \input[7]~input_o\,
	combout => \processador|registers~59_combout\);

-- Location: LCCOMB_X82_Y49_N20
\processador|registers[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][0]~feeder_combout\ = \processador|registers~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~59_combout\,
	combout => \processador|registers[1][0]~feeder_combout\);

-- Location: FF_X82_Y49_N21
\processador|registers[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][0]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(7),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][0]~q\);

-- Location: LCCOMB_X79_Y49_N22
\processador|registers[0][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][0]~feeder_combout\ = \processador|registers~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~59_combout\,
	combout => \processador|registers[0][0]~feeder_combout\);

-- Location: FF_X79_Y49_N23
\processador|registers[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][0]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(7),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][0]~q\);

-- Location: LCCOMB_X79_Y49_N16
\processador|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux7~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & (\processador|registers[1][0]~q\)) # (!\processador|reg2\(0) & ((\processador|registers[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][0]~q\,
	datab => \processador|reg2\(1),
	datac => \processador|registers[0][0]~q\,
	datad => \processador|reg2\(0),
	combout => \processador|Mux7~0_combout\);

-- Location: LCCOMB_X79_Y49_N2
\processador|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux7~1_combout\ = (\processador|Mux7~0_combout\) # ((\processador|registers[2][0]~q\ & \processador|reg2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][0]~q\,
	datab => \processador|reg2\(1),
	datad => \processador|Mux7~0_combout\,
	combout => \processador|Mux7~1_combout\);

-- Location: FF_X82_Y48_N17
\processador|regI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux16~6_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(0));

-- Location: LCCOMB_X76_Y51_N28
\processador|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~18_combout\ = (\processador|address[1]~reg0_q\ & (\processador|Add0~16\ $ (GND))) # (!\processador|address[1]~reg0_q\ & (!\processador|Add0~16\ & VCC))
-- \processador|Add0~19\ = CARRY((\processador|address[1]~reg0_q\ & !\processador|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|address[1]~reg0_q\,
	datad => VCC,
	cin => \processador|Add0~16\,
	combout => \processador|Add0~18_combout\,
	cout => \processador|Add0~19\);

-- Location: FF_X79_Y51_N29
\processador|command[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|command~8_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|command[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(9));

-- Location: FF_X81_Y48_N13
\processador|int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command\(9),
	sload => VCC,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|int\(1));

-- Location: IOIBUF_X115_Y10_N1
\input[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X79_Y48_N24
\processador|registers~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~53_combout\ = (\processador|registers[0][3]~1_combout\ & ((\input[6]~input_o\) # ((\processador|registers[0][3]~0_combout\)))) # (!\processador|registers[0][3]~1_combout\ & (((\processador|int\(1) & 
-- !\processador|registers[0][3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datab => \processador|int\(1),
	datac => \processador|registers[0][3]~1_combout\,
	datad => \processador|registers[0][3]~0_combout\,
	combout => \processador|registers~53_combout\);

-- Location: LCCOMB_X79_Y48_N14
\processador|registers~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~54_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|registers~53_combout\ & ((\processador|Mux9~1_combout\))) # (!\processador|registers~53_combout\ & (\processador|Mux0~1_combout\)))) # 
-- (!\processador|registers[0][3]~0_combout\ & (((\processador|registers~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux0~1_combout\,
	datab => \processador|registers[0][3]~0_combout\,
	datac => \processador|Mux9~1_combout\,
	datad => \processador|registers~53_combout\,
	combout => \processador|registers~54_combout\);

-- Location: LCCOMB_X80_Y49_N20
\processador|registers[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][1]~feeder_combout\ = \processador|registers~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~54_combout\,
	combout => \processador|registers[1][1]~feeder_combout\);

-- Location: FF_X80_Y49_N21
\processador|registers[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][1]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(6),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][1]~q\);

-- Location: LCCOMB_X79_Y49_N4
\processador|registers[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][1]~feeder_combout\ = \processador|registers~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~54_combout\,
	combout => \processador|registers[0][1]~feeder_combout\);

-- Location: FF_X79_Y49_N5
\processador|registers[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][1]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(6),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][1]~q\);

-- Location: LCCOMB_X79_Y49_N28
\processador|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux0~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & (\processador|registers[1][1]~q\)) # (!\processador|reg2\(0) & ((\processador|registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][1]~q\,
	datab => \processador|registers[0][1]~q\,
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|Mux0~0_combout\);

-- Location: LCCOMB_X79_Y49_N10
\processador|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux0~1_combout\ = (\processador|Mux0~0_combout\) # ((\processador|registers[2][1]~q\ & \processador|reg2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][1]~q\,
	datac => \processador|reg2\(1),
	datad => \processador|Mux0~0_combout\,
	combout => \processador|Mux0~1_combout\);

-- Location: LCCOMB_X79_Y48_N20
\processador|registers~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~55_combout\ = (\processador|registers[2][6]~19_combout\ & ((\processador|Mux0~1_combout\) # ((\processador|registers[2][6]~18_combout\)))) # (!\processador|registers[2][6]~19_combout\ & (((\processador|int\(1) & 
-- !\processador|registers[2][6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux0~1_combout\,
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|int\(1),
	datad => \processador|registers[2][6]~18_combout\,
	combout => \processador|registers~55_combout\);

-- Location: FF_X76_Y50_N15
\processador|regI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux17~6_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(1));

-- Location: LCCOMB_X77_Y50_N0
\processador|regI~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~12_combout\ = (\processador|Mux9~1_combout\) # ((\processador|command\(4) & (\processador|int\(1))) # (!\processador|command\(4) & ((\processador|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|int\(1),
	datac => \processador|command\(4),
	datad => \processador|Mux0~1_combout\,
	combout => \processador|regI~12_combout\);

-- Location: LCCOMB_X77_Y50_N10
\processador|regI~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~13_combout\ = (\processador|Mux9~1_combout\ & ((\processador|command\(4) & (\processador|int\(1))) # (!\processador|command\(4) & ((\processador|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|int\(1),
	datac => \processador|command\(4),
	datad => \processador|Mux0~1_combout\,
	combout => \processador|regI~13_combout\);

-- Location: LCCOMB_X81_Y48_N18
\processador|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~2_combout\ = (\processador|int\(6) & ((\processador|Mux14~1_combout\ & (!\processador|Add5~1\)) # (!\processador|Mux14~1_combout\ & (\processador|Add5~1\ & VCC)))) # (!\processador|int\(6) & ((\processador|Mux14~1_combout\ & 
-- ((\processador|Add5~1\) # (GND))) # (!\processador|Mux14~1_combout\ & (!\processador|Add5~1\))))
-- \processador|Add5~3\ = CARRY((\processador|int\(6) & (\processador|Mux14~1_combout\ & !\processador|Add5~1\)) # (!\processador|int\(6) & ((\processador|Mux14~1_combout\) # (!\processador|Add5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(6),
	datab => \processador|Mux14~1_combout\,
	datad => VCC,
	cin => \processador|Add5~1\,
	combout => \processador|Add5~2_combout\,
	cout => \processador|Add5~3\);

-- Location: LCCOMB_X81_Y48_N20
\processador|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~4_combout\ = ((\processador|int\(5) $ (\processador|Mux13~1_combout\ $ (\processador|Add5~3\)))) # (GND)
-- \processador|Add5~5\ = CARRY((\processador|int\(5) & ((!\processador|Add5~3\) # (!\processador|Mux13~1_combout\))) # (!\processador|int\(5) & (!\processador|Mux13~1_combout\ & !\processador|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|Mux13~1_combout\,
	datad => VCC,
	cin => \processador|Add5~3\,
	combout => \processador|Add5~4_combout\,
	cout => \processador|Add5~5\);

-- Location: LCCOMB_X81_Y48_N22
\processador|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~6_combout\ = (\processador|int\(4) & ((\processador|Mux12~1_combout\ & (!\processador|Add5~5\)) # (!\processador|Mux12~1_combout\ & (\processador|Add5~5\ & VCC)))) # (!\processador|int\(4) & ((\processador|Mux12~1_combout\ & 
-- ((\processador|Add5~5\) # (GND))) # (!\processador|Mux12~1_combout\ & (!\processador|Add5~5\))))
-- \processador|Add5~7\ = CARRY((\processador|int\(4) & (\processador|Mux12~1_combout\ & !\processador|Add5~5\)) # (!\processador|int\(4) & ((\processador|Mux12~1_combout\) # (!\processador|Add5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(4),
	datab => \processador|Mux12~1_combout\,
	datad => VCC,
	cin => \processador|Add5~5\,
	combout => \processador|Add5~6_combout\,
	cout => \processador|Add5~7\);

-- Location: LCCOMB_X81_Y48_N24
\processador|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~8_combout\ = ((\processador|int\(3) $ (\processador|Mux11~1_combout\ $ (\processador|Add5~7\)))) # (GND)
-- \processador|Add5~9\ = CARRY((\processador|int\(3) & ((!\processador|Add5~7\) # (!\processador|Mux11~1_combout\))) # (!\processador|int\(3) & (!\processador|Mux11~1_combout\ & !\processador|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(3),
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|Add5~7\,
	combout => \processador|Add5~8_combout\,
	cout => \processador|Add5~9\);

-- Location: LCCOMB_X81_Y48_N26
\processador|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~10_combout\ = (\processador|int\(2) & ((\processador|Mux10~1_combout\ & (!\processador|Add5~9\)) # (!\processador|Mux10~1_combout\ & (\processador|Add5~9\ & VCC)))) # (!\processador|int\(2) & ((\processador|Mux10~1_combout\ & 
-- ((\processador|Add5~9\) # (GND))) # (!\processador|Mux10~1_combout\ & (!\processador|Add5~9\))))
-- \processador|Add5~11\ = CARRY((\processador|int\(2) & (\processador|Mux10~1_combout\ & !\processador|Add5~9\)) # (!\processador|int\(2) & ((\processador|Mux10~1_combout\) # (!\processador|Add5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|Add5~9\,
	combout => \processador|Add5~10_combout\,
	cout => \processador|Add5~11\);

-- Location: LCCOMB_X81_Y48_N28
\processador|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~12_combout\ = ((\processador|Mux9~1_combout\ $ (\processador|int\(1) $ (\processador|Add5~11\)))) # (GND)
-- \processador|Add5~13\ = CARRY((\processador|Mux9~1_combout\ & (\processador|int\(1) & !\processador|Add5~11\)) # (!\processador|Mux9~1_combout\ & ((\processador|int\(1)) # (!\processador|Add5~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|int\(1),
	datad => VCC,
	cin => \processador|Add5~11\,
	combout => \processador|Add5~12_combout\,
	cout => \processador|Add5~13\);

-- Location: LCCOMB_X81_Y50_N14
\processador|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~0_combout\ = (\processador|int\(7) & (\processador|Mux15~1_combout\ $ (VCC))) # (!\processador|int\(7) & ((\processador|Mux15~1_combout\) # (GND)))
-- \processador|Add6~1\ = CARRY((\processador|Mux15~1_combout\) # (!\processador|int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(7),
	datab => \processador|Mux15~1_combout\,
	datad => VCC,
	combout => \processador|Add6~0_combout\,
	cout => \processador|Add6~1\);

-- Location: LCCOMB_X81_Y50_N16
\processador|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~2_combout\ = (\processador|Mux14~1_combout\ & ((\processador|int\(6) & (!\processador|Add6~1\)) # (!\processador|int\(6) & (\processador|Add6~1\ & VCC)))) # (!\processador|Mux14~1_combout\ & ((\processador|int\(6) & 
-- ((\processador|Add6~1\) # (GND))) # (!\processador|int\(6) & (!\processador|Add6~1\))))
-- \processador|Add6~3\ = CARRY((\processador|Mux14~1_combout\ & (\processador|int\(6) & !\processador|Add6~1\)) # (!\processador|Mux14~1_combout\ & ((\processador|int\(6)) # (!\processador|Add6~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux14~1_combout\,
	datab => \processador|int\(6),
	datad => VCC,
	cin => \processador|Add6~1\,
	combout => \processador|Add6~2_combout\,
	cout => \processador|Add6~3\);

-- Location: LCCOMB_X81_Y50_N18
\processador|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~4_combout\ = ((\processador|int\(5) $ (\processador|Mux13~1_combout\ $ (\processador|Add6~3\)))) # (GND)
-- \processador|Add6~5\ = CARRY((\processador|int\(5) & (\processador|Mux13~1_combout\ & !\processador|Add6~3\)) # (!\processador|int\(5) & ((\processador|Mux13~1_combout\) # (!\processador|Add6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|Mux13~1_combout\,
	datad => VCC,
	cin => \processador|Add6~3\,
	combout => \processador|Add6~4_combout\,
	cout => \processador|Add6~5\);

-- Location: LCCOMB_X81_Y50_N20
\processador|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~6_combout\ = (\processador|Mux12~1_combout\ & ((\processador|int\(4) & (!\processador|Add6~5\)) # (!\processador|int\(4) & (\processador|Add6~5\ & VCC)))) # (!\processador|Mux12~1_combout\ & ((\processador|int\(4) & 
-- ((\processador|Add6~5\) # (GND))) # (!\processador|int\(4) & (!\processador|Add6~5\))))
-- \processador|Add6~7\ = CARRY((\processador|Mux12~1_combout\ & (\processador|int\(4) & !\processador|Add6~5\)) # (!\processador|Mux12~1_combout\ & ((\processador|int\(4)) # (!\processador|Add6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|int\(4),
	datad => VCC,
	cin => \processador|Add6~5\,
	combout => \processador|Add6~6_combout\,
	cout => \processador|Add6~7\);

-- Location: LCCOMB_X81_Y50_N22
\processador|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~8_combout\ = ((\processador|Mux11~1_combout\ $ (\processador|int\(3) $ (\processador|Add6~7\)))) # (GND)
-- \processador|Add6~9\ = CARRY((\processador|Mux11~1_combout\ & ((!\processador|Add6~7\) # (!\processador|int\(3)))) # (!\processador|Mux11~1_combout\ & (!\processador|int\(3) & !\processador|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux11~1_combout\,
	datab => \processador|int\(3),
	datad => VCC,
	cin => \processador|Add6~7\,
	combout => \processador|Add6~8_combout\,
	cout => \processador|Add6~9\);

-- Location: LCCOMB_X81_Y50_N24
\processador|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~10_combout\ = (\processador|int\(2) & ((\processador|Mux10~1_combout\ & (!\processador|Add6~9\)) # (!\processador|Mux10~1_combout\ & ((\processador|Add6~9\) # (GND))))) # (!\processador|int\(2) & ((\processador|Mux10~1_combout\ & 
-- (\processador|Add6~9\ & VCC)) # (!\processador|Mux10~1_combout\ & (!\processador|Add6~9\))))
-- \processador|Add6~11\ = CARRY((\processador|int\(2) & ((!\processador|Add6~9\) # (!\processador|Mux10~1_combout\))) # (!\processador|int\(2) & (!\processador|Mux10~1_combout\ & !\processador|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|Add6~9\,
	combout => \processador|Add6~10_combout\,
	cout => \processador|Add6~11\);

-- Location: LCCOMB_X81_Y50_N26
\processador|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~12_combout\ = ((\processador|int\(1) $ (\processador|Mux9~1_combout\ $ (\processador|Add6~11\)))) # (GND)
-- \processador|Add6~13\ = CARRY((\processador|int\(1) & (\processador|Mux9~1_combout\ & !\processador|Add6~11\)) # (!\processador|int\(1) & ((\processador|Mux9~1_combout\) # (!\processador|Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(1),
	datab => \processador|Mux9~1_combout\,
	datad => VCC,
	cin => \processador|Add6~11\,
	combout => \processador|Add6~12_combout\,
	cout => \processador|Add6~13\);

-- Location: LCCOMB_X81_Y49_N16
\processador|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~0_combout\ = (\processador|Mux6~1_combout\ & (\processador|Mux15~1_combout\ $ (VCC))) # (!\processador|Mux6~1_combout\ & ((\processador|Mux15~1_combout\) # (GND)))
-- \processador|Add8~1\ = CARRY((\processador|Mux15~1_combout\) # (!\processador|Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux6~1_combout\,
	datab => \processador|Mux15~1_combout\,
	datad => VCC,
	combout => \processador|Add8~0_combout\,
	cout => \processador|Add8~1\);

-- Location: LCCOMB_X81_Y49_N18
\processador|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~2_combout\ = (\processador|Mux14~1_combout\ & ((\processador|Mux5~1_combout\ & (!\processador|Add8~1\)) # (!\processador|Mux5~1_combout\ & (\processador|Add8~1\ & VCC)))) # (!\processador|Mux14~1_combout\ & ((\processador|Mux5~1_combout\ 
-- & ((\processador|Add8~1\) # (GND))) # (!\processador|Mux5~1_combout\ & (!\processador|Add8~1\))))
-- \processador|Add8~3\ = CARRY((\processador|Mux14~1_combout\ & (\processador|Mux5~1_combout\ & !\processador|Add8~1\)) # (!\processador|Mux14~1_combout\ & ((\processador|Mux5~1_combout\) # (!\processador|Add8~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux14~1_combout\,
	datab => \processador|Mux5~1_combout\,
	datad => VCC,
	cin => \processador|Add8~1\,
	combout => \processador|Add8~2_combout\,
	cout => \processador|Add8~3\);

-- Location: LCCOMB_X81_Y49_N20
\processador|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~4_combout\ = ((\processador|Mux13~1_combout\ $ (\processador|Mux4~1_combout\ $ (\processador|Add8~3\)))) # (GND)
-- \processador|Add8~5\ = CARRY((\processador|Mux13~1_combout\ & ((!\processador|Add8~3\) # (!\processador|Mux4~1_combout\))) # (!\processador|Mux13~1_combout\ & (!\processador|Mux4~1_combout\ & !\processador|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|Mux4~1_combout\,
	datad => VCC,
	cin => \processador|Add8~3\,
	combout => \processador|Add8~4_combout\,
	cout => \processador|Add8~5\);

-- Location: LCCOMB_X81_Y49_N22
\processador|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~6_combout\ = (\processador|Mux3~1_combout\ & ((\processador|Mux12~1_combout\ & (!\processador|Add8~5\)) # (!\processador|Mux12~1_combout\ & ((\processador|Add8~5\) # (GND))))) # (!\processador|Mux3~1_combout\ & 
-- ((\processador|Mux12~1_combout\ & (\processador|Add8~5\ & VCC)) # (!\processador|Mux12~1_combout\ & (!\processador|Add8~5\))))
-- \processador|Add8~7\ = CARRY((\processador|Mux3~1_combout\ & ((!\processador|Add8~5\) # (!\processador|Mux12~1_combout\))) # (!\processador|Mux3~1_combout\ & (!\processador|Mux12~1_combout\ & !\processador|Add8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux3~1_combout\,
	datab => \processador|Mux12~1_combout\,
	datad => VCC,
	cin => \processador|Add8~5\,
	combout => \processador|Add8~6_combout\,
	cout => \processador|Add8~7\);

-- Location: LCCOMB_X81_Y49_N24
\processador|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~8_combout\ = ((\processador|Mux2~1_combout\ $ (\processador|Mux11~1_combout\ $ (\processador|Add8~7\)))) # (GND)
-- \processador|Add8~9\ = CARRY((\processador|Mux2~1_combout\ & (\processador|Mux11~1_combout\ & !\processador|Add8~7\)) # (!\processador|Mux2~1_combout\ & ((\processador|Mux11~1_combout\) # (!\processador|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|Add8~7\,
	combout => \processador|Add8~8_combout\,
	cout => \processador|Add8~9\);

-- Location: LCCOMB_X81_Y49_N26
\processador|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~10_combout\ = (\processador|Mux1~1_combout\ & ((\processador|Mux10~1_combout\ & (!\processador|Add8~9\)) # (!\processador|Mux10~1_combout\ & ((\processador|Add8~9\) # (GND))))) # (!\processador|Mux1~1_combout\ & 
-- ((\processador|Mux10~1_combout\ & (\processador|Add8~9\ & VCC)) # (!\processador|Mux10~1_combout\ & (!\processador|Add8~9\))))
-- \processador|Add8~11\ = CARRY((\processador|Mux1~1_combout\ & ((!\processador|Add8~9\) # (!\processador|Mux10~1_combout\))) # (!\processador|Mux1~1_combout\ & (!\processador|Mux10~1_combout\ & !\processador|Add8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux1~1_combout\,
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|Add8~9\,
	combout => \processador|Add8~10_combout\,
	cout => \processador|Add8~11\);

-- Location: LCCOMB_X81_Y49_N28
\processador|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~12_combout\ = ((\processador|Mux9~1_combout\ $ (\processador|Mux0~1_combout\ $ (\processador|Add8~11\)))) # (GND)
-- \processador|Add8~13\ = CARRY((\processador|Mux9~1_combout\ & ((!\processador|Add8~11\) # (!\processador|Mux0~1_combout\))) # (!\processador|Mux9~1_combout\ & (!\processador|Mux0~1_combout\ & !\processador|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|Mux0~1_combout\,
	datad => VCC,
	cin => \processador|Add8~11\,
	combout => \processador|Add8~12_combout\,
	cout => \processador|Add8~13\);

-- Location: LCCOMB_X81_Y50_N8
\processador|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~0_combout\ = (\processador|command\(4) & ((\processador|Add6~12_combout\) # ((\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (((!\processador|Mux23~3_combout\ & \processador|Add8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add6~12_combout\,
	datab => \processador|command\(4),
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Add8~12_combout\,
	combout => \processador|Mux17~0_combout\);

-- Location: LCCOMB_X80_Y50_N10
\processador|Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~2_combout\ = (\processador|Mux14~1_combout\ & ((\processador|Mux5~1_combout\ & (!\processador|Add7~1\)) # (!\processador|Mux5~1_combout\ & ((\processador|Add7~1\) # (GND))))) # (!\processador|Mux14~1_combout\ & 
-- ((\processador|Mux5~1_combout\ & (\processador|Add7~1\ & VCC)) # (!\processador|Mux5~1_combout\ & (!\processador|Add7~1\))))
-- \processador|Add7~3\ = CARRY((\processador|Mux14~1_combout\ & ((!\processador|Add7~1\) # (!\processador|Mux5~1_combout\))) # (!\processador|Mux14~1_combout\ & (!\processador|Mux5~1_combout\ & !\processador|Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux14~1_combout\,
	datab => \processador|Mux5~1_combout\,
	datad => VCC,
	cin => \processador|Add7~1\,
	combout => \processador|Add7~2_combout\,
	cout => \processador|Add7~3\);

-- Location: LCCOMB_X80_Y50_N12
\processador|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~4_combout\ = ((\processador|Mux4~1_combout\ $ (\processador|Mux13~1_combout\ $ (\processador|Add7~3\)))) # (GND)
-- \processador|Add7~5\ = CARRY((\processador|Mux4~1_combout\ & ((!\processador|Add7~3\) # (!\processador|Mux13~1_combout\))) # (!\processador|Mux4~1_combout\ & (!\processador|Mux13~1_combout\ & !\processador|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux4~1_combout\,
	datab => \processador|Mux13~1_combout\,
	datad => VCC,
	cin => \processador|Add7~3\,
	combout => \processador|Add7~4_combout\,
	cout => \processador|Add7~5\);

-- Location: LCCOMB_X80_Y50_N14
\processador|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~6_combout\ = (\processador|Mux3~1_combout\ & ((\processador|Mux12~1_combout\ & (!\processador|Add7~5\)) # (!\processador|Mux12~1_combout\ & (\processador|Add7~5\ & VCC)))) # (!\processador|Mux3~1_combout\ & 
-- ((\processador|Mux12~1_combout\ & ((\processador|Add7~5\) # (GND))) # (!\processador|Mux12~1_combout\ & (!\processador|Add7~5\))))
-- \processador|Add7~7\ = CARRY((\processador|Mux3~1_combout\ & (\processador|Mux12~1_combout\ & !\processador|Add7~5\)) # (!\processador|Mux3~1_combout\ & ((\processador|Mux12~1_combout\) # (!\processador|Add7~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux3~1_combout\,
	datab => \processador|Mux12~1_combout\,
	datad => VCC,
	cin => \processador|Add7~5\,
	combout => \processador|Add7~6_combout\,
	cout => \processador|Add7~7\);

-- Location: LCCOMB_X80_Y50_N16
\processador|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~8_combout\ = ((\processador|Mux11~1_combout\ $ (\processador|Mux2~1_combout\ $ (\processador|Add7~7\)))) # (GND)
-- \processador|Add7~9\ = CARRY((\processador|Mux11~1_combout\ & (\processador|Mux2~1_combout\ & !\processador|Add7~7\)) # (!\processador|Mux11~1_combout\ & ((\processador|Mux2~1_combout\) # (!\processador|Add7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux11~1_combout\,
	datab => \processador|Mux2~1_combout\,
	datad => VCC,
	cin => \processador|Add7~7\,
	combout => \processador|Add7~8_combout\,
	cout => \processador|Add7~9\);

-- Location: LCCOMB_X80_Y50_N18
\processador|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~10_combout\ = (\processador|Mux10~1_combout\ & ((\processador|Mux1~1_combout\ & (!\processador|Add7~9\)) # (!\processador|Mux1~1_combout\ & ((\processador|Add7~9\) # (GND))))) # (!\processador|Mux10~1_combout\ & 
-- ((\processador|Mux1~1_combout\ & (\processador|Add7~9\ & VCC)) # (!\processador|Mux1~1_combout\ & (!\processador|Add7~9\))))
-- \processador|Add7~11\ = CARRY((\processador|Mux10~1_combout\ & ((!\processador|Add7~9\) # (!\processador|Mux1~1_combout\))) # (!\processador|Mux10~1_combout\ & (!\processador|Mux1~1_combout\ & !\processador|Add7~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|Mux1~1_combout\,
	datad => VCC,
	cin => \processador|Add7~9\,
	combout => \processador|Add7~10_combout\,
	cout => \processador|Add7~11\);

-- Location: LCCOMB_X80_Y50_N20
\processador|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~12_combout\ = ((\processador|Mux0~1_combout\ $ (\processador|Mux9~1_combout\ $ (\processador|Add7~11\)))) # (GND)
-- \processador|Add7~13\ = CARRY((\processador|Mux0~1_combout\ & ((!\processador|Add7~11\) # (!\processador|Mux9~1_combout\))) # (!\processador|Mux0~1_combout\ & (!\processador|Mux9~1_combout\ & !\processador|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux0~1_combout\,
	datab => \processador|Mux9~1_combout\,
	datad => VCC,
	cin => \processador|Add7~11\,
	combout => \processador|Add7~12_combout\,
	cout => \processador|Add7~13\);

-- Location: LCCOMB_X81_Y50_N10
\processador|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~1_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux17~0_combout\ & (\processador|Add5~12_combout\)) # (!\processador|Mux17~0_combout\ & ((\processador|Add7~12_combout\))))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~3_combout\,
	datab => \processador|Add5~12_combout\,
	datac => \processador|Mux17~0_combout\,
	datad => \processador|Add7~12_combout\,
	combout => \processador|Mux17~1_combout\);

-- Location: LCCOMB_X79_Y50_N18
\processador|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~10_combout\ = (\processador|int\(2) & ((\processador|Mux10~1_combout\ & (\processador|Add2~9\ & VCC)) # (!\processador|Mux10~1_combout\ & (!\processador|Add2~9\)))) # (!\processador|int\(2) & ((\processador|Mux10~1_combout\ & 
-- (!\processador|Add2~9\)) # (!\processador|Mux10~1_combout\ & ((\processador|Add2~9\) # (GND)))))
-- \processador|Add2~11\ = CARRY((\processador|int\(2) & (!\processador|Mux10~1_combout\ & !\processador|Add2~9\)) # (!\processador|int\(2) & ((!\processador|Add2~9\) # (!\processador|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|Add2~9\,
	combout => \processador|Add2~10_combout\,
	cout => \processador|Add2~11\);

-- Location: LCCOMB_X79_Y50_N20
\processador|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~12_combout\ = ((\processador|Mux9~1_combout\ $ (\processador|int\(1) $ (!\processador|Add2~11\)))) # (GND)
-- \processador|Add2~13\ = CARRY((\processador|Mux9~1_combout\ & ((\processador|int\(1)) # (!\processador|Add2~11\))) # (!\processador|Mux9~1_combout\ & (\processador|int\(1) & !\processador|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|int\(1),
	datad => VCC,
	cin => \processador|Add2~11\,
	combout => \processador|Add2~12_combout\,
	cout => \processador|Add2~13\);

-- Location: LCCOMB_X80_Y51_N2
\processador|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~2_combout\ = (\processador|Mux5~1_combout\ & ((\processador|Mux14~1_combout\ & (\processador|Add4~1\ & VCC)) # (!\processador|Mux14~1_combout\ & (!\processador|Add4~1\)))) # (!\processador|Mux5~1_combout\ & 
-- ((\processador|Mux14~1_combout\ & (!\processador|Add4~1\)) # (!\processador|Mux14~1_combout\ & ((\processador|Add4~1\) # (GND)))))
-- \processador|Add4~3\ = CARRY((\processador|Mux5~1_combout\ & (!\processador|Mux14~1_combout\ & !\processador|Add4~1\)) # (!\processador|Mux5~1_combout\ & ((!\processador|Add4~1\) # (!\processador|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux5~1_combout\,
	datab => \processador|Mux14~1_combout\,
	datad => VCC,
	cin => \processador|Add4~1\,
	combout => \processador|Add4~2_combout\,
	cout => \processador|Add4~3\);

-- Location: LCCOMB_X80_Y51_N4
\processador|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~4_combout\ = ((\processador|Mux13~1_combout\ $ (\processador|Mux4~1_combout\ $ (!\processador|Add4~3\)))) # (GND)
-- \processador|Add4~5\ = CARRY((\processador|Mux13~1_combout\ & ((\processador|Mux4~1_combout\) # (!\processador|Add4~3\))) # (!\processador|Mux13~1_combout\ & (\processador|Mux4~1_combout\ & !\processador|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|Mux4~1_combout\,
	datad => VCC,
	cin => \processador|Add4~3\,
	combout => \processador|Add4~4_combout\,
	cout => \processador|Add4~5\);

-- Location: LCCOMB_X80_Y51_N6
\processador|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~6_combout\ = (\processador|Mux12~1_combout\ & ((\processador|Mux3~1_combout\ & (\processador|Add4~5\ & VCC)) # (!\processador|Mux3~1_combout\ & (!\processador|Add4~5\)))) # (!\processador|Mux12~1_combout\ & ((\processador|Mux3~1_combout\ 
-- & (!\processador|Add4~5\)) # (!\processador|Mux3~1_combout\ & ((\processador|Add4~5\) # (GND)))))
-- \processador|Add4~7\ = CARRY((\processador|Mux12~1_combout\ & (!\processador|Mux3~1_combout\ & !\processador|Add4~5\)) # (!\processador|Mux12~1_combout\ & ((!\processador|Add4~5\) # (!\processador|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|Mux3~1_combout\,
	datad => VCC,
	cin => \processador|Add4~5\,
	combout => \processador|Add4~6_combout\,
	cout => \processador|Add4~7\);

-- Location: LCCOMB_X80_Y51_N8
\processador|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~8_combout\ = ((\processador|Mux2~1_combout\ $ (\processador|Mux11~1_combout\ $ (!\processador|Add4~7\)))) # (GND)
-- \processador|Add4~9\ = CARRY((\processador|Mux2~1_combout\ & ((\processador|Mux11~1_combout\) # (!\processador|Add4~7\))) # (!\processador|Mux2~1_combout\ & (\processador|Mux11~1_combout\ & !\processador|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|Add4~7\,
	combout => \processador|Add4~8_combout\,
	cout => \processador|Add4~9\);

-- Location: LCCOMB_X80_Y51_N10
\processador|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~10_combout\ = (\processador|Mux10~1_combout\ & ((\processador|Mux1~1_combout\ & (\processador|Add4~9\ & VCC)) # (!\processador|Mux1~1_combout\ & (!\processador|Add4~9\)))) # (!\processador|Mux10~1_combout\ & 
-- ((\processador|Mux1~1_combout\ & (!\processador|Add4~9\)) # (!\processador|Mux1~1_combout\ & ((\processador|Add4~9\) # (GND)))))
-- \processador|Add4~11\ = CARRY((\processador|Mux10~1_combout\ & (!\processador|Mux1~1_combout\ & !\processador|Add4~9\)) # (!\processador|Mux10~1_combout\ & ((!\processador|Add4~9\) # (!\processador|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|Mux1~1_combout\,
	datad => VCC,
	cin => \processador|Add4~9\,
	combout => \processador|Add4~10_combout\,
	cout => \processador|Add4~11\);

-- Location: LCCOMB_X80_Y51_N12
\processador|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~12_combout\ = ((\processador|Mux0~1_combout\ $ (\processador|Mux9~1_combout\ $ (!\processador|Add4~11\)))) # (GND)
-- \processador|Add4~13\ = CARRY((\processador|Mux0~1_combout\ & ((\processador|Mux9~1_combout\) # (!\processador|Add4~11\))) # (!\processador|Mux0~1_combout\ & (\processador|Mux9~1_combout\ & !\processador|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux0~1_combout\,
	datab => \processador|Mux9~1_combout\,
	datad => VCC,
	cin => \processador|Add4~11\,
	combout => \processador|Add4~12_combout\,
	cout => \processador|Add4~13\);

-- Location: LCCOMB_X76_Y50_N24
\processador|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~2_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Add2~12_combout\) # ((!\processador|LessThan7~1_combout\)))) # (!\processador|Mux23~2_combout\ & (((\processador|LessThan7~1_combout\ & \processador|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add2~12_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|LessThan7~1_combout\,
	datad => \processador|Add4~12_combout\,
	combout => \processador|Mux17~2_combout\);

-- Location: LCCOMB_X76_Y50_N10
\processador|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~3_combout\ = (\processador|LessThan7~1_combout\ & (((\processador|Mux17~2_combout\)))) # (!\processador|LessThan7~1_combout\ & ((\processador|Mux17~2_combout\ & (\processador|regI~13_combout\)) # (!\processador|Mux17~2_combout\ & 
-- ((\processador|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|regI~13_combout\,
	datab => \processador|LessThan7~1_combout\,
	datac => \processador|Mux17~1_combout\,
	datad => \processador|Mux17~2_combout\,
	combout => \processador|Mux17~3_combout\);

-- Location: LCCOMB_X76_Y50_N20
\processador|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~4_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux23~0_combout\) # ((\processador|regI~12_combout\)))) # (!\processador|Mux23~1_combout\ & (!\processador|Mux23~0_combout\ & ((\processador|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|regI~12_combout\,
	datad => \processador|Mux17~3_combout\,
	combout => \processador|Mux17~4_combout\);

-- Location: LCCOMB_X76_Y50_N18
\processador|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~5_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux17~4_combout\ & (\processador|address[1]~reg0_q\)) # (!\processador|Mux17~4_combout\ & ((!\processador|Mux9~1_combout\))))) # (!\processador|Mux23~0_combout\ & 
-- (((\processador|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[1]~reg0_q\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|Mux9~1_combout\,
	datad => \processador|Mux17~4_combout\,
	combout => \processador|Mux17~5_combout\);

-- Location: LCCOMB_X76_Y50_N14
\processador|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux17~6_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(1))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(1),
	datad => \processador|Mux17~5_combout\,
	combout => \processador|Mux17~6_combout\);

-- Location: LCCOMB_X79_Y48_N6
\processador|registers~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~56_combout\ = (\processador|registers[2][6]~18_combout\ & ((\processador|registers~55_combout\ & ((\processador|Mux17~6_combout\))) # (!\processador|registers~55_combout\ & (\processador|Mux9~1_combout\)))) # 
-- (!\processador|registers[2][6]~18_combout\ & (\processador|registers~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][6]~18_combout\,
	datab => \processador|registers~55_combout\,
	datac => \processador|Mux9~1_combout\,
	datad => \processador|Mux17~6_combout\,
	combout => \processador|registers~56_combout\);

-- Location: LCCOMB_X79_Y48_N16
\processador|registers~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~57_combout\ = (\processador|op_type\(1) & (\input[6]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~56_combout\,
	combout => \processador|registers~57_combout\);

-- Location: LCCOMB_X80_Y52_N2
\processador|registers[2][6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~26_combout\ = (\processador|reg1\(0) & (((!\processador|registers[2][6]~18_combout\)) # (!\processador|output[0]~4_combout\))) # (!\processador|reg1\(0) & (!\processador|reg1\(1) & ((!\processador|registers[2][6]~18_combout\) 
-- # (!\processador|output[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg1\(0),
	datab => \processador|output[0]~4_combout\,
	datac => \processador|reg1\(1),
	datad => \processador|registers[2][6]~18_combout\,
	combout => \processador|registers[2][6]~26_combout\);

-- Location: LCCOMB_X79_Y52_N22
\processador|registers[2][6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~23_combout\ = (\processador|iinstruction\(3) & ((\processador|command\(4)) # ((\processador|reg2\(0)) # (!\processador|reg2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|iinstruction\(3),
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|registers[2][6]~23_combout\);

-- Location: LCCOMB_X80_Y52_N28
\processador|registers[2][6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~24_combout\ = (!\processador|op_type\(1) & (!\processador|LessThan7~0_combout\ & ((\processador|registers[2][6]~23_combout\) # (!\processador|registers[2][6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][6]~11_combout\,
	datab => \processador|registers[2][6]~23_combout\,
	datac => \processador|op_type\(1),
	datad => \processador|LessThan7~0_combout\,
	combout => \processador|registers[2][6]~24_combout\);

-- Location: LCCOMB_X79_Y52_N26
\processador|registers[2][6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~25_combout\ = (\processador|state.OP~q\ & ((\processador|registers[2][6]~7_combout\) # (\processador|registers[2][6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.OP~q\,
	datac => \processador|registers[2][6]~7_combout\,
	datad => \processador|registers[2][6]~24_combout\,
	combout => \processador|registers[2][6]~25_combout\);

-- Location: LCCOMB_X80_Y52_N8
\processador|registers[2][6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~27_combout\ = ((!\processador|registers[2][6]~26_combout\ & (!\processador|registers[2][6]~25_combout\ & \processador|registers[2][6]~5_combout\))) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.RESET~q\,
	datab => \processador|registers[2][6]~26_combout\,
	datac => \processador|registers[2][6]~25_combout\,
	datad => \processador|registers[2][6]~5_combout\,
	combout => \processador|registers[2][6]~27_combout\);

-- Location: FF_X79_Y48_N17
\processador|registers[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~57_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(6),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][1]~q\);

-- Location: LCCOMB_X79_Y49_N12
\processador|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux9~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & (\processador|registers[1][1]~q\)) # (!\processador|reg1\(0) & ((\processador|registers[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][1]~q\,
	datab => \processador|registers[0][1]~q\,
	datac => \processador|reg1\(0),
	datad => \processador|reg1\(1),
	combout => \processador|Mux9~0_combout\);

-- Location: LCCOMB_X80_Y49_N0
\processador|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux9~1_combout\ = (\processador|Mux9~0_combout\) # ((\processador|registers[2][1]~q\ & \processador|reg1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|registers[2][1]~q\,
	datac => \processador|reg1\(1),
	datad => \processador|Mux9~0_combout\,
	combout => \processador|Mux9~1_combout\);

-- Location: LCCOMB_X76_Y50_N4
\processador|address~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~19_combout\ = (\processador|address[0]~2_combout\ & (((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & ((\processador|address[0]~6_combout\ & (\processador|Mux9~1_combout\)) # 
-- (!\processador|address[0]~6_combout\ & ((\processador|regI\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|address[0]~2_combout\,
	datac => \processador|regI\(1),
	datad => \processador|address[0]~6_combout\,
	combout => \processador|address~19_combout\);

-- Location: LCCOMB_X76_Y50_N26
\processador|address~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~20_combout\ = (\processador|address~19_combout\ & (((\processador|int\(1)) # (!\processador|address[0]~2_combout\)))) # (!\processador|address~19_combout\ & (\processador|address[1]~reg0_q\ & ((\processador|address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[1]~reg0_q\,
	datab => \processador|int\(1),
	datac => \processador|address~19_combout\,
	datad => \processador|address[0]~2_combout\,
	combout => \processador|address~20_combout\);

-- Location: LCCOMB_X76_Y51_N4
\processador|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~20_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~18_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Add0~18_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|address~20_combout\,
	combout => \processador|Add0~20_combout\);

-- Location: FF_X76_Y51_N5
\processador|address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~20_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[1]~reg0_q\);

-- Location: LCCOMB_X76_Y51_N30
\processador|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~21_combout\ = \processador|Add0~19\ $ (\processador|address[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \processador|address[0]~reg0_q\,
	cin => \processador|Add0~19\,
	combout => \processador|Add0~21_combout\);

-- Location: LCCOMB_X82_Y48_N8
\processador|address~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~21_combout\ = (\processador|address[0]~2_combout\ & ((\processador|address[0]~6_combout\) # ((\processador|address[0]~reg0_q\)))) # (!\processador|address[0]~2_combout\ & (!\processador|address[0]~6_combout\ & 
-- (\processador|regI\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|address[0]~6_combout\,
	datac => \processador|regI\(0),
	datad => \processador|address[0]~reg0_q\,
	combout => \processador|address~21_combout\);

-- Location: LCCOMB_X82_Y48_N14
\processador|address~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~22_combout\ = (\processador|address[0]~6_combout\ & ((\processador|address~21_combout\ & (\processador|int\(0))) # (!\processador|address~21_combout\ & ((\processador|Mux8~1_combout\))))) # (!\processador|address[0]~6_combout\ & 
-- (((\processador|address~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(0),
	datab => \processador|address[0]~6_combout\,
	datac => \processador|Mux8~1_combout\,
	datad => \processador|address~21_combout\,
	combout => \processador|address~22_combout\);

-- Location: LCCOMB_X76_Y51_N10
\processador|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~23_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~21_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RINST~q\,
	datac => \processador|Add0~21_combout\,
	datad => \processador|address~22_combout\,
	combout => \processador|Add0~23_combout\);

-- Location: FF_X76_Y51_N11
\processador|address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~23_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[0]~reg0_q\);

-- Location: LCCOMB_X82_Y48_N26
\processador|regI~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~14_combout\ = (\processador|Mux8~1_combout\) # ((\processador|command\(4) & ((\processador|int\(0)))) # (!\processador|command\(4) & (\processador|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux8~1_combout\,
	datab => \processador|command\(4),
	datac => \processador|Mux7~1_combout\,
	datad => \processador|int\(0),
	combout => \processador|regI~14_combout\);

-- Location: LCCOMB_X82_Y48_N30
\processador|regI~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~15_combout\ = (\processador|Mux8~1_combout\ & ((\processador|command\(4) & (\processador|int\(0))) # (!\processador|command\(4) & ((\processador|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(0),
	datab => \processador|command\(4),
	datac => \processador|Mux7~1_combout\,
	datad => \processador|Mux8~1_combout\,
	combout => \processador|regI~15_combout\);

-- Location: LCCOMB_X79_Y50_N22
\processador|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~14_combout\ = \processador|Mux8~1_combout\ $ (\processador|Add2~13\ $ (\processador|int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux8~1_combout\,
	datad => \processador|int\(0),
	cin => \processador|Add2~13\,
	combout => \processador|Add2~14_combout\);

-- Location: LCCOMB_X80_Y51_N14
\processador|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add4~14_combout\ = \processador|Mux7~1_combout\ $ (\processador|Add4~13\ $ (\processador|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux7~1_combout\,
	datad => \processador|Mux8~1_combout\,
	cin => \processador|Add4~13\,
	combout => \processador|Add4~14_combout\);

-- Location: LCCOMB_X80_Y50_N22
\processador|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add7~14_combout\ = \processador|Mux7~1_combout\ $ (\processador|Add7~13\ $ (!\processador|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux7~1_combout\,
	datad => \processador|Mux8~1_combout\,
	cin => \processador|Add7~13\,
	combout => \processador|Add7~14_combout\);

-- Location: LCCOMB_X81_Y48_N30
\processador|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add5~14_combout\ = \processador|int\(0) $ (\processador|Add5~13\ $ (!\processador|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|int\(0),
	datad => \processador|Mux8~1_combout\,
	cin => \processador|Add5~13\,
	combout => \processador|Add5~14_combout\);

-- Location: LCCOMB_X81_Y50_N28
\processador|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add6~14_combout\ = \processador|Mux8~1_combout\ $ (\processador|Add6~13\ $ (!\processador|int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux8~1_combout\,
	datad => \processador|int\(0),
	cin => \processador|Add6~13\,
	combout => \processador|Add6~14_combout\);

-- Location: LCCOMB_X81_Y49_N30
\processador|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add8~14_combout\ = \processador|Mux8~1_combout\ $ (\processador|Add8~13\ $ (!\processador|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux8~1_combout\,
	datad => \processador|Mux7~1_combout\,
	cin => \processador|Add8~13\,
	combout => \processador|Add8~14_combout\);

-- Location: LCCOMB_X81_Y50_N12
\processador|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~0_combout\ = (\processador|command\(4) & ((\processador|Add6~14_combout\) # ((\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (((!\processador|Mux23~3_combout\ & \processador|Add8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|Add6~14_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Add8~14_combout\,
	combout => \processador|Mux16~0_combout\);

-- Location: LCCOMB_X81_Y50_N30
\processador|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~1_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux16~0_combout\ & ((\processador|Add5~14_combout\))) # (!\processador|Mux16~0_combout\ & (\processador|Add7~14_combout\)))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add7~14_combout\,
	datab => \processador|Add5~14_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Mux16~0_combout\,
	combout => \processador|Mux16~1_combout\);

-- Location: LCCOMB_X82_Y48_N24
\processador|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~2_combout\ = (\processador|LessThan7~1_combout\ & (!\processador|Mux23~2_combout\ & (\processador|Add4~14_combout\))) # (!\processador|LessThan7~1_combout\ & ((\processador|Mux23~2_combout\) # ((\processador|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan7~1_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|Add4~14_combout\,
	datad => \processador|Mux16~1_combout\,
	combout => \processador|Mux16~2_combout\);

-- Location: LCCOMB_X82_Y48_N0
\processador|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~3_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Mux16~2_combout\ & (\processador|regI~15_combout\)) # (!\processador|Mux16~2_combout\ & ((\processador|Add2~14_combout\))))) # (!\processador|Mux23~2_combout\ & 
-- (((\processador|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|regI~15_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|Add2~14_combout\,
	datad => \processador|Mux16~2_combout\,
	combout => \processador|Mux16~3_combout\);

-- Location: LCCOMB_X82_Y48_N6
\processador|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~4_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux23~1_combout\) # ((!\processador|Mux8~1_combout\)))) # (!\processador|Mux23~0_combout\ & (!\processador|Mux23~1_combout\ & ((\processador|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~0_combout\,
	datab => \processador|Mux23~1_combout\,
	datac => \processador|Mux8~1_combout\,
	datad => \processador|Mux16~3_combout\,
	combout => \processador|Mux16~4_combout\);

-- Location: LCCOMB_X82_Y48_N28
\processador|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~5_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux16~4_combout\ & (\processador|address[0]~reg0_q\)) # (!\processador|Mux16~4_combout\ & ((\processador|regI~14_combout\))))) # (!\processador|Mux23~1_combout\ & 
-- (((\processador|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~reg0_q\,
	datab => \processador|Mux23~1_combout\,
	datac => \processador|regI~14_combout\,
	datad => \processador|Mux16~4_combout\,
	combout => \processador|Mux16~5_combout\);

-- Location: LCCOMB_X82_Y48_N16
\processador|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux16~6_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(0))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux23~11_combout\,
	datac => \processador|regI\(0),
	datad => \processador|Mux16~5_combout\,
	combout => \processador|Mux16~6_combout\);

-- Location: LCCOMB_X82_Y48_N18
\processador|registers~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~61_combout\ = (\processador|registers~60_combout\ & (((\processador|Mux16~6_combout\)) # (!\processador|registers[2][6]~19_combout\))) # (!\processador|registers~60_combout\ & (\processador|registers[2][6]~19_combout\ & 
-- (\processador|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~60_combout\,
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|Mux7~1_combout\,
	datad => \processador|Mux16~6_combout\,
	combout => \processador|registers~61_combout\);

-- Location: LCCOMB_X79_Y48_N2
\processador|registers~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~62_combout\ = (\processador|op_type\(1) & (\input[7]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[7]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~61_combout\,
	combout => \processador|registers~62_combout\);

-- Location: FF_X79_Y48_N3
\processador|registers[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~62_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(7),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][0]~q\);

-- Location: LCCOMB_X79_Y49_N14
\processador|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux8~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & ((\processador|registers[1][0]~q\))) # (!\processador|reg1\(0) & (\processador|registers[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][0]~q\,
	datab => \processador|registers[1][0]~q\,
	datac => \processador|reg1\(0),
	datad => \processador|reg1\(1),
	combout => \processador|Mux8~0_combout\);

-- Location: LCCOMB_X80_Y49_N6
\processador|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux8~1_combout\ = (\processador|Mux8~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][0]~q\,
	datad => \processador|Mux8~0_combout\,
	combout => \processador|Mux8~1_combout\);

-- Location: LCCOMB_X81_Y48_N0
\processador|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~1_cout\ = CARRY((!\processador|Mux15~1_combout\ & \processador|int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|int\(7),
	datad => VCC,
	cout => \processador|LessThan5~1_cout\);

-- Location: LCCOMB_X81_Y48_N2
\processador|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~3_cout\ = CARRY((\processador|int\(6) & (\processador|Mux14~1_combout\ & !\processador|LessThan5~1_cout\)) # (!\processador|int\(6) & ((\processador|Mux14~1_combout\) # (!\processador|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(6),
	datab => \processador|Mux14~1_combout\,
	datad => VCC,
	cin => \processador|LessThan5~1_cout\,
	cout => \processador|LessThan5~3_cout\);

-- Location: LCCOMB_X81_Y48_N4
\processador|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~5_cout\ = CARRY((\processador|int\(5) & ((!\processador|LessThan5~3_cout\) # (!\processador|Mux13~1_combout\))) # (!\processador|int\(5) & (!\processador|Mux13~1_combout\ & !\processador|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|Mux13~1_combout\,
	datad => VCC,
	cin => \processador|LessThan5~3_cout\,
	cout => \processador|LessThan5~5_cout\);

-- Location: LCCOMB_X81_Y48_N6
\processador|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~7_cout\ = CARRY((\processador|int\(4) & (\processador|Mux12~1_combout\ & !\processador|LessThan5~5_cout\)) # (!\processador|int\(4) & ((\processador|Mux12~1_combout\) # (!\processador|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(4),
	datab => \processador|Mux12~1_combout\,
	datad => VCC,
	cin => \processador|LessThan5~5_cout\,
	cout => \processador|LessThan5~7_cout\);

-- Location: LCCOMB_X81_Y48_N8
\processador|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~9_cout\ = CARRY((\processador|int\(3) & ((!\processador|LessThan5~7_cout\) # (!\processador|Mux11~1_combout\))) # (!\processador|int\(3) & (!\processador|Mux11~1_combout\ & !\processador|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(3),
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|LessThan5~7_cout\,
	cout => \processador|LessThan5~9_cout\);

-- Location: LCCOMB_X81_Y48_N10
\processador|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~11_cout\ = CARRY((\processador|int\(2) & (\processador|Mux10~1_combout\ & !\processador|LessThan5~9_cout\)) # (!\processador|int\(2) & ((\processador|Mux10~1_combout\) # (!\processador|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|LessThan5~9_cout\,
	cout => \processador|LessThan5~11_cout\);

-- Location: LCCOMB_X81_Y48_N12
\processador|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~13_cout\ = CARRY((\processador|Mux9~1_combout\ & (\processador|int\(1) & !\processador|LessThan5~11_cout\)) # (!\processador|Mux9~1_combout\ & ((\processador|int\(1)) # (!\processador|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|int\(1),
	datad => VCC,
	cin => \processador|LessThan5~11_cout\,
	cout => \processador|LessThan5~13_cout\);

-- Location: LCCOMB_X81_Y48_N14
\processador|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan5~14_combout\ = (\processador|int\(0) & ((\processador|LessThan5~13_cout\) # (!\processador|Mux8~1_combout\))) # (!\processador|int\(0) & (\processador|LessThan5~13_cout\ & !\processador|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|int\(0),
	datad => \processador|Mux8~1_combout\,
	cin => \processador|LessThan5~13_cout\,
	combout => \processador|LessThan5~14_combout\);

-- Location: LCCOMB_X81_Y51_N10
\processador|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~1_cout\ = CARRY((\processador|Mux6~1_combout\ & !\processador|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux6~1_combout\,
	datab => \processador|Mux15~1_combout\,
	datad => VCC,
	cout => \processador|LessThan6~1_cout\);

-- Location: LCCOMB_X81_Y51_N12
\processador|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~3_cout\ = CARRY((\processador|Mux5~1_combout\ & (\processador|Mux14~1_combout\ & !\processador|LessThan6~1_cout\)) # (!\processador|Mux5~1_combout\ & ((\processador|Mux14~1_combout\) # (!\processador|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux5~1_combout\,
	datab => \processador|Mux14~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~1_cout\,
	cout => \processador|LessThan6~3_cout\);

-- Location: LCCOMB_X81_Y51_N14
\processador|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~5_cout\ = CARRY((\processador|Mux13~1_combout\ & (\processador|Mux4~1_combout\ & !\processador|LessThan6~3_cout\)) # (!\processador|Mux13~1_combout\ & ((\processador|Mux4~1_combout\) # (!\processador|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|Mux4~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~3_cout\,
	cout => \processador|LessThan6~5_cout\);

-- Location: LCCOMB_X81_Y51_N16
\processador|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~7_cout\ = CARRY((\processador|Mux12~1_combout\ & ((!\processador|LessThan6~5_cout\) # (!\processador|Mux3~1_combout\))) # (!\processador|Mux12~1_combout\ & (!\processador|Mux3~1_combout\ & !\processador|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|Mux3~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~5_cout\,
	cout => \processador|LessThan6~7_cout\);

-- Location: LCCOMB_X81_Y51_N18
\processador|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~9_cout\ = CARRY((\processador|Mux2~1_combout\ & ((!\processador|LessThan6~7_cout\) # (!\processador|Mux11~1_combout\))) # (!\processador|Mux2~1_combout\ & (!\processador|Mux11~1_combout\ & !\processador|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~7_cout\,
	cout => \processador|LessThan6~9_cout\);

-- Location: LCCOMB_X81_Y51_N20
\processador|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~11_cout\ = CARRY((\processador|Mux1~1_combout\ & (\processador|Mux10~1_combout\ & !\processador|LessThan6~9_cout\)) # (!\processador|Mux1~1_combout\ & ((\processador|Mux10~1_combout\) # (!\processador|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux1~1_combout\,
	datab => \processador|Mux10~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~9_cout\,
	cout => \processador|LessThan6~11_cout\);

-- Location: LCCOMB_X81_Y51_N22
\processador|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~13_cout\ = CARRY((\processador|Mux9~1_combout\ & (\processador|Mux0~1_combout\ & !\processador|LessThan6~11_cout\)) # (!\processador|Mux9~1_combout\ & ((\processador|Mux0~1_combout\) # (!\processador|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|Mux0~1_combout\,
	datad => VCC,
	cin => \processador|LessThan6~11_cout\,
	cout => \processador|LessThan6~13_cout\);

-- Location: LCCOMB_X81_Y51_N24
\processador|LessThan6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan6~14_combout\ = (\processador|Mux7~1_combout\ & ((\processador|LessThan6~13_cout\) # (!\processador|Mux8~1_combout\))) # (!\processador|Mux7~1_combout\ & (\processador|LessThan6~13_cout\ & !\processador|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux7~1_combout\,
	datad => \processador|Mux8~1_combout\,
	cin => \processador|LessThan6~13_cout\,
	combout => \processador|LessThan6~14_combout\);

-- Location: LCCOMB_X81_Y51_N30
\processador|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~3_combout\ = (\processador|command\(4) & (\processador|LessThan5~14_combout\)) # (!\processador|command\(4) & ((\processador|LessThan6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|command\(4),
	datac => \processador|LessThan5~14_combout\,
	datad => \processador|LessThan6~14_combout\,
	combout => \processador|Mux23~3_combout\);

-- Location: LCCOMB_X80_Y50_N28
\processador|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~4_combout\ = (\processador|command\(4) & ((\processador|Add6~0_combout\) # ((\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (((!\processador|Mux23~3_combout\ & \processador|Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add6~0_combout\,
	datab => \processador|command\(4),
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Add8~0_combout\,
	combout => \processador|Mux23~4_combout\);

-- Location: LCCOMB_X79_Y50_N0
\processador|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~5_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux23~4_combout\ & (\processador|Add5~0_combout\)) # (!\processador|Mux23~4_combout\ & ((\processador|Add7~0_combout\))))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add5~0_combout\,
	datab => \processador|Add7~0_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Mux23~4_combout\,
	combout => \processador|Mux23~5_combout\);

-- Location: LCCOMB_X79_Y50_N2
\processador|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~6_combout\ = (\processador|Mux23~2_combout\ & (!\processador|LessThan7~1_combout\)) # (!\processador|Mux23~2_combout\ & ((\processador|LessThan7~1_combout\ & (\processador|Add4~0_combout\)) # (!\processador|LessThan7~1_combout\ & 
-- ((\processador|Mux23~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~2_combout\,
	datab => \processador|LessThan7~1_combout\,
	datac => \processador|Add4~0_combout\,
	datad => \processador|Mux23~5_combout\,
	combout => \processador|Mux23~6_combout\);

-- Location: LCCOMB_X79_Y50_N24
\processador|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~7_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Mux23~6_combout\ & (\processador|regI~1_combout\)) # (!\processador|Mux23~6_combout\ & ((\processador|Add2~0_combout\))))) # (!\processador|Mux23~2_combout\ & 
-- (((\processador|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~2_combout\,
	datab => \processador|regI~1_combout\,
	datac => \processador|Add2~0_combout\,
	datad => \processador|Mux23~6_combout\,
	combout => \processador|Mux23~7_combout\);

-- Location: LCCOMB_X76_Y50_N6
\processador|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~8_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux23~0_combout\) # ((\processador|regI~0_combout\)))) # (!\processador|Mux23~1_combout\ & (!\processador|Mux23~0_combout\ & ((\processador|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|regI~0_combout\,
	datad => \processador|Mux23~7_combout\,
	combout => \processador|Mux23~8_combout\);

-- Location: LCCOMB_X76_Y50_N16
\processador|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~9_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux23~8_combout\ & ((\processador|address[7]~reg0_q\))) # (!\processador|Mux23~8_combout\ & (!\processador|Mux15~1_combout\)))) # (!\processador|Mux23~0_combout\ & 
-- (((\processador|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|address[7]~reg0_q\,
	datac => \processador|Mux23~0_combout\,
	datad => \processador|Mux23~8_combout\,
	combout => \processador|Mux23~9_combout\);

-- Location: LCCOMB_X76_Y50_N8
\processador|Mux23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux23~12_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(7))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux23~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(7),
	datad => \processador|Mux23~9_combout\,
	combout => \processador|Mux23~12_combout\);

-- Location: LCCOMB_X77_Y49_N6
\processador|registers~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~21_combout\ = (\processador|registers[2][6]~18_combout\ & ((\processador|registers~20_combout\ & ((\processador|Mux23~12_combout\))) # (!\processador|registers~20_combout\ & (\processador|Mux15~1_combout\)))) # 
-- (!\processador|registers[2][6]~18_combout\ & (\processador|registers~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[2][6]~18_combout\,
	datab => \processador|registers~20_combout\,
	datac => \processador|Mux15~1_combout\,
	datad => \processador|Mux23~12_combout\,
	combout => \processador|registers~21_combout\);

-- Location: LCCOMB_X77_Y49_N12
\processador|registers~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~22_combout\ = (\processador|op_type\(1) & (\input[0]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~21_combout\,
	combout => \processador|registers~22_combout\);

-- Location: FF_X77_Y49_N13
\processador|registers[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~22_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(0),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][7]~q\);

-- Location: LCCOMB_X79_Y48_N12
\processador|registers~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~2_combout\ = (\processador|registers[0][3]~1_combout\ & ((\processador|registers[0][3]~0_combout\) # ((\input[0]~input_o\)))) # (!\processador|registers[0][3]~1_combout\ & (!\processador|registers[0][3]~0_combout\ & 
-- (\processador|int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~1_combout\,
	datab => \processador|registers[0][3]~0_combout\,
	datac => \processador|int\(7),
	datad => \input[0]~input_o\,
	combout => \processador|registers~2_combout\);

-- Location: LCCOMB_X79_Y49_N24
\processador|registers~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~3_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|registers~2_combout\ & ((\processador|Mux15~1_combout\))) # (!\processador|registers~2_combout\ & (\processador|Mux6~1_combout\)))) # 
-- (!\processador|registers[0][3]~0_combout\ & (((\processador|registers~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux6~1_combout\,
	datab => \processador|registers[0][3]~0_combout\,
	datac => \processador|Mux15~1_combout\,
	datad => \processador|registers~2_combout\,
	combout => \processador|registers~3_combout\);

-- Location: LCCOMB_X79_Y49_N8
\processador|registers[0][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][7]~feeder_combout\ = \processador|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~3_combout\,
	combout => \processador|registers[0][7]~feeder_combout\);

-- Location: FF_X79_Y49_N9
\processador|registers[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][7]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(0),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][7]~q\);

-- Location: LCCOMB_X80_Y49_N12
\processador|registers[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][7]~feeder_combout\ = \processador|registers~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~3_combout\,
	combout => \processador|registers[1][7]~feeder_combout\);

-- Location: FF_X80_Y49_N13
\processador|registers[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][7]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(0),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][7]~q\);

-- Location: LCCOMB_X80_Y48_N20
\processador|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux6~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & ((\processador|registers[1][7]~q\))) # (!\processador|reg2\(0) & (\processador|registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datab => \processador|reg2\(0),
	datac => \processador|registers[0][7]~q\,
	datad => \processador|registers[1][7]~q\,
	combout => \processador|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y48_N2
\processador|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux6~1_combout\ = (\processador|Mux6~0_combout\) # ((\processador|reg2\(1) & \processador|registers[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datac => \processador|registers[2][7]~q\,
	datad => \processador|Mux6~0_combout\,
	combout => \processador|Mux6~1_combout\);

-- Location: LCCOMB_X80_Y50_N0
\processador|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~0_combout\ = (\processador|command\(4) & ((\processador|Add6~2_combout\) # ((\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (((!\processador|Mux23~3_combout\ & \processador|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add6~2_combout\,
	datab => \processador|command\(4),
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Add8~2_combout\,
	combout => \processador|Mux22~0_combout\);

-- Location: LCCOMB_X80_Y50_N2
\processador|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~1_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux22~0_combout\ & ((\processador|Add5~2_combout\))) # (!\processador|Mux22~0_combout\ & (\processador|Add7~2_combout\)))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add7~2_combout\,
	datab => \processador|Add5~2_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Mux22~0_combout\,
	combout => \processador|Mux22~1_combout\);

-- Location: LCCOMB_X77_Y51_N16
\processador|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~2_combout\ = (\processador|LessThan7~1_combout\ & (\processador|Add4~2_combout\ & (!\processador|Mux23~2_combout\))) # (!\processador|LessThan7~1_combout\ & (((\processador|Mux23~2_combout\) # (\processador|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan7~1_combout\,
	datab => \processador|Add4~2_combout\,
	datac => \processador|Mux23~2_combout\,
	datad => \processador|Mux22~1_combout\,
	combout => \processador|Mux22~2_combout\);

-- Location: LCCOMB_X77_Y51_N24
\processador|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~3_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Mux22~2_combout\ & ((\processador|regI~3_combout\))) # (!\processador|Mux22~2_combout\ & (\processador|Add2~2_combout\)))) # (!\processador|Mux23~2_combout\ & 
-- (((\processador|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add2~2_combout\,
	datab => \processador|regI~3_combout\,
	datac => \processador|Mux23~2_combout\,
	datad => \processador|Mux22~2_combout\,
	combout => \processador|Mux22~3_combout\);

-- Location: LCCOMB_X77_Y51_N6
\processador|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~4_combout\ = (\processador|Mux23~1_combout\ & (((\processador|Mux23~0_combout\)))) # (!\processador|Mux23~1_combout\ & ((\processador|Mux23~0_combout\ & (!\processador|Mux14~1_combout\)) # (!\processador|Mux23~0_combout\ & 
-- ((\processador|Mux22~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|Mux14~1_combout\,
	datac => \processador|Mux23~0_combout\,
	datad => \processador|Mux22~3_combout\,
	combout => \processador|Mux22~4_combout\);

-- Location: LCCOMB_X77_Y51_N0
\processador|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~5_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux22~4_combout\ & (\processador|address[6]~reg0_q\)) # (!\processador|Mux22~4_combout\ & ((\processador|regI~2_combout\))))) # (!\processador|Mux23~1_combout\ & 
-- (((\processador|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|address[6]~reg0_q\,
	datac => \processador|regI~2_combout\,
	datad => \processador|Mux22~4_combout\,
	combout => \processador|Mux22~5_combout\);

-- Location: LCCOMB_X77_Y51_N8
\processador|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux22~6_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(6))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux22~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(6),
	datad => \processador|Mux22~5_combout\,
	combout => \processador|Mux22~6_combout\);

-- Location: LCCOMB_X77_Y49_N10
\processador|registers~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~31_combout\ = (\processador|registers[2][6]~19_combout\ & ((\processador|registers~30_combout\ & ((\processador|Mux22~6_combout\))) # (!\processador|registers~30_combout\ & (\processador|Mux5~1_combout\)))) # 
-- (!\processador|registers[2][6]~19_combout\ & (((\processador|registers~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux5~1_combout\,
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|registers~30_combout\,
	datad => \processador|Mux22~6_combout\,
	combout => \processador|registers~31_combout\);

-- Location: LCCOMB_X77_Y49_N30
\processador|registers~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~32_combout\ = (\processador|op_type\(1) & (\input[1]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~31_combout\,
	combout => \processador|registers~32_combout\);

-- Location: FF_X77_Y49_N31
\processador|registers[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~32_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(1),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][6]~q\);

-- Location: LCCOMB_X80_Y48_N24
\processador|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux14~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & (\processador|registers[1][6]~q\)) # (!\processador|reg1\(0) & ((\processador|registers[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][6]~q\,
	datab => \processador|reg1\(0),
	datac => \processador|registers[0][6]~q\,
	datad => \processador|reg1\(1),
	combout => \processador|Mux14~0_combout\);

-- Location: LCCOMB_X80_Y48_N6
\processador|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux14~1_combout\ = (\processador|Mux14~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][6]~q\,
	datad => \processador|Mux14~0_combout\,
	combout => \processador|Mux14~1_combout\);

-- Location: LCCOMB_X79_Y50_N12
\processador|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~4_combout\ = ((\processador|Mux13~1_combout\ $ (\processador|int\(5) $ (!\processador|Add2~3\)))) # (GND)
-- \processador|Add2~5\ = CARRY((\processador|Mux13~1_combout\ & ((\processador|int\(5)) # (!\processador|Add2~3\))) # (!\processador|Mux13~1_combout\ & (\processador|int\(5) & !\processador|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|int\(5),
	datad => VCC,
	cin => \processador|Add2~3\,
	combout => \processador|Add2~4_combout\,
	cout => \processador|Add2~5\);

-- Location: LCCOMB_X79_Y50_N14
\processador|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~6_combout\ = (\processador|int\(4) & ((\processador|Mux12~1_combout\ & (\processador|Add2~5\ & VCC)) # (!\processador|Mux12~1_combout\ & (!\processador|Add2~5\)))) # (!\processador|int\(4) & ((\processador|Mux12~1_combout\ & 
-- (!\processador|Add2~5\)) # (!\processador|Mux12~1_combout\ & ((\processador|Add2~5\) # (GND)))))
-- \processador|Add2~7\ = CARRY((\processador|int\(4) & (!\processador|Mux12~1_combout\ & !\processador|Add2~5\)) # (!\processador|int\(4) & ((!\processador|Add2~5\) # (!\processador|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(4),
	datab => \processador|Mux12~1_combout\,
	datad => VCC,
	cin => \processador|Add2~5\,
	combout => \processador|Add2~6_combout\,
	cout => \processador|Add2~7\);

-- Location: LCCOMB_X79_Y50_N16
\processador|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add2~8_combout\ = ((\processador|int\(3) $ (\processador|Mux11~1_combout\ $ (!\processador|Add2~7\)))) # (GND)
-- \processador|Add2~9\ = CARRY((\processador|int\(3) & ((\processador|Mux11~1_combout\) # (!\processador|Add2~7\))) # (!\processador|int\(3) & (\processador|Mux11~1_combout\ & !\processador|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(3),
	datab => \processador|Mux11~1_combout\,
	datad => VCC,
	cin => \processador|Add2~7\,
	combout => \processador|Add2~8_combout\,
	cout => \processador|Add2~9\);

-- Location: LCCOMB_X81_Y50_N2
\processador|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~0_combout\ = (\processador|command\(4) & ((\processador|Add6~10_combout\))) # (!\processador|command\(4) & (\processador|Add8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|command\(4),
	datac => \processador|Add8~10_combout\,
	datad => \processador|Add6~10_combout\,
	combout => \processador|Mux18~0_combout\);

-- Location: LCCOMB_X81_Y50_N0
\processador|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~1_combout\ = (\processador|command\(4) & (((\processador|LessThan5~14_combout\) # (\processador|Mux18~0_combout\)))) # (!\processador|command\(4) & (!\processador|LessThan6~14_combout\ & ((\processador|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan6~14_combout\,
	datab => \processador|command\(4),
	datac => \processador|LessThan5~14_combout\,
	datad => \processador|Mux18~0_combout\,
	combout => \processador|Mux18~1_combout\);

-- Location: LCCOMB_X81_Y50_N6
\processador|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~2_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux18~1_combout\ & (\processador|Add5~10_combout\)) # (!\processador|Mux18~1_combout\ & ((\processador|Add7~10_combout\))))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add5~10_combout\,
	datab => \processador|Add7~10_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Mux18~1_combout\,
	combout => \processador|Mux18~2_combout\);

-- Location: LCCOMB_X82_Y48_N2
\processador|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~3_combout\ = (\processador|LessThan7~1_combout\ & (!\processador|Mux23~2_combout\ & (\processador|Add4~10_combout\))) # (!\processador|LessThan7~1_combout\ & ((\processador|Mux23~2_combout\) # ((\processador|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan7~1_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|Add4~10_combout\,
	datad => \processador|Mux18~2_combout\,
	combout => \processador|Mux18~3_combout\);

-- Location: LCCOMB_X82_Y48_N20
\processador|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~4_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Mux18~3_combout\ & (\processador|regI~11_combout\)) # (!\processador|Mux18~3_combout\ & ((\processador|Add2~10_combout\))))) # (!\processador|Mux23~2_combout\ & 
-- (((\processador|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|regI~11_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|Add2~10_combout\,
	datad => \processador|Mux18~3_combout\,
	combout => \processador|Mux18~4_combout\);

-- Location: LCCOMB_X82_Y48_N10
\processador|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~5_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux23~1_combout\) # ((!\processador|Mux10~1_combout\)))) # (!\processador|Mux23~0_combout\ & (!\processador|Mux23~1_combout\ & ((\processador|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~0_combout\,
	datab => \processador|Mux23~1_combout\,
	datac => \processador|Mux10~1_combout\,
	datad => \processador|Mux18~4_combout\,
	combout => \processador|Mux18~5_combout\);

-- Location: LCCOMB_X82_Y48_N12
\processador|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~6_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux18~5_combout\ & (\processador|address[2]~reg0_q\)) # (!\processador|Mux18~5_combout\ & ((\processador|regI~10_combout\))))) # (!\processador|Mux23~1_combout\ & 
-- (((\processador|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[2]~reg0_q\,
	datab => \processador|Mux23~1_combout\,
	datac => \processador|regI~10_combout\,
	datad => \processador|Mux18~5_combout\,
	combout => \processador|Mux18~6_combout\);

-- Location: LCCOMB_X82_Y48_N4
\processador|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux18~7_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(2))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Mux23~11_combout\,
	datac => \processador|regI\(2),
	datad => \processador|Mux18~6_combout\,
	combout => \processador|Mux18~7_combout\);

-- Location: LCCOMB_X81_Y51_N2
\processador|registers~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~51_combout\ = (\processador|registers[2][6]~19_combout\ & ((\processador|registers~50_combout\ & ((\processador|Mux18~7_combout\))) # (!\processador|registers~50_combout\ & (\processador|Mux1~1_combout\)))) # 
-- (!\processador|registers[2][6]~19_combout\ & (((\processador|registers~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux1~1_combout\,
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|registers~50_combout\,
	datad => \processador|Mux18~7_combout\,
	combout => \processador|registers~51_combout\);

-- Location: LCCOMB_X81_Y51_N4
\processador|registers~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~52_combout\ = (\processador|op_type\(1) & (\input[5]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~51_combout\,
	combout => \processador|registers~52_combout\);

-- Location: FF_X81_Y51_N5
\processador|registers[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~52_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(5),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][2]~q\);

-- Location: LCCOMB_X80_Y49_N18
\processador|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux10~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & (\processador|registers[1][2]~q\)) # (!\processador|reg1\(0) & ((\processador|registers[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[1][2]~q\,
	datab => \processador|reg1\(0),
	datac => \processador|reg1\(1),
	datad => \processador|registers[0][2]~q\,
	combout => \processador|Mux10~0_combout\);

-- Location: LCCOMB_X81_Y49_N0
\processador|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux10~1_combout\ = (\processador|Mux10~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][2]~q\,
	datad => \processador|Mux10~0_combout\,
	combout => \processador|Mux10~1_combout\);

-- Location: LCCOMB_X82_Y51_N18
\processador|address~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~17_combout\ = (\processador|address[0]~2_combout\ & ((\processador|address[2]~reg0_q\) # ((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & (((!\processador|address[0]~6_combout\ & 
-- \processador|regI\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|address[2]~reg0_q\,
	datac => \processador|address[0]~6_combout\,
	datad => \processador|regI\(2),
	combout => \processador|address~17_combout\);

-- Location: LCCOMB_X82_Y51_N8
\processador|address~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~18_combout\ = (\processador|address[0]~6_combout\ & ((\processador|address~17_combout\ & ((\processador|int\(2)))) # (!\processador|address~17_combout\ & (\processador|Mux10~1_combout\)))) # (!\processador|address[0]~6_combout\ & 
-- (((\processador|address~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux10~1_combout\,
	datab => \processador|int\(2),
	datac => \processador|address[0]~6_combout\,
	datad => \processador|address~17_combout\,
	combout => \processador|address~18_combout\);

-- Location: LCCOMB_X76_Y51_N2
\processador|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~17_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~15_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RINST~q\,
	datac => \processador|Add0~15_combout\,
	datad => \processador|address~18_combout\,
	combout => \processador|Add0~17_combout\);

-- Location: FF_X76_Y51_N3
\processador|address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~17_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[2]~reg0_q\);

-- Location: FF_X80_Y48_N7
\processador|m_w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux14~1_combout\,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(6));

-- Location: FF_X80_Y48_N31
\processador|m_w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux13~1_combout\,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(5));

-- Location: FF_X81_Y49_N11
\processador|m_w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|Mux12~1_combout\,
	sload => VCC,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(4));

-- Location: FF_X81_Y49_N3
\processador|m_w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux11~1_combout\,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(3));

-- Location: FF_X81_Y49_N1
\processador|m_w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux10~1_combout\,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(2));

-- Location: FF_X81_Y49_N15
\processador|m_w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|Mux9~1_combout\,
	sload => VCC,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(1));

-- Location: FF_X81_Y49_N9
\processador|m_w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|Mux8~1_combout\,
	sload => VCC,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(0));

-- Location: M9K_X78_Y51_N0
\memoria|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00000000740020000000000000D20000000D0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "soma.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:memoria|altsyncram:altsyncram_component|altsyncram_geq3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \processador|stmem~q\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X79_Y51_N4
\processador|command~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~3_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(1),
	combout => \processador|command~3_combout\);

-- Location: LCCOMB_X80_Y51_N30
\processador|command[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command[6]~2_combout\ = ((!\processador|mem_step~q\ & \processador|state.RINST~q\)) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|mem_step~q\,
	datab => \processador|state.RINST~q\,
	datad => \processador|state.RESET~q\,
	combout => \processador|command[6]~2_combout\);

-- Location: FF_X80_Y51_N29
\processador|command[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~3_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(6));

-- Location: LCCOMB_X80_Y48_N0
\processador|reg1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reg1~0_combout\ = (\processador|command\(6) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|command\(6),
	datad => \processador|state.RESET~q\,
	combout => \processador|reg1~0_combout\);

-- Location: FF_X80_Y48_N1
\processador|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|reg1~0_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|reg1\(0));

-- Location: LCCOMB_X80_Y49_N4
\processador|registers[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][3]~feeder_combout\ = \processador|registers~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~44_combout\,
	combout => \processador|registers[1][3]~feeder_combout\);

-- Location: FF_X80_Y49_N5
\processador|registers[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][3]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(4),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][3]~q\);

-- Location: LCCOMB_X80_Y49_N28
\processador|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux11~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & ((\processador|registers[1][3]~q\))) # (!\processador|reg1\(0) & (\processador|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~q\,
	datab => \processador|reg1\(0),
	datac => \processador|registers[1][3]~q\,
	datad => \processador|reg1\(1),
	combout => \processador|Mux11~0_combout\);

-- Location: LCCOMB_X81_Y49_N2
\processador|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux11~1_combout\ = (\processador|Mux11~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][3]~q\,
	datad => \processador|Mux11~0_combout\,
	combout => \processador|Mux11~1_combout\);

-- Location: LCCOMB_X77_Y50_N30
\processador|registers~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~46_combout\ = (\processador|registers~45_combout\ & (((\processador|Mux19~6_combout\) # (!\processador|registers[2][6]~18_combout\)))) # (!\processador|registers~45_combout\ & (\processador|Mux11~1_combout\ & 
-- (\processador|registers[2][6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~45_combout\,
	datab => \processador|Mux11~1_combout\,
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|Mux19~6_combout\,
	combout => \processador|registers~46_combout\);

-- Location: LCCOMB_X77_Y49_N14
\processador|registers~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~47_combout\ = (\processador|op_type\(1) & ((\input[4]~input_o\))) # (!\processador|op_type\(1) & (\processador|registers~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers~46_combout\,
	datab => \processador|op_type\(1),
	datad => \input[4]~input_o\,
	combout => \processador|registers~47_combout\);

-- Location: FF_X77_Y49_N15
\processador|registers[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~47_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(4),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][3]~q\);

-- Location: LCCOMB_X80_Y49_N10
\processador|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux2~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & ((\processador|registers[1][3]~q\))) # (!\processador|reg2\(0) & (\processador|registers[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~q\,
	datab => \processador|registers[1][3]~q\,
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|Mux2~0_combout\);

-- Location: LCCOMB_X81_Y49_N8
\processador|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux2~1_combout\ = (\processador|Mux2~0_combout\) # ((\processador|reg2\(1) & \processador|registers[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datab => \processador|registers[2][3]~q\,
	datad => \processador|Mux2~0_combout\,
	combout => \processador|Mux2~1_combout\);

-- Location: LCCOMB_X77_Y50_N22
\processador|regI~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~8_combout\ = (\processador|Mux11~1_combout\) # ((\processador|command\(4) & ((\processador|int\(3)))) # (!\processador|command\(4) & (\processador|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|command\(4),
	datac => \processador|int\(3),
	datad => \processador|Mux11~1_combout\,
	combout => \processador|regI~8_combout\);

-- Location: LCCOMB_X77_Y50_N12
\processador|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~2_combout\ = (\processador|LessThan7~1_combout\ & ((\processador|Mux23~2_combout\ & (\processador|Add2~8_combout\)) # (!\processador|Mux23~2_combout\ & ((\processador|Add4~8_combout\))))) # (!\processador|LessThan7~1_combout\ & 
-- (((\processador|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add2~8_combout\,
	datab => \processador|LessThan7~1_combout\,
	datac => \processador|Mux23~2_combout\,
	datad => \processador|Add4~8_combout\,
	combout => \processador|Mux19~2_combout\);

-- Location: LCCOMB_X77_Y50_N18
\processador|regI~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~9_combout\ = (\processador|Mux11~1_combout\ & ((\processador|command\(4) & ((\processador|int\(3)))) # (!\processador|command\(4) & (\processador|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|command\(4),
	datac => \processador|int\(3),
	datad => \processador|Mux11~1_combout\,
	combout => \processador|regI~9_combout\);

-- Location: LCCOMB_X77_Y50_N20
\processador|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~0_combout\ = (\processador|command\(4) & (((\processador|Add6~8_combout\) # (\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (\processador|Add8~8_combout\ & ((!\processador|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add8~8_combout\,
	datab => \processador|command\(4),
	datac => \processador|Add6~8_combout\,
	datad => \processador|Mux23~3_combout\,
	combout => \processador|Mux19~0_combout\);

-- Location: LCCOMB_X77_Y50_N6
\processador|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~1_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux19~0_combout\ & ((\processador|Add5~8_combout\))) # (!\processador|Mux19~0_combout\ & (\processador|Add7~8_combout\)))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~3_combout\,
	datab => \processador|Add7~8_combout\,
	datac => \processador|Add5~8_combout\,
	datad => \processador|Mux19~0_combout\,
	combout => \processador|Mux19~1_combout\);

-- Location: LCCOMB_X77_Y50_N8
\processador|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~3_combout\ = (\processador|Mux19~2_combout\ & ((\processador|regI~9_combout\) # ((\processador|LessThan7~1_combout\)))) # (!\processador|Mux19~2_combout\ & (((!\processador|LessThan7~1_combout\ & \processador|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux19~2_combout\,
	datab => \processador|regI~9_combout\,
	datac => \processador|LessThan7~1_combout\,
	datad => \processador|Mux19~1_combout\,
	combout => \processador|Mux19~3_combout\);

-- Location: LCCOMB_X77_Y50_N26
\processador|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~4_combout\ = (\processador|Mux23~1_combout\ & ((\processador|regI~8_combout\) # ((\processador|Mux23~0_combout\)))) # (!\processador|Mux23~1_combout\ & (((\processador|Mux19~3_combout\ & !\processador|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|regI~8_combout\,
	datab => \processador|Mux23~1_combout\,
	datac => \processador|Mux19~3_combout\,
	datad => \processador|Mux23~0_combout\,
	combout => \processador|Mux19~4_combout\);

-- Location: LCCOMB_X77_Y50_N16
\processador|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~5_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux19~4_combout\ & (\processador|address[3]~reg0_q\)) # (!\processador|Mux19~4_combout\ & ((!\processador|Mux11~1_combout\))))) # (!\processador|Mux23~0_combout\ & 
-- (((\processador|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[3]~reg0_q\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|Mux19~4_combout\,
	datad => \processador|Mux11~1_combout\,
	combout => \processador|Mux19~5_combout\);

-- Location: LCCOMB_X77_Y50_N24
\processador|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux19~6_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(3))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux19~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(3),
	datad => \processador|Mux19~5_combout\,
	combout => \processador|Mux19~6_combout\);

-- Location: FF_X77_Y50_N25
\processador|regI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux19~6_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(3));

-- Location: LCCOMB_X77_Y50_N4
\processador|address~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~15_combout\ = (\processador|address[0]~2_combout\ & (((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & ((\processador|address[0]~6_combout\ & ((\processador|Mux11~1_combout\))) # 
-- (!\processador|address[0]~6_combout\ & (\processador|regI\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|regI\(3),
	datac => \processador|address[0]~6_combout\,
	datad => \processador|Mux11~1_combout\,
	combout => \processador|address~15_combout\);

-- Location: LCCOMB_X77_Y50_N14
\processador|address~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~16_combout\ = (\processador|address~15_combout\ & (((\processador|int\(3)) # (!\processador|address[0]~2_combout\)))) # (!\processador|address~15_combout\ & (\processador|address[3]~reg0_q\ & ((\processador|address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[3]~reg0_q\,
	datab => \processador|address~15_combout\,
	datac => \processador|int\(3),
	datad => \processador|address[0]~2_combout\,
	combout => \processador|address~16_combout\);

-- Location: LCCOMB_X76_Y51_N8
\processador|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~14_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~12_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Add0~12_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|address~16_combout\,
	combout => \processador|Add0~14_combout\);

-- Location: FF_X76_Y51_N9
\processador|address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~14_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[3]~reg0_q\);

-- Location: LCCOMB_X79_Y51_N26
\processador|command~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~5_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(5),
	combout => \processador|command~5_combout\);

-- Location: FF_X80_Y51_N3
\processador|command[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~5_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(2));

-- Location: LCCOMB_X79_Y52_N24
\processador|iinstruction~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|iinstruction~0_combout\ = (\processador|command\(2) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|command\(2),
	datad => \processador|state.RESET~q\,
	combout => \processador|iinstruction~0_combout\);

-- Location: FF_X79_Y52_N25
\processador|iinstruction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|iinstruction~0_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|iinstruction\(2));

-- Location: LCCOMB_X80_Y52_N4
\processador|registers[2][6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~10_combout\ = (\processador|iinstruction\(2) & ((!\processador|iinstruction\(0)))) # (!\processador|iinstruction\(2) & (!\processador|command\(4) & \processador|iinstruction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|iinstruction\(2),
	datac => \processador|command\(4),
	datad => \processador|iinstruction\(0),
	combout => \processador|registers[2][6]~10_combout\);

-- Location: LCCOMB_X81_Y52_N28
\processador|registers[2][6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~9_combout\ = (\processador|iinstruction\(3) & (\processador|iinstruction\(2) & (!\processador|iinstruction\(1) & \processador|iinstruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(1),
	datad => \processador|iinstruction\(0),
	combout => \processador|registers[2][6]~9_combout\);

-- Location: LCCOMB_X80_Y52_N26
\processador|registers[2][6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[2][6]~11_combout\ = (\processador|registers[2][6]~9_combout\) # ((\processador|iinstruction\(1) & (\processador|registers[2][6]~10_combout\ & !\processador|iinstruction\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|registers[2][6]~10_combout\,
	datac => \processador|iinstruction\(3),
	datad => \processador|registers[2][6]~9_combout\,
	combout => \processador|registers[2][6]~11_combout\);

-- Location: LCCOMB_X79_Y52_N30
\processador|registers[0][3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~16_combout\ = (\processador|registers[2][6]~7_combout\) # ((!\processador|op_type\(1) & ((\processador|registers[0][3]~15_combout\) # (!\processador|registers[2][6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~15_combout\,
	datab => \processador|registers[2][6]~7_combout\,
	datac => \processador|op_type\(1),
	datad => \processador|registers[2][6]~11_combout\,
	combout => \processador|registers[0][3]~16_combout\);

-- Location: LCCOMB_X80_Y52_N16
\processador|registers[0][3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~14_combout\ = ((!\processador|flags~2_combout\ & ((\processador|reg1\(0)) # (\processador|reg1\(1))))) # (!\processador|registers[2][6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg1\(0),
	datab => \processador|registers[2][6]~5_combout\,
	datac => \processador|reg1\(1),
	datad => \processador|flags~2_combout\,
	combout => \processador|registers[0][3]~14_combout\);

-- Location: LCCOMB_X79_Y52_N14
\processador|registers[0][3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][3]~17_combout\ = ((!\processador|registers[0][3]~14_combout\ & ((!\processador|state.OP~q\) # (!\processador|registers[0][3]~16_combout\)))) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~16_combout\,
	datab => \processador|state.RESET~q\,
	datac => \processador|state.OP~q\,
	datad => \processador|registers[0][3]~14_combout\,
	combout => \processador|registers[0][3]~17_combout\);

-- Location: FF_X79_Y49_N27
\processador|registers[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][4]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(3),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][4]~q\);

-- Location: LCCOMB_X80_Y49_N2
\processador|registers[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][4]~feeder_combout\ = \processador|registers~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|registers~39_combout\,
	combout => \processador|registers[1][4]~feeder_combout\);

-- Location: FF_X80_Y49_N3
\processador|registers[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][4]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(3),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][4]~q\);

-- Location: LCCOMB_X80_Y49_N16
\processador|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux3~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & ((\processador|registers[1][4]~q\))) # (!\processador|reg2\(0) & (\processador|registers[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][4]~q\,
	datab => \processador|registers[1][4]~q\,
	datac => \processador|reg2\(1),
	datad => \processador|reg2\(0),
	combout => \processador|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y49_N26
\processador|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux3~1_combout\ = (\processador|Mux3~0_combout\) # ((\processador|reg2\(1) & \processador|registers[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg2\(1),
	datac => \processador|registers[2][4]~q\,
	datad => \processador|Mux3~0_combout\,
	combout => \processador|Mux3~1_combout\);

-- Location: LCCOMB_X82_Y50_N8
\processador|registers~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~40_combout\ = (\processador|registers[2][6]~19_combout\ & (((\processador|registers[2][6]~18_combout\)))) # (!\processador|registers[2][6]~19_combout\ & ((\processador|registers[2][6]~18_combout\ & (\processador|Mux12~1_combout\)) # 
-- (!\processador|registers[2][6]~18_combout\ & ((\processador|int\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|registers[2][6]~19_combout\,
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|int\(4),
	combout => \processador|registers~40_combout\);

-- Location: FF_X82_Y50_N23
\processador|regI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux20~7_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(4));

-- Location: LCCOMB_X82_Y50_N4
\processador|regI~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~6_combout\ = (\processador|Mux12~1_combout\) # ((\processador|command\(4) & ((\processador|int\(4)))) # (!\processador|command\(4) & (\processador|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|Mux3~1_combout\,
	datac => \processador|command\(4),
	datad => \processador|int\(4),
	combout => \processador|regI~6_combout\);

-- Location: LCCOMB_X82_Y50_N12
\processador|regI~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~7_combout\ = (\processador|Mux12~1_combout\ & ((\processador|command\(4) & ((\processador|int\(4)))) # (!\processador|command\(4) & (\processador|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|Mux3~1_combout\,
	datac => \processador|command\(4),
	datad => \processador|int\(4),
	combout => \processador|regI~7_combout\);

-- Location: LCCOMB_X81_Y49_N4
\processador|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~0_combout\ = (\processador|command\(4) & ((\processador|Add6~6_combout\))) # (!\processador|command\(4) & (\processador|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datac => \processador|Add8~6_combout\,
	datad => \processador|Add6~6_combout\,
	combout => \processador|Mux20~0_combout\);

-- Location: LCCOMB_X82_Y50_N10
\processador|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~1_combout\ = (\processador|command\(4) & ((\processador|LessThan5~14_combout\) # ((\processador|Mux20~0_combout\)))) # (!\processador|command\(4) & (((!\processador|LessThan6~14_combout\ & \processador|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|LessThan5~14_combout\,
	datac => \processador|LessThan6~14_combout\,
	datad => \processador|Mux20~0_combout\,
	combout => \processador|Mux20~1_combout\);

-- Location: LCCOMB_X82_Y50_N16
\processador|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~2_combout\ = (\processador|Mux23~3_combout\ & ((\processador|Mux20~1_combout\ & ((\processador|Add5~6_combout\))) # (!\processador|Mux20~1_combout\ & (\processador|Add7~6_combout\)))) # (!\processador|Mux23~3_combout\ & 
-- (((\processador|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add7~6_combout\,
	datab => \processador|Add5~6_combout\,
	datac => \processador|Mux23~3_combout\,
	datad => \processador|Mux20~1_combout\,
	combout => \processador|Mux20~2_combout\);

-- Location: LCCOMB_X82_Y50_N30
\processador|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~3_combout\ = (\processador|LessThan7~1_combout\ & (!\processador|Mux23~2_combout\ & (\processador|Add4~6_combout\))) # (!\processador|LessThan7~1_combout\ & ((\processador|Mux23~2_combout\) # ((\processador|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan7~1_combout\,
	datab => \processador|Mux23~2_combout\,
	datac => \processador|Add4~6_combout\,
	datad => \processador|Mux20~2_combout\,
	combout => \processador|Mux20~3_combout\);

-- Location: LCCOMB_X82_Y50_N2
\processador|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~4_combout\ = (\processador|Mux20~3_combout\ & ((\processador|regI~7_combout\) # ((!\processador|Mux23~2_combout\)))) # (!\processador|Mux20~3_combout\ & (((\processador|Add2~6_combout\ & \processador|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|regI~7_combout\,
	datab => \processador|Add2~6_combout\,
	datac => \processador|Mux20~3_combout\,
	datad => \processador|Mux23~2_combout\,
	combout => \processador|Mux20~4_combout\);

-- Location: LCCOMB_X82_Y50_N20
\processador|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~5_combout\ = (\processador|Mux23~0_combout\ & (((\processador|Mux23~1_combout\)) # (!\processador|Mux12~1_combout\))) # (!\processador|Mux23~0_combout\ & (((!\processador|Mux23~1_combout\ & \processador|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|Mux23~1_combout\,
	datad => \processador|Mux20~4_combout\,
	combout => \processador|Mux20~5_combout\);

-- Location: LCCOMB_X82_Y50_N18
\processador|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~6_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux20~5_combout\ & (\processador|address[4]~reg0_q\)) # (!\processador|Mux20~5_combout\ & ((\processador|regI~6_combout\))))) # (!\processador|Mux23~1_combout\ & 
-- (((\processador|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|address[4]~reg0_q\,
	datac => \processador|regI~6_combout\,
	datad => \processador|Mux20~5_combout\,
	combout => \processador|Mux20~6_combout\);

-- Location: LCCOMB_X82_Y50_N22
\processador|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux20~7_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(4))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(4),
	datad => \processador|Mux20~6_combout\,
	combout => \processador|Mux20~7_combout\);

-- Location: LCCOMB_X81_Y50_N4
\processador|registers~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~41_combout\ = (\processador|registers~40_combout\ & (((\processador|Mux20~7_combout\) # (!\processador|registers[2][6]~19_combout\)))) # (!\processador|registers~40_combout\ & (\processador|Mux3~1_combout\ & 
-- (\processador|registers[2][6]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux3~1_combout\,
	datab => \processador|registers~40_combout\,
	datac => \processador|registers[2][6]~19_combout\,
	datad => \processador|Mux20~7_combout\,
	combout => \processador|registers~41_combout\);

-- Location: LCCOMB_X80_Y50_N4
\processador|registers~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~42_combout\ = (\processador|op_type\(1) & (\input[3]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~41_combout\,
	combout => \processador|registers~42_combout\);

-- Location: FF_X80_Y50_N5
\processador|registers[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~42_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(3),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][4]~q\);

-- Location: LCCOMB_X80_Y49_N22
\processador|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux12~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & ((\processador|registers[1][4]~q\))) # (!\processador|reg1\(0) & (\processador|registers[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][4]~q\,
	datab => \processador|registers[1][4]~q\,
	datac => \processador|reg1\(1),
	datad => \processador|reg1\(0),
	combout => \processador|Mux12~0_combout\);

-- Location: LCCOMB_X81_Y49_N12
\processador|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux12~1_combout\ = (\processador|Mux12~0_combout\) # ((\processador|registers[2][4]~q\ & \processador|reg1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|registers[2][4]~q\,
	datac => \processador|reg1\(1),
	datad => \processador|Mux12~0_combout\,
	combout => \processador|Mux12~1_combout\);

-- Location: LCCOMB_X82_Y50_N28
\processador|address~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~13_combout\ = (\processador|address[0]~2_combout\ & ((\processador|address[4]~reg0_q\) # ((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & (((\processador|regI\(4) & 
-- !\processador|address[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|address[4]~reg0_q\,
	datac => \processador|regI\(4),
	datad => \processador|address[0]~6_combout\,
	combout => \processador|address~13_combout\);

-- Location: LCCOMB_X82_Y50_N26
\processador|address~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~14_combout\ = (\processador|address[0]~6_combout\ & ((\processador|address~13_combout\ & ((\processador|int\(4)))) # (!\processador|address~13_combout\ & (\processador|Mux12~1_combout\)))) # (!\processador|address[0]~6_combout\ & 
-- (((\processador|address~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux12~1_combout\,
	datab => \processador|address[0]~6_combout\,
	datac => \processador|int\(4),
	datad => \processador|address~13_combout\,
	combout => \processador|address~14_combout\);

-- Location: LCCOMB_X76_Y51_N6
\processador|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~11_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~9_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RINST~q\,
	datac => \processador|Add0~9_combout\,
	datad => \processador|address~14_combout\,
	combout => \processador|Add0~11_combout\);

-- Location: FF_X76_Y51_N7
\processador|address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~11_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[4]~reg0_q\);

-- Location: LCCOMB_X79_Y51_N0
\processador|command~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~10_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(0),
	combout => \processador|command~10_combout\);

-- Location: FF_X80_Y51_N13
\processador|command[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~10_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(7));

-- Location: LCCOMB_X80_Y48_N22
\processador|reg2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reg2~2_combout\ = (\processador|command\(7) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|command\(7),
	datad => \processador|state.RESET~q\,
	combout => \processador|reg2~2_combout\);

-- Location: FF_X80_Y48_N23
\processador|reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|reg2~2_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|reg2\(1));

-- Location: LCCOMB_X82_Y49_N14
\processador|registers~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~33_combout\ = (\processador|registers[0][3]~0_combout\ & (((\processador|registers[0][3]~1_combout\)))) # (!\processador|registers[0][3]~0_combout\ & ((\processador|registers[0][3]~1_combout\ & ((\input[2]~input_o\))) # 
-- (!\processador|registers[0][3]~1_combout\ & (\processador|int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|registers[0][3]~0_combout\,
	datab => \processador|int\(5),
	datac => \processador|registers[0][3]~1_combout\,
	datad => \input[2]~input_o\,
	combout => \processador|registers~33_combout\);

-- Location: LCCOMB_X81_Y49_N6
\processador|registers~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~34_combout\ = (\processador|registers[0][3]~0_combout\ & ((\processador|registers~33_combout\ & (\processador|Mux13~1_combout\)) # (!\processador|registers~33_combout\ & ((\processador|Mux4~1_combout\))))) # 
-- (!\processador|registers[0][3]~0_combout\ & (((\processador|registers~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|registers[0][3]~0_combout\,
	datac => \processador|registers~33_combout\,
	datad => \processador|Mux4~1_combout\,
	combout => \processador|registers~34_combout\);

-- Location: LCCOMB_X79_Y49_N20
\processador|registers[0][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[0][5]~feeder_combout\ = \processador|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~34_combout\,
	combout => \processador|registers[0][5]~feeder_combout\);

-- Location: FF_X79_Y49_N21
\processador|registers[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[0][5]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(2),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[0][3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[0][5]~q\);

-- Location: LCCOMB_X80_Y49_N8
\processador|registers[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers[1][5]~feeder_combout\ = \processador|registers~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|registers~34_combout\,
	combout => \processador|registers[1][5]~feeder_combout\);

-- Location: FF_X80_Y49_N9
\processador|registers[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers[1][5]~feeder_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(2),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[1][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[1][5]~q\);

-- Location: LCCOMB_X80_Y48_N8
\processador|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux4~0_combout\ = (!\processador|reg2\(1) & ((\processador|reg2\(0) & ((\processador|registers[1][5]~q\))) # (!\processador|reg2\(0) & (\processador|registers[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datab => \processador|reg2\(0),
	datac => \processador|registers[0][5]~q\,
	datad => \processador|registers[1][5]~q\,
	combout => \processador|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y48_N10
\processador|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux4~1_combout\ = (\processador|Mux4~0_combout\) # ((\processador|reg2\(1) & \processador|registers[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg2\(1),
	datac => \processador|Mux4~0_combout\,
	datad => \processador|registers[2][5]~q\,
	combout => \processador|Mux4~1_combout\);

-- Location: LCCOMB_X77_Y49_N8
\processador|registers~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~35_combout\ = (\processador|registers[2][6]~18_combout\ & (((\processador|registers[2][6]~19_combout\)))) # (!\processador|registers[2][6]~18_combout\ & ((\processador|registers[2][6]~19_combout\ & ((\processador|Mux4~1_combout\))) 
-- # (!\processador|registers[2][6]~19_combout\ & (\processador|int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|Mux4~1_combout\,
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|registers[2][6]~19_combout\,
	combout => \processador|registers~35_combout\);

-- Location: FF_X76_Y49_N25
\processador|regI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux21~6_combout\,
	ena => \processador|output[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|regI\(5));

-- Location: LCCOMB_X77_Y49_N2
\processador|regI~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~4_combout\ = (\processador|Mux13~1_combout\) # ((\processador|command\(4) & (\processador|int\(5))) # (!\processador|command\(4) & ((\processador|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|command\(4),
	datac => \processador|Mux4~1_combout\,
	datad => \processador|Mux13~1_combout\,
	combout => \processador|regI~4_combout\);

-- Location: LCCOMB_X77_Y49_N0
\processador|regI~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|regI~5_combout\ = (\processador|Mux13~1_combout\ & ((\processador|command\(4) & (\processador|int\(5))) # (!\processador|command\(4) & ((\processador|Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(5),
	datab => \processador|command\(4),
	datac => \processador|Mux4~1_combout\,
	datad => \processador|Mux13~1_combout\,
	combout => \processador|regI~5_combout\);

-- Location: LCCOMB_X77_Y51_N22
\processador|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~0_combout\ = (\processador|command\(4) & ((\processador|Add6~4_combout\) # ((\processador|Mux23~3_combout\)))) # (!\processador|command\(4) & (((\processador|Add8~4_combout\ & !\processador|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|Add6~4_combout\,
	datac => \processador|Add8~4_combout\,
	datad => \processador|Mux23~3_combout\,
	combout => \processador|Mux21~0_combout\);

-- Location: LCCOMB_X77_Y51_N12
\processador|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~1_combout\ = (\processador|Mux21~0_combout\ & (((\processador|Add5~4_combout\) # (!\processador|Mux23~3_combout\)))) # (!\processador|Mux21~0_combout\ & (\processador|Add7~4_combout\ & ((\processador|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Add7~4_combout\,
	datab => \processador|Add5~4_combout\,
	datac => \processador|Mux21~0_combout\,
	datad => \processador|Mux23~3_combout\,
	combout => \processador|Mux21~1_combout\);

-- Location: LCCOMB_X77_Y51_N2
\processador|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~2_combout\ = (\processador|LessThan7~1_combout\ & (\processador|Add4~4_combout\ & (!\processador|Mux23~2_combout\))) # (!\processador|LessThan7~1_combout\ & (((\processador|Mux23~2_combout\) # (\processador|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan7~1_combout\,
	datab => \processador|Add4~4_combout\,
	datac => \processador|Mux23~2_combout\,
	datad => \processador|Mux21~1_combout\,
	combout => \processador|Mux21~2_combout\);

-- Location: LCCOMB_X77_Y51_N20
\processador|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~3_combout\ = (\processador|Mux23~2_combout\ & ((\processador|Mux21~2_combout\ & (\processador|regI~5_combout\)) # (!\processador|Mux21~2_combout\ & ((\processador|Add2~4_combout\))))) # (!\processador|Mux23~2_combout\ & 
-- (((\processador|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~2_combout\,
	datab => \processador|regI~5_combout\,
	datac => \processador|Add2~4_combout\,
	datad => \processador|Mux21~2_combout\,
	combout => \processador|Mux21~3_combout\);

-- Location: LCCOMB_X77_Y51_N30
\processador|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~4_combout\ = (\processador|Mux23~1_combout\ & ((\processador|Mux23~0_combout\) # ((\processador|regI~4_combout\)))) # (!\processador|Mux23~1_combout\ & (!\processador|Mux23~0_combout\ & ((\processador|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~1_combout\,
	datab => \processador|Mux23~0_combout\,
	datac => \processador|regI~4_combout\,
	datad => \processador|Mux21~3_combout\,
	combout => \processador|Mux21~4_combout\);

-- Location: LCCOMB_X76_Y49_N18
\processador|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~5_combout\ = (\processador|Mux23~0_combout\ & ((\processador|Mux21~4_combout\ & ((\processador|address[5]~reg0_q\))) # (!\processador|Mux21~4_combout\ & (!\processador|Mux13~1_combout\)))) # (!\processador|Mux23~0_combout\ & 
-- (((\processador|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~0_combout\,
	datab => \processador|Mux13~1_combout\,
	datac => \processador|address[5]~reg0_q\,
	datad => \processador|Mux21~4_combout\,
	combout => \processador|Mux21~5_combout\);

-- Location: LCCOMB_X76_Y49_N24
\processador|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux21~6_combout\ = (\processador|Mux23~11_combout\ & (\processador|regI\(5))) # (!\processador|Mux23~11_combout\ & ((\processador|Mux21~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux23~11_combout\,
	datac => \processador|regI\(5),
	datad => \processador|Mux21~5_combout\,
	combout => \processador|Mux21~6_combout\);

-- Location: LCCOMB_X77_Y49_N18
\processador|registers~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~36_combout\ = (\processador|registers~35_combout\ & (((\processador|Mux21~6_combout\) # (!\processador|registers[2][6]~18_combout\)))) # (!\processador|registers~35_combout\ & (\processador|Mux13~1_combout\ & 
-- (\processador|registers[2][6]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux13~1_combout\,
	datab => \processador|registers~35_combout\,
	datac => \processador|registers[2][6]~18_combout\,
	datad => \processador|Mux21~6_combout\,
	combout => \processador|registers~36_combout\);

-- Location: LCCOMB_X77_Y49_N28
\processador|registers~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|registers~37_combout\ = (\processador|op_type\(1) & (\input[2]~input_o\)) # (!\processador|op_type\(1) & ((\processador|registers~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \processador|op_type\(1),
	datad => \processador|registers~36_combout\,
	combout => \processador|registers~37_combout\);

-- Location: FF_X77_Y49_N29
\processador|registers[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|registers~37_combout\,
	asdata => \memoria|altsyncram_component|auto_generated|q_a\(2),
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|ALT_INV_state.OP~q\,
	ena => \processador|registers[2][6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|registers[2][5]~q\);

-- Location: LCCOMB_X80_Y48_N12
\processador|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux13~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & ((\processador|registers[1][5]~q\))) # (!\processador|reg1\(0) & (\processador|registers[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg1\(1),
	datab => \processador|reg1\(0),
	datac => \processador|registers[0][5]~q\,
	datad => \processador|registers[1][5]~q\,
	combout => \processador|Mux13~0_combout\);

-- Location: LCCOMB_X80_Y48_N30
\processador|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux13~1_combout\ = (\processador|Mux13~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][5]~q\,
	datad => \processador|Mux13~0_combout\,
	combout => \processador|Mux13~1_combout\);

-- Location: LCCOMB_X76_Y49_N28
\processador|address~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~11_combout\ = (\processador|address[0]~2_combout\ & (((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & ((\processador|address[0]~6_combout\ & (\processador|Mux13~1_combout\)) # 
-- (!\processador|address[0]~6_combout\ & ((\processador|regI\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|Mux13~1_combout\,
	datac => \processador|address[0]~6_combout\,
	datad => \processador|regI\(5),
	combout => \processador|address~11_combout\);

-- Location: LCCOMB_X76_Y49_N2
\processador|address~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~12_combout\ = (\processador|address[0]~2_combout\ & ((\processador|address~11_combout\ & ((\processador|int\(5)))) # (!\processador|address~11_combout\ & (\processador|address[5]~reg0_q\)))) # (!\processador|address[0]~2_combout\ & 
-- (\processador|address~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~2_combout\,
	datab => \processador|address~11_combout\,
	datac => \processador|address[5]~reg0_q\,
	datad => \processador|int\(5),
	combout => \processador|address~12_combout\);

-- Location: LCCOMB_X76_Y51_N0
\processador|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~8_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~6_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Add0~6_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|address~12_combout\,
	combout => \processador|Add0~8_combout\);

-- Location: FF_X76_Y51_N1
\processador|address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~8_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[5]~reg0_q\);

-- Location: LCCOMB_X79_Y51_N28
\processador|command~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~8_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(6),
	combout => \processador|command~8_combout\);

-- Location: FF_X80_Y51_N9
\processador|command[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~8_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(1));

-- Location: LCCOMB_X79_Y51_N22
\processador|iinstruction~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|iinstruction~2_combout\ = (\processador|command\(1) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|command\(1),
	datad => \processador|state.RESET~q\,
	combout => \processador|iinstruction~2_combout\);

-- Location: FF_X79_Y51_N23
\processador|iinstruction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|iinstruction~2_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|iinstruction\(1));

-- Location: LCCOMB_X82_Y51_N12
\processador|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux69~0_combout\ = (\processador|iinstruction\(0) & ((\processador|iinstruction\(1) & (!\processador|iinstruction\(3) & !\processador|iinstruction\(2))) # (!\processador|iinstruction\(1) & (\processador|iinstruction\(3) & 
-- \processador|iinstruction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|iinstruction\(0),
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(2),
	combout => \processador|Mux69~0_combout\);

-- Location: LCCOMB_X80_Y51_N16
\processador|Mux69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux69~1_combout\ = (\processador|op_type\(0) & (\processador|output[0]~4_combout\ & (\processador|Mux69~0_combout\ & \processador|command\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|op_type\(0),
	datab => \processador|output[0]~4_combout\,
	datac => \processador|Mux69~0_combout\,
	datad => \processador|command\(4),
	combout => \processador|Mux69~1_combout\);

-- Location: FF_X80_Y51_N17
\processador|state.MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Mux69~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|state.MEM~q\);

-- Location: LCCOMB_X79_Y52_N12
\processador|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~20_combout\ = (\processador|state.RESET~q\ & ((\processador|state.OP~q\ & (!\processador|process_0~1_combout\)) # (!\processador|state.OP~q\ & ((\processador|state.MEM~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|process_0~1_combout\,
	datab => \processador|state.RESET~q\,
	datac => \processador|state.OP~q\,
	datad => \processador|state.MEM~q\,
	combout => \processador|state~20_combout\);

-- Location: LCCOMB_X80_Y51_N24
\processador|reseted~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reseted~1_combout\ = (\processador|state.RESET~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \processador|state.RESET~q\,
	combout => \processador|reseted~1_combout\);

-- Location: LCCOMB_X81_Y52_N22
\processador|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~17_combout\ = ((\processador|iinstruction\(1) & ((\processador|iinstruction\(3)) # (\processador|iinstruction\(2))))) # (!\processador|iinstruction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(1),
	datad => \processador|iinstruction\(0),
	combout => \processador|state~17_combout\);

-- Location: LCCOMB_X83_Y51_N6
\processador|command~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~0_combout\ = (!\processador|mem_step~q\ & \processador|state.RINST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|mem_step~q\,
	datad => \processador|state.RINST~q\,
	combout => \processador|command~0_combout\);

-- Location: LCCOMB_X80_Y52_N30
\processador|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~18_combout\ = (\processador|command~0_combout\) # ((\processador|state~16_combout\ & (\processador|state~17_combout\ & \processador|op_type\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state~16_combout\,
	datab => \processador|state~17_combout\,
	datac => \processador|command~0_combout\,
	datad => \processador|op_type\(0),
	combout => \processador|state~18_combout\);

-- Location: LCCOMB_X79_Y52_N20
\processador|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~19_combout\ = (!\processador|state.RINST~q\ & (!\processador|state.IDLE~q\ & ((\processador|op_type\(1)) # (!\processador|state.OP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.RINST~q\,
	datab => \processador|state.OP~q\,
	datac => \processador|state.IDLE~q\,
	datad => \processador|op_type\(1),
	combout => \processador|state~19_combout\);

-- Location: LCCOMB_X79_Y52_N8
\processador|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~21_combout\ = (\processador|state~19_combout\ & ((\processador|state~20_combout\) # ((!\processador|reseted~1_combout\)))) # (!\processador|state~19_combout\ & (((!\processador|state~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state~20_combout\,
	datab => \processador|reseted~1_combout\,
	datac => \processador|state~18_combout\,
	datad => \processador|state~19_combout\,
	combout => \processador|state~21_combout\);

-- Location: FF_X79_Y52_N13
\processador|state.OP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|state.IDLE~q\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|state.OP~q\);

-- Location: LCCOMB_X80_Y52_N22
\processador|output[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[0]~4_combout\ = (!\processador|op_type\(1) & \processador|state.OP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|op_type\(1),
	datad => \processador|state.OP~q\,
	combout => \processador|output[0]~4_combout\);

-- Location: LCCOMB_X80_Y50_N26
\processador|flags~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~9_combout\ = (\processador|Mux15~1_combout\ & (\processador|Mux6~1_combout\ & (\processador|Mux5~1_combout\ $ (!\processador|Mux14~1_combout\)))) # (!\processador|Mux15~1_combout\ & (!\processador|Mux6~1_combout\ & 
-- (\processador|Mux5~1_combout\ $ (!\processador|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|Mux5~1_combout\,
	datac => \processador|Mux14~1_combout\,
	datad => \processador|Mux6~1_combout\,
	combout => \processador|flags~9_combout\);

-- Location: LCCOMB_X79_Y50_N26
\processador|flags~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~6_combout\ = (\processador|int\(2) & (\processador|Mux10~1_combout\ & (\processador|Mux11~1_combout\ $ (!\processador|int\(3))))) # (!\processador|int\(2) & (!\processador|Mux10~1_combout\ & (\processador|Mux11~1_combout\ $ 
-- (!\processador|int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(2),
	datab => \processador|Mux11~1_combout\,
	datac => \processador|int\(3),
	datad => \processador|Mux10~1_combout\,
	combout => \processador|flags~6_combout\);

-- Location: LCCOMB_X79_Y50_N30
\processador|flags~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~4_combout\ = (\processador|int\(4) & (\processador|Mux12~1_combout\ & (\processador|int\(5) $ (!\processador|Mux13~1_combout\)))) # (!\processador|int\(4) & (!\processador|Mux12~1_combout\ & (\processador|int\(5) $ 
-- (!\processador|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(4),
	datab => \processador|int\(5),
	datac => \processador|Mux13~1_combout\,
	datad => \processador|Mux12~1_combout\,
	combout => \processador|flags~4_combout\);

-- Location: LCCOMB_X80_Y50_N24
\processador|flags~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~3_combout\ = (\processador|command\(4) & (\processador|int\(7) $ (!\processador|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|command\(4),
	datac => \processador|int\(7),
	datad => \processador|Mux15~1_combout\,
	combout => \processador|flags~3_combout\);

-- Location: LCCOMB_X79_Y50_N4
\processador|flags~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~5_combout\ = (\processador|flags~4_combout\ & (\processador|flags~3_combout\ & (\processador|int\(6) $ (!\processador|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|int\(6),
	datab => \processador|Mux14~1_combout\,
	datac => \processador|flags~4_combout\,
	datad => \processador|flags~3_combout\,
	combout => \processador|flags~5_combout\);

-- Location: LCCOMB_X79_Y50_N28
\processador|flags~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~7_combout\ = (\processador|Mux8~1_combout\ & (\processador|int\(0) & (\processador|int\(1) $ (!\processador|Mux9~1_combout\)))) # (!\processador|Mux8~1_combout\ & (!\processador|int\(0) & (\processador|int\(1) $ 
-- (!\processador|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux8~1_combout\,
	datab => \processador|int\(1),
	datac => \processador|Mux9~1_combout\,
	datad => \processador|int\(0),
	combout => \processador|flags~7_combout\);

-- Location: LCCOMB_X79_Y50_N6
\processador|flags~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~8_combout\ = (\processador|flags~6_combout\ & (\processador|flags~5_combout\ & \processador|flags~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flags~6_combout\,
	datac => \processador|flags~5_combout\,
	datad => \processador|flags~7_combout\,
	combout => \processador|flags~8_combout\);

-- Location: LCCOMB_X81_Y49_N10
\processador|flags~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~10_combout\ = (\processador|Mux3~1_combout\ & (\processador|Mux12~1_combout\ & (\processador|Mux13~1_combout\ $ (!\processador|Mux4~1_combout\)))) # (!\processador|Mux3~1_combout\ & (!\processador|Mux12~1_combout\ & 
-- (\processador|Mux13~1_combout\ $ (!\processador|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux3~1_combout\,
	datab => \processador|Mux13~1_combout\,
	datac => \processador|Mux12~1_combout\,
	datad => \processador|Mux4~1_combout\,
	combout => \processador|flags~10_combout\);

-- Location: LCCOMB_X81_Y51_N26
\processador|flags~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~11_combout\ = (\processador|Mux2~1_combout\ & (\processador|Mux11~1_combout\ & (\processador|Mux10~1_combout\ $ (!\processador|Mux1~1_combout\)))) # (!\processador|Mux2~1_combout\ & (!\processador|Mux11~1_combout\ & 
-- (\processador|Mux10~1_combout\ $ (!\processador|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux2~1_combout\,
	datab => \processador|Mux10~1_combout\,
	datac => \processador|Mux11~1_combout\,
	datad => \processador|Mux1~1_combout\,
	combout => \processador|flags~11_combout\);

-- Location: LCCOMB_X81_Y51_N0
\processador|flags~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~12_combout\ = (\processador|Mux9~1_combout\ & (\processador|Mux0~1_combout\ & (\processador|Mux7~1_combout\ $ (!\processador|Mux8~1_combout\)))) # (!\processador|Mux9~1_combout\ & (!\processador|Mux0~1_combout\ & 
-- (\processador|Mux7~1_combout\ $ (!\processador|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux9~1_combout\,
	datab => \processador|Mux7~1_combout\,
	datac => \processador|Mux0~1_combout\,
	datad => \processador|Mux8~1_combout\,
	combout => \processador|flags~12_combout\);

-- Location: LCCOMB_X81_Y51_N6
\processador|flags~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~13_combout\ = (!\processador|command\(4) & (\processador|flags~11_combout\ & \processador|flags~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|command\(4),
	datac => \processador|flags~11_combout\,
	datad => \processador|flags~12_combout\,
	combout => \processador|flags~13_combout\);

-- Location: LCCOMB_X81_Y52_N30
\processador|flags~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~14_combout\ = (\processador|flags~8_combout\) # ((\processador|flags~9_combout\ & (\processador|flags~10_combout\ & \processador|flags~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flags~9_combout\,
	datab => \processador|flags~8_combout\,
	datac => \processador|flags~10_combout\,
	datad => \processador|flags~13_combout\,
	combout => \processador|flags~14_combout\);

-- Location: LCCOMB_X81_Y52_N8
\processador|flags~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~16_combout\ = (!\processador|flags~14_combout\ & ((\processador|command\(4) & (\processador|LessThan5~14_combout\)) # (!\processador|command\(4) & ((\processador|LessThan6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|LessThan5~14_combout\,
	datab => \processador|command\(4),
	datac => \processador|LessThan6~14_combout\,
	datad => \processador|flags~14_combout\,
	combout => \processador|flags~16_combout\);

-- Location: LCCOMB_X81_Y52_N0
\processador|output[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[0]~5_combout\ = (\processador|iinstruction\(1) & !\processador|iinstruction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|iinstruction\(1),
	datad => \processador|iinstruction\(0),
	combout => \processador|output[0]~5_combout\);

-- Location: LCCOMB_X81_Y52_N2
\processador|flags~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|flags~15_combout\ = ((\processador|flags~2_combout\ & (!\processador|iinstruction\(2) & \processador|output[0]~5_combout\))) # (!\processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|flags~2_combout\,
	datab => \processador|iinstruction\(2),
	datac => \processador|state.RESET~q\,
	datad => \processador|output[0]~5_combout\,
	combout => \processador|flags~15_combout\);

-- Location: FF_X81_Y52_N9
\processador|flags[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|flags~16_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	ena => \processador|flags~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flags\(1));

-- Location: LCCOMB_X81_Y52_N10
\processador|address[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~3_combout\ = (\processador|iinstruction\(2) & ((\processador|iinstruction\(3) & ((\processador|command\(4)))) # (!\processador|iinstruction\(3) & (!\processador|flags\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|flags\(1),
	datad => \processador|command\(4),
	combout => \processador|address[0]~3_combout\);

-- Location: FF_X81_Y52_N31
\processador|flags[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|flags~14_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	ena => \processador|flags~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|flags\(0));

-- Location: LCCOMB_X81_Y52_N20
\processador|address[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~4_combout\ = (!\processador|iinstruction\(2) & ((\processador|iinstruction\(3) & (\processador|flags\(0))) # (!\processador|iinstruction\(3) & ((\processador|command\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(3),
	datab => \processador|iinstruction\(2),
	datac => \processador|flags\(0),
	datad => \processador|command\(4),
	combout => \processador|address[0]~4_combout\);

-- Location: LCCOMB_X81_Y52_N26
\processador|address[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~5_combout\ = (\processador|iinstruction\(1) & (\processador|LessThan7~1_combout\ & ((\processador|address[0]~3_combout\) # (\processador|address[0]~4_combout\)))) # (!\processador|iinstruction\(1) & 
-- ((\processador|address[0]~3_combout\) # ((\processador|address[0]~4_combout\) # (\processador|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~3_combout\,
	datab => \processador|address[0]~4_combout\,
	datac => \processador|iinstruction\(1),
	datad => \processador|LessThan7~1_combout\,
	combout => \processador|address[0]~5_combout\);

-- Location: LCCOMB_X80_Y52_N12
\processador|address[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~6_combout\ = (\processador|output[0]~4_combout\ & (\processador|iinstruction\(0) & (!\processador|state.IDLE~q\ & \processador|address[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|output[0]~4_combout\,
	datab => \processador|iinstruction\(0),
	datac => \processador|state.IDLE~q\,
	datad => \processador|address[0]~5_combout\,
	combout => \processador|address[0]~6_combout\);

-- Location: LCCOMB_X77_Y51_N28
\processador|address~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~9_combout\ = (\processador|address[0]~2_combout\ & ((\processador|address[6]~reg0_q\) # ((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & (((\processador|regI\(6) & 
-- !\processador|address[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[6]~reg0_q\,
	datab => \processador|regI\(6),
	datac => \processador|address[0]~2_combout\,
	datad => \processador|address[0]~6_combout\,
	combout => \processador|address~9_combout\);

-- Location: LCCOMB_X77_Y51_N26
\processador|address~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~10_combout\ = (\processador|address[0]~6_combout\ & ((\processador|address~9_combout\ & ((\processador|int\(6)))) # (!\processador|address~9_combout\ & (\processador|Mux14~1_combout\)))) # (!\processador|address[0]~6_combout\ & 
-- (((\processador|address~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address[0]~6_combout\,
	datab => \processador|Mux14~1_combout\,
	datac => \processador|int\(6),
	datad => \processador|address~9_combout\,
	combout => \processador|address~10_combout\);

-- Location: LCCOMB_X76_Y51_N14
\processador|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~5_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~3_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Add0~3_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|address~10_combout\,
	combout => \processador|Add0~5_combout\);

-- Location: FF_X76_Y51_N15
\processador|address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~5_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[6]~reg0_q\);

-- Location: LCCOMB_X79_Y51_N8
\processador|command~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~6_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(4),
	combout => \processador|command~6_combout\);

-- Location: FF_X80_Y51_N5
\processador|command[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~6_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(3));

-- Location: LCCOMB_X77_Y52_N26
\processador|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|LessThan1~0_combout\ = (\processador|command\(0) & (\processador|command\(1) & ((\processador|command\(3)) # (\processador|command\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(0),
	datab => \processador|command\(3),
	datac => \processador|command\(1),
	datad => \processador|command\(2),
	combout => \processador|LessThan1~0_combout\);

-- Location: FF_X77_Y52_N27
\processador|op_type[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|LessThan1~0_combout\,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|op_type\(1));

-- Location: LCCOMB_X79_Y52_N28
\processador|address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~0_combout\ = (\processador|command\(4)) # ((\processador|iinstruction\(2)) # ((\processador|iinstruction\(3)) # (!\processador|iinstruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(4),
	datab => \processador|iinstruction\(2),
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(0),
	combout => \processador|address[0]~0_combout\);

-- Location: LCCOMB_X79_Y52_N4
\processador|address[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~1_combout\ = (\processador|state.OP~q\ & ((\processador|op_type\(1)) # ((\processador|iinstruction\(1)) # (\processador|address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|op_type\(1),
	datab => \processador|iinstruction\(1),
	datac => \processador|state.OP~q\,
	datad => \processador|address[0]~0_combout\,
	combout => \processador|address[0]~1_combout\);

-- Location: LCCOMB_X79_Y52_N2
\processador|address[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address[0]~2_combout\ = (\processador|state.IDLE~q\) # ((\processador|address[0]~1_combout\) # ((!\processador|state.OP~q\ & !\processador|state.MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.IDLE~q\,
	datab => \processador|address[0]~1_combout\,
	datac => \processador|state.OP~q\,
	datad => \processador|state.MEM~q\,
	combout => \processador|address[0]~2_combout\);

-- Location: LCCOMB_X76_Y50_N12
\processador|address~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~7_combout\ = (\processador|address[0]~2_combout\ & (((\processador|address[0]~6_combout\)))) # (!\processador|address[0]~2_combout\ & ((\processador|address[0]~6_combout\ & (\processador|Mux15~1_combout\)) # 
-- (!\processador|address[0]~6_combout\ & ((\processador|regI\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|Mux15~1_combout\,
	datab => \processador|address[0]~2_combout\,
	datac => \processador|regI\(7),
	datad => \processador|address[0]~6_combout\,
	combout => \processador|address~7_combout\);

-- Location: LCCOMB_X76_Y50_N22
\processador|address~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|address~8_combout\ = (\processador|address~7_combout\ & (((\processador|int\(7))) # (!\processador|address[0]~2_combout\))) # (!\processador|address~7_combout\ & (\processador|address[0]~2_combout\ & ((\processador|address[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|address~7_combout\,
	datab => \processador|address[0]~2_combout\,
	datac => \processador|int\(7),
	datad => \processador|address[7]~reg0_q\,
	combout => \processador|address~8_combout\);

-- Location: LCCOMB_X76_Y51_N12
\processador|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Add0~2_combout\ = (\processador|state.RINST~q\ & (\processador|Add0~0_combout\)) # (!\processador|state.RINST~q\ & ((\processador|address~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|Add0~0_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|address~8_combout\,
	combout => \processador|Add0~2_combout\);

-- Location: FF_X76_Y51_N13
\processador|address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|Add0~2_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|address[7]~reg0_q\);

-- Location: LCCOMB_X79_Y51_N2
\processador|command~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~1_combout\ = (\memoria|altsyncram_component|auto_generated|q_a\(3) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|altsyncram_component|auto_generated|q_a\(3),
	datad => \processador|state.RESET~q\,
	combout => \processador|command~1_combout\);

-- Location: FF_X80_Y51_N31
\processador|command[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(4));

-- Location: LCCOMB_X81_Y52_N12
\processador|m_w[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|m_w[4]~0_combout\ = (\processador|command\(4) & (\processador|output[0]~7_combout\ & \processador|registers[2][6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|command\(4),
	datac => \processador|output[0]~7_combout\,
	datad => \processador|registers[2][6]~9_combout\,
	combout => \processador|m_w[4]~0_combout\);

-- Location: FF_X81_Y52_N17
\processador|m_w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|m_w[7]~feeder_combout\,
	ena => \processador|m_w[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|m_w\(7));

-- Location: LCCOMB_X79_Y51_N16
\processador|command~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~7_combout\ = (\memoria|altsyncram_component|auto_generated|q_a\(7) & \processador|state.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoria|altsyncram_component|auto_generated|q_a\(7),
	datad => \processador|state.RESET~q\,
	combout => \processador|command~7_combout\);

-- Location: FF_X80_Y51_N7
\processador|command[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~7_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(0));

-- Location: LCCOMB_X77_Y52_N28
\processador|op_type~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|op_type~1_combout\ = (\processador|command\(0) & (((\processador|command\(2)) # (!\processador|command\(1))) # (!\processador|command\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|command\(0),
	datab => \processador|command\(3),
	datac => \processador|command\(1),
	datad => \processador|command\(2),
	combout => \processador|op_type~1_combout\);

-- Location: FF_X77_Y52_N29
\processador|op_type[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|op_type~1_combout\,
	ena => \processador|op_type[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|op_type\(0));

-- Location: LCCOMB_X79_Y51_N18
\processador|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~23_combout\ = (\processador|iinstruction\(1) & (!\processador|iinstruction\(2) & (!\processador|command\(4) & !\processador|iinstruction\(3)))) # (!\processador|iinstruction\(1) & (((!\processador|iinstruction\(3)) # 
-- (!\processador|command\(4))) # (!\processador|iinstruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|iinstruction\(1),
	datab => \processador|iinstruction\(2),
	datac => \processador|command\(4),
	datad => \processador|iinstruction\(3),
	combout => \processador|state~23_combout\);

-- Location: LCCOMB_X79_Y51_N24
\processador|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~24_combout\ = (\processador|op_type\(0) & ((!\processador|state~23_combout\) # (!\processador|iinstruction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|op_type\(0),
	datab => \processador|iinstruction\(0),
	datad => \processador|state~23_combout\,
	combout => \processador|state~24_combout\);

-- Location: LCCOMB_X79_Y51_N30
\processador|mem_step~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mem_step~0_combout\ = (\processador|state.OP~q\ & ((\processador|op_type\(1) & ((\processador|process_0~1_combout\))) # (!\processador|op_type\(1) & (\processador|state~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state~24_combout\,
	datab => \processador|process_0~1_combout\,
	datac => \processador|op_type\(1),
	datad => \processador|state.OP~q\,
	combout => \processador|mem_step~0_combout\);

-- Location: LCCOMB_X81_Y51_N28
\processador|mem_step~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mem_step~1_combout\ = (!\processador|state.IDLE~q\ & ((\processador|state.OP~q\) # (\processador|state.MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.IDLE~q\,
	datab => \processador|state.OP~q\,
	datad => \processador|state.MEM~q\,
	combout => \processador|mem_step~1_combout\);

-- Location: LCCOMB_X82_Y51_N16
\processador|mem_step~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|mem_step~2_combout\ = (\processador|mem_step~q\ & ((\processador|mem_step~0_combout\) # (!\processador|mem_step~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|mem_step~0_combout\,
	datac => \processador|mem_step~q\,
	datad => \processador|mem_step~1_combout\,
	combout => \processador|mem_step~2_combout\);

-- Location: FF_X82_Y51_N17
\processador|mem_step\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|mem_step~2_combout\,
	asdata => VCC,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	sload => \processador|state.RINST~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|mem_step~q\);

-- Location: LCCOMB_X83_Y51_N24
\processador|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~22_combout\ = (!\processador|state.OP~q\ & \processador|state.MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.OP~q\,
	datad => \processador|state.MEM~q\,
	combout => \processador|state~22_combout\);

-- Location: LCCOMB_X79_Y51_N10
\processador|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~25_combout\ = (\processador|state.OP~q\ & ((\processador|op_type\(1) & ((!\processador|process_0~1_combout\))) # (!\processador|op_type\(1) & (!\processador|state~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state~24_combout\,
	datab => \processador|process_0~1_combout\,
	datac => \processador|op_type\(1),
	datad => \processador|state.OP~q\,
	combout => \processador|state~25_combout\);

-- Location: LCCOMB_X83_Y51_N0
\processador|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~26_combout\ = (\processador|state.RINST~q\ & (!\processador|mem_step~q\)) # (!\processador|state.RINST~q\ & (((\processador|state~22_combout\) # (\processador|state~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|mem_step~q\,
	datab => \processador|state~22_combout\,
	datac => \processador|state.RINST~q\,
	datad => \processador|state~25_combout\,
	combout => \processador|state~26_combout\);

-- Location: FF_X83_Y51_N1
\processador|state.RINST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|state~26_combout\,
	asdata => \reset~input_o\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|state.RINST~q\);

-- Location: FF_X79_Y52_N21
\processador|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|state.RINST~q\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|state.IDLE~q\);

-- Location: LCCOMB_X79_Y52_N16
\processador|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|state~16_combout\ = (!\processador|state.IDLE~q\ & !\processador|state.RINST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.IDLE~q\,
	datad => \processador|state.RINST~q\,
	combout => \processador|state~16_combout\);

-- Location: LCCOMB_X80_Y52_N10
\processador|stmem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|stmem~0_combout\ = (\processador|output[0]~4_combout\ & (\processador|command\(4) & (\processador|state~16_combout\ & \processador|registers[2][6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|output[0]~4_combout\,
	datab => \processador|command\(4),
	datac => \processador|state~16_combout\,
	datad => \processador|registers[2][6]~9_combout\,
	combout => \processador|stmem~0_combout\);

-- Location: LCCOMB_X80_Y52_N0
\processador|stmem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|stmem~1_combout\ = (\processador|stmem~0_combout\) # ((\processador|stmem~q\ & ((!\processador|state~22_combout\) # (!\processador|state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state~16_combout\,
	datab => \processador|state~22_combout\,
	datac => \processador|stmem~q\,
	datad => \processador|stmem~0_combout\,
	combout => \processador|stmem~1_combout\);

-- Location: FF_X80_Y52_N1
\processador|stmem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|stmem~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sclr => \processador|ALT_INV_state.RESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|stmem~q\);

-- Location: LCCOMB_X79_Y51_N6
\processador|command~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|command~4_combout\ = (\processador|state.RESET~q\ & \memoria|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|state.RESET~q\,
	datad => \memoria|altsyncram_component|auto_generated|q_a\(2),
	combout => \processador|command~4_combout\);

-- Location: FF_X80_Y51_N27
\processador|command[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \processador|command~4_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \processador|command[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|command\(5));

-- Location: LCCOMB_X80_Y48_N18
\processador|reg1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|reg1~1_combout\ = (\processador|state.RESET~q\ & \processador|command\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|state.RESET~q\,
	datad => \processador|command\(5),
	combout => \processador|reg1~1_combout\);

-- Location: FF_X80_Y48_N19
\processador|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|reg1~1_combout\,
	clrn => \processador|ALT_INV_process_0~0_combout\,
	ena => \processador|reg2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|reg1\(1));

-- Location: LCCOMB_X80_Y48_N28
\processador|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux15~0_combout\ = (!\processador|reg1\(1) & ((\processador|reg1\(0) & ((\processador|registers[1][7]~q\))) # (!\processador|reg1\(0) & (\processador|registers[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|reg1\(1),
	datab => \processador|reg1\(0),
	datac => \processador|registers[0][7]~q\,
	datad => \processador|registers[1][7]~q\,
	combout => \processador|Mux15~0_combout\);

-- Location: LCCOMB_X80_Y48_N14
\processador|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|Mux15~1_combout\ = (\processador|Mux15~0_combout\) # ((\processador|reg1\(1) & \processador|registers[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processador|reg1\(1),
	datac => \processador|registers[2][7]~q\,
	datad => \processador|Mux15~0_combout\,
	combout => \processador|Mux15~1_combout\);

-- Location: LCCOMB_X77_Y52_N24
\processador|output[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[0]~feeder_combout\ = \processador|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|Mux15~1_combout\,
	combout => \processador|output[0]~feeder_combout\);

-- Location: LCCOMB_X81_Y52_N14
\processador|output[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[0]~6_combout\ = (\processador|output[0]~7_combout\ & (\processador|output[0]~5_combout\ & (\processador|iinstruction\(3) & \processador|iinstruction\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processador|output[0]~7_combout\,
	datab => \processador|output[0]~5_combout\,
	datac => \processador|iinstruction\(3),
	datad => \processador|iinstruction\(2),
	combout => \processador|output[0]~6_combout\);

-- Location: FF_X77_Y52_N25
\processador|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[0]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(0));

-- Location: LCCOMB_X83_Y51_N14
\processador|output[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[1]~feeder_combout\ = \processador|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|Mux14~1_combout\,
	combout => \processador|output[1]~feeder_combout\);

-- Location: FF_X83_Y51_N15
\processador|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[1]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(1));

-- Location: LCCOMB_X83_Y51_N16
\processador|output[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[2]~feeder_combout\ = \processador|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|Mux13~1_combout\,
	combout => \processador|output[2]~feeder_combout\);

-- Location: FF_X83_Y51_N17
\processador|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[2]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(2));

-- Location: LCCOMB_X83_Y51_N26
\processador|output[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[3]~feeder_combout\ = \processador|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|Mux12~1_combout\,
	combout => \processador|output[3]~feeder_combout\);

-- Location: FF_X83_Y51_N27
\processador|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[3]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(3));

-- Location: LCCOMB_X83_Y51_N12
\processador|output[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[4]~feeder_combout\ = \processador|Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|Mux11~1_combout\,
	combout => \processador|output[4]~feeder_combout\);

-- Location: FF_X83_Y51_N13
\processador|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[4]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(4));

-- Location: LCCOMB_X82_Y51_N26
\processador|output[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[5]~feeder_combout\ = \processador|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|Mux10~1_combout\,
	combout => \processador|output[5]~feeder_combout\);

-- Location: FF_X82_Y51_N27
\processador|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[5]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(5));

-- Location: LCCOMB_X77_Y51_N4
\processador|output[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[6]~feeder_combout\ = \processador|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processador|Mux9~1_combout\,
	combout => \processador|output[6]~feeder_combout\);

-- Location: FF_X77_Y51_N5
\processador|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[6]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(6));

-- Location: LCCOMB_X77_Y51_N10
\processador|output[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \processador|output[7]~feeder_combout\ = \processador|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processador|Mux8~1_combout\,
	combout => \processador|output[7]~feeder_combout\);

-- Location: FF_X77_Y51_N11
\processador|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \processador|output[7]~feeder_combout\,
	ena => \processador|output[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|output\(7));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


