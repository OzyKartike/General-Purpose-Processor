-- Copyright (C) 1991-2013 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/25/2022 12:16:32"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalCircuit IS
    PORT (
	Current_state : OUT std_logic_vector(3 DOWNTO 0);
	Clock : IN std_logic;
	data_in : IN std_logic;
	reset : IN std_logic;
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	En_Decoder : IN std_logic;
	R2 : OUT std_logic_vector(3 DOWNTO 0);
	R_First_Four : OUT std_logic_vector(0 TO 6);
	R_Last_Four : OUT std_logic_vector(0 TO 6);
	Sign : OUT std_logic_vector(0 TO 6);
	student_ID : OUT std_logic_vector(0 TO 6)
	);
END FinalCircuit;

-- Design Ports Information
-- Current_state[3]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Current_state[2]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Current_state[1]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Current_state[0]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[0]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[1]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[2]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[4]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[5]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_First_Four[6]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[0]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[1]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[2]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[3]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[4]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[5]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_Last_Four[6]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[3]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[4]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sign[6]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[0]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[2]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[3]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[5]	=>  Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_ID[6]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- En_Decoder	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF FinalCircuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Current_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_En_Decoder : std_logic;
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R_First_Four : std_logic_vector(0 TO 6);
SIGNAL ww_R_Last_Four : std_logic_vector(0 TO 6);
SIGNAL ww_Sign : std_logic_vector(0 TO 6);
SIGNAL ww_student_ID : std_logic_vector(0 TO 6);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Result~10_combout\ : std_logic;
SIGNAL \inst3|Selector0~6_combout\ : std_logic;
SIGNAL \inst3|Result~21_combout\ : std_logic;
SIGNAL \inst3|Selector2~2_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst|yfsm.s0~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst|yfsm.s0~regout\ : std_logic;
SIGNAL \inst|yfsm~14_combout\ : std_logic;
SIGNAL \inst|yfsm.s1~regout\ : std_logic;
SIGNAL \inst|yfsm~13_combout\ : std_logic;
SIGNAL \inst|yfsm.s2~regout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s3~regout\ : std_logic;
SIGNAL \inst|yfsm.s4~regout\ : std_logic;
SIGNAL \inst|yfsm.s5~regout\ : std_logic;
SIGNAL \inst|yfsm.s6~regout\ : std_logic;
SIGNAL \inst|yfsm.s7~regout\ : std_logic;
SIGNAL \inst|yfsm.s8~regout\ : std_logic;
SIGNAL \inst|WideOr8~0_combout\ : std_logic;
SIGNAL \inst|WideOr9~0_combout\ : std_logic;
SIGNAL \inst|WideOr10~combout\ : std_logic;
SIGNAL \inst3|Selector4~4_combout\ : std_logic;
SIGNAL \inst3|Result[3]~11_combout\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Result[3]~12_combout\ : std_logic;
SIGNAL \inst3|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|Result~8_combout\ : std_logic;
SIGNAL \inst3|Result[3]~9_combout\ : std_logic;
SIGNAL \inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|Selector4~5_combout\ : std_logic;
SIGNAL \inst3|Result[3]~0_combout\ : std_logic;
SIGNAL \inst3|Result~7_combout\ : std_logic;
SIGNAL \inst3|Result~7_wirecell_combout\ : std_logic;
SIGNAL \En_Decoder~combout\ : std_logic;
SIGNAL \inst3|Selector5~2_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|Selector5~3_combout\ : std_logic;
SIGNAL \inst3|Result[2]~1_combout\ : std_logic;
SIGNAL \inst3|Result~13_combout\ : std_logic;
SIGNAL \inst3|Result~13_wirecell_combout\ : std_logic;
SIGNAL \inst3|Result~14_combout\ : std_logic;
SIGNAL \inst3|Result~15_combout\ : std_logic;
SIGNAL \inst3|Result~16_combout\ : std_logic;
SIGNAL \inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|Selector6~3_combout\ : std_logic;
SIGNAL \inst3|Result[1]~2_combout\ : std_logic;
SIGNAL \inst3|Result~14_wirecell_combout\ : std_logic;
SIGNAL \inst3|Selector7~8_combout\ : std_logic;
SIGNAL \inst3|Selector7~3_combout\ : std_logic;
SIGNAL \inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|Selector7~4_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~6_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~5_combout\ : std_logic;
SIGNAL \inst3|Selector7~7_combout\ : std_logic;
SIGNAL \inst3|Selector7~9_combout\ : std_logic;
SIGNAL \inst3|Result~17_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Selector0~8_combout\ : std_logic;
SIGNAL \inst3|Selector0~9_combout\ : std_logic;
SIGNAL \inst3|Selector0~10_combout\ : std_logic;
SIGNAL \inst3|Selector0~7_combout\ : std_logic;
SIGNAL \inst3|Result[7]~3_combout\ : std_logic;
SIGNAL \inst3|Result~17_wirecell_combout\ : std_logic;
SIGNAL \inst3|Result~18_combout\ : std_logic;
SIGNAL \inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|Selector1~3_combout\ : std_logic;
SIGNAL \inst3|Result[6]~4_combout\ : std_logic;
SIGNAL \inst3|Result~18_wirecell_combout\ : std_logic;
SIGNAL \inst3|Result~19_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|Selector2~3_combout\ : std_logic;
SIGNAL \inst3|Result[5]~5_combout\ : std_logic;
SIGNAL \inst3|Result~19_wirecell_combout\ : std_logic;
SIGNAL \inst3|Result~22_combout\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|Result[4]~6_combout\ : std_logic;
SIGNAL \inst3|Result~20_combout\ : std_logic;
SIGNAL \inst3|Result~20_wirecell_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_En_Decoder~combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr10~combout\ : std_logic;

BEGIN

Current_state <= ww_Current_state;
ww_Clock <= Clock;
ww_data_in <= data_in;
ww_reset <= reset;
R1 <= ww_R1;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_En_Decoder <= En_Decoder;
R2 <= ww_R2;
R_First_Four <= ww_R_First_Four;
R_Last_Four <= ww_R_Last_Four;
Sign <= ww_Sign;
student_ID <= ww_student_ID;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;
\ALT_INV_En_Decoder~combout\ <= NOT \En_Decoder~combout\;
\inst4|ALT_INV_Mux6~0_combout\ <= NOT \inst4|Mux6~0_combout\;
\inst4|ALT_INV_Mux5~0_combout\ <= NOT \inst4|Mux5~0_combout\;
\inst4|ALT_INV_Mux0~1_combout\ <= NOT \inst4|Mux0~1_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst9|ALT_INV_Mux5~0_combout\ <= NOT \inst9|Mux5~0_combout\;
\inst9|ALT_INV_Mux4~0_combout\ <= NOT \inst9|Mux4~0_combout\;
\inst9|ALT_INV_Mux3~0_combout\ <= NOT \inst9|Mux3~0_combout\;
\inst9|ALT_INV_Mux2~0_combout\ <= NOT \inst9|Mux2~0_combout\;
\inst9|ALT_INV_Mux1~0_combout\ <= NOT \inst9|Mux1~0_combout\;
\inst9|ALT_INV_Mux0~0_combout\ <= NOT \inst9|Mux0~0_combout\;
\inst8|ALT_INV_Mux5~0_combout\ <= NOT \inst8|Mux5~0_combout\;
\inst8|ALT_INV_Mux4~0_combout\ <= NOT \inst8|Mux4~0_combout\;
\inst8|ALT_INV_Mux3~0_combout\ <= NOT \inst8|Mux3~0_combout\;
\inst8|ALT_INV_Mux2~0_combout\ <= NOT \inst8|Mux2~0_combout\;
\inst8|ALT_INV_Mux1~0_combout\ <= NOT \inst8|Mux1~0_combout\;
\inst8|ALT_INV_Mux0~0_combout\ <= NOT \inst8|Mux0~0_combout\;
\inst|ALT_INV_WideOr10~combout\ <= NOT \inst|WideOr10~combout\;

-- Location: LCCOMB_X64_Y19_N24
\inst3|Result~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~10_combout\ = (\inst7|Q\(3) & \inst1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(3),
	datad => \inst1|Q\(3),
	combout => \inst3|Result~10_combout\);

-- Location: LCFF_X63_Y19_N25
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X63_Y18_N20
\inst3|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~6_combout\ = (\inst1|Q\(7) & ((\inst3|Result[3]~9_combout\) # ((!\inst7|Q\(7) & \inst3|Selector4~0_combout\)))) # (!\inst1|Q\(7) & ((\inst3|Selector4~0_combout\) # ((\inst7|Q\(7) & \inst3|Result[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datab => \inst7|Q\(7),
	datac => \inst3|Result[3]~9_combout\,
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector0~6_combout\);

-- Location: LCCOMB_X63_Y20_N10
\inst3|Result~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~21_combout\ = (\inst1|Q\(4)) # (\inst7|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datad => \inst7|Q\(4),
	combout => \inst3|Result~21_combout\);

-- Location: LCCOMB_X62_Y19_N20
\inst3|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~2_combout\ = (\inst7|Q\(5) & ((\inst3|Result[3]~9_combout\) # ((!\inst1|Q\(5) & \inst3|Selector4~0_combout\)))) # (!\inst7|Q\(5) & ((\inst3|Selector4~0_combout\) # ((\inst3|Result[3]~9_combout\ & \inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(5),
	datab => \inst3|Result[3]~9_combout\,
	datac => \inst1|Q\(5),
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector2~2_combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
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
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y18_N0
\inst|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm.s0~0_combout\ = !\inst|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s8~regout\,
	combout => \inst|yfsm.s0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
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
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X63_Y18_N1
\inst|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|yfsm.s0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s0~regout\);

-- Location: LCCOMB_X64_Y18_N22
\inst|yfsm~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm~14_combout\ = (\inst|yfsm.s2~regout\) # (!\inst|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|yfsm~14_combout\);

-- Location: LCFF_X64_Y18_N23
\inst|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|yfsm~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s1~regout\);

-- Location: LCCOMB_X64_Y18_N30
\inst|yfsm~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm~13_combout\ = (\inst|yfsm.s1~regout\ & \data_in~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s1~regout\,
	datad => \data_in~combout\,
	combout => \inst|yfsm~13_combout\);

-- Location: LCFF_X64_Y18_N31
\inst|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst|yfsm~13_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s2~regout\);

-- Location: LCCOMB_X64_Y18_N8
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\data_in~combout\ & ((\inst|yfsm.s3~regout\) # (\inst|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\,
	datab => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCFF_X63_Y18_N27
\inst|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s3~regout\);

-- Location: LCFF_X63_Y18_N31
\inst|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|yfsm.s3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s4~regout\);

-- Location: LCFF_X63_Y18_N17
\inst|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|yfsm.s4~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s5~regout\);

-- Location: LCFF_X63_Y18_N13
\inst|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|yfsm.s5~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s6~regout\);

-- Location: LCFF_X63_Y18_N3
\inst|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|yfsm.s6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s7~regout\);

-- Location: LCFF_X63_Y18_N5
\inst|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst|yfsm.s7~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s8~regout\);

-- Location: LCCOMB_X64_Y18_N4
\inst|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr8~0_combout\ = (\inst|yfsm.s7~regout\) # ((\inst|yfsm.s4~regout\) # ((\inst|yfsm.s6~regout\) # (\inst|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s7~regout\,
	datab => \inst|yfsm.s4~regout\,
	datac => \inst|yfsm.s6~regout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst|WideOr8~0_combout\);

-- Location: LCCOMB_X64_Y18_N16
\inst|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr9~0_combout\ = (\inst|yfsm.s7~regout\) # ((\inst|yfsm.s3~regout\) # ((\inst|yfsm.s6~regout\) # (\inst|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s7~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s6~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|WideOr9~0_combout\);

-- Location: LCCOMB_X64_Y18_N26
\inst|WideOr10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr10~combout\ = (\inst|yfsm.s6~regout\) # ((\inst|yfsm.s8~regout\) # ((\inst|yfsm.s4~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst|yfsm.s8~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst|WideOr10~combout\);

-- Location: LCCOMB_X64_Y18_N2
\inst3|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~4_combout\ = (!\inst|yfsm.s7~regout\ & (!\inst|yfsm.s3~regout\ & !\inst|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s7~regout\,
	datab => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst3|Selector4~4_combout\);

-- Location: LCCOMB_X64_Y19_N0
\inst3|Result[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~11_combout\ = (\inst|yfsm.s4~regout\) # (!\inst|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst3|Result[3]~11_combout\);

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
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
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G2
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X63_Y19_N23
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
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
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G11
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X63_Y19_N5
\inst7|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(2));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCFF_X63_Y19_N3
\inst7|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(1));

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X63_Y19_N1
\inst7|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(0));

-- Location: LCCOMB_X63_Y19_N16
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst1|Q\(0) & (\inst7|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst7|Q\(0) & VCC))
-- \inst3|Add0~1\ = CARRY((\inst1|Q\(0) & \inst7|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst7|Q\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X63_Y19_N18
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst1|Q\(1) & ((\inst7|Q\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst7|Q\(1) & (!\inst3|Add0~1\)))) # (!\inst1|Q\(1) & ((\inst7|Q\(1) & (!\inst3|Add0~1\)) # (!\inst7|Q\(1) & ((\inst3|Add0~1\) # (GND)))))
-- \inst3|Add0~3\ = CARRY((\inst1|Q\(1) & (!\inst7|Q\(1) & !\inst3|Add0~1\)) # (!\inst1|Q\(1) & ((!\inst3|Add0~1\) # (!\inst7|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst7|Q\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X63_Y19_N20
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = ((\inst1|Q\(2) $ (\inst7|Q\(2) $ (!\inst3|Add0~3\)))) # (GND)
-- \inst3|Add0~5\ = CARRY((\inst1|Q\(2) & ((\inst7|Q\(2)) # (!\inst3|Add0~3\))) # (!\inst1|Q\(2) & (\inst7|Q\(2) & !\inst3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst7|Q\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X63_Y19_N22
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst7|Q\(3) & ((\inst1|Q\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst3|Add0~5\)))) # (!\inst7|Q\(3) & ((\inst1|Q\(3) & (!\inst3|Add0~5\)) # (!\inst1|Q\(3) & ((\inst3|Add0~5\) # (GND)))))
-- \inst3|Add0~7\ = CARRY((\inst7|Q\(3) & (!\inst1|Q\(3) & !\inst3|Add0~5\)) # (!\inst7|Q\(3) & ((!\inst3|Add0~5\) # (!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X63_Y19_N0
\inst3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = (\inst1|Q\(0) & ((GND) # (!\inst7|Q\(0)))) # (!\inst1|Q\(0) & (\inst7|Q\(0) $ (GND)))
-- \inst3|Add1~1\ = CARRY((\inst1|Q\(0)) # (!\inst7|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst7|Q\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X63_Y19_N2
\inst3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst1|Q\(1) & ((\inst7|Q\(1) & (!\inst3|Add1~1\)) # (!\inst7|Q\(1) & (\inst3|Add1~1\ & VCC)))) # (!\inst1|Q\(1) & ((\inst7|Q\(1) & ((\inst3|Add1~1\) # (GND))) # (!\inst7|Q\(1) & (!\inst3|Add1~1\))))
-- \inst3|Add1~3\ = CARRY((\inst1|Q\(1) & (\inst7|Q\(1) & !\inst3|Add1~1\)) # (!\inst1|Q\(1) & ((\inst7|Q\(1)) # (!\inst3|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst7|Q\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X63_Y19_N4
\inst3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((\inst1|Q\(2) $ (\inst7|Q\(2) $ (\inst3|Add1~3\)))) # (GND)
-- \inst3|Add1~5\ = CARRY((\inst1|Q\(2) & ((!\inst3|Add1~3\) # (!\inst7|Q\(2)))) # (!\inst1|Q\(2) & (!\inst7|Q\(2) & !\inst3|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst7|Q\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X63_Y19_N6
\inst3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst7|Q\(3) & ((\inst1|Q\(3) & (!\inst3|Add1~5\)) # (!\inst1|Q\(3) & ((\inst3|Add1~5\) # (GND))))) # (!\inst7|Q\(3) & ((\inst1|Q\(3) & (\inst3|Add1~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst3|Add1~5\))))
-- \inst3|Add1~7\ = CARRY((\inst7|Q\(3) & ((!\inst3|Add1~5\) # (!\inst1|Q\(3)))) # (!\inst7|Q\(3) & (!\inst1|Q\(3) & !\inst3|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X63_Y18_N8
\inst3|Result[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~12_combout\ = (\inst|yfsm.s5~regout\) # (\inst|yfsm.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst3|Result[3]~12_combout\);

-- Location: LCCOMB_X64_Y19_N10
\inst3|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~2_combout\ = (\inst3|Result[3]~11_combout\ & (((\inst3|Result[3]~12_combout\)))) # (!\inst3|Result[3]~11_combout\ & ((\inst3|Result[3]~12_combout\ & (\inst3|Result~10_combout\)) # (!\inst3|Result[3]~12_combout\ & 
-- ((\inst3|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~10_combout\,
	datab => \inst3|Result[3]~11_combout\,
	datac => \inst3|Add1~6_combout\,
	datad => \inst3|Result[3]~12_combout\,
	combout => \inst3|Selector4~2_combout\);

-- Location: LCCOMB_X64_Y19_N4
\inst3|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~3_combout\ = (\inst3|Result[3]~11_combout\ & ((\inst3|Selector4~2_combout\ & (!\inst3|Result~8_combout\)) # (!\inst3|Selector4~2_combout\ & ((\inst3|Add0~6_combout\))))) # (!\inst3|Result[3]~11_combout\ & 
-- (((\inst3|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~8_combout\,
	datab => \inst3|Result[3]~11_combout\,
	datac => \inst3|Add0~6_combout\,
	datad => \inst3|Selector4~2_combout\,
	combout => \inst3|Selector4~3_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X63_Y19_N7
\inst7|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(3));

-- Location: LCCOMB_X64_Y19_N2
\inst3|Result~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~8_combout\ = (\inst7|Q\(3)) # (\inst1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(3),
	datad => \inst1|Q\(3),
	combout => \inst3|Result~8_combout\);

-- Location: LCCOMB_X63_Y18_N2
\inst3|Result[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~9_combout\ = (\inst|yfsm.s7~regout\) # ((!\inst|yfsm.s0~regout\ & ((\inst|yfsm.s3~regout\) # (\inst|yfsm.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s3~regout\,
	datab => \inst|yfsm.s0~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst3|Result[3]~9_combout\);

-- Location: LCCOMB_X63_Y18_N10
\inst3|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~0_combout\ = (!\inst|yfsm.s7~regout\ & (\inst|yfsm.s0~regout\ & ((\inst|yfsm.s3~regout\) # (\inst|yfsm.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s3~regout\,
	datab => \inst|yfsm.s7~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst3|Selector4~0_combout\);

-- Location: LCCOMB_X64_Y19_N18
\inst3|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~1_combout\ = (\inst3|Result~10_combout\ & (\inst3|Result~8_combout\ & (\inst3|Result[3]~9_combout\))) # (!\inst3|Result~10_combout\ & ((\inst3|Selector4~0_combout\) # ((\inst3|Result~8_combout\ & \inst3|Result[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~10_combout\,
	datab => \inst3|Result~8_combout\,
	datac => \inst3|Result[3]~9_combout\,
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector4~1_combout\);

-- Location: LCCOMB_X64_Y19_N30
\inst3|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~5_combout\ = (\inst3|Selector4~1_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Selector4~4_combout\,
	datac => \inst3|Selector4~3_combout\,
	datad => \inst3|Selector4~1_combout\,
	combout => \inst3|Selector4~5_combout\);

-- Location: LCCOMB_X64_Y19_N16
\inst3|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~0_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~7_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~7_combout\,
	datab => \inst|yfsm.s6~regout\,
	datad => \inst3|Selector4~5_combout\,
	combout => \inst3|Result[3]~0_combout\);

-- Location: LCCOMB_X64_Y19_N20
\inst3|Result~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~7_combout\ = \inst7|Q\(3) $ (\inst1|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(3),
	datad => \inst1|Q\(3),
	combout => \inst3|Result~7_combout\);

-- Location: LCCOMB_X61_Y19_N2
\inst3|Result~7_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~7_wirecell_combout\ = !\inst3|Result~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Result~7_combout\,
	combout => \inst3|Result~7_wirecell_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\En_Decoder~I\ : cycloneii_io
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
	padio => ww_En_Decoder,
	combout => \En_Decoder~combout\);

-- Location: LCFF_X64_Y19_N17
\inst3|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[3]~0_combout\,
	sdata => \inst3|Result~7_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X63_Y19_N21
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X64_Y19_N14
\inst3|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~2_combout\ = (\inst7|Q\(2) & ((\inst3|Result[3]~9_combout\) # ((!\inst1|Q\(2) & \inst3|Selector4~0_combout\)))) # (!\inst7|Q\(2) & ((\inst3|Selector4~0_combout\) # ((\inst1|Q\(2) & \inst3|Result[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(2),
	datab => \inst1|Q\(2),
	datac => \inst3|Result[3]~9_combout\,
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector5~2_combout\);

-- Location: LCCOMB_X64_Y19_N6
\inst3|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~0_combout\ = (\inst3|Result[3]~11_combout\ & (((\inst3|Add0~4_combout\) # (\inst3|Result[3]~12_combout\)))) # (!\inst3|Result[3]~11_combout\ & (\inst3|Add1~4_combout\ & ((!\inst3|Result[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~11_combout\,
	datab => \inst3|Add1~4_combout\,
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|Result[3]~12_combout\,
	combout => \inst3|Selector5~0_combout\);

-- Location: LCCOMB_X64_Y19_N12
\inst3|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~1_combout\ = (\inst3|Result[3]~12_combout\ & ((\inst1|Q\(2) & (\inst7|Q\(2) & !\inst3|Selector5~0_combout\)) # (!\inst1|Q\(2) & (!\inst7|Q\(2) & \inst3|Selector5~0_combout\)))) # (!\inst3|Result[3]~12_combout\ & 
-- (((\inst3|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~12_combout\,
	datab => \inst1|Q\(2),
	datac => \inst7|Q\(2),
	datad => \inst3|Selector5~0_combout\,
	combout => \inst3|Selector5~1_combout\);

-- Location: LCCOMB_X64_Y19_N28
\inst3|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~3_combout\ = (\inst3|Selector5~2_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Selector4~4_combout\,
	datac => \inst3|Selector5~2_combout\,
	datad => \inst3|Selector5~1_combout\,
	combout => \inst3|Selector5~3_combout\);

-- Location: LCCOMB_X64_Y19_N22
\inst3|Result[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[2]~1_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~13_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~13_combout\,
	datab => \inst|yfsm.s6~regout\,
	datad => \inst3|Selector5~3_combout\,
	combout => \inst3|Result[2]~1_combout\);

-- Location: LCCOMB_X64_Y19_N8
\inst3|Result~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~13_combout\ = \inst7|Q\(2) $ (\inst1|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(2),
	datad => \inst1|Q\(2),
	combout => \inst3|Result~13_combout\);

-- Location: LCCOMB_X64_Y19_N26
\inst3|Result~13_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~13_wirecell_combout\ = !\inst3|Result~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Result~13_combout\,
	combout => \inst3|Result~13_wirecell_combout\);

-- Location: LCFF_X64_Y19_N23
\inst3|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[2]~1_combout\,
	sdata => \inst3|Result~13_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(2));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X63_Y19_N19
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: LCCOMB_X63_Y20_N8
\inst3|Result~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~14_combout\ = \inst7|Q\(1) $ (\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst3|Result~14_combout\);

-- Location: LCCOMB_X63_Y20_N18
\inst3|Result~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~15_combout\ = (\inst7|Q\(1)) # (\inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst3|Result~15_combout\);

-- Location: LCCOMB_X63_Y20_N20
\inst3|Result~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~16_combout\ = (\inst7|Q\(1) & \inst1|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(1),
	datad => \inst1|Q\(1),
	combout => \inst3|Result~16_combout\);

-- Location: LCCOMB_X64_Y20_N0
\inst3|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~0_combout\ = (\inst3|Selector4~0_combout\ & (((\inst3|Result~15_combout\ & \inst3|Result[3]~9_combout\)) # (!\inst3|Result~16_combout\))) # (!\inst3|Selector4~0_combout\ & (\inst3|Result~15_combout\ & ((\inst3|Result[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector4~0_combout\,
	datab => \inst3|Result~15_combout\,
	datac => \inst3|Result~16_combout\,
	datad => \inst3|Result[3]~9_combout\,
	combout => \inst3|Selector6~0_combout\);

-- Location: LCCOMB_X63_Y20_N26
\inst3|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~1_combout\ = (\inst3|Result[3]~12_combout\ & ((\inst3|Result~16_combout\) # ((\inst3|Result[3]~11_combout\)))) # (!\inst3|Result[3]~12_combout\ & (((!\inst3|Result[3]~11_combout\ & \inst3|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~16_combout\,
	datab => \inst3|Result[3]~12_combout\,
	datac => \inst3|Result[3]~11_combout\,
	datad => \inst3|Add1~2_combout\,
	combout => \inst3|Selector6~1_combout\);

-- Location: LCCOMB_X63_Y20_N28
\inst3|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~2_combout\ = (\inst3|Result[3]~11_combout\ & ((\inst3|Selector6~1_combout\ & (!\inst3|Result~15_combout\)) # (!\inst3|Selector6~1_combout\ & ((\inst3|Add0~2_combout\))))) # (!\inst3|Result[3]~11_combout\ & 
-- (((\inst3|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~11_combout\,
	datab => \inst3|Result~15_combout\,
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|Selector6~1_combout\,
	combout => \inst3|Selector6~2_combout\);

-- Location: LCCOMB_X63_Y20_N22
\inst3|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~3_combout\ = (\inst3|Selector6~0_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector4~4_combout\,
	datac => \inst3|Selector6~0_combout\,
	datad => \inst3|Selector6~2_combout\,
	combout => \inst3|Selector6~3_combout\);

-- Location: LCCOMB_X63_Y20_N24
\inst3|Result[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[1]~2_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~14_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst3|Result~14_combout\,
	datad => \inst3|Selector6~3_combout\,
	combout => \inst3|Result[1]~2_combout\);

-- Location: LCCOMB_X63_Y20_N30
\inst3|Result~14_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~14_wirecell_combout\ = !\inst3|Result~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Result~14_combout\,
	combout => \inst3|Result~14_wirecell_combout\);

-- Location: LCFF_X63_Y20_N25
\inst3|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[1]~2_combout\,
	sdata => \inst3|Result~14_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(1));

-- Location: LCCOMB_X64_Y18_N28
\inst3|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~8_combout\ = (!\inst|yfsm.s7~regout\ & (!\inst|yfsm.s8~regout\ & !\inst|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s7~regout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst3|Selector7~8_combout\);

-- Location: LCCOMB_X63_Y18_N26
\inst3|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~3_combout\ = (!\inst|yfsm.s4~regout\ & (!\inst|yfsm.s6~regout\ & (!\inst|yfsm.s3~regout\ & !\inst|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst3|Selector7~3_combout\);

-- Location: LCCOMB_X63_Y18_N16
\inst3|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~0_combout\ = (!\inst|yfsm.s5~regout\ & (!\inst|yfsm.s7~regout\ & (\inst|yfsm.s6~regout\ $ (\inst|yfsm.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst|yfsm.s0~regout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst|yfsm.s7~regout\,
	combout => \inst3|Selector7~0_combout\);

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X63_Y19_N17
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCCOMB_X63_Y18_N14
\inst3|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~1_combout\ = (\inst|yfsm.s5~regout\ & (\inst7|Q\(0) & (\inst1|Q\(0) & !\inst|yfsm.s7~regout\))) # (!\inst|yfsm.s5~regout\ & (\inst|yfsm.s7~regout\ & ((\inst7|Q\(0)) # (\inst1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst7|Q\(0),
	datac => \inst1|Q\(0),
	datad => \inst|yfsm.s7~regout\,
	combout => \inst3|Selector7~1_combout\);

-- Location: LCCOMB_X63_Y18_N6
\inst3|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~2_combout\ = (\inst|yfsm.s0~regout\ & ((\inst3|Selector7~1_combout\) # ((\inst3|Selector7~0_combout\ & \inst3|Add1~0_combout\)))) # (!\inst|yfsm.s0~regout\ & (\inst3|Selector7~0_combout\ & ((\inst3|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst3|Selector7~0_combout\,
	datac => \inst3|Selector7~1_combout\,
	datad => \inst3|Add1~0_combout\,
	combout => \inst3|Selector7~2_combout\);

-- Location: LCCOMB_X63_Y18_N4
\inst3|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~4_combout\ = (\inst|yfsm.s8~regout\ & (!\inst3|Add0~0_combout\)) # (!\inst|yfsm.s8~regout\ & (((\inst3|Selector7~3_combout\ & \inst3|Selector7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~0_combout\,
	datab => \inst3|Selector7~3_combout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst3|Selector7~2_combout\,
	combout => \inst3|Selector7~4_combout\);

-- Location: LCCOMB_X63_Y18_N30
\inst|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|yfsm.s3~regout\ & !\inst|yfsm.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|yfsm.s3~regout\,
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X63_Y18_N24
\inst3|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~6_combout\ = (\inst|yfsm.s4~regout\ & (!\inst7|Q\(0) & (!\inst1|Q\(0) & \inst|WideOr2~0_combout\))) # (!\inst|yfsm.s4~regout\ & (!\inst|WideOr2~0_combout\ & ((!\inst1|Q\(0)) # (!\inst7|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst7|Q\(0),
	datac => \inst1|Q\(0),
	datad => \inst|WideOr2~0_combout\,
	combout => \inst3|Selector7~6_combout\);

-- Location: LCCOMB_X63_Y18_N28
\inst3|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~5_combout\ = (!\inst|yfsm.s4~regout\ & (!\inst|yfsm.s2~regout\ & (!\inst|yfsm.s3~regout\ & \inst3|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s2~regout\,
	datac => \inst|yfsm.s3~regout\,
	datad => \inst3|Add0~0_combout\,
	combout => \inst3|Selector7~5_combout\);

-- Location: LCCOMB_X63_Y18_N18
\inst3|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~7_combout\ = (\inst|yfsm.s0~regout\ & ((\inst|yfsm.s6~regout\ & ((\inst3|Selector7~5_combout\))) # (!\inst|yfsm.s6~regout\ & (\inst3|Selector7~6_combout\)))) # (!\inst|yfsm.s0~regout\ & (!\inst|yfsm.s6~regout\ & 
-- ((\inst3|Selector7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst3|Selector7~6_combout\,
	datad => \inst3|Selector7~5_combout\,
	combout => \inst3|Selector7~7_combout\);

-- Location: LCCOMB_X64_Y18_N24
\inst3|Selector7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~9_combout\ = (\En_Decoder~combout\ & ((\inst3|Selector7~4_combout\) # ((\inst3|Selector7~8_combout\ & \inst3|Selector7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En_Decoder~combout\,
	datab => \inst3|Selector7~8_combout\,
	datac => \inst3|Selector7~4_combout\,
	datad => \inst3|Selector7~7_combout\,
	combout => \inst3|Selector7~9_combout\);

-- Location: LCFF_X64_Y18_N25
\inst3|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Selector7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(0));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X63_Y19_N15
\inst7|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(7));

-- Location: LCCOMB_X62_Y19_N30
\inst3|Result~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~17_combout\ = \inst1|Q\(7) $ (\inst7|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(7),
	datac => \inst7|Q\(7),
	combout => \inst3|Result~17_combout\);

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X63_Y18_N23
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X63_Y19_N29
\inst7|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(6));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X63_Y19_N27
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X63_Y19_N9
\inst7|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(4));

-- Location: LCCOMB_X63_Y19_N8
\inst3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = ((\inst1|Q\(4) $ (\inst7|Q\(4) $ (\inst3|Add1~7\)))) # (GND)
-- \inst3|Add1~9\ = CARRY((\inst1|Q\(4) & ((!\inst3|Add1~7\) # (!\inst7|Q\(4)))) # (!\inst1|Q\(4) & (!\inst7|Q\(4) & !\inst3|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst7|Q\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X63_Y19_N10
\inst3|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst7|Q\(5) & ((\inst1|Q\(5) & (!\inst3|Add1~9\)) # (!\inst1|Q\(5) & ((\inst3|Add1~9\) # (GND))))) # (!\inst7|Q\(5) & ((\inst1|Q\(5) & (\inst3|Add1~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst3|Add1~9\))))
-- \inst3|Add1~11\ = CARRY((\inst7|Q\(5) & ((!\inst3|Add1~9\) # (!\inst1|Q\(5)))) # (!\inst7|Q\(5) & (!\inst1|Q\(5) & !\inst3|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X63_Y19_N12
\inst3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = ((\inst1|Q\(6) $ (\inst7|Q\(6) $ (\inst3|Add1~11\)))) # (GND)
-- \inst3|Add1~13\ = CARRY((\inst1|Q\(6) & ((!\inst3|Add1~11\) # (!\inst7|Q\(6)))) # (!\inst1|Q\(6) & (!\inst7|Q\(6) & !\inst3|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst7|Q\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X63_Y19_N14
\inst3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = \inst7|Q\(7) $ (\inst3|Add1~13\ $ (!\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\);

-- Location: LCCOMB_X63_Y19_N24
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = ((\inst1|Q\(4) $ (\inst7|Q\(4) $ (!\inst3|Add0~7\)))) # (GND)
-- \inst3|Add0~9\ = CARRY((\inst1|Q\(4) & ((\inst7|Q\(4)) # (!\inst3|Add0~7\))) # (!\inst1|Q\(4) & (\inst7|Q\(4) & !\inst3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst7|Q\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X63_Y19_N26
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst7|Q\(5) & ((\inst1|Q\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst3|Add0~9\)))) # (!\inst7|Q\(5) & ((\inst1|Q\(5) & (!\inst3|Add0~9\)) # (!\inst1|Q\(5) & ((\inst3|Add0~9\) # (GND)))))
-- \inst3|Add0~11\ = CARRY((\inst7|Q\(5) & (!\inst1|Q\(5) & !\inst3|Add0~9\)) # (!\inst7|Q\(5) & ((!\inst3|Add0~9\) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X63_Y19_N28
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = ((\inst1|Q\(6) $ (\inst7|Q\(6) $ (!\inst3|Add0~11\)))) # (GND)
-- \inst3|Add0~13\ = CARRY((\inst1|Q\(6) & ((\inst7|Q\(6)) # (!\inst3|Add0~11\))) # (!\inst1|Q\(6) & (\inst7|Q\(6) & !\inst3|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst7|Q\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X63_Y19_N30
\inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = \inst7|Q\(7) $ (\inst3|Add0~13\ $ (\inst1|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Q\(7),
	datad => \inst1|Q\(7),
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\);

-- Location: LCCOMB_X62_Y19_N14
\inst3|Selector0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~8_combout\ = (\inst|yfsm.s0~regout\ & ((\inst|yfsm.s4~regout\ & ((\inst3|Add0~14_combout\))) # (!\inst|yfsm.s4~regout\ & (\inst3|Add1~14_combout\)))) # (!\inst|yfsm.s0~regout\ & (((\inst3|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst|yfsm.s4~regout\,
	datac => \inst3|Add1~14_combout\,
	datad => \inst3|Add0~14_combout\,
	combout => \inst3|Selector0~8_combout\);

-- Location: LCCOMB_X63_Y18_N22
\inst3|Selector0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~9_combout\ = (\inst1|Q\(7) & (!\inst|yfsm.s4~regout\ & (\inst|yfsm.s0~regout\ & \inst7|Q\(7)))) # (!\inst1|Q\(7) & (!\inst7|Q\(7) & ((\inst|yfsm.s4~regout\) # (!\inst|yfsm.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s0~regout\,
	datac => \inst1|Q\(7),
	datad => \inst7|Q\(7),
	combout => \inst3|Selector0~9_combout\);

-- Location: LCCOMB_X63_Y18_N12
\inst3|Selector0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~10_combout\ = (\inst3|Selector4~4_combout\ & ((\inst3|Selector0~9_combout\) # ((!\inst|yfsm.s4~regout\ & !\inst|yfsm.s5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst3|Selector0~9_combout\,
	datac => \inst|yfsm.s5~regout\,
	datad => \inst3|Selector4~4_combout\,
	combout => \inst3|Selector0~10_combout\);

-- Location: LCCOMB_X62_Y19_N12
\inst3|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~7_combout\ = (\inst3|Selector0~6_combout\) # ((\inst3|Selector0~10_combout\ & ((\inst3|Result[3]~12_combout\) # (\inst3|Selector0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector0~6_combout\,
	datab => \inst3|Result[3]~12_combout\,
	datac => \inst3|Selector0~8_combout\,
	datad => \inst3|Selector0~10_combout\,
	combout => \inst3|Selector0~7_combout\);

-- Location: LCCOMB_X62_Y19_N8
\inst3|Result[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[7]~3_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~17_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst3|Result~17_combout\,
	datad => \inst3|Selector0~7_combout\,
	combout => \inst3|Result[7]~3_combout\);

-- Location: LCCOMB_X61_Y19_N0
\inst3|Result~17_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~17_wirecell_combout\ = !\inst3|Result~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Result~17_combout\,
	combout => \inst3|Result~17_wirecell_combout\);

-- Location: LCFF_X62_Y19_N9
\inst3|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[7]~3_combout\,
	sdata => \inst3|Result~17_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(7));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X63_Y19_N13
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X62_Y19_N2
\inst3|Result~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~18_combout\ = \inst7|Q\(6) $ (\inst1|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Q\(6),
	datad => \inst1|Q\(6),
	combout => \inst3|Result~18_combout\);

-- Location: LCCOMB_X62_Y19_N4
\inst3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~2_combout\ = (\inst1|Q\(6) & ((\inst3|Result[3]~9_combout\) # ((!\inst7|Q\(6) & \inst3|Selector4~0_combout\)))) # (!\inst1|Q\(6) & ((\inst3|Selector4~0_combout\) # ((\inst3|Result[3]~9_combout\ & \inst7|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst3|Result[3]~9_combout\,
	datac => \inst7|Q\(6),
	datad => \inst3|Selector4~0_combout\,
	combout => \inst3|Selector1~2_combout\);

-- Location: LCCOMB_X62_Y19_N28
\inst3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (\inst3|Result[3]~12_combout\ & (\inst3|Result[3]~11_combout\)) # (!\inst3|Result[3]~12_combout\ & ((\inst3|Result[3]~11_combout\ & ((\inst3|Add0~12_combout\))) # (!\inst3|Result[3]~11_combout\ & (\inst3|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~12_combout\,
	datab => \inst3|Result[3]~11_combout\,
	datac => \inst3|Add1~12_combout\,
	datad => \inst3|Add0~12_combout\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LCCOMB_X62_Y19_N6
\inst3|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = (\inst3|Result[3]~12_combout\ & ((\inst1|Q\(6) & (\inst7|Q\(6) & !\inst3|Selector1~0_combout\)) # (!\inst1|Q\(6) & (!\inst7|Q\(6) & \inst3|Selector1~0_combout\)))) # (!\inst3|Result[3]~12_combout\ & 
-- (((\inst3|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst3|Result[3]~12_combout\,
	datac => \inst7|Q\(6),
	datad => \inst3|Selector1~0_combout\,
	combout => \inst3|Selector1~1_combout\);

-- Location: LCCOMB_X62_Y19_N22
\inst3|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~3_combout\ = (\inst3|Selector1~2_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Selector1~2_combout\,
	datac => \inst3|Selector4~4_combout\,
	datad => \inst3|Selector1~1_combout\,
	combout => \inst3|Selector1~3_combout\);

-- Location: LCCOMB_X62_Y19_N18
\inst3|Result[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[6]~4_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~18_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst3|Result~18_combout\,
	datad => \inst3|Selector1~3_combout\,
	combout => \inst3|Result[6]~4_combout\);

-- Location: LCCOMB_X61_Y19_N30
\inst3|Result~18_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~18_wirecell_combout\ = !\inst3|Result~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Result~18_combout\,
	combout => \inst3|Result~18_wirecell_combout\);

-- Location: LCFF_X62_Y19_N19
\inst3|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[6]~4_combout\,
	sdata => \inst3|Result~18_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(6));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X63_Y19_N11
\inst7|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Q\(5));

-- Location: LCCOMB_X62_Y19_N24
\inst3|Result~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~19_combout\ = \inst1|Q\(5) $ (\inst7|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(5),
	datad => \inst7|Q\(5),
	combout => \inst3|Result~19_combout\);

-- Location: LCCOMB_X62_Y19_N26
\inst3|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\inst3|Result[3]~12_combout\ & (\inst3|Result[3]~11_combout\)) # (!\inst3|Result[3]~12_combout\ & ((\inst3|Result[3]~11_combout\ & ((\inst3|Add0~10_combout\))) # (!\inst3|Result[3]~11_combout\ & (\inst3|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~12_combout\,
	datab => \inst3|Result[3]~11_combout\,
	datac => \inst3|Add1~10_combout\,
	datad => \inst3|Add0~10_combout\,
	combout => \inst3|Selector2~0_combout\);

-- Location: LCCOMB_X62_Y19_N0
\inst3|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (\inst3|Result[3]~12_combout\ & ((\inst7|Q\(5) & (\inst1|Q\(5) & !\inst3|Selector2~0_combout\)) # (!\inst7|Q\(5) & (!\inst1|Q\(5) & \inst3|Selector2~0_combout\)))) # (!\inst3|Result[3]~12_combout\ & 
-- (((\inst3|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Q\(5),
	datab => \inst1|Q\(5),
	datac => \inst3|Result[3]~12_combout\,
	datad => \inst3|Selector2~0_combout\,
	combout => \inst3|Selector2~1_combout\);

-- Location: LCCOMB_X62_Y19_N10
\inst3|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~3_combout\ = (\inst3|Selector2~2_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector2~2_combout\,
	datac => \inst3|Selector4~4_combout\,
	datad => \inst3|Selector2~1_combout\,
	combout => \inst3|Selector2~3_combout\);

-- Location: LCCOMB_X62_Y19_N16
\inst3|Result[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[5]~5_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~19_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst3|Result~19_combout\,
	datad => \inst3|Selector2~3_combout\,
	combout => \inst3|Result[5]~5_combout\);

-- Location: LCCOMB_X61_Y19_N4
\inst3|Result~19_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~19_wirecell_combout\ = !\inst3|Result~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Result~19_combout\,
	combout => \inst3|Result~19_wirecell_combout\);

-- Location: LCFF_X62_Y19_N17
\inst3|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[5]~5_combout\,
	sdata => \inst3|Result~19_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(5));

-- Location: LCCOMB_X63_Y20_N4
\inst3|Result~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~22_combout\ = (\inst1|Q\(4) & \inst7|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datad => \inst7|Q\(4),
	combout => \inst3|Result~22_combout\);

-- Location: LCCOMB_X63_Y20_N14
\inst3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (\inst3|Result~21_combout\ & ((\inst3|Result[3]~9_combout\) # ((!\inst3|Result~22_combout\ & \inst3|Selector4~0_combout\)))) # (!\inst3|Result~21_combout\ & (!\inst3|Result~22_combout\ & (\inst3|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~21_combout\,
	datab => \inst3|Result~22_combout\,
	datac => \inst3|Selector4~0_combout\,
	datad => \inst3|Result[3]~9_combout\,
	combout => \inst3|Selector3~0_combout\);

-- Location: LCCOMB_X63_Y20_N12
\inst3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~1_combout\ = (\inst3|Result[3]~11_combout\ & (((\inst3|Result[3]~12_combout\)))) # (!\inst3|Result[3]~11_combout\ & ((\inst3|Result[3]~12_combout\ & (\inst3|Result~22_combout\)) # (!\inst3|Result[3]~12_combout\ & 
-- ((\inst3|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~11_combout\,
	datab => \inst3|Result~22_combout\,
	datac => \inst3|Result[3]~12_combout\,
	datad => \inst3|Add1~8_combout\,
	combout => \inst3|Selector3~1_combout\);

-- Location: LCCOMB_X63_Y20_N6
\inst3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~2_combout\ = (\inst3|Result[3]~11_combout\ & ((\inst3|Selector3~1_combout\ & (!\inst3|Result~21_combout\)) # (!\inst3|Selector3~1_combout\ & ((\inst3|Add0~8_combout\))))) # (!\inst3|Result[3]~11_combout\ & 
-- (((\inst3|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~21_combout\,
	datab => \inst3|Result[3]~11_combout\,
	datac => \inst3|Add0~8_combout\,
	datad => \inst3|Selector3~1_combout\,
	combout => \inst3|Selector3~2_combout\);

-- Location: LCCOMB_X63_Y20_N0
\inst3|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~3_combout\ = (\inst3|Selector3~0_combout\) # ((\inst3|Selector4~4_combout\ & \inst3|Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector4~4_combout\,
	datac => \inst3|Selector3~0_combout\,
	datad => \inst3|Selector3~2_combout\,
	combout => \inst3|Selector3~3_combout\);

-- Location: LCCOMB_X63_Y20_N2
\inst3|Result[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[4]~6_combout\ = (\inst|yfsm.s6~regout\ & (\inst3|Result~20_combout\)) # (!\inst|yfsm.s6~regout\ & ((\inst3|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result~20_combout\,
	datab => \inst|yfsm.s6~regout\,
	datad => \inst3|Selector3~3_combout\,
	combout => \inst3|Result[4]~6_combout\);

-- Location: LCCOMB_X63_Y20_N16
\inst3|Result~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~20_combout\ = \inst1|Q\(4) $ (\inst7|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datad => \inst7|Q\(4),
	combout => \inst3|Result~20_combout\);

-- Location: LCCOMB_X64_Y20_N14
\inst3|Result~20_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~20_wirecell_combout\ = !\inst3|Result~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Result~20_combout\,
	combout => \inst3|Result~20_wirecell_combout\);

-- Location: LCFF_X63_Y20_N3
\inst3|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst3|Result[4]~6_combout\,
	sdata => \inst3|Result~20_wirecell_combout\,
	sclr => \ALT_INV_En_Decoder~combout\,
	sload => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(4));

-- Location: LCCOMB_X64_Y22_N12
\inst8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst3|Result\(3) & (\inst3|Result\(0) & (\inst3|Result\(1) $ (\inst3|Result\(2))))) # (!\inst3|Result\(3) & (!\inst3|Result\(1) & (\inst3|Result\(0) $ (\inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y22_N14
\inst8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst3|Result\(3) & ((\inst3|Result\(0) & (\inst3|Result\(1))) # (!\inst3|Result\(0) & ((\inst3|Result\(2)))))) # (!\inst3|Result\(3) & (\inst3|Result\(2) & (\inst3|Result\(0) $ (\inst3|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y22_N24
\inst8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst3|Result\(3) & (\inst3|Result\(2) & ((\inst3|Result\(1)) # (!\inst3|Result\(0))))) # (!\inst3|Result\(3) & (!\inst3|Result\(0) & (\inst3|Result\(1) & !\inst3|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y22_N30
\inst8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst3|Result\(0) & ((\inst3|Result\(1) $ (!\inst3|Result\(2))))) # (!\inst3|Result\(0) & ((\inst3|Result\(3) & (\inst3|Result\(1) & !\inst3|Result\(2))) # (!\inst3|Result\(3) & (!\inst3|Result\(1) & \inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y22_N0
\inst8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst3|Result\(1) & (!\inst3|Result\(3) & (\inst3|Result\(0)))) # (!\inst3|Result\(1) & ((\inst3|Result\(2) & (!\inst3|Result\(3))) # (!\inst3|Result\(2) & ((\inst3|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y22_N6
\inst8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst3|Result\(0) & (\inst3|Result\(3) $ (((\inst3|Result\(1)) # (!\inst3|Result\(2)))))) # (!\inst3|Result\(0) & (!\inst3|Result\(3) & (\inst3|Result\(1) & !\inst3|Result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y22_N16
\inst8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst3|Result\(0) & ((\inst3|Result\(3)) # (\inst3|Result\(1) $ (\inst3|Result\(2))))) # (!\inst3|Result\(0) & ((\inst3|Result\(1)) # (\inst3|Result\(3) $ (\inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(3),
	datab => \inst3|Result\(0),
	datac => \inst3|Result\(1),
	datad => \inst3|Result\(2),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y25_N16
\inst9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst3|Result\(7) & (\inst3|Result\(4) & (\inst3|Result\(5) $ (\inst3|Result\(6))))) # (!\inst3|Result\(7) & (!\inst3|Result\(5) & (\inst3|Result\(6) $ (\inst3|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y25_N6
\inst9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst3|Result\(7) & ((\inst3|Result\(4) & (\inst3|Result\(5))) # (!\inst3|Result\(4) & ((\inst3|Result\(6)))))) # (!\inst3|Result\(7) & (\inst3|Result\(6) & (\inst3|Result\(5) $ (\inst3|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y25_N0
\inst9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst3|Result\(7) & (\inst3|Result\(6) & ((\inst3|Result\(5)) # (!\inst3|Result\(4))))) # (!\inst3|Result\(7) & (\inst3|Result\(5) & (!\inst3|Result\(6) & !\inst3|Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y25_N14
\inst9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst3|Result\(4) & ((\inst3|Result\(5) $ (!\inst3|Result\(6))))) # (!\inst3|Result\(4) & ((\inst3|Result\(7) & (\inst3|Result\(5) & !\inst3|Result\(6))) # (!\inst3|Result\(7) & (!\inst3|Result\(5) & \inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y25_N12
\inst9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst3|Result\(5) & (!\inst3|Result\(7) & ((\inst3|Result\(4))))) # (!\inst3|Result\(5) & ((\inst3|Result\(6) & (!\inst3|Result\(7))) # (!\inst3|Result\(6) & ((\inst3|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y25_N10
\inst9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst3|Result\(5) & (!\inst3|Result\(7) & ((\inst3|Result\(4)) # (!\inst3|Result\(6))))) # (!\inst3|Result\(5) & (\inst3|Result\(4) & (\inst3|Result\(7) $ (!\inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y25_N4
\inst9|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst3|Result\(4) & ((\inst3|Result\(7)) # (\inst3|Result\(5) $ (\inst3|Result\(6))))) # (!\inst3|Result\(4) & ((\inst3|Result\(5)) # (\inst3|Result\(7) $ (\inst3|Result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(7),
	datab => \inst3|Result\(5),
	datac => \inst3|Result\(6),
	datad => \inst3|Result\(4),
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y18_N0
\inst4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (!\inst|yfsm.s5~regout\ & !\inst|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s5~regout\,
	datad => \inst|yfsm.s1~regout\,
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y18_N18
\inst4|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux0~1_combout\ = (\inst|yfsm.s0~regout\ & (!\inst|yfsm.s6~regout\ & (!\inst|yfsm.s8~regout\ & \inst4|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst4|Mux0~0_combout\,
	combout => \inst4|Mux0~1_combout\);

-- Location: LCCOMB_X64_Y18_N12
\inst4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (!\inst|yfsm.s5~regout\ & (\inst|yfsm.s0~regout\ & !\inst|yfsm.s1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s5~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s1~regout\,
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y18_N14
\inst4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst|yfsm.s0~regout\ & (!\inst|yfsm.s5~regout\ & (!\inst|yfsm.s8~regout\ & !\inst|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s0~regout\,
	datab => \inst|yfsm.s5~regout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst4|Mux6~0_combout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Current_state[3]~I\ : cycloneii_io
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
	datain => \inst|yfsm.s8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Current_state(3));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Current_state[2]~I\ : cycloneii_io
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
	datain => \inst|WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Current_state(2));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Current_state[1]~I\ : cycloneii_io
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
	datain => \inst|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Current_state(1));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Current_state[0]~I\ : cycloneii_io
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
	datain => \inst|ALT_INV_WideOr10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Current_state(0));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
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
	datain => \inst3|Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
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
	datain => \inst3|Result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
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
	datain => \inst3|Result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
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
	datain => \inst3|Result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
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
	datain => \inst3|Result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
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
	datain => \inst3|Result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
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
	datain => \inst3|Result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
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
	datain => \inst3|Result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[0]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(0));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[1]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(1));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[2]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(2));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[3]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(3));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[4]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(4));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[5]~I\ : cycloneii_io
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
	datain => \inst8|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(5));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_First_Four[6]~I\ : cycloneii_io
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
	datain => \inst8|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_First_Four(6));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[0]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(0));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[1]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(1));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[2]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(2));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[3]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(3));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[4]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(4));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[5]~I\ : cycloneii_io
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
	datain => \inst9|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(5));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_Last_Four[6]~I\ : cycloneii_io
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
	datain => \inst9|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_Last_Four(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(0));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(1));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(2));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(3));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(5));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sign[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sign(6));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[0]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(0));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[1]~I\ : cycloneii_io
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
	datain => \inst|yfsm.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(1));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(2));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[3]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[4]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(4));

-- Location: PIN_T17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[5]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(5));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_ID[6]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_ID(6));
END structure;


