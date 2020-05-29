-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "05/29/2020 20:10:05"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	key_0 : IN std_logic;
	key_1 : IN std_logic;
	key_2 : IN std_logic;
	key_3 : IN std_logic;
	sw_0_7 : IN std_logic_vector(7 DOWNTO 0);
	STATUS : OUT std_logic_vector(1 DOWNTO 0);
	HI_OUT : OUT std_logic_vector(7 DOWNTO 0);
	LO_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- STATUS[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- STATUS[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[0]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[1]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[2]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[3]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[5]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HI_OUT[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[0]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[2]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[3]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[4]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[6]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LO_OUT[7]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw_0_7[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_1	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[1]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[3]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[2]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[4]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_3	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[7]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_2	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[6]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_0_7[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key_0	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_key_0 : std_logic;
SIGNAL ww_key_1 : std_logic;
SIGNAL ww_key_2 : std_logic;
SIGNAL ww_key_3 : std_logic;
SIGNAL ww_sw_0_7 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HI_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LO_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \key_3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key_1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[2]~8_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~14_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~15_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~16_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|Equal8~1_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~17_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~18_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~19_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~20_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~21_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~22_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~24_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~25_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~2_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~0_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~1_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~2_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~4_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~5_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~6_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~31_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~3_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~4_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~5_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~32_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~33_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~34_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~36_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~37_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~39_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~40_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~41_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~42_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~7_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~8_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~9_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~6_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~7_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~8_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~10_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~11_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~44_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~9_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~10_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~45_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~46_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~47_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~48_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~49_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~50_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~51_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~52_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~53_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~12_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~13_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~11_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~12_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~14_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~15_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~55_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~13_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~14_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~56_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~57_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|LO~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~58_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~59_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~60_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~61_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~16_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~15_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~17_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~65_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~16_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~66_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~67_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~68_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~69_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~70_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~71_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~72_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~73_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~74_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~18_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~76_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~17_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~77_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~79_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~80_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~88_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~89_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~91_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~92_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~93_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~94_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~98_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~99_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~100_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~101_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~109_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~110_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~111_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~112_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~113_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~114_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~115_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~116_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~117_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|Equal5~1_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|carry~1_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateRight0~18_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~123_combout\ : std_logic;
SIGNAL \key_1~combout\ : std_logic;
SIGNAL \key_3~combout\ : std_logic;
SIGNAL \key_2~combout\ : std_logic;
SIGNAL \key_3~clkctrl_outclk\ : std_logic;
SIGNAL \key_2~clkctrl_outclk\ : std_logic;
SIGNAL \key_1~clkctrl_outclk\ : std_logic;
SIGNAL \aluEntity|selectorEntity|carry~3_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ : std_logic;
SIGNAL \AREG|A_out[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|carry~4_combout\ : std_logic;
SIGNAL \AREG|A_out[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~1_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~3_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|RotateLeft0~19_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|Mux0~0_combout\ : std_logic;
SIGNAL \aluEntity|shiftEntity|Mux0~1_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~23_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|carry~2_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~121_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~125_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~120_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~122_combout\ : std_logic;
SIGNAL \AREG|A_out[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~38_combout\ : std_logic;
SIGNAL \BREG|B_out[4]~feeder_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\ : std_logic;
SIGNAL \AREG|A_out[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\ : std_logic;
SIGNAL \AREG|A_out[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~35_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~102_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~103_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~104_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~105_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|Equal5~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~28_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~29_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~106_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key_0~combout\ : std_logic;
SIGNAL \key_0~clkctrl_outclk\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~30_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~107_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[6]~108_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~126_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|Equal8~2_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|Equal9~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:2:chain|s~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~118_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[7]~119_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[2]~75_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|s~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~62_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~63_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[1]~64_combout\ : std_logic;
SIGNAL \AREG|A_out[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[0]~54_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~6_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|Equal8~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:11:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[3]~10_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[0]~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[1]~5_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[3]~11_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[4]~12_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[4]~13_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:14:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[6]~16_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[6]~17_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~4_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|Equal6~0_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[0]~3_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[2]~9_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[0]~2_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[0]~1_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[0]~4_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[1]~6_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[1]~7_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~3_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~27_combout\ : std_logic;
SIGNAL \AREG|A_out[3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \AREG|A_out[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~26_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[3]~43_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~5_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~90_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~95_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~96_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~124_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~87_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[5]~97_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~7_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|STATUS~8_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[5]~14_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[5]~15_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0_combout\ : std_logic;
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[7]~18_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|HI[7]~19_combout\ : std_logic;
SIGNAL \AREG|A_out[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~78_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~81_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~82_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~83_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~84_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~85_combout\ : std_logic;
SIGNAL \aluEntity|selectorEntity|LO[4]~86_combout\ : std_logic;
SIGNAL \BREG|B_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OPREG|OP_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \aluEntity|arithAndLogicEntity|adderSubEntity|yXored\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sw_0_7~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_key_0 <= key_0;
ww_key_1 <= key_1;
ww_key_2 <= key_2;
ww_key_3 <= key_3;
ww_sw_0_7 <= sw_0_7;
STATUS <= ww_STATUS;
HI_OUT <= ww_HI_OUT;
LO_OUT <= ww_LO_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT15\ & 
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT12\
& \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~dataout\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~1\ & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~0\);

\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~0\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~1\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\sw_0_7~combout\(7) & \sw_0_7~combout\(6) & \sw_0_7~combout\(5) & \sw_0_7~combout\(4) & \sw_0_7~combout\(3) & \sw_0_7~combout\(2) & \sw_0_7~combout\(1)
& \sw_0_7~combout\(0) & gnd);

\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\BREG|B_out\(7) & \BREG|B_out\(6) & \BREG|B_out\(5) & \BREG|B_out\(4) & \BREG|B_out\(3) & \BREG|B_out\(2) & \BREG|B_out\(1) & \BREG|B_out\(0) & gnd);

\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~0\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~1\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~dataout\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\key_3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_3~combout\);

\key_0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_0~combout\);

\key_2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_2~combout\);

\key_1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \key_1~combout\);

-- Location: LCCOMB_X29_Y4_N26
\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\ = (\OPREG|OP_out\(1) & \aluEntity|selectorEntity|carry~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datad => \aluEntity|selectorEntity|carry~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\);

-- Location: LCCOMB_X29_Y4_N4
\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\ = (\AREG|A_out[0]~_Duplicate_1_regout\ & (((\BREG|B_out\(0)) # (\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\)) # 
-- (!\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \BREG|B_out\(0),
	datac => \AREG|A_out[0]~_Duplicate_1_regout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\);

-- Location: LCCOMB_X33_Y4_N2
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\ = (\AREG|A_out[6]~_Duplicate_1_regout\ & ((\aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ 
-- (!\BREG|B_out\(6))))) # (!\AREG|A_out[6]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (!\BREG|B_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[6]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datad => \BREG|B_out\(6),
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N26
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\ & ((\AREG|A_out[7]~_Duplicate_1_regout\) # (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ 
-- (!\BREG|B_out\(7))))) # (!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\ & (\AREG|A_out[7]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (!\BREG|B_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \AREG|A_out[7]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(7),
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y3_N20
\aluEntity|selectorEntity|HI[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[2]~8_combout\ = (\aluEntity|selectorEntity|Equal8~0_combout\ & (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|Equal8~0_combout\,
	datab => \OPREG|OP_out\(1),
	datac => \OPREG|OP_out\(2),
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10),
	combout => \aluEntity|selectorEntity|HI[2]~8_combout\);

-- Location: LCCOMB_X33_Y4_N12
\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\ = (\BREG|B_out\(6) & ((\BREG|B_out\(7) $ (\AREG|A_out[7]~_Duplicate_1_regout\)) # (!\AREG|A_out[6]~_Duplicate_1_regout\))) # (!\BREG|B_out\(6) & ((\AREG|A_out[6]~_Duplicate_1_regout\) # 
-- (\BREG|B_out\(7) $ (\AREG|A_out[7]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(6),
	datab => \BREG|B_out\(7),
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	datad => \AREG|A_out[7]~_Duplicate_1_regout\,
	combout => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1_combout\ = (\BREG|B_out\(4) & ((\BREG|B_out\(3) $ (\AREG|A_out[3]~_Duplicate_1_regout\)) # (!\AREG|A_out[4]~_Duplicate_1_regout\))) # (!\BREG|B_out\(4) & ((\AREG|A_out[4]~_Duplicate_1_regout\) # 
-- (\BREG|B_out\(3) $ (\AREG|A_out[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(4),
	datab => \BREG|B_out\(3),
	datac => \AREG|A_out[3]~_Duplicate_1_regout\,
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1_combout\);

-- Location: LCCOMB_X33_Y4_N24
\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\ = (\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\) # ((\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1_combout\) # (\BREG|B_out\(5) $ 
-- (\AREG|A_out[5]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(5),
	datab => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\,
	datac => \AREG|A_out[5]~_Duplicate_1_regout\,
	datad => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~1_combout\,
	combout => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\);

-- Location: LCCOMB_X30_Y4_N4
\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\ = (\AREG|A_out[2]~_Duplicate_1_regout\ & ((\BREG|B_out\(1) $ (\AREG|A_out[1]~_Duplicate_1_regout\)) # (!\BREG|B_out\(2)))) # (!\AREG|A_out[2]~_Duplicate_1_regout\ & ((\BREG|B_out\(2)) # 
-- (\BREG|B_out\(1) $ (\AREG|A_out[1]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[2]~_Duplicate_1_regout\,
	datab => \BREG|B_out\(1),
	datac => \AREG|A_out[1]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(2),
	combout => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\);

-- Location: LCCOMB_X30_Y4_N14
\aluEntity|selectorEntity|LO[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~14_combout\ = (\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\) # ((\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\) # (\AREG|A_out[0]~_Duplicate_1_regout\ $ (\BREG|B_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\,
	datab => \AREG|A_out[0]~_Duplicate_1_regout\,
	datac => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~14_combout\);

-- Location: LCCOMB_X31_Y4_N8
\aluEntity|selectorEntity|LO[7]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~15_combout\ = (\OPREG|OP_out\(1) & (\OPREG|OP_out\(0) & (!\OPREG|OP_out\(3) & \OPREG|OP_out\(2)))) # (!\OPREG|OP_out\(1) & (!\OPREG|OP_out\(0) & (\OPREG|OP_out\(3) & !\OPREG|OP_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|LO[7]~15_combout\);

-- Location: LCCOMB_X31_Y4_N26
\aluEntity|selectorEntity|LO[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~16_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[7]~15_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~16_combout\);

-- Location: LCCOMB_X24_Y4_N4
\aluEntity|selectorEntity|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|Equal8~1_combout\ = (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|Equal8~0_combout\ & \OPREG|OP_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(2),
	datac => \aluEntity|selectorEntity|Equal8~0_combout\,
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|Equal8~1_combout\);

-- Location: LCCOMB_X30_Y4_N20
\aluEntity|shiftEntity|RotateLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~0_combout\ = (\AREG|A_out[1]~_Duplicate_1_regout\ & !\BREG|B_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[1]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(1),
	combout => \aluEntity|shiftEntity|RotateLeft0~0_combout\);

-- Location: LCCOMB_X30_Y4_N6
\aluEntity|selectorEntity|LO[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~17_combout\ = (!\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\ & (\AREG|A_out[0]~_Duplicate_1_regout\ & (!\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\ & !\BREG|B_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\,
	datab => \AREG|A_out[0]~_Duplicate_1_regout\,
	datac => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~3_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~17_combout\);

-- Location: LCCOMB_X30_Y4_N28
\aluEntity|selectorEntity|LO[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~18_combout\ = (\AREG|A_out[2]~_Duplicate_1_regout\ & (((\aluEntity|shiftEntity|RotateLeft0~0_combout\) # (\aluEntity|selectorEntity|LO[7]~17_combout\)) # (!\BREG|B_out\(2)))) # (!\AREG|A_out[2]~_Duplicate_1_regout\ & 
-- (!\BREG|B_out\(2) & ((\aluEntity|shiftEntity|RotateLeft0~0_combout\) # (\aluEntity|selectorEntity|LO[7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[2]~_Duplicate_1_regout\,
	datab => \BREG|B_out\(2),
	datac => \aluEntity|shiftEntity|RotateLeft0~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~17_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~18_combout\);

-- Location: LCCOMB_X32_Y4_N22
\aluEntity|selectorEntity|LO[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~19_combout\ = (\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\ & (!\BREG|B_out\(3) & (\AREG|A_out[3]~_Duplicate_1_regout\))) # (!\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\ & 
-- ((\aluEntity|selectorEntity|LO[7]~18_combout\) # ((!\BREG|B_out\(3) & \AREG|A_out[3]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~2_combout\,
	datab => \BREG|B_out\(3),
	datac => \AREG|A_out[3]~_Duplicate_1_regout\,
	datad => \aluEntity|selectorEntity|LO[7]~18_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~19_combout\);

-- Location: LCCOMB_X33_Y4_N28
\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4_combout\ = (\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\) # (\AREG|A_out[5]~_Duplicate_1_regout\ $ (\BREG|B_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[5]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~0_combout\,
	datad => \BREG|B_out\(5),
	combout => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4_combout\);

-- Location: LCCOMB_X32_Y4_N8
\aluEntity|selectorEntity|LO[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~20_combout\ = (!\aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4_combout\ & ((\AREG|A_out[4]~_Duplicate_1_regout\ & ((\aluEntity|selectorEntity|LO[7]~19_combout\) # (!\BREG|B_out\(4)))) # 
-- (!\AREG|A_out[4]~_Duplicate_1_regout\ & (\aluEntity|selectorEntity|LO[7]~19_combout\ & !\BREG|B_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[4]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~19_combout\,
	datac => \BREG|B_out\(4),
	datad => \aluEntity|arithAndLogicEntity|maxMinEntity|process_0~4_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~20_combout\);

-- Location: LCCOMB_X34_Y4_N8
\aluEntity|selectorEntity|LO[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~21_combout\ = (!\BREG|B_out\(5) & \AREG|A_out[5]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BREG|B_out\(5),
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[7]~21_combout\);

-- Location: LCCOMB_X33_Y4_N30
\aluEntity|selectorEntity|LO[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~22_combout\ = (\AREG|A_out[6]~_Duplicate_1_regout\ & ((\aluEntity|selectorEntity|LO[7]~21_combout\) # ((\aluEntity|selectorEntity|LO[7]~20_combout\) # (!\BREG|B_out\(6))))) # (!\AREG|A_out[6]~_Duplicate_1_regout\ & 
-- (!\BREG|B_out\(6) & ((\aluEntity|selectorEntity|LO[7]~21_combout\) # (\aluEntity|selectorEntity|LO[7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[6]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~21_combout\,
	datac => \BREG|B_out\(6),
	datad => \aluEntity|selectorEntity|LO[7]~20_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~22_combout\);

-- Location: LCCOMB_X32_Y4_N30
\aluEntity|selectorEntity|LO[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~24_combout\ = (!\aluEntity|selectorEntity|LO[7]~23_combout\ & ((\aluEntity|selectorEntity|LO[7]~22_combout\ & ((\AREG|A_out[7]~_Duplicate_1_regout\) # (!\BREG|B_out\(7)))) # (!\aluEntity|selectorEntity|LO[7]~22_combout\ & 
-- (\AREG|A_out[7]~_Duplicate_1_regout\ & !\BREG|B_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~23_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~22_combout\,
	datac => \AREG|A_out[7]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(7),
	combout => \aluEntity|selectorEntity|LO[7]~24_combout\);

-- Location: LCCOMB_X31_Y4_N2
\aluEntity|selectorEntity|LO[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~25_combout\ = (\aluEntity|selectorEntity|LO[7]~14_combout\ & (\aluEntity|selectorEntity|LO[7]~16_combout\ & (\aluEntity|selectorEntity|Equal8~1_combout\ $ (!\aluEntity|selectorEntity|LO[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~14_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~16_combout\,
	datac => \aluEntity|selectorEntity|Equal8~1_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~24_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~25_combout\);

-- Location: LCCOMB_X32_Y3_N6
\aluEntity|shiftEntity|RotateLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~2_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[6]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\aluEntity|selectorEntity|carry~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datab => \aluEntity|selectorEntity|carry~2_combout\,
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~2_combout\);

-- Location: LCCOMB_X32_Y3_N10
\aluEntity|shiftEntity|RotateRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~0_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[6]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[4]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~0_combout\);

-- Location: LCCOMB_X32_Y3_N4
\aluEntity|shiftEntity|RotateRight0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~1_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[5]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[3]~_Duplicate_1_regout\,
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~1_combout\);

-- Location: LCCOMB_X32_Y3_N18
\aluEntity|shiftEntity|RotateRight0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~2_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~0_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~0_combout\,
	datab => \aluEntity|shiftEntity|RotateRight0~1_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateRight0~2_combout\);

-- Location: LCCOMB_X29_Y3_N16
\aluEntity|shiftEntity|RotateLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~4_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[0]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[2]~_Duplicate_1_regout\,
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~4_combout\);

-- Location: LCCOMB_X29_Y3_N14
\aluEntity|shiftEntity|RotateLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~5_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[1]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AREG|A_out[3]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[1]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~5_combout\);

-- Location: LCCOMB_X30_Y3_N20
\aluEntity|shiftEntity|RotateLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~6_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~4_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~5_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateLeft0~4_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~6_combout\);

-- Location: LCCOMB_X31_Y3_N20
\aluEntity|selectorEntity|LO[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~31_combout\ = (\BREG|B_out\(2) & (((\OPREG|OP_out\(1))))) # (!\BREG|B_out\(2) & ((\OPREG|OP_out\(1) & ((\aluEntity|shiftEntity|RotateRight0~2_combout\))) # (!\OPREG|OP_out\(1) & 
-- (\aluEntity|shiftEntity|RotateLeft0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~6_combout\,
	datab => \BREG|B_out\(2),
	datac => \OPREG|OP_out\(1),
	datad => \aluEntity|shiftEntity|RotateRight0~2_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~31_combout\);

-- Location: LCCOMB_X29_Y3_N8
\aluEntity|shiftEntity|RotateRight0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~3_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[1]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\aluEntity|selectorEntity|carry~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|carry~2_combout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[1]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~3_combout\);

-- Location: LCCOMB_X30_Y3_N18
\aluEntity|shiftEntity|RotateRight0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~4_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[0]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AREG|A_out[7]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~4_combout\);

-- Location: LCCOMB_X30_Y3_N24
\aluEntity|shiftEntity|RotateRight0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~5_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~3_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~3_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~4_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~5_combout\);

-- Location: LCCOMB_X31_Y3_N26
\aluEntity|selectorEntity|LO[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~32_combout\ = (\aluEntity|selectorEntity|LO[3]~31_combout\ & ((\aluEntity|shiftEntity|RotateRight0~5_combout\) # ((!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[3]~31_combout\ & (((\BREG|B_out\(2) & 
-- \aluEntity|shiftEntity|RotateLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~31_combout\,
	datab => \aluEntity|shiftEntity|RotateRight0~5_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~3_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~32_combout\);

-- Location: LCCOMB_X27_Y3_N24
\aluEntity|selectorEntity|LO[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~33_combout\ = (\aluEntity|selectorEntity|LO[3]~32_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~32_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[3]~33_combout\);

-- Location: LCCOMB_X31_Y4_N24
\aluEntity|selectorEntity|LO[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~34_combout\ = (\OPREG|OP_out\(3) & ((!\OPREG|OP_out\(0)))) # (!\OPREG|OP_out\(3) & ((\OPREG|OP_out\(1)) # (\OPREG|OP_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(1),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~34_combout\);

-- Location: LCCOMB_X32_Y4_N4
\aluEntity|selectorEntity|LO[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~36_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & ((\AREG|A_out[3]~_Duplicate_1_regout\) # ((\BREG|B_out\(3))))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & (\AREG|A_out[3]~_Duplicate_1_regout\ $ 
-- (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\BREG|B_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[3]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \BREG|B_out\(3),
	datad => \aluEntity|selectorEntity|LO[7]~35_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~36_combout\);

-- Location: LCCOMB_X32_Y4_N18
\aluEntity|selectorEntity|LO[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~37_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[3]~36_combout\ $ (((!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- !\aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[7]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datab => \aluEntity|selectorEntity|LO[3]~36_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~37_combout\);

-- Location: LCCOMB_X32_Y4_N0
\aluEntity|selectorEntity|LO[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~39_combout\ = (\AREG|A_out[3]~_Duplicate_1_regout\ & (\aluEntity|selectorEntity|LO[3]~37_combout\ $ (((\aluEntity|selectorEntity|LO[7]~38_combout\ & \BREG|B_out\(3)))))) # (!\AREG|A_out[3]~_Duplicate_1_regout\ & 
-- (\aluEntity|selectorEntity|LO[3]~37_combout\ & ((\BREG|B_out\(3)) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[3]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datac => \BREG|B_out\(3),
	datad => \aluEntity|selectorEntity|LO[3]~37_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~39_combout\);

-- Location: LCCOMB_X27_Y3_N26
\aluEntity|selectorEntity|LO[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~40_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[3]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[3]~39_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~40_combout\);

-- Location: LCCOMB_X27_Y3_N8
\aluEntity|selectorEntity|LO[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~41_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[3]~40_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~33_combout\,
	datab => \aluEntity|selectorEntity|LO[3]~40_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~41_combout\);

-- Location: LCCOMB_X27_Y4_N22
\aluEntity|selectorEntity|LO[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~42_combout\ = (\aluEntity|selectorEntity|LO[3]~41_combout\ & (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3)) # (!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[3]~41_combout\ & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \aluEntity|selectorEntity|LO[3]~41_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3),
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~42_combout\);

-- Location: LCCOMB_X30_Y3_N10
\aluEntity|shiftEntity|RotateLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~7_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[2]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[4]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[2]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~7_combout\);

-- Location: LCCOMB_X32_Y3_N16
\aluEntity|shiftEntity|RotateLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~8_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[3]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[5]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[3]~_Duplicate_1_regout\,
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~8_combout\);

-- Location: LCCOMB_X32_Y3_N2
\aluEntity|shiftEntity|RotateLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~9_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~7_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~8_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~7_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateLeft0~9_combout\);

-- Location: LCCOMB_X29_Y3_N12
\aluEntity|shiftEntity|RotateRight0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~6_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[3]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[1]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AREG|A_out[3]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[1]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~6_combout\);

-- Location: LCCOMB_X29_Y3_N26
\aluEntity|shiftEntity|RotateRight0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~7_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[2]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[2]~_Duplicate_1_regout\,
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~7_combout\);

-- Location: LCCOMB_X30_Y3_N4
\aluEntity|shiftEntity|RotateRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~8_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~6_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~6_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~7_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~8_combout\);

-- Location: LCCOMB_X30_Y3_N14
\aluEntity|shiftEntity|RotateLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~10_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[7]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AREG|A_out[7]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~10_combout\);

-- Location: LCCOMB_X31_Y3_N24
\aluEntity|shiftEntity|RotateLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~11_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~2_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~10_combout\,
	datab => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateLeft0~2_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~11_combout\);

-- Location: LCCOMB_X30_Y3_N0
\aluEntity|selectorEntity|LO[0]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~44_combout\ = (\BREG|B_out\(2) & (((\OPREG|OP_out\(1))))) # (!\BREG|B_out\(2) & ((\OPREG|OP_out\(1) & ((\aluEntity|shiftEntity|RotateRight0~8_combout\))) # (!\OPREG|OP_out\(1) & 
-- (\aluEntity|shiftEntity|RotateLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(2),
	datab => \aluEntity|shiftEntity|RotateLeft0~11_combout\,
	datac => \aluEntity|shiftEntity|RotateRight0~8_combout\,
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[0]~44_combout\);

-- Location: LCCOMB_X32_Y3_N12
\aluEntity|shiftEntity|RotateRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~9_combout\ = (\BREG|B_out\(1) & (\AREG|A_out[7]~_Duplicate_1_regout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[5]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[7]~_Duplicate_1_regout\,
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~9_combout\);

-- Location: LCCOMB_X32_Y3_N14
\aluEntity|shiftEntity|RotateRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~10_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~9_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~9_combout\,
	datab => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~0_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~10_combout\);

-- Location: LCCOMB_X31_Y3_N6
\aluEntity|selectorEntity|LO[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~45_combout\ = (\aluEntity|selectorEntity|LO[0]~44_combout\ & ((\aluEntity|shiftEntity|RotateRight0~10_combout\) # ((!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[0]~44_combout\ & (((\BREG|B_out\(2) & 
-- \aluEntity|shiftEntity|RotateLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[0]~44_combout\,
	datab => \aluEntity|shiftEntity|RotateRight0~10_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~9_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~45_combout\);

-- Location: LCCOMB_X29_Y3_N24
\aluEntity|selectorEntity|LO[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~46_combout\ = (\aluEntity|selectorEntity|LO[0]~45_combout\ & ((\OPREG|OP_out\(2)) # ((\OPREG|OP_out\(1)) # (\OPREG|OP_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(2),
	datab => \OPREG|OP_out\(1),
	datac => \aluEntity|selectorEntity|LO[0]~45_combout\,
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[0]~46_combout\);

-- Location: LCCOMB_X29_Y4_N22
\aluEntity|selectorEntity|LO[0]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~47_combout\ = \AREG|A_out[0]~_Duplicate_1_regout\ $ (((\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ & (\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\ & 
-- !\aluEntity|selectorEntity|LO[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~2_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[0]~47_combout\);

-- Location: LCCOMB_X29_Y4_N2
\aluEntity|selectorEntity|LO[0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~48_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & ((\aluEntity|selectorEntity|LO[0]~47_combout\ & ((\aluEntity|selectorEntity|LO[7]~35_combout\) # (!\BREG|B_out\(0)))) # 
-- (!\aluEntity|selectorEntity|LO[0]~47_combout\ & ((\BREG|B_out\(0)))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (((\aluEntity|selectorEntity|LO[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[0]~47_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|selectorEntity|LO[7]~34_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~48_combout\);

-- Location: LCCOMB_X29_Y4_N24
\aluEntity|selectorEntity|LO[0]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~49_combout\ = (\aluEntity|selectorEntity|LO[7]~38_combout\ & ((\aluEntity|selectorEntity|LO[0]~48_combout\ & (\BREG|B_out\(0) $ (\AREG|A_out[0]~_Duplicate_1_regout\))) # (!\aluEntity|selectorEntity|LO[0]~48_combout\ & 
-- (\BREG|B_out\(0) & \AREG|A_out[0]~_Duplicate_1_regout\)))) # (!\aluEntity|selectorEntity|LO[7]~38_combout\ & (\aluEntity|selectorEntity|LO[0]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datab => \aluEntity|selectorEntity|LO[0]~48_combout\,
	datac => \BREG|B_out\(0),
	datad => \AREG|A_out[0]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[0]~49_combout\);

-- Location: LCCOMB_X29_Y3_N18
\aluEntity|selectorEntity|LO[0]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~50_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[0]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[0]~49_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~50_combout\);

-- Location: LCCOMB_X29_Y3_N0
\aluEntity|selectorEntity|LO[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~51_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[0]~50_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[0]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[0]~46_combout\,
	datab => \aluEntity|selectorEntity|LO[0]~50_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~51_combout\);

-- Location: LCCOMB_X29_Y4_N18
\aluEntity|selectorEntity|LO[0]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~52_combout\ = (\aluEntity|selectorEntity|LO[0]~51_combout\ & (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0)) # (!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[0]~51_combout\ & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\ & ((\aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\,
	datab => \aluEntity|selectorEntity|LO[0]~51_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0),
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~52_combout\);

-- Location: LCCOMB_X30_Y4_N10
\aluEntity|selectorEntity|LO[0]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~53_combout\ = (\aluEntity|selectorEntity|LO[0]~121_combout\ & ((\aluEntity|selectorEntity|LO[7]~16_combout\ & (\BREG|B_out\(0))) # (!\aluEntity|selectorEntity|LO[7]~16_combout\ & 
-- ((\aluEntity|selectorEntity|LO[0]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(0),
	datab => \aluEntity|selectorEntity|LO[0]~52_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~16_combout\,
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~53_combout\);

-- Location: LCCOMB_X32_Y3_N8
\aluEntity|shiftEntity|RotateLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~12_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[4]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[6]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~12_combout\);

-- Location: LCCOMB_X32_Y3_N22
\aluEntity|shiftEntity|RotateLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~13_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~8_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~8_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~12_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateLeft0~13_combout\);

-- Location: LCCOMB_X31_Y3_N28
\aluEntity|shiftEntity|RotateRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~11_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[4]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AREG|A_out[2]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~11_combout\);

-- Location: LCCOMB_X30_Y3_N22
\aluEntity|shiftEntity|RotateRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~12_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~11_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~6_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~11_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~12_combout\);

-- Location: LCCOMB_X29_Y3_N30
\aluEntity|shiftEntity|RotateLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~14_combout\ = (\BREG|B_out\(1) & (\aluEntity|selectorEntity|carry~2_combout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[1]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|carry~2_combout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[1]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~14_combout\);

-- Location: LCCOMB_X30_Y3_N8
\aluEntity|shiftEntity|RotateLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~15_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~10_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~14_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~10_combout\,
	datac => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateLeft0~15_combout\);

-- Location: LCCOMB_X30_Y3_N30
\aluEntity|selectorEntity|LO[1]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~55_combout\ = (\BREG|B_out\(2) & (\OPREG|OP_out\(1))) # (!\BREG|B_out\(2) & ((\OPREG|OP_out\(1) & ((\aluEntity|shiftEntity|RotateRight0~12_combout\))) # (!\OPREG|OP_out\(1) & 
-- (\aluEntity|shiftEntity|RotateLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(2),
	datab => \OPREG|OP_out\(1),
	datac => \aluEntity|shiftEntity|RotateLeft0~15_combout\,
	datad => \aluEntity|shiftEntity|RotateRight0~12_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~55_combout\);

-- Location: LCCOMB_X32_Y3_N20
\aluEntity|shiftEntity|RotateRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~13_combout\ = (\BREG|B_out\(1) & (\aluEntity|selectorEntity|carry~2_combout\)) # (!\BREG|B_out\(1) & ((\AREG|A_out[6]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datab => \aluEntity|selectorEntity|carry~2_combout\,
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateRight0~13_combout\);

-- Location: LCCOMB_X32_Y3_N30
\aluEntity|shiftEntity|RotateRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~14_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~13_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~13_combout\,
	datab => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~9_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~14_combout\);

-- Location: LCCOMB_X31_Y3_N18
\aluEntity|selectorEntity|LO[1]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~56_combout\ = (\aluEntity|selectorEntity|LO[1]~55_combout\ & (((\aluEntity|shiftEntity|RotateRight0~14_combout\) # (!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[1]~55_combout\ & 
-- (\aluEntity|shiftEntity|RotateLeft0~13_combout\ & (\BREG|B_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[1]~55_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~13_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateRight0~14_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~56_combout\);

-- Location: LCCOMB_X29_Y3_N20
\aluEntity|selectorEntity|LO[1]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~57_combout\ = (\aluEntity|selectorEntity|LO[1]~56_combout\ & ((\OPREG|OP_out\(2)) # ((\OPREG|OP_out\(1)) # (\OPREG|OP_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(2),
	datab => \OPREG|OP_out\(1),
	datac => \aluEntity|selectorEntity|LO[1]~56_combout\,
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[1]~57_combout\);

-- Location: LCCOMB_X30_Y4_N30
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s~combout\ = \AREG|A_out[1]~_Duplicate_1_regout\ $ (\aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1) $ (((\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\) # 
-- (!\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[1]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\,
	datac => \aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1),
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s~combout\);

-- Location: LCCOMB_X29_Y4_N16
\aluEntity|arithAndLogicEntity|LO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|LO~0_combout\ = (\AREG|A_out[1]~_Duplicate_1_regout\) # (\BREG|B_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[1]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(1),
	combout => \aluEntity|arithAndLogicEntity|LO~0_combout\);

-- Location: LCCOMB_X29_Y4_N8
\aluEntity|selectorEntity|LO[1]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~58_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & ((\aluEntity|arithAndLogicEntity|LO~0_combout\) # ((!\aluEntity|selectorEntity|LO[7]~34_combout\)))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- (((!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s~combout\ & \aluEntity|selectorEntity|LO[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|LO~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|s~combout\,
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~34_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~58_combout\);

-- Location: LCCOMB_X29_Y3_N22
\aluEntity|selectorEntity|LO[1]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~59_combout\ = (\aluEntity|selectorEntity|LO[1]~58_combout\ & ((\BREG|B_out\(1) $ (\AREG|A_out[1]~_Duplicate_1_regout\)) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))) # (!\aluEntity|selectorEntity|LO[1]~58_combout\ & 
-- (\aluEntity|selectorEntity|LO[7]~38_combout\ & (\BREG|B_out\(1) & \AREG|A_out[1]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[1]~58_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datac => \BREG|B_out\(1),
	datad => \AREG|A_out[1]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[1]~59_combout\);

-- Location: LCCOMB_X29_Y3_N28
\aluEntity|selectorEntity|LO[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~60_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[1]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[1]~59_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~60_combout\);

-- Location: LCCOMB_X29_Y3_N10
\aluEntity|selectorEntity|LO[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~61_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[1]~60_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[1]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[1]~57_combout\,
	datab => \aluEntity|selectorEntity|LO[1]~60_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~61_combout\);

-- Location: LCCOMB_X32_Y3_N24
\aluEntity|shiftEntity|RotateLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~16_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~12_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BREG|B_out\(0),
	datac => \aluEntity|shiftEntity|RotateLeft0~12_combout\,
	datad => \aluEntity|shiftEntity|RotateLeft0~1_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~16_combout\);

-- Location: LCCOMB_X31_Y3_N16
\aluEntity|shiftEntity|RotateRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~15_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~1_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~1_combout\,
	datab => \aluEntity|shiftEntity|RotateRight0~11_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateRight0~15_combout\);

-- Location: LCCOMB_X30_Y3_N16
\aluEntity|shiftEntity|RotateLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~17_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~14_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~14_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateLeft0~4_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~17_combout\);

-- Location: LCCOMB_X31_Y3_N14
\aluEntity|selectorEntity|LO[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~65_combout\ = (\BREG|B_out\(2) & (((\OPREG|OP_out\(1))))) # (!\BREG|B_out\(2) & ((\OPREG|OP_out\(1) & (\aluEntity|shiftEntity|RotateRight0~15_combout\)) # (!\OPREG|OP_out\(1) & 
-- ((\aluEntity|shiftEntity|RotateLeft0~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~15_combout\,
	datab => \BREG|B_out\(2),
	datac => \OPREG|OP_out\(1),
	datad => \aluEntity|shiftEntity|RotateLeft0~17_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~65_combout\);

-- Location: LCCOMB_X32_Y3_N26
\aluEntity|shiftEntity|RotateRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~16_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~4_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~13_combout\,
	datab => \aluEntity|shiftEntity|RotateRight0~4_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateRight0~16_combout\);

-- Location: LCCOMB_X31_Y3_N12
\aluEntity|selectorEntity|LO[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~66_combout\ = (\aluEntity|selectorEntity|LO[2]~65_combout\ & ((\aluEntity|shiftEntity|RotateRight0~16_combout\) # ((!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[2]~65_combout\ & (((\BREG|B_out\(2) & 
-- \aluEntity|shiftEntity|RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~16_combout\,
	datab => \aluEntity|selectorEntity|LO[2]~65_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~16_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~66_combout\);

-- Location: LCCOMB_X27_Y3_N6
\aluEntity|selectorEntity|LO[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~67_combout\ = (\aluEntity|selectorEntity|LO[2]~66_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[2]~66_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[2]~67_combout\);

-- Location: LCCOMB_X29_Y4_N6
\aluEntity|selectorEntity|LO[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~68_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & (((\BREG|B_out\(2)) # (\AREG|A_out[2]~_Duplicate_1_regout\)))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\BREG|B_out\(2) $ (\AREG|A_out[2]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \BREG|B_out\(2),
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \AREG|A_out[2]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[2]~68_combout\);

-- Location: LCCOMB_X29_Y4_N20
\aluEntity|selectorEntity|LO[2]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~69_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[2]~68_combout\ $ (((!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- !\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (((\aluEntity|selectorEntity|LO[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[2]~68_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~69_combout\);

-- Location: LCCOMB_X30_Y4_N18
\aluEntity|selectorEntity|LO[2]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~70_combout\ = (\aluEntity|selectorEntity|LO[2]~69_combout\ & ((\AREG|A_out[2]~_Duplicate_1_regout\ $ (\BREG|B_out\(2))) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))) # (!\aluEntity|selectorEntity|LO[2]~69_combout\ & 
-- (\aluEntity|selectorEntity|LO[7]~38_combout\ & (\AREG|A_out[2]~_Duplicate_1_regout\ & \BREG|B_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[2]~69_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datac => \AREG|A_out[2]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(2),
	combout => \aluEntity|selectorEntity|LO[2]~70_combout\);

-- Location: LCCOMB_X27_Y3_N16
\aluEntity|selectorEntity|LO[2]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~71_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[2]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[2]~70_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~71_combout\);

-- Location: LCCOMB_X27_Y3_N18
\aluEntity|selectorEntity|LO[2]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~72_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[2]~71_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[2]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[2]~67_combout\,
	datab => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datac => \aluEntity|selectorEntity|LO[2]~71_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~72_combout\);

-- Location: LCCOMB_X27_Y4_N20
\aluEntity|selectorEntity|LO[2]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~73_combout\ = (\aluEntity|selectorEntity|LO[2]~72_combout\ & (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2)) # (!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[2]~72_combout\ & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2),
	datac => \aluEntity|selectorEntity|LO[2]~72_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~73_combout\);

-- Location: LCCOMB_X30_Y4_N12
\aluEntity|selectorEntity|LO[2]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~74_combout\ = (\aluEntity|selectorEntity|LO[0]~121_combout\ & ((\aluEntity|selectorEntity|LO[7]~16_combout\ & ((\BREG|B_out\(2)))) # (!\aluEntity|selectorEntity|LO[7]~16_combout\ & 
-- (\aluEntity|selectorEntity|LO[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~16_combout\,
	datab => \aluEntity|selectorEntity|LO[0]~121_combout\,
	datac => \aluEntity|selectorEntity|LO[2]~73_combout\,
	datad => \BREG|B_out\(2),
	combout => \aluEntity|selectorEntity|LO[2]~74_combout\);

-- Location: LCCOMB_X30_Y3_N2
\aluEntity|shiftEntity|RotateLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~18_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~5_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~5_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateLeft0~7_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~18_combout\);

-- Location: LCCOMB_X31_Y3_N30
\aluEntity|selectorEntity|LO[4]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~76_combout\ = (\OPREG|OP_out\(1) & ((\BREG|B_out\(2)) # ((\aluEntity|shiftEntity|RotateRight0~10_combout\)))) # (!\OPREG|OP_out\(1) & (!\BREG|B_out\(2) & ((\aluEntity|shiftEntity|RotateLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \BREG|B_out\(2),
	datac => \aluEntity|shiftEntity|RotateRight0~10_combout\,
	datad => \aluEntity|shiftEntity|RotateLeft0~18_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~76_combout\);

-- Location: LCCOMB_X30_Y3_N28
\aluEntity|shiftEntity|RotateRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~17_combout\ = (\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateRight0~7_combout\)) # (!\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateRight0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|shiftEntity|RotateRight0~7_combout\,
	datac => \BREG|B_out\(0),
	datad => \aluEntity|shiftEntity|RotateRight0~3_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~17_combout\);

-- Location: LCCOMB_X30_Y3_N26
\aluEntity|selectorEntity|LO[4]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~77_combout\ = (\aluEntity|selectorEntity|LO[4]~76_combout\ & ((\aluEntity|shiftEntity|RotateRight0~17_combout\) # ((!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[4]~76_combout\ & (((\BREG|B_out\(2) & 
-- \aluEntity|shiftEntity|RotateLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~17_combout\,
	datab => \aluEntity|selectorEntity|LO[4]~76_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~11_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~77_combout\);

-- Location: LCCOMB_X32_Y4_N2
\aluEntity|selectorEntity|LO[4]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~79_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & (((\BREG|B_out\(4)) # (\AREG|A_out[4]~_Duplicate_1_regout\)))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\BREG|B_out\(4) $ (\AREG|A_out[4]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \BREG|B_out\(4),
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[4]~79_combout\);

-- Location: LCCOMB_X32_Y4_N20
\aluEntity|selectorEntity|LO[4]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~80_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[4]~79_combout\ $ (((!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- !\aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[7]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datab => \aluEntity|selectorEntity|LO[4]~79_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~80_combout\);

-- Location: LCCOMB_X31_Y3_N4
\aluEntity|selectorEntity|LO[5]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~88_combout\ = (\OPREG|OP_out\(1) & ((\aluEntity|shiftEntity|RotateRight0~14_combout\) # ((\BREG|B_out\(2))))) # (!\OPREG|OP_out\(1) & (((!\BREG|B_out\(2) & \aluEntity|shiftEntity|RotateLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \aluEntity|shiftEntity|RotateRight0~14_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~9_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~88_combout\);

-- Location: LCCOMB_X30_Y3_N12
\aluEntity|selectorEntity|LO[5]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~89_combout\ = (\BREG|B_out\(2) & ((\aluEntity|selectorEntity|LO[5]~88_combout\ & (\aluEntity|shiftEntity|RotateRight0~8_combout\)) # (!\aluEntity|selectorEntity|LO[5]~88_combout\ & 
-- ((\aluEntity|shiftEntity|RotateLeft0~15_combout\))))) # (!\BREG|B_out\(2) & (((\aluEntity|selectorEntity|LO[5]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(2),
	datab => \aluEntity|shiftEntity|RotateRight0~8_combout\,
	datac => \aluEntity|shiftEntity|RotateLeft0~15_combout\,
	datad => \aluEntity|selectorEntity|LO[5]~88_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~89_combout\);

-- Location: LCCOMB_X33_Y4_N4
\aluEntity|selectorEntity|LO[5]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~91_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & (((\AREG|A_out[5]~_Duplicate_1_regout\) # (\BREG|B_out\(5))))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\AREG|A_out[5]~_Duplicate_1_regout\ $ (\BREG|B_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datac => \AREG|A_out[5]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(5),
	combout => \aluEntity|selectorEntity|LO[5]~91_combout\);

-- Location: LCCOMB_X33_Y4_N6
\aluEntity|selectorEntity|LO[5]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~92_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[5]~91_combout\ $ (((!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- !\aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (((\aluEntity|selectorEntity|LO[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datab => \aluEntity|selectorEntity|LO[5]~91_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~92_combout\);

-- Location: LCCOMB_X33_Y4_N8
\aluEntity|selectorEntity|LO[5]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~93_combout\ = (\AREG|A_out[5]~_Duplicate_1_regout\ & (\aluEntity|selectorEntity|LO[5]~92_combout\ $ (((\aluEntity|selectorEntity|LO[7]~38_combout\ & \BREG|B_out\(5)))))) # (!\AREG|A_out[5]~_Duplicate_1_regout\ & 
-- (\aluEntity|selectorEntity|LO[5]~92_combout\ & ((\BREG|B_out\(5)) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[5]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datac => \aluEntity|selectorEntity|LO[5]~92_combout\,
	datad => \BREG|B_out\(5),
	combout => \aluEntity|selectorEntity|LO[5]~93_combout\);

-- Location: LCCOMB_X27_Y3_N20
\aluEntity|selectorEntity|LO[5]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~94_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[5]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[5]~93_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~94_combout\);

-- Location: LCCOMB_X33_Y4_N14
\aluEntity|selectorEntity|LO[6]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~98_combout\ = (\aluEntity|selectorEntity|LO[7]~120_combout\ & (\AREG|A_out[6]~_Duplicate_1_regout\ & !\OPREG|OP_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|LO[7]~120_combout\,
	datac => \AREG|A_out[6]~_Duplicate_1_regout\,
	datad => \OPREG|OP_out\(4),
	combout => \aluEntity|selectorEntity|LO[6]~98_combout\);

-- Location: LCCOMB_X31_Y3_N10
\aluEntity|selectorEntity|LO[6]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~99_combout\ = (\BREG|B_out\(2) & (((\OPREG|OP_out\(1))))) # (!\BREG|B_out\(2) & ((\OPREG|OP_out\(1) & (\aluEntity|shiftEntity|RotateRight0~16_combout\)) # (!\OPREG|OP_out\(1) & 
-- ((\aluEntity|shiftEntity|RotateLeft0~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~16_combout\,
	datab => \BREG|B_out\(2),
	datac => \OPREG|OP_out\(1),
	datad => \aluEntity|shiftEntity|RotateLeft0~13_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~99_combout\);

-- Location: LCCOMB_X30_Y3_N6
\aluEntity|selectorEntity|LO[6]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~100_combout\ = (\aluEntity|selectorEntity|LO[6]~99_combout\ & (((\aluEntity|shiftEntity|RotateRight0~12_combout\) # (!\BREG|B_out\(2))))) # (!\aluEntity|selectorEntity|LO[6]~99_combout\ & 
-- (\aluEntity|shiftEntity|RotateLeft0~17_combout\ & (\BREG|B_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~17_combout\,
	datab => \aluEntity|selectorEntity|LO[6]~99_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateRight0~12_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~100_combout\);

-- Location: LCCOMB_X27_Y3_N12
\aluEntity|selectorEntity|LO[6]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~101_combout\ = (\aluEntity|selectorEntity|LO[6]~100_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[6]~100_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[6]~101_combout\);

-- Location: LCCOMB_X34_Y4_N6
\aluEntity|selectorEntity|LO[7]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~109_combout\ = (\AREG|A_out[7]~_Duplicate_1_regout\ & (\aluEntity|selectorEntity|LO[7]~120_combout\ & !\OPREG|OP_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[7]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~120_combout\,
	datac => \OPREG|OP_out\(4),
	combout => \aluEntity|selectorEntity|LO[7]~109_combout\);

-- Location: LCCOMB_X31_Y3_N8
\aluEntity|selectorEntity|LO[7]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~110_combout\ = (\BREG|B_out\(2) & ((\aluEntity|shiftEntity|RotateLeft0~6_combout\) # ((\OPREG|OP_out\(1))))) # (!\BREG|B_out\(2) & (((!\OPREG|OP_out\(1) & \aluEntity|shiftEntity|RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~6_combout\,
	datab => \BREG|B_out\(2),
	datac => \OPREG|OP_out\(1),
	datad => \aluEntity|shiftEntity|RotateLeft0~16_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~110_combout\);

-- Location: LCCOMB_X31_Y3_N22
\aluEntity|selectorEntity|LO[7]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~111_combout\ = (\aluEntity|selectorEntity|LO[7]~110_combout\ & ((\aluEntity|shiftEntity|RotateRight0~15_combout\) # ((!\OPREG|OP_out\(1))))) # (!\aluEntity|selectorEntity|LO[7]~110_combout\ & (((\OPREG|OP_out\(1) & 
-- \aluEntity|shiftEntity|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~15_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~110_combout\,
	datac => \OPREG|OP_out\(1),
	datad => \aluEntity|shiftEntity|RotateRight0~5_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~111_combout\);

-- Location: LCCOMB_X27_Y3_N10
\aluEntity|selectorEntity|LO[7]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~112_combout\ = (\aluEntity|selectorEntity|LO[7]~111_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~111_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[7]~112_combout\);

-- Location: LCCOMB_X33_Y4_N22
\aluEntity|selectorEntity|LO[7]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~113_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & ((\AREG|A_out[7]~_Duplicate_1_regout\) # ((\BREG|B_out\(7))))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & (\AREG|A_out[7]~_Duplicate_1_regout\ $ 
-- (\BREG|B_out\(7) $ (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datab => \AREG|A_out[7]~_Duplicate_1_regout\,
	datac => \BREG|B_out\(7),
	datad => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~113_combout\);

-- Location: LCCOMB_X33_Y4_N20
\aluEntity|selectorEntity|LO[7]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~114_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[7]~113_combout\ $ (((!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- !\aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[7]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~113_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~114_combout\);

-- Location: LCCOMB_X33_Y4_N26
\aluEntity|selectorEntity|LO[7]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~115_combout\ = (\aluEntity|selectorEntity|LO[7]~38_combout\ & ((\BREG|B_out\(7) & (\aluEntity|selectorEntity|LO[7]~114_combout\ $ (\AREG|A_out[7]~_Duplicate_1_regout\))) # (!\BREG|B_out\(7) & 
-- (\aluEntity|selectorEntity|LO[7]~114_combout\ & \AREG|A_out[7]~_Duplicate_1_regout\)))) # (!\aluEntity|selectorEntity|LO[7]~38_combout\ & (((\aluEntity|selectorEntity|LO[7]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datab => \BREG|B_out\(7),
	datac => \aluEntity|selectorEntity|LO[7]~114_combout\,
	datad => \AREG|A_out[7]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[7]~115_combout\);

-- Location: LCCOMB_X27_Y3_N4
\aluEntity|selectorEntity|LO[7]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~116_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[7]~115_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[7]~115_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~116_combout\);

-- Location: LCCOMB_X27_Y3_N22
\aluEntity|selectorEntity|LO[7]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~117_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[7]~116_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[7]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~112_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~116_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~117_combout\);

-- Location: LCCOMB_X24_Y4_N2
\aluEntity|arithAndLogicEntity|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|Equal5~1_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (!\OPREG|OP_out\(1) & !\OPREG|OP_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datac => \OPREG|OP_out\(1),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|arithAndLogicEntity|Equal5~1_combout\);

-- Location: LCCOMB_X24_Y4_N24
\aluEntity|selectorEntity|carry~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|carry~1_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\ & ((\aluEntity|arithAndLogicEntity|Equal5~1_combout\) # 
-- ((\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ & \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)))) # (!\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\ & 
-- (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|Equal5~1_combout\,
	combout => \aluEntity|selectorEntity|carry~1_combout\);

-- Location: LCCOMB_X31_Y3_N2
\aluEntity|shiftEntity|RotateRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateRight0~18_combout\ = (\BREG|B_out\(2) & ((\aluEntity|shiftEntity|RotateRight0~2_combout\))) # (!\BREG|B_out\(2) & (\aluEntity|shiftEntity|RotateRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|shiftEntity|RotateRight0~17_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateRight0~2_combout\,
	combout => \aluEntity|shiftEntity|RotateRight0~18_combout\);

-- Location: LCCOMB_X34_Y4_N10
\aluEntity|selectorEntity|LO[3]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~123_combout\ = (\aluEntity|selectorEntity|LO[7]~15_combout\ & (!\aluEntity|selectorEntity|LO[7]~25_combout\ & (!\OPREG|OP_out\(4) & !\aluEntity|selectorEntity|LO[7]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~25_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[7]~120_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~123_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_1,
	combout => \key_1~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_3,
	combout => \key_3~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_2,
	combout => \key_2~combout\);

-- Location: CLKCTRL_G3
\key_3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_3~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\key_2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_2~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\key_1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_1~clkctrl_outclk\);

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(4),
	combout => \sw_0_7~combout\(4));

-- Location: LCFF_X25_Y4_N1
\OPREG|OP_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPREG|OP_out\(4));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(3),
	combout => \sw_0_7~combout\(3));

-- Location: LCFF_X25_Y4_N29
\OPREG|OP_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPREG|OP_out\(3));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(2),
	combout => \sw_0_7~combout\(2));

-- Location: LCFF_X25_Y4_N11
\OPREG|OP_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPREG|OP_out\(2));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(1),
	combout => \sw_0_7~combout\(1));

-- Location: LCFF_X25_Y4_N15
\OPREG|OP_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPREG|OP_out\(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(0),
	combout => \sw_0_7~combout\(0));

-- Location: LCFF_X25_Y4_N25
\OPREG|OP_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_1~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPREG|OP_out\(0));

-- Location: LCCOMB_X24_Y4_N8
\aluEntity|selectorEntity|carry~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|carry~3_combout\ = (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|carry~1_combout\ & (!\OPREG|OP_out\(1)))) # (!\OPREG|OP_out\(2) & ((\OPREG|OP_out\(0) & (\aluEntity|selectorEntity|carry~1_combout\)) # (!\OPREG|OP_out\(0) & 
-- ((\OPREG|OP_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|carry~1_combout\,
	datab => \OPREG|OP_out\(2),
	datac => \OPREG|OP_out\(1),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|carry~3_combout\);

-- Location: LCCOMB_X25_Y4_N10
\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ = (\OPREG|OP_out\(0) & (!\OPREG|OP_out\(4) & (!\OPREG|OP_out\(2) & !\OPREG|OP_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(0),
	datab => \OPREG|OP_out\(4),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(3),
	combout => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(7),
	combout => \sw_0_7~combout\(7));

-- Location: LCFF_X32_Y4_N17
\AREG|A_out[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[7]~_Duplicate_1_regout\);

-- Location: LCFF_X29_Y4_N13
\BREG|B_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(7));

-- Location: LCCOMB_X32_Y4_N16
\aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0_combout\ = \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\ $ (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\AREG|A_out[7]~_Duplicate_1_regout\ $ 
-- (\BREG|B_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:6:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \AREG|A_out[7]~_Duplicate_1_regout\,
	datad => \BREG|B_out\(7),
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0_combout\);

-- Location: LCCOMB_X24_Y4_N10
\aluEntity|selectorEntity|carry~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|carry~4_combout\ = (!\OPREG|OP_out\(3) & (\aluEntity|selectorEntity|carry~3_combout\ & ((\aluEntity|selectorEntity|carry~1_combout\) # (!\aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|carry~1_combout\,
	datab => \OPREG|OP_out\(3),
	datac => \aluEntity|selectorEntity|carry~3_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|subMSBit~0_combout\,
	combout => \aluEntity|selectorEntity|carry~4_combout\);

-- Location: LCFF_X29_Y4_N15
\BREG|B_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(2));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(5),
	combout => \sw_0_7~combout\(5));

-- Location: LCFF_X33_Y4_N25
\AREG|A_out[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X32_Y3_N0
\aluEntity|shiftEntity|RotateLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~1_combout\ = (\BREG|B_out\(1) & ((\AREG|A_out[5]~_Duplicate_1_regout\))) # (!\BREG|B_out\(1) & (\AREG|A_out[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(1),
	datac => \AREG|A_out[7]~_Duplicate_1_regout\,
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~1_combout\);

-- Location: LCFF_X29_Y4_N3
\BREG|B_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(0));

-- Location: LCCOMB_X32_Y3_N28
\aluEntity|shiftEntity|RotateLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~3_combout\ = (\BREG|B_out\(0) & ((\aluEntity|shiftEntity|RotateLeft0~1_combout\))) # (!\BREG|B_out\(0) & (\aluEntity|shiftEntity|RotateLeft0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~2_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~1_combout\,
	datad => \BREG|B_out\(0),
	combout => \aluEntity|shiftEntity|RotateLeft0~3_combout\);

-- Location: LCCOMB_X31_Y3_N0
\aluEntity|shiftEntity|RotateLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|RotateLeft0~19_combout\ = (\BREG|B_out\(2) & (\aluEntity|shiftEntity|RotateLeft0~18_combout\)) # (!\BREG|B_out\(2) & ((\aluEntity|shiftEntity|RotateLeft0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateLeft0~18_combout\,
	datac => \BREG|B_out\(2),
	datad => \aluEntity|shiftEntity|RotateLeft0~3_combout\,
	combout => \aluEntity|shiftEntity|RotateLeft0~19_combout\);

-- Location: LCCOMB_X31_Y4_N20
\aluEntity|shiftEntity|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|Mux0~0_combout\ = (\OPREG|OP_out\(0) & (((\OPREG|OP_out\(1))))) # (!\OPREG|OP_out\(0) & ((\OPREG|OP_out\(1) & ((\aluEntity|shiftEntity|Mux0~1_combout\))) # (!\OPREG|OP_out\(1) & (\aluEntity|selectorEntity|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|carry~2_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \aluEntity|shiftEntity|Mux0~1_combout\,
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|shiftEntity|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y4_N14
\aluEntity|shiftEntity|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|shiftEntity|Mux0~1_combout\ = (\aluEntity|shiftEntity|Mux0~0_combout\ & ((\aluEntity|shiftEntity|RotateRight0~18_combout\) # ((!\OPREG|OP_out\(0))))) # (!\aluEntity|shiftEntity|Mux0~0_combout\ & (((\aluEntity|shiftEntity|RotateLeft0~19_combout\ 
-- & \OPREG|OP_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|shiftEntity|RotateRight0~18_combout\,
	datab => \aluEntity|shiftEntity|RotateLeft0~19_combout\,
	datac => \aluEntity|shiftEntity|Mux0~0_combout\,
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|shiftEntity|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y4_N12
\aluEntity|selectorEntity|LO[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~23_combout\ = (\OPREG|OP_out\(3) & \OPREG|OP_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|LO[7]~23_combout\);

-- Location: LCCOMB_X31_Y4_N6
\aluEntity|selectorEntity|carry~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|carry~2_combout\ = (!\OPREG|OP_out\(4) & ((\aluEntity|selectorEntity|carry~4_combout\) # ((\aluEntity|shiftEntity|Mux0~1_combout\ & \aluEntity|selectorEntity|LO[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(4),
	datab => \aluEntity|selectorEntity|carry~4_combout\,
	datac => \aluEntity|shiftEntity|Mux0~1_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~23_combout\,
	combout => \aluEntity|selectorEntity|carry~2_combout\);

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw_0_7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_sw_0_7(6),
	combout => \sw_0_7~combout\(6));

-- Location: LCFF_X29_Y4_N27
\BREG|B_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(6));

-- Location: LCCOMB_X31_Y4_N30
\aluEntity|selectorEntity|LO[0]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~121_combout\ = (!\aluEntity|selectorEntity|LO[7]~25_combout\ & (((\OPREG|OP_out\(0)) # (!\OPREG|OP_out\(3))) # (!\OPREG|OP_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~25_combout\,
	datab => \OPREG|OP_out\(2),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[0]~121_combout\);

-- Location: LCCOMB_X34_Y4_N2
\aluEntity|selectorEntity|LO[6]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~125_combout\ = (\aluEntity|selectorEntity|LO[7]~15_combout\ & (!\OPREG|OP_out\(4) & (\BREG|B_out\(6) & \aluEntity|selectorEntity|LO[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datab => \OPREG|OP_out\(4),
	datac => \BREG|B_out\(6),
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~125_combout\);

-- Location: LCCOMB_X31_Y4_N28
\aluEntity|selectorEntity|LO[7]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~120_combout\ = (\aluEntity|selectorEntity|LO[7]~25_combout\) # ((\OPREG|OP_out\(2) & (\OPREG|OP_out\(3) & !\OPREG|OP_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~25_combout\,
	datab => \OPREG|OP_out\(2),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~120_combout\);

-- Location: LCCOMB_X34_Y4_N16
\aluEntity|selectorEntity|LO[3]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~122_combout\ = (!\aluEntity|selectorEntity|LO[7]~15_combout\ & (!\OPREG|OP_out\(4) & !\aluEntity|selectorEntity|LO[7]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[7]~120_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~122_combout\);

-- Location: LCFF_X33_Y4_N13
\AREG|A_out[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X29_Y3_N2
\aluEntity|selectorEntity|LO[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~38_combout\ = (\OPREG|OP_out\(3) & \OPREG|OP_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~38_combout\);

-- Location: LCFF_X27_Y4_N25
\BREG|B_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(5));

-- Location: LCCOMB_X27_Y4_N18
\BREG|B_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BREG|B_out[4]~feeder_combout\ = \sw_0_7~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_0_7~combout\(4),
	combout => \BREG|B_out[4]~feeder_combout\);

-- Location: LCFF_X27_Y4_N19
\BREG|B_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	datain => \BREG|B_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(4));

-- Location: LCCOMB_X29_Y4_N10
\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\ = (\BREG|B_out\(0) & (((!\aluEntity|selectorEntity|carry~2_combout\) # (!\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)) # (!\OPREG|OP_out\(1)))) # (!\BREG|B_out\(0) & 
-- (((\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \BREG|B_out\(0),
	datac => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datad => \aluEntity|selectorEntity|carry~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\);

-- Location: LCFF_X29_Y4_N31
\AREG|A_out[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[1]~_Duplicate_1_regout\);

-- Location: LCFF_X29_Y4_N29
\BREG|B_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(1));

-- Location: LCCOMB_X29_Y4_N28
\aluEntity|arithAndLogicEntity|adderSubEntity|yXored[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1) = \BREG|B_out\(1) $ (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BREG|B_out\(1),
	datad => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1));

-- Location: LCCOMB_X29_Y4_N30
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\ = (\AREG|A_out[1]~_Duplicate_1_regout\ & ((\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\) # ((!\aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1)) # 
-- (!\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\)))) # (!\AREG|A_out[1]~_Duplicate_1_regout\ & (!\aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1) & ((\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\) # 
-- (!\aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~3_combout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|first|cout~4_combout\,
	datac => \AREG|A_out[1]~_Duplicate_1_regout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|yXored\(1),
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\);

-- Location: LCFF_X29_Y4_N1
\AREG|A_out[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X29_Y4_N14
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\ & ((\AREG|A_out[2]~_Duplicate_1_regout\) # (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ 
-- (!\BREG|B_out\(2))))) # (!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\ & (\AREG|A_out[2]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (!\BREG|B_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:1:chain|cout~0_combout\,
	datac => \BREG|B_out\(2),
	datad => \AREG|A_out[2]~_Duplicate_1_regout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\);

-- Location: LCFF_X29_Y4_N17
\BREG|B_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_2~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BREG|B_out\(3));

-- Location: LCCOMB_X32_Y4_N10
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\ = (\AREG|A_out[3]~_Duplicate_1_regout\ & ((\aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ 
-- (!\BREG|B_out\(3))))) # (!\AREG|A_out[3]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (!\BREG|B_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[3]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:2:chain|cout~0_combout\,
	datad => \BREG|B_out\(3),
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\);

-- Location: LCCOMB_X32_Y4_N14
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\ = (\AREG|A_out[4]~_Duplicate_1_regout\ & ((\aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ 
-- (!\BREG|B_out\(4))))) # (!\AREG|A_out[4]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\ & (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (!\BREG|B_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[4]~_Duplicate_1_regout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \BREG|B_out\(4),
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:3:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y4_N18
\aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\ = (\AREG|A_out[5]~_Duplicate_1_regout\ & ((\aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\) # (\BREG|B_out\(5) $ 
-- (!\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\)))) # (!\AREG|A_out[5]~_Duplicate_1_regout\ & (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\ & (\BREG|B_out\(5) $ 
-- (!\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[5]~_Duplicate_1_regout\,
	datab => \BREG|B_out\(5),
	datac => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:4:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\);

-- Location: LCCOMB_X31_Y4_N10
\aluEntity|selectorEntity|LO[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~35_combout\ = (\OPREG|OP_out\(3) & ((\OPREG|OP_out\(1)) # (!\OPREG|OP_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(1),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(0),
	combout => \aluEntity|selectorEntity|LO[7]~35_combout\);

-- Location: LCCOMB_X33_Y4_N0
\aluEntity|selectorEntity|LO[6]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~102_combout\ = (\aluEntity|selectorEntity|LO[7]~35_combout\ & (((\BREG|B_out\(6)) # (\AREG|A_out[6]~_Duplicate_1_regout\)))) # (!\aluEntity|selectorEntity|LO[7]~35_combout\ & 
-- (\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\ $ (\BREG|B_out\(6) $ (\AREG|A_out[6]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datac => \BREG|B_out\(6),
	datad => \AREG|A_out[6]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[6]~102_combout\);

-- Location: LCCOMB_X33_Y4_N10
\aluEntity|selectorEntity|LO[6]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~103_combout\ = (\aluEntity|selectorEntity|LO[7]~34_combout\ & (\aluEntity|selectorEntity|LO[6]~102_combout\ $ (((!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\ & 
-- !\aluEntity|selectorEntity|LO[7]~35_combout\))))) # (!\aluEntity|selectorEntity|LO[7]~34_combout\ & (((\aluEntity|selectorEntity|LO[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~34_combout\,
	datab => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:5:chain|cout~0_combout\,
	datac => \aluEntity|selectorEntity|LO[7]~35_combout\,
	datad => \aluEntity|selectorEntity|LO[6]~102_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~103_combout\);

-- Location: LCCOMB_X33_Y4_N16
\aluEntity|selectorEntity|LO[6]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~104_combout\ = (\BREG|B_out\(6) & (\aluEntity|selectorEntity|LO[6]~103_combout\ $ (((\AREG|A_out[6]~_Duplicate_1_regout\ & \aluEntity|selectorEntity|LO[7]~38_combout\))))) # (!\BREG|B_out\(6) & 
-- (\aluEntity|selectorEntity|LO[6]~103_combout\ & ((\AREG|A_out[6]~_Duplicate_1_regout\) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BREG|B_out\(6),
	datab => \AREG|A_out[6]~_Duplicate_1_regout\,
	datac => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datad => \aluEntity|selectorEntity|LO[6]~103_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~104_combout\);

-- Location: LCCOMB_X27_Y3_N30
\aluEntity|selectorEntity|LO[6]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~105_combout\ = (\aluEntity|selectorEntity|LO[6]~104_combout\ & !\OPREG|OP_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|LO[6]~104_combout\,
	datac => \OPREG|OP_out\(4),
	combout => \aluEntity|selectorEntity|LO[6]~105_combout\);

-- Location: LCCOMB_X25_Y3_N28
\aluEntity|arithAndLogicEntity|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|Equal5~0_combout\ = (!\OPREG|OP_out\(3) & (!\OPREG|OP_out\(4) & \OPREG|OP_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(3),
	datab => \OPREG|OP_out\(4),
	datac => \OPREG|OP_out\(2),
	combout => \aluEntity|arithAndLogicEntity|Equal5~0_combout\);

-- Location: LCCOMB_X31_Y4_N0
\aluEntity|selectorEntity|LO[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~28_combout\ = (!\OPREG|OP_out\(3) & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(4) & \OPREG|OP_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(4),
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|LO[7]~28_combout\);

-- Location: LCCOMB_X31_Y4_N22
\aluEntity|selectorEntity|LO[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~29_combout\ = (\aluEntity|selectorEntity|LO[7]~28_combout\) # ((!\OPREG|OP_out\(2) & ((\OPREG|OP_out\(1)) # (\OPREG|OP_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \aluEntity|selectorEntity|LO[7]~28_combout\,
	datac => \OPREG|OP_out\(3),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|LO[7]~29_combout\);

-- Location: LCCOMB_X27_Y3_N0
\aluEntity|selectorEntity|LO[6]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~106_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[6]~105_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[6]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[6]~101_combout\,
	datab => \aluEntity|selectorEntity|LO[6]~105_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~106_combout\);

-- Location: LCCOMB_X29_Y5_N16
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\key_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_key_0,
	combout => \key_0~combout\);

-- Location: CLKCTRL_G1
\key_0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \key_0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \key_0~clkctrl_outclk\);

-- Location: DSPMULT_X28_Y4_N0
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \key_0~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X28_Y4_N2
\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X29_Y4_N12
\aluEntity|selectorEntity|LO[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~30_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\) # (!\OPREG|OP_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~29_combout\,
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[7]~30_combout\);

-- Location: LCCOMB_X27_Y4_N6
\aluEntity|selectorEntity|LO[6]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~107_combout\ = (\aluEntity|selectorEntity|LO[6]~106_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6)) # ((!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[6]~106_combout\ & 
-- (((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\ & \aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6),
	datab => \aluEntity|selectorEntity|LO[6]~106_combout\,
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~107_combout\);

-- Location: LCCOMB_X34_Y4_N20
\aluEntity|selectorEntity|LO[6]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[6]~108_combout\ = (\aluEntity|selectorEntity|LO[6]~98_combout\) # ((\aluEntity|selectorEntity|LO[6]~125_combout\) # ((\aluEntity|selectorEntity|LO[3]~122_combout\ & \aluEntity|selectorEntity|LO[6]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[6]~98_combout\,
	datab => \aluEntity|selectorEntity|LO[6]~125_combout\,
	datac => \aluEntity|selectorEntity|LO[3]~122_combout\,
	datad => \aluEntity|selectorEntity|LO[6]~107_combout\,
	combout => \aluEntity|selectorEntity|LO[6]~108_combout\);

-- Location: LCCOMB_X34_Y4_N4
\aluEntity|selectorEntity|LO[7]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~126_combout\ = (\aluEntity|selectorEntity|LO[7]~15_combout\ & (!\OPREG|OP_out\(4) & (\BREG|B_out\(7) & \aluEntity|selectorEntity|LO[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datab => \OPREG|OP_out\(4),
	datac => \BREG|B_out\(7),
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~126_combout\);

-- Location: LCCOMB_X25_Y4_N16
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]~0_combout\ = \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0) $ (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]~0_combout\);

-- Location: LCCOMB_X25_Y4_N26
\aluEntity|selectorEntity|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|Equal8~2_combout\ = (\OPREG|OP_out\(1) & \OPREG|OP_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(1),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|Equal8~2_combout\);

-- Location: LCCOMB_X25_Y4_N24
\aluEntity|selectorEntity|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|Equal9~0_combout\ = (!\OPREG|OP_out\(4) & (!\OPREG|OP_out\(3) & (!\OPREG|OP_out\(0) & \aluEntity|selectorEntity|Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(4),
	datab => \OPREG|OP_out\(3),
	datac => \OPREG|OP_out\(0),
	datad => \aluEntity|selectorEntity|Equal8~2_combout\,
	combout => \aluEntity|selectorEntity|Equal9~0_combout\);

-- Location: LCFF_X25_Y4_N17
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[0]~0_combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0));

-- Location: LCCOMB_X26_Y4_N26
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1) & ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\) # 
-- ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0))))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\ & (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\,
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N30
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:2:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:2:chain|s~0_combout\ = \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2) $ 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:2:chain|s~0_combout\);

-- Location: LCFF_X25_Y4_N31
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:2:chain|s~0_combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2));

-- Location: LCCOMB_X27_Y4_N30
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0_combout\ = \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3) $ (((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\ & 
-- ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2)) # (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\ & 
-- (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2) & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2),
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0_combout\);

-- Location: LCCOMB_X27_Y4_N12
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\ $ (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~combout\);

-- Location: LCFF_X27_Y4_N13
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3));

-- Location: LCCOMB_X27_Y4_N14
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|s~combout\ = \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4) $ (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ $ 
-- (((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|s~combout\);

-- Location: LCFF_X27_Y4_N11
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4));

-- Location: LCCOMB_X27_Y4_N16
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\) # (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(3),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1_combout\);

-- Location: LCCOMB_X26_Y4_N12
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2) & 
-- ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\ & \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(2),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~1_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\);

-- Location: LCCOMB_X26_Y4_N6
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4)) # 
-- ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\)))) # 
-- (!\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ & (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4) & ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4),
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:3:chain|cout~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\);

-- Location: LCCOMB_X26_Y4_N0
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5) & ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5) & (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5),
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N6
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\ $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|s~combout\);

-- Location: LCFF_X25_Y4_N7
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6));

-- Location: LCCOMB_X26_Y4_N18
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6) & ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6) & (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\ & 
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(6),
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N12
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|s~combout\ = \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7) $ 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|s~combout\);

-- Location: LCFF_X25_Y4_N13
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7));

-- Location: LCCOMB_X27_Y4_N4
\aluEntity|selectorEntity|LO[7]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~118_combout\ = (\aluEntity|selectorEntity|LO[7]~117_combout\ & (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7)) # (!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[7]~117_combout\ & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~117_combout\,
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7),
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~118_combout\);

-- Location: LCCOMB_X34_Y4_N28
\aluEntity|selectorEntity|LO[7]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[7]~119_combout\ = (\aluEntity|selectorEntity|LO[7]~109_combout\) # ((\aluEntity|selectorEntity|LO[7]~126_combout\) # ((\aluEntity|selectorEntity|LO[3]~122_combout\ & \aluEntity|selectorEntity|LO[7]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~109_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~126_combout\,
	datac => \aluEntity|selectorEntity|LO[3]~122_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~118_combout\,
	combout => \aluEntity|selectorEntity|LO[7]~119_combout\);

-- Location: LCCOMB_X30_Y4_N26
\aluEntity|selectorEntity|LO[2]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[2]~75_combout\ = (!\OPREG|OP_out\(4) & ((\aluEntity|selectorEntity|LO[2]~74_combout\) # ((\AREG|A_out[2]~_Duplicate_1_regout\ & \aluEntity|selectorEntity|LO[7]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[2]~74_combout\,
	datab => \OPREG|OP_out\(4),
	datac => \AREG|A_out[2]~_Duplicate_1_regout\,
	datad => \aluEntity|selectorEntity|LO[7]~120_combout\,
	combout => \aluEntity|selectorEntity|LO[2]~75_combout\);

-- Location: LCCOMB_X26_Y4_N24
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|s~0_combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1) $ 
-- (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0) & \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(0),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~dataout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|s~0_combout\);

-- Location: LCFF_X26_Y4_N25
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:1:chain|s~0_combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1));

-- Location: LCCOMB_X30_Y4_N24
\aluEntity|selectorEntity|LO[1]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~62_combout\ = (\aluEntity|selectorEntity|LO[1]~61_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1)) # ((!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[1]~61_combout\ & 
-- (((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\ & \aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[1]~61_combout\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(1),
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~62_combout\);

-- Location: LCCOMB_X30_Y4_N22
\aluEntity|selectorEntity|LO[1]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~63_combout\ = (\aluEntity|selectorEntity|LO[0]~121_combout\ & ((\aluEntity|selectorEntity|LO[7]~16_combout\ & (\BREG|B_out\(1))) # (!\aluEntity|selectorEntity|LO[7]~16_combout\ & 
-- ((\aluEntity|selectorEntity|LO[1]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~16_combout\,
	datab => \BREG|B_out\(1),
	datac => \aluEntity|selectorEntity|LO[1]~62_combout\,
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~63_combout\);

-- Location: LCCOMB_X30_Y4_N8
\aluEntity|selectorEntity|LO[1]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[1]~64_combout\ = (!\OPREG|OP_out\(4) & ((\aluEntity|selectorEntity|LO[1]~63_combout\) # ((\AREG|A_out[1]~_Duplicate_1_regout\ & \aluEntity|selectorEntity|LO[7]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[1]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[1]~63_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[7]~120_combout\,
	combout => \aluEntity|selectorEntity|LO[1]~64_combout\);

-- Location: LCFF_X29_Y4_N5
\AREG|A_out[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X30_Y4_N0
\aluEntity|selectorEntity|LO[0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[0]~54_combout\ = (!\OPREG|OP_out\(4) & ((\aluEntity|selectorEntity|LO[0]~53_combout\) # ((\AREG|A_out[0]~_Duplicate_1_regout\ & \aluEntity|selectorEntity|LO[7]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[0]~53_combout\,
	datab => \OPREG|OP_out\(4),
	datac => \AREG|A_out[0]~_Duplicate_1_regout\,
	datad => \aluEntity|selectorEntity|LO[7]~120_combout\,
	combout => \aluEntity|selectorEntity|LO[0]~54_combout\);

-- Location: LCCOMB_X30_Y4_N16
\aluEntity|selectorEntity|STATUS~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~6_combout\ = (!\aluEntity|selectorEntity|LO[2]~75_combout\ & (!\aluEntity|selectorEntity|LO[1]~64_combout\ & !\aluEntity|selectorEntity|LO[0]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|LO[2]~75_combout\,
	datac => \aluEntity|selectorEntity|LO[1]~64_combout\,
	datad => \aluEntity|selectorEntity|LO[0]~54_combout\,
	combout => \aluEntity|selectorEntity|STATUS~6_combout\);

-- Location: LCCOMB_X25_Y3_N16
\aluEntity|selectorEntity|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|Equal8~0_combout\ = (!\OPREG|OP_out\(4) & (\OPREG|OP_out\(0) & !\OPREG|OP_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPREG|OP_out\(4),
	datac => \OPREG|OP_out\(0),
	datad => \OPREG|OP_out\(3),
	combout => \aluEntity|selectorEntity|Equal8~0_combout\);

-- Location: LCCOMB_X26_Y4_N4
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7)) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7) & 
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(7),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:6:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N22
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|s~combout\);

-- Location: LCFF_X25_Y4_N23
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8));

-- Location: LCCOMB_X26_Y4_N22
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8) & ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\) # 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8) & (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8),
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:7:chain|cout~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N18
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|s~combout\);

-- Location: LCFF_X25_Y4_N19
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9));

-- Location: LCCOMB_X26_Y4_N20
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9) & ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9) & (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9),
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:8:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|s~combout\);

-- Location: LCFF_X25_Y4_N5
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10));

-- Location: LCCOMB_X26_Y4_N30
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10)))) # (!\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:9:chain|cout~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(10),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\);

-- Location: LCCOMB_X25_Y4_N2
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:11:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:11:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:11:chain|s~combout\);

-- Location: LCFF_X25_Y4_N3
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:11:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11));

-- Location: LCCOMB_X24_Y4_N18
\aluEntity|selectorEntity|HI[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[3]~10_combout\ = (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|Equal8~0_combout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \OPREG|OP_out\(2),
	datac => \aluEntity|selectorEntity|Equal8~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11),
	combout => \aluEntity|selectorEntity|HI[3]~10_combout\);

-- Location: LCCOMB_X25_Y4_N14
\aluEntity|selectorEntity|HI[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[0]~0_combout\ = (\OPREG|OP_out\(3) & (((!\OPREG|OP_out\(2))))) # (!\OPREG|OP_out\(3) & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(1)) # (\OPREG|OP_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(0),
	datab => \OPREG|OP_out\(3),
	datac => \OPREG|OP_out\(1),
	datad => \OPREG|OP_out\(2),
	combout => \aluEntity|selectorEntity|HI[0]~0_combout\);

-- Location: LCCOMB_X25_Y4_N0
\aluEntity|selectorEntity|HI[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[1]~5_combout\ = (!\OPREG|OP_out\(4) & (\aluEntity|selectorEntity|HI[0]~0_combout\ & ((!\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\) # 
-- (!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|HI[0]~0_combout\,
	combout => \aluEntity|selectorEntity|HI[1]~5_combout\);

-- Location: LCCOMB_X24_Y4_N0
\aluEntity|selectorEntity|HI[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[3]~11_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[3]~10_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|selectorEntity|HI[3]~10_combout\,
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \aluEntity|selectorEntity|HI[1]~5_combout\,
	combout => \aluEntity|selectorEntity|HI[3]~11_combout\);

-- Location: LCCOMB_X24_Y4_N26
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0_combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0_combout\);

-- Location: LCCOMB_X26_Y4_N8
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~combout\ = \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0_combout\ $ (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11) & 
-- ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\ & \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~combout\);

-- Location: LCFF_X26_Y4_N9
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12));

-- Location: LCCOMB_X24_Y4_N6
\aluEntity|selectorEntity|HI[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[4]~12_combout\ = (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|Equal8~0_combout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \OPREG|OP_out\(2),
	datac => \aluEntity|selectorEntity|Equal8~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12),
	combout => \aluEntity|selectorEntity|HI[4]~12_combout\);

-- Location: LCCOMB_X24_Y4_N16
\aluEntity|selectorEntity|HI[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[4]~13_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[4]~12_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \aluEntity|selectorEntity|HI[4]~12_combout\,
	datad => \aluEntity|selectorEntity|HI[1]~5_combout\,
	combout => \aluEntity|selectorEntity|HI[4]~13_combout\);

-- Location: LCCOMB_X27_Y4_N26
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\);

-- Location: LCCOMB_X27_Y4_N8
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1_combout\ = (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\) # (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(12),
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1_combout\);

-- Location: LCCOMB_X26_Y4_N28
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11) & 
-- ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\ & \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(11),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~1_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:10:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\);

-- Location: LCCOMB_X26_Y4_N2
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\ = (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13) & ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\) # 
-- ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\)))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\) # 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\);

-- Location: LCCOMB_X26_Y4_N16
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:14:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:14:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:14:chain|s~combout\);

-- Location: LCFF_X26_Y4_N17
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:14:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14));

-- Location: LCCOMB_X24_Y4_N22
\aluEntity|selectorEntity|HI[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[6]~16_combout\ = (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|Equal8~0_combout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \OPREG|OP_out\(2),
	datac => \aluEntity|selectorEntity|Equal8~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14),
	combout => \aluEntity|selectorEntity|HI[6]~16_combout\);

-- Location: LCCOMB_X24_Y4_N28
\aluEntity|selectorEntity|HI[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[6]~17_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[6]~16_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|selectorEntity|HI[6]~16_combout\,
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \aluEntity|selectorEntity|HI[1]~5_combout\,
	combout => \aluEntity|selectorEntity|HI[6]~17_combout\);

-- Location: LCCOMB_X24_Y4_N30
\aluEntity|selectorEntity|STATUS~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~4_combout\ = (!\aluEntity|selectorEntity|HI[5]~15_combout\ & (!\aluEntity|selectorEntity|HI[3]~11_combout\ & (!\aluEntity|selectorEntity|HI[4]~13_combout\ & !\aluEntity|selectorEntity|HI[6]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[5]~15_combout\,
	datab => \aluEntity|selectorEntity|HI[3]~11_combout\,
	datac => \aluEntity|selectorEntity|HI[4]~13_combout\,
	datad => \aluEntity|selectorEntity|HI[6]~17_combout\,
	combout => \aluEntity|selectorEntity|STATUS~4_combout\);

-- Location: LCCOMB_X25_Y3_N10
\aluEntity|arithAndLogicEntity|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|Equal6~0_combout\ = (\aluEntity|selectorEntity|Equal8~0_combout\ & (\OPREG|OP_out\(2) & !\OPREG|OP_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|Equal8~0_combout\,
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|arithAndLogicEntity|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y3_N22
\aluEntity|selectorEntity|HI[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[0]~3_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (!\OPREG|OP_out\(1) & (!\OPREG|OP_out\(0) & !\aluEntity|arithAndLogicEntity|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datab => \OPREG|OP_out\(1),
	datac => \OPREG|OP_out\(0),
	datad => \aluEntity|arithAndLogicEntity|Equal6~0_combout\,
	combout => \aluEntity|selectorEntity|HI[0]~3_combout\);

-- Location: LCCOMB_X25_Y3_N2
\aluEntity|selectorEntity|HI[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[2]~9_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[2]~8_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[2]~8_combout\,
	datab => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datac => \aluEntity|selectorEntity|HI[1]~5_combout\,
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \aluEntity|selectorEntity|HI[2]~9_combout\);

-- Location: LCCOMB_X25_Y4_N8
\aluEntity|selectorEntity|HI[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[0]~2_combout\ = (\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ & ((\aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\) # ((\aluEntity|arithAndLogicEntity|Equal6~0_combout\ & 
-- \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8))))) # (!\aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\ & (\aluEntity|arithAndLogicEntity|Equal6~0_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|adderSubEntity|rest:7:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|Equal6~0_combout\,
	datac => \aluEntity|arithAndLogicEntity|AdderSubSEL[1]~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(8),
	combout => \aluEntity|selectorEntity|HI[0]~2_combout\);

-- Location: LCCOMB_X25_Y4_N28
\aluEntity|selectorEntity|HI[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[0]~1_combout\ = (\aluEntity|selectorEntity|HI[0]~0_combout\ & !\OPREG|OP_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|HI[0]~0_combout\,
	datad => \OPREG|OP_out\(4),
	combout => \aluEntity|selectorEntity|HI[0]~1_combout\);

-- Location: LCCOMB_X24_Y4_N12
\aluEntity|selectorEntity|HI[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[0]~4_combout\ = (\aluEntity|selectorEntity|HI[0]~1_combout\ & ((\aluEntity|selectorEntity|HI[0]~2_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|selectorEntity|HI[0]~2_combout\,
	datac => \aluEntity|selectorEntity|HI[0]~1_combout\,
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \aluEntity|selectorEntity|HI[0]~4_combout\);

-- Location: LCCOMB_X25_Y3_N8
\aluEntity|selectorEntity|HI[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[1]~6_combout\ = (\aluEntity|selectorEntity|Equal8~0_combout\ & (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9) & (\OPREG|OP_out\(2) & !\OPREG|OP_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|Equal8~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(9),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|HI[1]~6_combout\);

-- Location: LCCOMB_X25_Y3_N26
\aluEntity|selectorEntity|HI[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[1]~7_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[1]~6_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|selectorEntity|HI[1]~6_combout\,
	datac => \aluEntity|selectorEntity|HI[1]~5_combout\,
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \aluEntity|selectorEntity|HI[1]~7_combout\);

-- Location: LCCOMB_X25_Y3_N24
\aluEntity|selectorEntity|STATUS~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~3_combout\ = (!\aluEntity|selectorEntity|HI[2]~9_combout\ & (!\aluEntity|selectorEntity|HI[0]~4_combout\ & !\aluEntity|selectorEntity|HI[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|HI[2]~9_combout\,
	datac => \aluEntity|selectorEntity|HI[0]~4_combout\,
	datad => \aluEntity|selectorEntity|HI[1]~7_combout\,
	combout => \aluEntity|selectorEntity|STATUS~3_combout\);

-- Location: LCCOMB_X31_Y4_N18
\aluEntity|selectorEntity|LO[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~27_combout\ = (\aluEntity|selectorEntity|LO[7]~15_combout\ & (\BREG|B_out\(3) & (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datab => \BREG|B_out\(3),
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~27_combout\);

-- Location: LCCOMB_X32_Y4_N24
\AREG|A_out[3]~_Duplicate_1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \AREG|A_out[3]~_Duplicate_1feeder_combout\ = \sw_0_7~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_0_7~combout\(3),
	combout => \AREG|A_out[3]~_Duplicate_1feeder_combout\);

-- Location: LCFF_X32_Y4_N25
\AREG|A_out[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	datain => \AREG|A_out[3]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X31_Y4_N4
\aluEntity|selectorEntity|LO[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~26_combout\ = (!\OPREG|OP_out\(4) & (\aluEntity|selectorEntity|LO[7]~120_combout\ & \AREG|A_out[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(4),
	datab => \aluEntity|selectorEntity|LO[7]~120_combout\,
	datad => \AREG|A_out[3]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[3]~26_combout\);

-- Location: LCCOMB_X31_Y4_N16
\aluEntity|selectorEntity|LO[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[3]~43_combout\ = (\aluEntity|selectorEntity|LO[3]~27_combout\) # ((\aluEntity|selectorEntity|LO[3]~26_combout\) # ((\aluEntity|selectorEntity|LO[3]~42_combout\ & \aluEntity|selectorEntity|LO[3]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~42_combout\,
	datab => \aluEntity|selectorEntity|LO[3]~27_combout\,
	datac => \aluEntity|selectorEntity|LO[3]~26_combout\,
	datad => \aluEntity|selectorEntity|LO[3]~122_combout\,
	combout => \aluEntity|selectorEntity|LO[3]~43_combout\);

-- Location: LCCOMB_X25_Y3_N6
\aluEntity|selectorEntity|STATUS~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~5_combout\ = (!\aluEntity|selectorEntity|HI[7]~19_combout\ & (\aluEntity|selectorEntity|STATUS~4_combout\ & (\aluEntity|selectorEntity|STATUS~3_combout\ & !\aluEntity|selectorEntity|LO[3]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[7]~19_combout\,
	datab => \aluEntity|selectorEntity|STATUS~4_combout\,
	datac => \aluEntity|selectorEntity|STATUS~3_combout\,
	datad => \aluEntity|selectorEntity|LO[3]~43_combout\,
	combout => \aluEntity|selectorEntity|STATUS~5_combout\);

-- Location: LCCOMB_X27_Y3_N14
\aluEntity|selectorEntity|LO[5]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~90_combout\ = (\aluEntity|selectorEntity|LO[5]~89_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[5]~89_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[5]~90_combout\);

-- Location: LCCOMB_X27_Y3_N2
\aluEntity|selectorEntity|LO[5]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~95_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- (\aluEntity|selectorEntity|LO[5]~94_combout\)) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & ((\aluEntity|selectorEntity|LO[5]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[5]~94_combout\,
	datab => \aluEntity|selectorEntity|LO[5]~90_combout\,
	datac => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~95_combout\);

-- Location: LCCOMB_X25_Y4_N20
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5) $ 
-- (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:4:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|s~combout\);

-- Location: LCFF_X25_Y4_N21
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:5:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5));

-- Location: LCCOMB_X27_Y4_N0
\aluEntity|selectorEntity|LO[5]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~96_combout\ = (\aluEntity|selectorEntity|LO[5]~95_combout\ & (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5)) # (!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[5]~95_combout\ & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \aluEntity|selectorEntity|LO[5]~95_combout\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(5),
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~96_combout\);

-- Location: LCCOMB_X34_Y4_N24
\aluEntity|selectorEntity|LO[5]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~124_combout\ = (\aluEntity|selectorEntity|LO[7]~15_combout\ & (\BREG|B_out\(5) & (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[7]~15_combout\,
	datab => \BREG|B_out\(5),
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[0]~121_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~124_combout\);

-- Location: LCCOMB_X34_Y4_N22
\aluEntity|selectorEntity|LO[5]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~87_combout\ = (\aluEntity|selectorEntity|LO[7]~120_combout\ & (!\OPREG|OP_out\(4) & \AREG|A_out[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|selectorEntity|LO[7]~120_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \AREG|A_out[5]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[5]~87_combout\);

-- Location: LCCOMB_X34_Y4_N0
\aluEntity|selectorEntity|LO[5]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[5]~97_combout\ = (\aluEntity|selectorEntity|LO[5]~124_combout\) # ((\aluEntity|selectorEntity|LO[5]~87_combout\) # ((\aluEntity|selectorEntity|LO[3]~122_combout\ & \aluEntity|selectorEntity|LO[5]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~122_combout\,
	datab => \aluEntity|selectorEntity|LO[5]~96_combout\,
	datac => \aluEntity|selectorEntity|LO[5]~124_combout\,
	datad => \aluEntity|selectorEntity|LO[5]~87_combout\,
	combout => \aluEntity|selectorEntity|LO[5]~97_combout\);

-- Location: LCCOMB_X34_Y4_N14
\aluEntity|selectorEntity|STATUS~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~7_combout\ = (!\aluEntity|selectorEntity|LO[4]~86_combout\ & (\aluEntity|selectorEntity|STATUS~6_combout\ & (\aluEntity|selectorEntity|STATUS~5_combout\ & !\aluEntity|selectorEntity|LO[5]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[4]~86_combout\,
	datab => \aluEntity|selectorEntity|STATUS~6_combout\,
	datac => \aluEntity|selectorEntity|STATUS~5_combout\,
	datad => \aluEntity|selectorEntity|LO[5]~97_combout\,
	combout => \aluEntity|selectorEntity|STATUS~7_combout\);

-- Location: LCCOMB_X34_Y4_N18
\aluEntity|selectorEntity|STATUS~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|STATUS~8_combout\ = (!\aluEntity|selectorEntity|LO[6]~108_combout\ & (!\aluEntity|selectorEntity|LO[7]~119_combout\ & \aluEntity|selectorEntity|STATUS~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[6]~108_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~119_combout\,
	datac => \aluEntity|selectorEntity|STATUS~7_combout\,
	combout => \aluEntity|selectorEntity|STATUS~8_combout\);

-- Location: LCCOMB_X26_Y4_N10
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|s~combout\ = \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\ $ (\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13) $ 
-- (((\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~0_combout\,
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13),
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:12:chain|cout~2_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|s~combout\);

-- Location: LCFF_X26_Y4_N11
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13));

-- Location: LCCOMB_X24_Y4_N14
\aluEntity|selectorEntity|HI[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[5]~14_combout\ = (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & (\aluEntity|selectorEntity|Equal8~0_combout\ & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPREG|OP_out\(1),
	datab => \OPREG|OP_out\(2),
	datac => \aluEntity|selectorEntity|Equal8~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(13),
	combout => \aluEntity|selectorEntity|HI[5]~14_combout\);

-- Location: LCCOMB_X24_Y4_N20
\aluEntity|selectorEntity|HI[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[5]~15_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[5]~14_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \aluEntity|selectorEntity|HI[5]~14_combout\,
	datad => \aluEntity|selectorEntity|HI[1]~5_combout\,
	combout => \aluEntity|selectorEntity|HI[5]~15_combout\);

-- Location: LCCOMB_X25_Y3_N0
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0_combout\ = \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(15) $ (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(15),
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0_combout\);

-- Location: LCCOMB_X26_Y4_N14
\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~combout\ = \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0_combout\ $ (((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14) & 
-- ((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\) # (\aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\))) # (!\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14) & 
-- (\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\ & \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(14),
	datab => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~0_combout\,
	datad => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:13:chain|cout~0_combout\,
	combout => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~combout\);

-- Location: LCFF_X26_Y4_N15
\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_3~clkctrl_outclk\,
	datain => \aluEntity|arithAndLogicEntity|macEntity|adderSubEntity|rest:15:chain|s~combout\,
	aclr => \aluEntity|selectorEntity|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(15));

-- Location: LCCOMB_X25_Y3_N18
\aluEntity|selectorEntity|HI[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[7]~18_combout\ = (\aluEntity|selectorEntity|Equal8~0_combout\ & (!\OPREG|OP_out\(1) & (\OPREG|OP_out\(2) & \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|Equal8~0_combout\,
	datab => \OPREG|OP_out\(1),
	datac => \OPREG|OP_out\(2),
	datad => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(15),
	combout => \aluEntity|selectorEntity|HI[7]~18_combout\);

-- Location: LCCOMB_X25_Y3_N12
\aluEntity|selectorEntity|HI[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|HI[7]~19_combout\ = (\aluEntity|selectorEntity|HI[1]~5_combout\ & ((\aluEntity|selectorEntity|HI[7]~18_combout\) # ((\aluEntity|selectorEntity|HI[0]~3_combout\ & 
-- \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|HI[1]~5_combout\,
	datab => \aluEntity|selectorEntity|HI[7]~18_combout\,
	datac => \aluEntity|selectorEntity|HI[0]~3_combout\,
	datad => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \aluEntity|selectorEntity|HI[7]~19_combout\);

-- Location: LCFF_X32_Y4_N13
\AREG|A_out[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \key_0~clkctrl_outclk\,
	sdata => \sw_0_7~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AREG|A_out[4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X27_Y3_N28
\aluEntity|selectorEntity|LO[4]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~78_combout\ = (\aluEntity|selectorEntity|LO[4]~77_combout\ & ((\OPREG|OP_out\(0)) # ((\OPREG|OP_out\(2)) # (\OPREG|OP_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[4]~77_combout\,
	datab => \OPREG|OP_out\(0),
	datac => \OPREG|OP_out\(2),
	datad => \OPREG|OP_out\(1),
	combout => \aluEntity|selectorEntity|LO[4]~78_combout\);

-- Location: LCCOMB_X32_Y4_N6
\aluEntity|selectorEntity|LO[4]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~81_combout\ = (\aluEntity|selectorEntity|LO[4]~80_combout\ & ((\BREG|B_out\(4) $ (\AREG|A_out[4]~_Duplicate_1_regout\)) # (!\aluEntity|selectorEntity|LO[7]~38_combout\))) # (!\aluEntity|selectorEntity|LO[4]~80_combout\ & 
-- (\aluEntity|selectorEntity|LO[7]~38_combout\ & (\BREG|B_out\(4) & \AREG|A_out[4]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[4]~80_combout\,
	datab => \aluEntity|selectorEntity|LO[7]~38_combout\,
	datac => \BREG|B_out\(4),
	datad => \AREG|A_out[4]~_Duplicate_1_regout\,
	combout => \aluEntity|selectorEntity|LO[4]~81_combout\);

-- Location: LCCOMB_X30_Y4_N2
\aluEntity|selectorEntity|LO[4]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~82_combout\ = (!\OPREG|OP_out\(4) & \aluEntity|selectorEntity|LO[4]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[4]~81_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~82_combout\);

-- Location: LCCOMB_X27_Y4_N28
\aluEntity|selectorEntity|LO[4]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~83_combout\ = (\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & (((\aluEntity|selectorEntity|LO[7]~29_combout\)))) # (!\aluEntity|arithAndLogicEntity|Equal5~0_combout\ & ((\aluEntity|selectorEntity|LO[7]~29_combout\ & 
-- ((\aluEntity|selectorEntity|LO[4]~82_combout\))) # (!\aluEntity|selectorEntity|LO[7]~29_combout\ & (\aluEntity|selectorEntity|LO[4]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|Equal5~0_combout\,
	datab => \aluEntity|selectorEntity|LO[4]~78_combout\,
	datac => \aluEntity|selectorEntity|LO[4]~82_combout\,
	datad => \aluEntity|selectorEntity|LO[7]~29_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~83_combout\);

-- Location: LCCOMB_X27_Y4_N2
\aluEntity|selectorEntity|LO[4]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~84_combout\ = (\aluEntity|selectorEntity|LO[4]~83_combout\ & ((\aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4)) # ((!\aluEntity|selectorEntity|LO[7]~30_combout\)))) # (!\aluEntity|selectorEntity|LO[4]~83_combout\ & 
-- (((\aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\ & \aluEntity|selectorEntity|LO[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|arithAndLogicEntity|macEntity|ACC_tmp\(4),
	datab => \aluEntity|selectorEntity|LO[4]~83_combout\,
	datac => \aluEntity|arithAndLogicEntity|multEntity|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \aluEntity|selectorEntity|LO[7]~30_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~84_combout\);

-- Location: LCCOMB_X34_Y4_N26
\aluEntity|selectorEntity|LO[4]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~85_combout\ = (\aluEntity|selectorEntity|LO[3]~123_combout\ & ((\BREG|B_out\(4)) # ((\aluEntity|selectorEntity|LO[4]~84_combout\ & \aluEntity|selectorEntity|LO[3]~122_combout\)))) # 
-- (!\aluEntity|selectorEntity|LO[3]~123_combout\ & (\aluEntity|selectorEntity|LO[4]~84_combout\ & (\aluEntity|selectorEntity|LO[3]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluEntity|selectorEntity|LO[3]~123_combout\,
	datab => \aluEntity|selectorEntity|LO[4]~84_combout\,
	datac => \aluEntity|selectorEntity|LO[3]~122_combout\,
	datad => \BREG|B_out\(4),
	combout => \aluEntity|selectorEntity|LO[4]~85_combout\);

-- Location: LCCOMB_X34_Y4_N12
\aluEntity|selectorEntity|LO[4]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \aluEntity|selectorEntity|LO[4]~86_combout\ = (\aluEntity|selectorEntity|LO[4]~85_combout\) # ((\AREG|A_out[4]~_Duplicate_1_regout\ & (\aluEntity|selectorEntity|LO[7]~120_combout\ & !\OPREG|OP_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AREG|A_out[4]~_Duplicate_1_regout\,
	datab => \aluEntity|selectorEntity|LO[7]~120_combout\,
	datac => \OPREG|OP_out\(4),
	datad => \aluEntity|selectorEntity|LO[4]~85_combout\,
	combout => \aluEntity|selectorEntity|LO[4]~86_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\STATUS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_STATUS(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\STATUS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|STATUS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_STATUS(1));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(0));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(2));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(3));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(4));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(5));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HI_OUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|HI[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HI_OUT(7));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(0));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[1]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(1));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[2]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(2));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[3]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(3));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[4]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(4));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[5]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(5));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[6]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(6));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LO_OUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \aluEntity|selectorEntity|LO[7]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LO_OUT(7));
END structure;


