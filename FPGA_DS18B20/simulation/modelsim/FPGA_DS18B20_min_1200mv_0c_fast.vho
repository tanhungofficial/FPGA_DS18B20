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

-- DATE "12/25/2019 17:48:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FPGA_DS18B20 IS
    PORT (
	ckht : IN std_logic;
	btn_n : IN std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic_vector(15 DOWNTO 0);
	led_oe : OUT std_logic_vector(8 DOWNTO 0);
	ds18b20 : INOUT std_logic;
	lcd_blon : OUT std_logic;
	lcd_e : OUT std_logic;
	lcd_on : OUT std_logic;
	lcd_wr : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	sseg7 : OUT std_logic_vector(6 DOWNTO 0);
	sseg6 : OUT std_logic_vector(6 DOWNTO 0);
	sseg1 : OUT std_logic_vector(6 DOWNTO 0);
	sseg2 : OUT std_logic_vector(6 DOWNTO 0);
	sseg0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FPGA_DS18B20;

-- Design Ports Information
-- led[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_oe[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_blon	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_e	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_wr	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sseg0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_n[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_n[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ds18b20	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ckht	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_n[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn_n[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGA_DS18B20 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ckht : std_logic;
SIGNAL ww_btn_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_led_oe : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_wr : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sseg7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sseg6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sseg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sseg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sseg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ckht~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dem_mode_10|q_reg[0]~10_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[1]~12_combout\ : std_logic;
SIGNAL \xung_ena|Add0~6_combout\ : std_logic;
SIGNAL \xung_ena|Add0~16_combout\ : std_logic;
SIGNAL \xung_ena|Add0~26_combout\ : std_logic;
SIGNAL \xung_ena|Add0~30_combout\ : std_logic;
SIGNAL \xung_ena|Add0~32_combout\ : std_logic;
SIGNAL \xung_ena|Add0~36_combout\ : std_logic;
SIGNAL \xung_ena|Add0~42_combout\ : std_logic;
SIGNAL \xung_ena|Add12~10_combout\ : std_logic;
SIGNAL \xung_ena|Add12~12_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[13]~48_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[14]~50_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[0]~20_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[0]~21\ : std_logic;
SIGNAL \tao_gtc|delay_reg[1]~22_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[1]~23\ : std_logic;
SIGNAL \tao_gtc|delay_reg[2]~24_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[2]~25\ : std_logic;
SIGNAL \tao_gtc|delay_reg[3]~26_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[3]~27\ : std_logic;
SIGNAL \tao_gtc|delay_reg[4]~28_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[4]~29\ : std_logic;
SIGNAL \tao_gtc|delay_reg[5]~30_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[5]~31\ : std_logic;
SIGNAL \tao_gtc|delay_reg[6]~32_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[6]~33\ : std_logic;
SIGNAL \tao_gtc|delay_reg[7]~34_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[7]~35\ : std_logic;
SIGNAL \tao_gtc|delay_reg[8]~36_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[8]~37\ : std_logic;
SIGNAL \tao_gtc|delay_reg[9]~38_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[9]~39\ : std_logic;
SIGNAL \tao_gtc|delay_reg[10]~40_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[10]~41\ : std_logic;
SIGNAL \tao_gtc|delay_reg[11]~42_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[11]~43\ : std_logic;
SIGNAL \tao_gtc|delay_reg[12]~44_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[12]~45\ : std_logic;
SIGNAL \tao_gtc|delay_reg[13]~46_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[13]~47\ : std_logic;
SIGNAL \tao_gtc|delay_reg[14]~48_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[14]~49\ : std_logic;
SIGNAL \tao_gtc|delay_reg[15]~50_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[15]~51\ : std_logic;
SIGNAL \tao_gtc|delay_reg[16]~52_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[16]~53\ : std_logic;
SIGNAL \tao_gtc|delay_reg[17]~56_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[17]~57\ : std_logic;
SIGNAL \tao_gtc|delay_reg[18]~58_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[18]~59\ : std_logic;
SIGNAL \tao_gtc|delay_reg[19]~60_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[6]~34_combout\ : std_logic;
SIGNAL \LessThan25~1_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~1_combout\ : std_logic;
SIGNAL \xung_ena|Equal16~1_combout\ : std_logic;
SIGNAL \dem_mode_10|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_full|Equal2~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_ENABLE~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector28~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector28~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~4_combout\ : std_logic;
SIGNAL \h2_3[0]~0_combout\ : std_logic;
SIGNAL \h2_3[0]~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux11~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux11~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux3~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux3~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~8_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux11~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|hex_bcd~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux11~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux11~1_combout\ : std_logic;
SIGNAL \h1_15[0]~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~5_combout\ : std_logic;
SIGNAL \h1_11[1]~3_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|hex_bcd~3_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux2~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux2~1_combout\ : std_logic;
SIGNAL \h1_3[1]~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux10~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux10~1_combout\ : std_logic;
SIGNAL \h1_15[1]~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux6~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux10~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux6~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux6~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux6~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~9_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux22~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux14~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux14~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~3_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux14~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux14~1_combout\ : std_logic;
SIGNAL \h2_3[1]~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux14~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux14~1_combout\ : std_logic;
SIGNAL \h2_13[1]~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux22~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux7~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux7~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux7~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux7~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~7_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux5~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux5~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~6_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux9~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux1~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux1~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~12_combout\ : std_logic;
SIGNAL \h1_11[2]~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~3_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux17~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~6_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux17~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux17~1_combout\ : std_logic;
SIGNAL \h2_14[2]~1_combout\ : std_logic;
SIGNAL \h2_12[2]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~11_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux21~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux13~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux5~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux5~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux5~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux5~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector31~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector30~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~6_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[13]~1_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[21]~5_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~5_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[6]~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~6_combout\ : std_logic;
SIGNAL \lcd_full|Add3~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[7]~4_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~8_combout\ : std_logic;
SIGNAL \tao_gtc|Selector1~0_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~0_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~1_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~2_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~3_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~4_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~5_combout\ : std_logic;
SIGNAL \tao_gtc|Equal0~6_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\ : std_logic;
SIGNAL \doc_ds18b20|WideOr5~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~4_combout\ : std_logic;
SIGNAL \tao_gtc|Selector2~0_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~6_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[14]~54_combout\ : std_logic;
SIGNAL \tao_gtc|delay_reg[14]~55_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~4_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal0~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal0~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal2~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal2~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~49_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~50_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~51_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~52_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~53_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~58_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~60_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~65_combout\ : std_logic;
SIGNAL \doc_ds18b20|S_RST[1]~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|S_RST[1]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector22~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_RD_BIT_0[1]~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_BIT_0_I[1]~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Mux34~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Mux34~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Mux34~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector26~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector26~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~6_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_BIT_0_I[0]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_BIT_0_I[0]~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_PTR~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector37~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector36~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector33~0_combout\ : std_logic;
SIGNAL \h1_11[1]~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~7_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~9_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~5_combout\ : std_logic;
SIGNAL \btn_n[2]~input_o\ : std_logic;
SIGNAL \btn_n[3]~input_o\ : std_logic;
SIGNAL \doc_ds18b20|WR_BYTE[0]~feeder_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_BYTE[2]~feeder_combout\ : std_logic;
SIGNAL \ds18b20~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[8]~output_o\ : std_logic;
SIGNAL \led[9]~output_o\ : std_logic;
SIGNAL \led[10]~output_o\ : std_logic;
SIGNAL \led[11]~output_o\ : std_logic;
SIGNAL \led[12]~output_o\ : std_logic;
SIGNAL \led[13]~output_o\ : std_logic;
SIGNAL \led[14]~output_o\ : std_logic;
SIGNAL \led[15]~output_o\ : std_logic;
SIGNAL \led_oe[0]~output_o\ : std_logic;
SIGNAL \led_oe[1]~output_o\ : std_logic;
SIGNAL \led_oe[2]~output_o\ : std_logic;
SIGNAL \led_oe[3]~output_o\ : std_logic;
SIGNAL \led_oe[4]~output_o\ : std_logic;
SIGNAL \led_oe[5]~output_o\ : std_logic;
SIGNAL \led_oe[6]~output_o\ : std_logic;
SIGNAL \led_oe[7]~output_o\ : std_logic;
SIGNAL \led_oe[8]~output_o\ : std_logic;
SIGNAL \lcd_blon~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_wr~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \sseg7[0]~output_o\ : std_logic;
SIGNAL \sseg7[1]~output_o\ : std_logic;
SIGNAL \sseg7[2]~output_o\ : std_logic;
SIGNAL \sseg7[3]~output_o\ : std_logic;
SIGNAL \sseg7[4]~output_o\ : std_logic;
SIGNAL \sseg7[5]~output_o\ : std_logic;
SIGNAL \sseg7[6]~output_o\ : std_logic;
SIGNAL \sseg6[0]~output_o\ : std_logic;
SIGNAL \sseg6[1]~output_o\ : std_logic;
SIGNAL \sseg6[2]~output_o\ : std_logic;
SIGNAL \sseg6[3]~output_o\ : std_logic;
SIGNAL \sseg6[4]~output_o\ : std_logic;
SIGNAL \sseg6[5]~output_o\ : std_logic;
SIGNAL \sseg6[6]~output_o\ : std_logic;
SIGNAL \sseg1[0]~output_o\ : std_logic;
SIGNAL \sseg1[1]~output_o\ : std_logic;
SIGNAL \sseg1[2]~output_o\ : std_logic;
SIGNAL \sseg1[3]~output_o\ : std_logic;
SIGNAL \sseg1[4]~output_o\ : std_logic;
SIGNAL \sseg1[5]~output_o\ : std_logic;
SIGNAL \sseg1[6]~output_o\ : std_logic;
SIGNAL \sseg2[0]~output_o\ : std_logic;
SIGNAL \sseg2[1]~output_o\ : std_logic;
SIGNAL \sseg2[2]~output_o\ : std_logic;
SIGNAL \sseg2[3]~output_o\ : std_logic;
SIGNAL \sseg2[4]~output_o\ : std_logic;
SIGNAL \sseg2[5]~output_o\ : std_logic;
SIGNAL \sseg2[6]~output_o\ : std_logic;
SIGNAL \sseg0[0]~output_o\ : std_logic;
SIGNAL \sseg0[1]~output_o\ : std_logic;
SIGNAL \sseg0[2]~output_o\ : std_logic;
SIGNAL \sseg0[3]~output_o\ : std_logic;
SIGNAL \sseg0[4]~output_o\ : std_logic;
SIGNAL \sseg0[5]~output_o\ : std_logic;
SIGNAL \sseg0[6]~output_o\ : std_logic;
SIGNAL \ckht~input_o\ : std_logic;
SIGNAL \ckht~inputclkctrl_outclk\ : std_logic;
SIGNAL \doc_ds18b20|J[0]~22_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[0]~feeder_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[1]~25\ : std_logic;
SIGNAL \doc_ds18b20|J[2]~26_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_PTR~3_combout\ : std_logic;
SIGNAL \btn_n[0]~input_o\ : std_logic;
SIGNAL \doc_ds18b20|WR_STATE_I[0]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_STATE_I~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector22~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[4]~31\ : std_logic;
SIGNAL \doc_ds18b20|J[5]~32_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[5]~33\ : std_logic;
SIGNAL \doc_ds18b20|J[6]~35\ : std_logic;
SIGNAL \doc_ds18b20|J[7]~36_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[7]~37\ : std_logic;
SIGNAL \doc_ds18b20|J[8]~39\ : std_logic;
SIGNAL \doc_ds18b20|J[9]~40_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[9]~41\ : std_logic;
SIGNAL \doc_ds18b20|J[10]~42_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[10]~43\ : std_logic;
SIGNAL \doc_ds18b20|J[11]~44_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[11]~45\ : std_logic;
SIGNAL \doc_ds18b20|J[12]~47\ : std_logic;
SIGNAL \doc_ds18b20|J[13]~68_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[13]~69\ : std_logic;
SIGNAL \doc_ds18b20|J[14]~70_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[14]~71\ : std_logic;
SIGNAL \doc_ds18b20|J[15]~72_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[15]~73\ : std_logic;
SIGNAL \doc_ds18b20|J[16]~74_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[16]~75\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~76_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[12]~46_combout\ : std_logic;
SIGNAL \doc_ds18b20|LessThan4~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[8]~38_combout\ : std_logic;
SIGNAL \doc_ds18b20|LessThan4~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|LessThan4~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector22~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[3]~28_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~19_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~20_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal14~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~5_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector27~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.READ_BIT~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector30~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.GET_TEMPERATURE~q\ : std_logic;
SIGNAL \doc_ds18b20|RD_PTR~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|RD_PTR[3]~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|RD_PTR~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|RD_PTR~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector31~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector31~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.WAIT4MS~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector22~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.RESET~q\ : std_logic;
SIGNAL \doc_ds18b20|S_RST[0]~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|S_RST[1]~2_combout\ : std_logic;
SIGNAL \ds18b20~input_o\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~4_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~5_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector23~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.SKIP_ROM_CC~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector28~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.CONVERT_T_44~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector24~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.WRITE_BYTE~q\ : std_logic;
SIGNAL \doc_ds18b20|WR_PTR~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|WR_PTR~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector26~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~21_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector29~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector25~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector25~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.WRITE_BIT_1~q\ : std_logic;
SIGNAL \doc_ds18b20|Selector25~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE.WRITE_BIT_0~q\ : std_logic;
SIGNAL \doc_ds18b20|Equal2~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal2~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal11~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal11~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal11~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal0~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal0~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~48_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~59_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_WR_BIT_0[0]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_WR_BIT_0[0]~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_WR_BIT_0[1]~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~66_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~67_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[2]~27\ : std_logic;
SIGNAL \doc_ds18b20|J[3]~29\ : std_logic;
SIGNAL \doc_ds18b20|J[4]~30_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~18_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal9~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal9~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal9~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~55_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~54_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~56_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~57_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal13~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~61_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~62_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~63_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[17]~64_combout\ : std_logic;
SIGNAL \doc_ds18b20|J[0]~23\ : std_logic;
SIGNAL \doc_ds18b20|J[1]~24_combout\ : std_logic;
SIGNAL \doc_ds18b20|Equal12~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_RD_BIT_0[0]~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|STATE_RD_BIT_0[1]~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_in~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~5_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector2~6_combout\ : std_logic;
SIGNAL \doc_ds18b20|ds_ena~q\ : std_logic;
SIGNAL \dem_mode_10|q_reg[0]~11\ : std_logic;
SIGNAL \dem_mode_10|q_reg[1]~13\ : std_logic;
SIGNAL \dem_mode_10|q_reg[2]~14_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[4]~19\ : std_logic;
SIGNAL \dem_mode_10|q_reg[5]~20_combout\ : std_logic;
SIGNAL \xung_ena|Add12~0_combout\ : std_logic;
SIGNAL \xung_ena|Add12~1\ : std_logic;
SIGNAL \xung_ena|Add12~2_combout\ : std_logic;
SIGNAL \xung_ena|Add12~3\ : std_logic;
SIGNAL \xung_ena|Add12~4_combout\ : std_logic;
SIGNAL \xung_ena|Add12~5\ : std_logic;
SIGNAL \xung_ena|Add12~6_combout\ : std_logic;
SIGNAL \xung_ena|Add12~7\ : std_logic;
SIGNAL \xung_ena|Add12~9\ : std_logic;
SIGNAL \xung_ena|Add12~11\ : std_logic;
SIGNAL \xung_ena|Add12~13\ : std_logic;
SIGNAL \xung_ena|Add12~14_combout\ : std_logic;
SIGNAL \xung_ena|Add12~8_combout\ : std_logic;
SIGNAL \xung_ena|Add12~15\ : std_logic;
SIGNAL \xung_ena|Add12~16_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~2_combout\ : std_logic;
SIGNAL \xung_ena|Add12~17\ : std_logic;
SIGNAL \xung_ena|Add12~18_combout\ : std_logic;
SIGNAL \xung_ena|Add12~19\ : std_logic;
SIGNAL \xung_ena|Add12~20_combout\ : std_logic;
SIGNAL \xung_ena|Add12~21\ : std_logic;
SIGNAL \xung_ena|Add12~22_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~1_combout\ : std_logic;
SIGNAL \xung_ena|Add12~23\ : std_logic;
SIGNAL \xung_ena|Add12~25\ : std_logic;
SIGNAL \xung_ena|Add12~26_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[14]~6_combout\ : std_logic;
SIGNAL \xung_ena|Add12~27\ : std_logic;
SIGNAL \xung_ena|Add12~29\ : std_logic;
SIGNAL \xung_ena|Add12~30_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[16]~4_combout\ : std_logic;
SIGNAL \xung_ena|Add12~31\ : std_logic;
SIGNAL \xung_ena|Add12~32_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[17]~3_combout\ : std_logic;
SIGNAL \xung_ena|Add12~33\ : std_logic;
SIGNAL \xung_ena|Add12~34_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[18]~2_combout\ : std_logic;
SIGNAL \xung_ena|Add0~0_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_reg[0]~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~3_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[9]~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal12~4_combout\ : std_logic;
SIGNAL \xung_ena|Add12~35\ : std_logic;
SIGNAL \xung_ena|Add12~36_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_next[19]~5_combout\ : std_logic;
SIGNAL \xung_ena|Add12~28_combout\ : std_logic;
SIGNAL \xung_ena|Add12~24_combout\ : std_logic;
SIGNAL \xung_ena|Equal28~1_combout\ : std_logic;
SIGNAL \xung_ena|Equal28~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal28~2_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[5]~21\ : std_logic;
SIGNAL \dem_mode_10|q_reg[6]~23\ : std_logic;
SIGNAL \dem_mode_10|q_reg[7]~24_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[7]~25\ : std_logic;
SIGNAL \dem_mode_10|q_reg[8]~26_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[8]~27\ : std_logic;
SIGNAL \dem_mode_10|q_reg[9]~28_combout\ : std_logic;
SIGNAL \dem_mode_10|LessThan1~1_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[2]~15\ : std_logic;
SIGNAL \dem_mode_10|q_reg[3]~16_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[3]~17\ : std_logic;
SIGNAL \dem_mode_10|q_reg[4]~18_combout\ : std_logic;
SIGNAL \dem_mode_10|q_reg[6]~22_combout\ : std_logic;
SIGNAL \LessThan25~0_combout\ : std_logic;
SIGNAL \LessThan25~2_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[0]~7\ : std_logic;
SIGNAL \thoi_gian|giay_reg[1]~8_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[1]~9\ : std_logic;
SIGNAL \thoi_gian|giay_reg[2]~11\ : std_logic;
SIGNAL \thoi_gian|giay_reg[3]~13\ : std_logic;
SIGNAL \thoi_gian|giay_reg[4]~14_combout\ : std_logic;
SIGNAL \xung_ena|Add0~1\ : std_logic;
SIGNAL \xung_ena|Add0~2_combout\ : std_logic;
SIGNAL \xung_ena|Add0~3\ : std_logic;
SIGNAL \xung_ena|Add0~5\ : std_logic;
SIGNAL \xung_ena|Add0~7\ : std_logic;
SIGNAL \xung_ena|Add0~8_combout\ : std_logic;
SIGNAL \xung_ena|Add0~9\ : std_logic;
SIGNAL \xung_ena|Add0~10_combout\ : std_logic;
SIGNAL \xung_ena|Add0~11\ : std_logic;
SIGNAL \xung_ena|Add0~12_combout\ : std_logic;
SIGNAL \xung_ena|Add0~13\ : std_logic;
SIGNAL \xung_ena|Add0~14_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[7]~7_combout\ : std_logic;
SIGNAL \xung_ena|Add0~15\ : std_logic;
SIGNAL \xung_ena|Add0~17\ : std_logic;
SIGNAL \xung_ena|Add0~18_combout\ : std_logic;
SIGNAL \xung_ena|Add0~19\ : std_logic;
SIGNAL \xung_ena|Add0~21\ : std_logic;
SIGNAL \xung_ena|Add0~22_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~5_combout\ : std_logic;
SIGNAL \xung_ena|Add0~45\ : std_logic;
SIGNAL \xung_ena|Add0~46_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[23]~10_combout\ : std_logic;
SIGNAL \xung_ena|Add0~47\ : std_logic;
SIGNAL \xung_ena|Add0~48_combout\ : std_logic;
SIGNAL \xung_ena|Add0~49\ : std_logic;
SIGNAL \xung_ena|Add0~50_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[25]~11_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~7_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~8_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[15]~8_combout\ : std_logic;
SIGNAL \xung_ena|Add0~23\ : std_logic;
SIGNAL \xung_ena|Add0~25\ : std_logic;
SIGNAL \xung_ena|Add0~27\ : std_logic;
SIGNAL \xung_ena|Add0~28_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[14]~2_combout\ : std_logic;
SIGNAL \xung_ena|Add0~29\ : std_logic;
SIGNAL \xung_ena|Add0~31\ : std_logic;
SIGNAL \xung_ena|Add0~33\ : std_logic;
SIGNAL \xung_ena|Add0~34_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[17]~9_combout\ : std_logic;
SIGNAL \xung_ena|Add0~35\ : std_logic;
SIGNAL \xung_ena|Add0~37\ : std_logic;
SIGNAL \xung_ena|Add0~38_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[19]~3_combout\ : std_logic;
SIGNAL \xung_ena|Add0~39\ : std_logic;
SIGNAL \xung_ena|Add0~41\ : std_logic;
SIGNAL \xung_ena|Add0~43\ : std_logic;
SIGNAL \xung_ena|Add0~44_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[22]~6_combout\ : std_logic;
SIGNAL \xung_ena|Add0~40_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[20]~4_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~3_combout\ : std_logic;
SIGNAL \xung_ena|Add0~20_combout\ : std_logic;
SIGNAL \xung_ena|Add0~24_combout\ : std_logic;
SIGNAL \xung_ena|d1hz_next[12]~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~2_combout\ : std_logic;
SIGNAL \xung_ena|Add0~4_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal0~4_combout\ : std_logic;
SIGNAL \xung_ena|Equal16~2_combout\ : std_logic;
SIGNAL \xung_ena|Equal16~0_combout\ : std_logic;
SIGNAL \xung_ena|Equal16~3_combout\ : std_logic;
SIGNAL \LessThan24~0_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[2]~10_combout\ : std_logic;
SIGNAL \thoi_gian|LessThan0~1_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[0]~6_combout\ : std_logic;
SIGNAL \thoi_gian|LessThan0~0_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \led~1_combout\ : std_logic;
SIGNAL \led_oe~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[0]~21\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[1]~22_combout\ : std_logic;
SIGNAL \lcd_full|Equal4~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[15]~53\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[16]~54_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[16]~55\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[17]~56_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[17]~57\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[18]~58_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[18]~59\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[19]~60_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~1_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[7]~34_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~2_combout\ : std_logic;
SIGNAL \lcd_full|Equal4~1_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[5]~30_combout\ : std_logic;
SIGNAL \lcd_full|Equal4~2_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[9]~38_combout\ : std_logic;
SIGNAL \lcd_full|Equal4~3_combout\ : std_logic;
SIGNAL \lcd_full|Equal4~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector23~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\ : std_logic;
SIGNAL \lcd_full|Selector25~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector28~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~9_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[1]~5_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[5]~11_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[1]~6\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[2]~7_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[2]~8\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[3]~10\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[4]~12_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[4]~13\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[5]~14_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[0]~16_combout\ : std_logic;
SIGNAL \lcd_full|Equal5~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CGRAM_PTR[3]~9_combout\ : std_logic;
SIGNAL \lcd_full|Equal5~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~3_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~0_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~4_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[12]~46_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~7_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~8_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~10_combout\ : std_logic;
SIGNAL \lcd_full|Selector25~11_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[0]~8_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[0]~4_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[0]~9_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[1]~5_combout\ : std_logic;
SIGNAL \lcd_full|Add3~1_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[2]~7_combout\ : std_logic;
SIGNAL \lcd_full|Equal6~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector26~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_DATA_L2~q\ : std_logic;
SIGNAL \lcd_full|Selector25~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~7_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~8_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~9_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~10_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_INITIAL~2_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_INITIAL~q\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[12]~47_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[1]~23\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[2]~24_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[2]~25\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[3]~26_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[3]~27\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[4]~28_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[4]~29\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[5]~31\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[6]~32_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[6]~33\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[7]~35\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[8]~36_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[8]~37\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[9]~39\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[10]~40_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[10]~41\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[11]~42_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[11]~43\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[12]~44_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[12]~45\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[13]~49\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[14]~51\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[15]~52_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~5_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~6_combout\ : std_logic;
SIGNAL \lcd_full|Equal0~3_combout\ : std_logic;
SIGNAL \lcd_full|Equal2~1_combout\ : std_logic;
SIGNAL \lcd_full|Equal3~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector28~2_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DELAY[0]~20_combout\ : std_logic;
SIGNAL \lcd_full|Equal2~2_combout\ : std_logic;
SIGNAL \lcd_full|Equal2~3_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_STOP~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_STOP~q\ : std_logic;
SIGNAL \lcd_full|Selector28~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector28~4_combout\ : std_logic;
SIGNAL \lcd_full|LCD_ENABLE~q\ : std_logic;
SIGNAL \lcd_full|Selector37~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector29~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CMD_PTR[0]~5_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CMD_PTR[3]~4_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CMD_PTR[1]~7_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CMD_PTR[2]~8_combout\ : std_logic;
SIGNAL \lcd_full|LCD_CMD_PTR[3]~6_combout\ : std_logic;
SIGNAL \lcd_full|Equal1~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector20~11_combout\ : std_logic;
SIGNAL \lcd_full|Selector21~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\ : std_logic;
SIGNAL \lcd_full|Selector20~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector29~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector29~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux8~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux8~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux8~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux8~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux8~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector22~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ : std_logic;
SIGNAL \lcd_full|Selector37~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~7_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~2_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[3]~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~17_combout\ : std_logic;
SIGNAL \tao_gtc|s_reg[0]~0_combout\ : std_logic;
SIGNAL \btn_n[1]~input_o\ : std_logic;
SIGNAL \tao_gtc|Selector2~1_combout\ : std_logic;
SIGNAL \tao_gtc|btn_reg.one~q\ : std_logic;
SIGNAL \tao_gtc|Selector3~0_combout\ : std_logic;
SIGNAL \tao_gtc|btn_reg.wait0~q\ : std_logic;
SIGNAL \tao_gtc|Selector1~1_combout\ : std_logic;
SIGNAL \tao_gtc|Selector1~2_combout\ : std_logic;
SIGNAL \tao_gtc|Selector1~3_combout\ : std_logic;
SIGNAL \tao_gtc|btn_reg.wait1~q\ : std_logic;
SIGNAL \tao_gtc|Selector0~0_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~1_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~3_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~4_combout\ : std_logic;
SIGNAL \tao_gtc|Selector0~5_combout\ : std_logic;
SIGNAL \tao_gtc|btn_reg.zero~q\ : std_logic;
SIGNAL \tao_gtc|btn_cd~0_combout\ : std_logic;
SIGNAL \tao_gtc|qff~q\ : std_logic;
SIGNAL \tao_gtc|btn_cd_hep~combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \tao_gtc|Mux2~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~6_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~7_combout\ : std_logic;
SIGNAL \thoi_gian|giay_reg[4]~15\ : std_logic;
SIGNAL \thoi_gian|giay_reg[5]~16_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|hex_bcd~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|hex_bcd~3_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|hex_bcd~1_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|hex_bcd~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|Add5~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|chuc[0]~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Add0~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|donvi[3]~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|donvi[1]~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux19~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux19~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux19~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~13_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|donvi[2]~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux23~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux23~1_combout\ : std_logic;
SIGNAL \h2_15[0]~0_combout\ : std_logic;
SIGNAL \h2_13[0]~0_combout\ : std_logic;
SIGNAL \h2_13[0]~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~14_combout\ : std_logic;
SIGNAL \doc_ds18b20|Selector0~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~6_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[4]~7_combout\ : std_logic;
SIGNAL \doc_ds18b20|Add3~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[10]~1_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~4_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[9]~2_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~5_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[8]~3_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~3_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[11]~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~1_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~5_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~4_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~3_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~7_combout\ : std_logic;
SIGNAL \doc_ds18b20|Decoder0~7_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[6]~5_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~8_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~6_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|donvi[1]~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|donvi[3]~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux23~0_combout\ : std_logic;
SIGNAL \doc_ds18b20|TEMP[5]~6_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|donvi[2]~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~18_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~19_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux19~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~8_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~16_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~9_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~10_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~11_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~12_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~13_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~14_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~15_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|chuc[1]~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|chuc[2]~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|chuc[3]~1_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|chuc[0]~3_combout\ : std_logic;
SIGNAL \h2_0[0]~0_combout\ : std_logic;
SIGNAL \h2_0[0]~1_combout\ : std_logic;
SIGNAL \h2_1[0]~0_combout\ : std_logic;
SIGNAL \h2_1[0]~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~10_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux23~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Add0~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux23~1_combout\ : std_logic;
SIGNAL \h2_2[0]~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~11_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~15_combout\ : std_logic;
SIGNAL \lcd_full|LCD_DIS_PTR[3]~6_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|Add3~0_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|chuc[0]~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux7~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Add0~1_combout\ : std_logic;
SIGNAL \h1_11[0]~2_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[0]~7\ : std_logic;
SIGNAL \thoi_gian|phut_reg[1]~9_combout\ : std_logic;
SIGNAL \thoi_gian|LessThan1~0_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[3]~14\ : std_logic;
SIGNAL \thoi_gian|phut_reg[4]~15_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[4]~8_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[4]~16\ : std_logic;
SIGNAL \thoi_gian|phut_reg[5]~17_combout\ : std_logic;
SIGNAL \thoi_gian|LessThan1~1_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[1]~10\ : std_logic;
SIGNAL \thoi_gian|phut_reg[2]~11_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[2]~12\ : std_logic;
SIGNAL \thoi_gian|phut_reg[3]~13_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|hex_bcd~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|hex_bcd~1_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|chuc[0]~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux3~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Add0~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux3~1_combout\ : std_logic;
SIGNAL \h1_3[0]~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~13_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~14_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~7_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux11~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux11~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~5_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux7~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Add0~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux7~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~6_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~9_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux11~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Add1~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Add1~1_combout\ : std_logic;
SIGNAL \h1_12[0]~0_combout\ : std_logic;
SIGNAL \thoi_gian|phut_reg[0]~6_combout\ : std_logic;
SIGNAL \giai_ma_bcd_ds|hex_bcd~16_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Add0~2_combout\ : std_logic;
SIGNAL \h1_0[0]~1_combout\ : std_logic;
SIGNAL \h1_0[0]~0_combout\ : std_logic;
SIGNAL \h1_0[0]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~10_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Add0~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux7~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux7~0_combout\ : std_logic;
SIGNAL \h1_4[0]~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~11_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux16~15_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~9_combout\ : std_logic;
SIGNAL \lcd_full|Selector37~8_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux6~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Add0~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~5_combout\ : std_logic;
SIGNAL \giai_ma_bcd_giay|LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~6_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux10~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux10~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Add1~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~7_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux10~0_combout\ : std_logic;
SIGNAL \h1_12[1]~1_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|donvi[1]~0_combout\ : std_logic;
SIGNAL \h1_0[1]~3_combout\ : std_logic;
SIGNAL \h1_0[1]~4_combout\ : std_logic;
SIGNAL \h1_0[1]~5_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux6~0_combout\ : std_logic;
SIGNAL \h1_4[1]~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~8_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux2~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux2~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~10_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux10~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux10~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~11_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux15~13_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux24~9_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux22~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux18~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux18~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux22~1_combout\ : std_logic;
SIGNAL \h2_15[1]~1_combout\ : std_logic;
SIGNAL \h2_12[1]~3_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux18~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux18~0_combout\ : std_logic;
SIGNAL \h2_14[1]~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~7_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~8_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux14~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux14~1_combout\ : std_logic;
SIGNAL \h2_0[1]~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux18~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux18~0_combout\ : std_logic;
SIGNAL \h2_1[1]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~4_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux22~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux22~1_combout\ : std_logic;
SIGNAL \h2_2[1]~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~5_combout\ : std_logic;
SIGNAL \lcd_full|Mux23~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector36~8_combout\ : std_logic;
SIGNAL \lcd_full|Selector35~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector35~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector24~0_combout\ : std_logic;
SIGNAL \lcd_full|LCD_STATE.LCD_DATA_L1~q\ : std_logic;
SIGNAL \lcd_full|Selector37~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux9~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux9~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Add1~0_combout\ : std_logic;
SIGNAL \h1_15[2]~2_combout\ : std_logic;
SIGNAL \giai_ma_bcd_phut|LessThan2~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux1~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux1~1_combout\ : std_logic;
SIGNAL \h1_3[2]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~21_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~22_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~5_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Add0~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~7_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux9~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux9~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~8_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~11_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux9~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Add1~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~9_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux5~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux5~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~10_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~13_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux9~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\ : std_logic;
SIGNAL \h1_12[2]~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Add0~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux5~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux5~1_combout\ : std_logic;
SIGNAL \h1_4[2]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~14_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~16_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~15_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~17_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~18_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~19_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~20_combout\ : std_logic;
SIGNAL \lcd_full|Mux14~23_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux13~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux13~1_combout\ : std_logic;
SIGNAL \h2_13[2]~3_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Add0~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux21~0_combout\ : std_logic;
SIGNAL \h2_15[2]~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~12_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux21~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux21~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~5_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux17~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~7_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux21~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux21~1_combout\ : std_logic;
SIGNAL \h2_2[2]~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Add1~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux13~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux13~1_combout\ : std_logic;
SIGNAL \h2_3[2]~3_combout\ : std_logic;
SIGNAL \h2_0[2]~3_combout\ : std_logic;
SIGNAL \h2_0[2]~4_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux17~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_chuc|Mux17~1_combout\ : std_logic;
SIGNAL \h2_1[2]~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~8_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~9_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~10_combout\ : std_logic;
SIGNAL \lcd_full|Mux22~13_combout\ : std_logic;
SIGNAL \lcd_full|Selector35~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector35~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~5_combout\ : std_logic;
SIGNAL \lcd_full|Mux2~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~9_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux4~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux4~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux4~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux4~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~4_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~8_combout\ : std_logic;
SIGNAL \lcd_full|Selector34~7_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector33~5_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux0~0_combout\ : std_logic;
SIGNAL \h1_13[5]~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux4~0_combout\ : std_logic;
SIGNAL \h1_14[5]~0_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Add1~2_combout\ : std_logic;
SIGNAL \giai_ma_soto_GIAY_CHUC|Mux8~0_combout\ : std_logic;
SIGNAL \h1_12[5]~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~10_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Mux8~0_combout\ : std_logic;
SIGNAL \h1_15[5]~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~11_combout\ : std_logic;
SIGNAL \h1_2[5]~0_combout\ : std_logic;
SIGNAL \h1_2[5]~1_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux0~0_combout\ : std_logic;
SIGNAL \h1_3[5]~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~5_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~6_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~7_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~8_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~2_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~3_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~13_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~9_combout\ : std_logic;
SIGNAL \lcd_full|Mux11~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~17_combout\ : std_logic;
SIGNAL \giai_ma_soto_gauy_donvi|Add1~1_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~13_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~14_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux16~0_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~5_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~6_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~7_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~16_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~8_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~9_combout\ : std_logic;
SIGNAL \h2_1[5]~4_combout\ : std_logic;
SIGNAL \h2_1[5]~5_combout\ : std_logic;
SIGNAL \h2_1[5]~6_combout\ : std_logic;
SIGNAL \h2_0[5]~5_combout\ : std_logic;
SIGNAL \h2_0[5]~6_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~10_combout\ : std_logic;
SIGNAL \giai_ma_soto_ds_donvi|Mux12~0_combout\ : std_logic;
SIGNAL \h2_3[5]~4_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~11_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~12_combout\ : std_logic;
SIGNAL \lcd_full|Mux19~15_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~5_combout\ : std_logic;
SIGNAL \lcd_full|Selector32~6_combout\ : std_logic;
SIGNAL \lcd_full|Selector31~0_combout\ : std_logic;
SIGNAL \lcd_full|Selector31~2_combout\ : std_logic;
SIGNAL \lcd_full|Selector31~3_combout\ : std_logic;
SIGNAL \lcd_full|Selector30~1_combout\ : std_logic;
SIGNAL \lcd_full|Selector30~2_combout\ : std_logic;
SIGNAL \xung_ena|d50hz_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \xung_ena|d1hz_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \thoi_gian|phut_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \thoi_gian|giay_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \doc_ds18b20|WR_STATE_I\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \doc_ds18b20|WR_PTR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \doc_ds18b20|WR_BYTE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \doc_ds18b20|WR_BIT_0_I\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \doc_ds18b20|TEMP\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \doc_ds18b20|S_RST\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \doc_ds18b20|STATE_WR_BIT_0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \doc_ds18b20|STATE_RD_BIT_0\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \doc_ds18b20|RD_PTR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \doc_ds18b20|J\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lcd_full|LCD_RS_DB\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lcd_full|LCD_DIS_PTR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_full|LCD_DELAY\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \lcd_full|LCD_CMD_PTR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_full|LCD_CGRAM_PTR\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \tao_gtc|s_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \tao_gtc|delay_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \dem_mode_10|q_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_ckht~inputclkctrl_outclk\ : std_logic;
SIGNAL \tao_gtc|ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_ckht <= ckht;
ww_btn_n <= btn_n;
led <= ww_led;
led_oe <= ww_led_oe;
lcd_blon <= ww_lcd_blon;
lcd_e <= ww_lcd_e;
lcd_on <= ww_lcd_on;
lcd_wr <= ww_lcd_wr;
lcd_rs <= ww_lcd_rs;
lcd_data <= ww_lcd_data;
sseg7 <= ww_sseg7;
sseg6 <= ww_sseg6;
sseg1 <= ww_sseg1;
sseg2 <= ww_sseg2;
sseg0 <= ww_sseg0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ckht~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ckht~input_o\);
\ALT_INV_ckht~inputclkctrl_outclk\ <= NOT \ckht~inputclkctrl_outclk\;
\tao_gtc|ALT_INV_Mux2~0_combout\ <= NOT \tao_gtc|Mux2~0_combout\;

-- Location: FF_X69_Y46_N13
\dem_mode_10|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[1]~12_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(1));

-- Location: FF_X69_Y46_N11
\dem_mode_10|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[0]~10_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(0));

-- Location: LCCOMB_X69_Y46_N10
\dem_mode_10|q_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[0]~10_combout\ = \dem_mode_10|q_reg\(0) $ (VCC)
-- \dem_mode_10|q_reg[0]~11\ = CARRY(\dem_mode_10|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(0),
	datad => VCC,
	combout => \dem_mode_10|q_reg[0]~10_combout\,
	cout => \dem_mode_10|q_reg[0]~11\);

-- Location: LCCOMB_X69_Y46_N12
\dem_mode_10|q_reg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[1]~12_combout\ = (\dem_mode_10|q_reg\(1) & (!\dem_mode_10|q_reg[0]~11\)) # (!\dem_mode_10|q_reg\(1) & ((\dem_mode_10|q_reg[0]~11\) # (GND)))
-- \dem_mode_10|q_reg[1]~13\ = CARRY((!\dem_mode_10|q_reg[0]~11\) # (!\dem_mode_10|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(1),
	datad => VCC,
	cin => \dem_mode_10|q_reg[0]~11\,
	combout => \dem_mode_10|q_reg[1]~12_combout\,
	cout => \dem_mode_10|q_reg[1]~13\);

-- Location: FF_X67_Y45_N7
\lcd_full|LCD_DELAY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[13]~48_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(13));

-- Location: FF_X67_Y45_N9
\lcd_full|LCD_DELAY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[14]~50_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(14));

-- Location: LCCOMB_X66_Y46_N12
\xung_ena|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~6_combout\ = (\xung_ena|d1hz_reg\(3) & (!\xung_ena|Add0~5\)) # (!\xung_ena|d1hz_reg\(3) & ((\xung_ena|Add0~5\) # (GND)))
-- \xung_ena|Add0~7\ = CARRY((!\xung_ena|Add0~5\) # (!\xung_ena|d1hz_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(3),
	datad => VCC,
	cin => \xung_ena|Add0~5\,
	combout => \xung_ena|Add0~6_combout\,
	cout => \xung_ena|Add0~7\);

-- Location: LCCOMB_X66_Y46_N22
\xung_ena|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~16_combout\ = (\xung_ena|d1hz_reg\(8) & (\xung_ena|Add0~15\ $ (GND))) # (!\xung_ena|d1hz_reg\(8) & (!\xung_ena|Add0~15\ & VCC))
-- \xung_ena|Add0~17\ = CARRY((\xung_ena|d1hz_reg\(8) & !\xung_ena|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(8),
	datad => VCC,
	cin => \xung_ena|Add0~15\,
	combout => \xung_ena|Add0~16_combout\,
	cout => \xung_ena|Add0~17\);

-- Location: LCCOMB_X66_Y45_N0
\xung_ena|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~26_combout\ = (\xung_ena|d1hz_reg\(13) & (!\xung_ena|Add0~25\)) # (!\xung_ena|d1hz_reg\(13) & ((\xung_ena|Add0~25\) # (GND)))
-- \xung_ena|Add0~27\ = CARRY((!\xung_ena|Add0~25\) # (!\xung_ena|d1hz_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(13),
	datad => VCC,
	cin => \xung_ena|Add0~25\,
	combout => \xung_ena|Add0~26_combout\,
	cout => \xung_ena|Add0~27\);

-- Location: LCCOMB_X66_Y45_N4
\xung_ena|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~30_combout\ = (\xung_ena|d1hz_reg\(15) & (!\xung_ena|Add0~29\)) # (!\xung_ena|d1hz_reg\(15) & ((\xung_ena|Add0~29\) # (GND)))
-- \xung_ena|Add0~31\ = CARRY((!\xung_ena|Add0~29\) # (!\xung_ena|d1hz_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(15),
	datad => VCC,
	cin => \xung_ena|Add0~29\,
	combout => \xung_ena|Add0~30_combout\,
	cout => \xung_ena|Add0~31\);

-- Location: LCCOMB_X66_Y45_N6
\xung_ena|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~32_combout\ = (\xung_ena|d1hz_reg\(16) & (\xung_ena|Add0~31\ $ (GND))) # (!\xung_ena|d1hz_reg\(16) & (!\xung_ena|Add0~31\ & VCC))
-- \xung_ena|Add0~33\ = CARRY((\xung_ena|d1hz_reg\(16) & !\xung_ena|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(16),
	datad => VCC,
	cin => \xung_ena|Add0~31\,
	combout => \xung_ena|Add0~32_combout\,
	cout => \xung_ena|Add0~33\);

-- Location: LCCOMB_X66_Y45_N10
\xung_ena|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~36_combout\ = (\xung_ena|d1hz_reg\(18) & (\xung_ena|Add0~35\ $ (GND))) # (!\xung_ena|d1hz_reg\(18) & (!\xung_ena|Add0~35\ & VCC))
-- \xung_ena|Add0~37\ = CARRY((\xung_ena|d1hz_reg\(18) & !\xung_ena|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(18),
	datad => VCC,
	cin => \xung_ena|Add0~35\,
	combout => \xung_ena|Add0~36_combout\,
	cout => \xung_ena|Add0~37\);

-- Location: LCCOMB_X66_Y45_N16
\xung_ena|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~42_combout\ = (\xung_ena|d1hz_reg\(21) & (!\xung_ena|Add0~41\)) # (!\xung_ena|d1hz_reg\(21) & ((\xung_ena|Add0~41\) # (GND)))
-- \xung_ena|Add0~43\ = CARRY((!\xung_ena|Add0~41\) # (!\xung_ena|d1hz_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(21),
	datad => VCC,
	cin => \xung_ena|Add0~41\,
	combout => \xung_ena|Add0~42_combout\,
	cout => \xung_ena|Add0~43\);

-- Location: LCCOMB_X70_Y46_N24
\xung_ena|Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~10_combout\ = (\xung_ena|d50hz_reg\(6) & (!\xung_ena|Add12~9\)) # (!\xung_ena|d50hz_reg\(6) & ((\xung_ena|Add12~9\) # (GND)))
-- \xung_ena|Add12~11\ = CARRY((!\xung_ena|Add12~9\) # (!\xung_ena|d50hz_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(6),
	datad => VCC,
	cin => \xung_ena|Add12~9\,
	combout => \xung_ena|Add12~10_combout\,
	cout => \xung_ena|Add12~11\);

-- Location: LCCOMB_X70_Y46_N26
\xung_ena|Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~12_combout\ = (\xung_ena|d50hz_reg\(7) & (\xung_ena|Add12~11\ $ (GND))) # (!\xung_ena|d50hz_reg\(7) & (!\xung_ena|Add12~11\ & VCC))
-- \xung_ena|Add12~13\ = CARRY((\xung_ena|d50hz_reg\(7) & !\xung_ena|Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(7),
	datad => VCC,
	cin => \xung_ena|Add12~11\,
	combout => \xung_ena|Add12~12_combout\,
	cout => \xung_ena|Add12~13\);

-- Location: LCCOMB_X67_Y45_N6
\lcd_full|LCD_DELAY[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[13]~48_combout\ = (\lcd_full|LCD_DELAY\(13) & (!\lcd_full|LCD_DELAY[12]~45\)) # (!\lcd_full|LCD_DELAY\(13) & ((\lcd_full|LCD_DELAY[12]~45\) # (GND)))
-- \lcd_full|LCD_DELAY[13]~49\ = CARRY((!\lcd_full|LCD_DELAY[12]~45\) # (!\lcd_full|LCD_DELAY\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(13),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[12]~45\,
	combout => \lcd_full|LCD_DELAY[13]~48_combout\,
	cout => \lcd_full|LCD_DELAY[13]~49\);

-- Location: LCCOMB_X67_Y45_N8
\lcd_full|LCD_DELAY[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[14]~50_combout\ = (\lcd_full|LCD_DELAY\(14) & (\lcd_full|LCD_DELAY[13]~49\ $ (GND))) # (!\lcd_full|LCD_DELAY\(14) & (!\lcd_full|LCD_DELAY[13]~49\ & VCC))
-- \lcd_full|LCD_DELAY[14]~51\ = CARRY((\lcd_full|LCD_DELAY\(14) & !\lcd_full|LCD_DELAY[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(14),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[13]~49\,
	combout => \lcd_full|LCD_DELAY[14]~50_combout\,
	cout => \lcd_full|LCD_DELAY[14]~51\);

-- Location: FF_X73_Y45_N13
\tao_gtc|delay_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[16]~52_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(16));

-- Location: FF_X73_Y45_N15
\tao_gtc|delay_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[17]~56_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(17));

-- Location: FF_X73_Y45_N17
\tao_gtc|delay_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[18]~58_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(18));

-- Location: FF_X73_Y45_N19
\tao_gtc|delay_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[19]~60_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(19));

-- Location: FF_X73_Y46_N13
\tao_gtc|delay_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[0]~20_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(0));

-- Location: FF_X73_Y46_N15
\tao_gtc|delay_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[1]~22_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(1));

-- Location: FF_X73_Y46_N17
\tao_gtc|delay_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[2]~24_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(2));

-- Location: FF_X73_Y46_N19
\tao_gtc|delay_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[3]~26_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(3));

-- Location: FF_X73_Y46_N25
\tao_gtc|delay_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[6]~32_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(6));

-- Location: FF_X73_Y46_N27
\tao_gtc|delay_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[7]~34_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(7));

-- Location: FF_X73_Y46_N21
\tao_gtc|delay_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[4]~28_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(4));

-- Location: FF_X73_Y46_N23
\tao_gtc|delay_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[5]~30_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(5));

-- Location: FF_X73_Y46_N29
\tao_gtc|delay_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[8]~36_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(8));

-- Location: FF_X73_Y46_N31
\tao_gtc|delay_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[9]~38_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(9));

-- Location: FF_X73_Y45_N1
\tao_gtc|delay_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[10]~40_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(10));

-- Location: FF_X73_Y45_N3
\tao_gtc|delay_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[11]~42_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(11));

-- Location: FF_X73_Y45_N5
\tao_gtc|delay_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[12]~44_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(12));

-- Location: FF_X73_Y45_N7
\tao_gtc|delay_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[13]~46_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(13));

-- Location: FF_X73_Y45_N9
\tao_gtc|delay_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[14]~48_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(14));

-- Location: FF_X73_Y45_N11
\tao_gtc|delay_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|delay_reg[15]~50_combout\,
	asdata => VCC,
	sload => \tao_gtc|Selector0~6_combout\,
	ena => \tao_gtc|delay_reg[14]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|delay_reg\(15));

-- Location: FF_X73_Y42_N27
\doc_ds18b20|J[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[6]~34_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(6));

-- Location: LCCOMB_X73_Y46_N12
\tao_gtc|delay_reg[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[0]~20_combout\ = \tao_gtc|delay_reg\(0) $ (VCC)
-- \tao_gtc|delay_reg[0]~21\ = CARRY(\tao_gtc|delay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(0),
	datad => VCC,
	combout => \tao_gtc|delay_reg[0]~20_combout\,
	cout => \tao_gtc|delay_reg[0]~21\);

-- Location: LCCOMB_X73_Y46_N14
\tao_gtc|delay_reg[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[1]~22_combout\ = (\tao_gtc|delay_reg\(1) & (\tao_gtc|delay_reg[0]~21\ & VCC)) # (!\tao_gtc|delay_reg\(1) & (!\tao_gtc|delay_reg[0]~21\))
-- \tao_gtc|delay_reg[1]~23\ = CARRY((!\tao_gtc|delay_reg\(1) & !\tao_gtc|delay_reg[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(1),
	datad => VCC,
	cin => \tao_gtc|delay_reg[0]~21\,
	combout => \tao_gtc|delay_reg[1]~22_combout\,
	cout => \tao_gtc|delay_reg[1]~23\);

-- Location: LCCOMB_X73_Y46_N16
\tao_gtc|delay_reg[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[2]~24_combout\ = (\tao_gtc|delay_reg\(2) & ((GND) # (!\tao_gtc|delay_reg[1]~23\))) # (!\tao_gtc|delay_reg\(2) & (\tao_gtc|delay_reg[1]~23\ $ (GND)))
-- \tao_gtc|delay_reg[2]~25\ = CARRY((\tao_gtc|delay_reg\(2)) # (!\tao_gtc|delay_reg[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(2),
	datad => VCC,
	cin => \tao_gtc|delay_reg[1]~23\,
	combout => \tao_gtc|delay_reg[2]~24_combout\,
	cout => \tao_gtc|delay_reg[2]~25\);

-- Location: LCCOMB_X73_Y46_N18
\tao_gtc|delay_reg[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[3]~26_combout\ = (\tao_gtc|delay_reg\(3) & (\tao_gtc|delay_reg[2]~25\ & VCC)) # (!\tao_gtc|delay_reg\(3) & (!\tao_gtc|delay_reg[2]~25\))
-- \tao_gtc|delay_reg[3]~27\ = CARRY((!\tao_gtc|delay_reg\(3) & !\tao_gtc|delay_reg[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(3),
	datad => VCC,
	cin => \tao_gtc|delay_reg[2]~25\,
	combout => \tao_gtc|delay_reg[3]~26_combout\,
	cout => \tao_gtc|delay_reg[3]~27\);

-- Location: LCCOMB_X73_Y46_N20
\tao_gtc|delay_reg[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[4]~28_combout\ = (\tao_gtc|delay_reg\(4) & ((GND) # (!\tao_gtc|delay_reg[3]~27\))) # (!\tao_gtc|delay_reg\(4) & (\tao_gtc|delay_reg[3]~27\ $ (GND)))
-- \tao_gtc|delay_reg[4]~29\ = CARRY((\tao_gtc|delay_reg\(4)) # (!\tao_gtc|delay_reg[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(4),
	datad => VCC,
	cin => \tao_gtc|delay_reg[3]~27\,
	combout => \tao_gtc|delay_reg[4]~28_combout\,
	cout => \tao_gtc|delay_reg[4]~29\);

-- Location: LCCOMB_X73_Y46_N22
\tao_gtc|delay_reg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[5]~30_combout\ = (\tao_gtc|delay_reg\(5) & (\tao_gtc|delay_reg[4]~29\ & VCC)) # (!\tao_gtc|delay_reg\(5) & (!\tao_gtc|delay_reg[4]~29\))
-- \tao_gtc|delay_reg[5]~31\ = CARRY((!\tao_gtc|delay_reg\(5) & !\tao_gtc|delay_reg[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(5),
	datad => VCC,
	cin => \tao_gtc|delay_reg[4]~29\,
	combout => \tao_gtc|delay_reg[5]~30_combout\,
	cout => \tao_gtc|delay_reg[5]~31\);

-- Location: LCCOMB_X73_Y46_N24
\tao_gtc|delay_reg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[6]~32_combout\ = (\tao_gtc|delay_reg\(6) & ((GND) # (!\tao_gtc|delay_reg[5]~31\))) # (!\tao_gtc|delay_reg\(6) & (\tao_gtc|delay_reg[5]~31\ $ (GND)))
-- \tao_gtc|delay_reg[6]~33\ = CARRY((\tao_gtc|delay_reg\(6)) # (!\tao_gtc|delay_reg[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(6),
	datad => VCC,
	cin => \tao_gtc|delay_reg[5]~31\,
	combout => \tao_gtc|delay_reg[6]~32_combout\,
	cout => \tao_gtc|delay_reg[6]~33\);

-- Location: LCCOMB_X73_Y46_N26
\tao_gtc|delay_reg[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[7]~34_combout\ = (\tao_gtc|delay_reg\(7) & (\tao_gtc|delay_reg[6]~33\ & VCC)) # (!\tao_gtc|delay_reg\(7) & (!\tao_gtc|delay_reg[6]~33\))
-- \tao_gtc|delay_reg[7]~35\ = CARRY((!\tao_gtc|delay_reg\(7) & !\tao_gtc|delay_reg[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(7),
	datad => VCC,
	cin => \tao_gtc|delay_reg[6]~33\,
	combout => \tao_gtc|delay_reg[7]~34_combout\,
	cout => \tao_gtc|delay_reg[7]~35\);

-- Location: LCCOMB_X73_Y46_N28
\tao_gtc|delay_reg[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[8]~36_combout\ = (\tao_gtc|delay_reg\(8) & ((GND) # (!\tao_gtc|delay_reg[7]~35\))) # (!\tao_gtc|delay_reg\(8) & (\tao_gtc|delay_reg[7]~35\ $ (GND)))
-- \tao_gtc|delay_reg[8]~37\ = CARRY((\tao_gtc|delay_reg\(8)) # (!\tao_gtc|delay_reg[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(8),
	datad => VCC,
	cin => \tao_gtc|delay_reg[7]~35\,
	combout => \tao_gtc|delay_reg[8]~36_combout\,
	cout => \tao_gtc|delay_reg[8]~37\);

-- Location: LCCOMB_X73_Y46_N30
\tao_gtc|delay_reg[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[9]~38_combout\ = (\tao_gtc|delay_reg\(9) & (\tao_gtc|delay_reg[8]~37\ & VCC)) # (!\tao_gtc|delay_reg\(9) & (!\tao_gtc|delay_reg[8]~37\))
-- \tao_gtc|delay_reg[9]~39\ = CARRY((!\tao_gtc|delay_reg\(9) & !\tao_gtc|delay_reg[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(9),
	datad => VCC,
	cin => \tao_gtc|delay_reg[8]~37\,
	combout => \tao_gtc|delay_reg[9]~38_combout\,
	cout => \tao_gtc|delay_reg[9]~39\);

-- Location: LCCOMB_X73_Y45_N0
\tao_gtc|delay_reg[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[10]~40_combout\ = (\tao_gtc|delay_reg\(10) & ((GND) # (!\tao_gtc|delay_reg[9]~39\))) # (!\tao_gtc|delay_reg\(10) & (\tao_gtc|delay_reg[9]~39\ $ (GND)))
-- \tao_gtc|delay_reg[10]~41\ = CARRY((\tao_gtc|delay_reg\(10)) # (!\tao_gtc|delay_reg[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(10),
	datad => VCC,
	cin => \tao_gtc|delay_reg[9]~39\,
	combout => \tao_gtc|delay_reg[10]~40_combout\,
	cout => \tao_gtc|delay_reg[10]~41\);

-- Location: LCCOMB_X73_Y45_N2
\tao_gtc|delay_reg[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[11]~42_combout\ = (\tao_gtc|delay_reg\(11) & (\tao_gtc|delay_reg[10]~41\ & VCC)) # (!\tao_gtc|delay_reg\(11) & (!\tao_gtc|delay_reg[10]~41\))
-- \tao_gtc|delay_reg[11]~43\ = CARRY((!\tao_gtc|delay_reg\(11) & !\tao_gtc|delay_reg[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(11),
	datad => VCC,
	cin => \tao_gtc|delay_reg[10]~41\,
	combout => \tao_gtc|delay_reg[11]~42_combout\,
	cout => \tao_gtc|delay_reg[11]~43\);

-- Location: LCCOMB_X73_Y45_N4
\tao_gtc|delay_reg[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[12]~44_combout\ = (\tao_gtc|delay_reg\(12) & ((GND) # (!\tao_gtc|delay_reg[11]~43\))) # (!\tao_gtc|delay_reg\(12) & (\tao_gtc|delay_reg[11]~43\ $ (GND)))
-- \tao_gtc|delay_reg[12]~45\ = CARRY((\tao_gtc|delay_reg\(12)) # (!\tao_gtc|delay_reg[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(12),
	datad => VCC,
	cin => \tao_gtc|delay_reg[11]~43\,
	combout => \tao_gtc|delay_reg[12]~44_combout\,
	cout => \tao_gtc|delay_reg[12]~45\);

-- Location: LCCOMB_X73_Y45_N6
\tao_gtc|delay_reg[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[13]~46_combout\ = (\tao_gtc|delay_reg\(13) & (\tao_gtc|delay_reg[12]~45\ & VCC)) # (!\tao_gtc|delay_reg\(13) & (!\tao_gtc|delay_reg[12]~45\))
-- \tao_gtc|delay_reg[13]~47\ = CARRY((!\tao_gtc|delay_reg\(13) & !\tao_gtc|delay_reg[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(13),
	datad => VCC,
	cin => \tao_gtc|delay_reg[12]~45\,
	combout => \tao_gtc|delay_reg[13]~46_combout\,
	cout => \tao_gtc|delay_reg[13]~47\);

-- Location: LCCOMB_X73_Y45_N8
\tao_gtc|delay_reg[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[14]~48_combout\ = (\tao_gtc|delay_reg\(14) & ((GND) # (!\tao_gtc|delay_reg[13]~47\))) # (!\tao_gtc|delay_reg\(14) & (\tao_gtc|delay_reg[13]~47\ $ (GND)))
-- \tao_gtc|delay_reg[14]~49\ = CARRY((\tao_gtc|delay_reg\(14)) # (!\tao_gtc|delay_reg[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(14),
	datad => VCC,
	cin => \tao_gtc|delay_reg[13]~47\,
	combout => \tao_gtc|delay_reg[14]~48_combout\,
	cout => \tao_gtc|delay_reg[14]~49\);

-- Location: LCCOMB_X73_Y45_N10
\tao_gtc|delay_reg[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[15]~50_combout\ = (\tao_gtc|delay_reg\(15) & (\tao_gtc|delay_reg[14]~49\ & VCC)) # (!\tao_gtc|delay_reg\(15) & (!\tao_gtc|delay_reg[14]~49\))
-- \tao_gtc|delay_reg[15]~51\ = CARRY((!\tao_gtc|delay_reg\(15) & !\tao_gtc|delay_reg[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(15),
	datad => VCC,
	cin => \tao_gtc|delay_reg[14]~49\,
	combout => \tao_gtc|delay_reg[15]~50_combout\,
	cout => \tao_gtc|delay_reg[15]~51\);

-- Location: LCCOMB_X73_Y45_N12
\tao_gtc|delay_reg[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[16]~52_combout\ = (\tao_gtc|delay_reg\(16) & ((GND) # (!\tao_gtc|delay_reg[15]~51\))) # (!\tao_gtc|delay_reg\(16) & (\tao_gtc|delay_reg[15]~51\ $ (GND)))
-- \tao_gtc|delay_reg[16]~53\ = CARRY((\tao_gtc|delay_reg\(16)) # (!\tao_gtc|delay_reg[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(16),
	datad => VCC,
	cin => \tao_gtc|delay_reg[15]~51\,
	combout => \tao_gtc|delay_reg[16]~52_combout\,
	cout => \tao_gtc|delay_reg[16]~53\);

-- Location: LCCOMB_X73_Y45_N14
\tao_gtc|delay_reg[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[17]~56_combout\ = (\tao_gtc|delay_reg\(17) & (\tao_gtc|delay_reg[16]~53\ & VCC)) # (!\tao_gtc|delay_reg\(17) & (!\tao_gtc|delay_reg[16]~53\))
-- \tao_gtc|delay_reg[17]~57\ = CARRY((!\tao_gtc|delay_reg\(17) & !\tao_gtc|delay_reg[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(17),
	datad => VCC,
	cin => \tao_gtc|delay_reg[16]~53\,
	combout => \tao_gtc|delay_reg[17]~56_combout\,
	cout => \tao_gtc|delay_reg[17]~57\);

-- Location: LCCOMB_X73_Y45_N16
\tao_gtc|delay_reg[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[18]~58_combout\ = (\tao_gtc|delay_reg\(18) & ((GND) # (!\tao_gtc|delay_reg[17]~57\))) # (!\tao_gtc|delay_reg\(18) & (\tao_gtc|delay_reg[17]~57\ $ (GND)))
-- \tao_gtc|delay_reg[18]~59\ = CARRY((\tao_gtc|delay_reg\(18)) # (!\tao_gtc|delay_reg[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|delay_reg\(18),
	datad => VCC,
	cin => \tao_gtc|delay_reg[17]~57\,
	combout => \tao_gtc|delay_reg[18]~58_combout\,
	cout => \tao_gtc|delay_reg[18]~59\);

-- Location: LCCOMB_X73_Y45_N18
\tao_gtc|delay_reg[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[19]~60_combout\ = \tao_gtc|delay_reg[18]~59\ $ (!\tao_gtc|delay_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tao_gtc|delay_reg\(19),
	cin => \tao_gtc|delay_reg[18]~59\,
	combout => \tao_gtc|delay_reg[19]~60_combout\);

-- Location: LCCOMB_X73_Y42_N26
\doc_ds18b20|J[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[6]~34_combout\ = (\doc_ds18b20|J\(6) & (\doc_ds18b20|J[5]~33\ $ (GND))) # (!\doc_ds18b20|J\(6) & (!\doc_ds18b20|J[5]~33\ & VCC))
-- \doc_ds18b20|J[6]~35\ = CARRY((\doc_ds18b20|J\(6) & !\doc_ds18b20|J[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datad => VCC,
	cin => \doc_ds18b20|J[5]~33\,
	combout => \doc_ds18b20|J[6]~34_combout\,
	cout => \doc_ds18b20|J[6]~35\);

-- Location: LCCOMB_X69_Y46_N30
\LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~1_combout\ = (!\dem_mode_10|q_reg\(3) & ((!\dem_mode_10|q_reg\(1)) # (!\dem_mode_10|q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(3),
	datac => \dem_mode_10|q_reg\(2),
	datad => \dem_mode_10|q_reg\(1),
	combout => \LessThan25~1_combout\);

-- Location: FF_X66_Y46_N13
\xung_ena|d1hz_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(3));

-- Location: FF_X66_Y46_N23
\xung_ena|d1hz_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(8));

-- Location: LCCOMB_X66_Y46_N4
\xung_ena|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~1_combout\ = (!\xung_ena|d1hz_reg\(8) & (!\xung_ena|d1hz_reg\(5) & (!\xung_ena|d1hz_reg\(4) & !\xung_ena|d1hz_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(8),
	datab => \xung_ena|d1hz_reg\(5),
	datac => \xung_ena|d1hz_reg\(4),
	datad => \xung_ena|d1hz_reg\(9),
	combout => \xung_ena|Equal0~1_combout\);

-- Location: FF_X66_Y45_N31
\xung_ena|d1hz_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(13));

-- Location: FF_X65_Y45_N13
\xung_ena|d1hz_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(21));

-- Location: FF_X66_Y45_N7
\xung_ena|d1hz_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(16));

-- Location: FF_X66_Y45_N11
\xung_ena|d1hz_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(18));

-- Location: LCCOMB_X65_Y45_N22
\xung_ena|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal16~1_combout\ = (\xung_ena|d1hz_reg\(16) & (!\xung_ena|d1hz_reg\(23) & (\xung_ena|d1hz_reg\(18) & !\xung_ena|d1hz_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(16),
	datab => \xung_ena|d1hz_reg\(23),
	datac => \xung_ena|d1hz_reg\(18),
	datad => \xung_ena|d1hz_reg\(17),
	combout => \xung_ena|Equal16~1_combout\);

-- Location: LCCOMB_X69_Y46_N6
\dem_mode_10|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|LessThan1~0_combout\ = ((!\dem_mode_10|q_reg\(0) & (!\dem_mode_10|q_reg\(2) & !\dem_mode_10|q_reg\(1)))) # (!\dem_mode_10|q_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(0),
	datab => \dem_mode_10|q_reg\(3),
	datac => \dem_mode_10|q_reg\(2),
	datad => \dem_mode_10|q_reg\(1),
	combout => \dem_mode_10|LessThan1~0_combout\);

-- Location: FF_X70_Y46_N11
\xung_ena|d50hz_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(6));

-- Location: FF_X70_Y46_N27
\xung_ena|d50hz_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(7));

-- Location: LCCOMB_X67_Y44_N26
\lcd_full|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal2~0_combout\ = (!\lcd_full|LCD_DELAY\(15) & (!\lcd_full|LCD_DELAY\(5) & (\lcd_full|LCD_DELAY\(2) & !\lcd_full|LCD_DELAY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(15),
	datab => \lcd_full|LCD_DELAY\(5),
	datac => \lcd_full|LCD_DELAY\(2),
	datad => \lcd_full|LCD_DELAY\(7),
	combout => \lcd_full|Equal2~0_combout\);

-- Location: LCCOMB_X67_Y43_N20
\lcd_full|LCD_ENABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_ENABLE~0_combout\ = (\lcd_full|Equal4~4_combout\ & (((\lcd_full|LCD_ENABLE~q\)))) # (!\lcd_full|Equal4~4_combout\ & (!\lcd_full|Equal2~3_combout\ & ((\lcd_full|LCD_ENABLE~q\) # (\lcd_full|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|LCD_ENABLE~q\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|LCD_ENABLE~0_combout\);

-- Location: LCCOMB_X66_Y43_N22
\lcd_full|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~0_combout\ = (!\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (!\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & !\lcd_full|LCD_STATE.LCD_DATA_L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datac => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|Selector28~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\lcd_full|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~1_combout\ = (\lcd_full|LCD_ENABLE~0_combout\ & ((!\lcd_full|Selector20~4_combout\) # (!\lcd_full|Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|Selector20~4_combout\,
	datac => \lcd_full|LCD_ENABLE~0_combout\,
	combout => \lcd_full|Selector28~1_combout\);

-- Location: LCCOMB_X66_Y41_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\tao_gtc|s_reg\(0) & (((!\thoi_gian|giay_reg\(0) & !\thoi_gian|giay_reg\(1))) # (!\thoi_gian|giay_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \thoi_gian|giay_reg\(2),
	datac => \thoi_gian|giay_reg\(1),
	datad => \tao_gtc|s_reg\(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y41_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\thoi_gian|giay_reg\(5) & (((\LessThan0~0_combout\) # (\tao_gtc|Mux2~0_combout\)) # (!\LessThan24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \LessThan24~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \tao_gtc|Mux2~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y41_N6
\lcd_full|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~4_combout\ = (!\LessThan0~2_combout\ & (\thoi_gian|giay_reg\(5) & (\giai_ma_bcd_giay|LessThan3~0_combout\ $ (!\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \lcd_full|Mux19~4_combout\);

-- Location: FF_X69_Y38_N27
\doc_ds18b20|TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|TEMP[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(7));

-- Location: LCCOMB_X70_Y41_N24
\h2_3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_3[0]~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\doc_ds18b20|TEMP\(4) $ (\giai_ma_bcd_ds|donvi[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \h2_3[0]~0_combout\);

-- Location: LCCOMB_X70_Y41_N30
\h2_3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_3[0]~1_combout\ = (\LessThan0~4_combout\ & ((\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\h2_3[0]~0_combout\))) # (!\doc_ds18b20|TEMP\(4) & ((\h2_3[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \LessThan0~4_combout\,
	datad => \h2_3[0]~0_combout\,
	combout => \h2_3[0]~1_combout\);

-- Location: LCCOMB_X69_Y41_N4
\giai_ma_soto_ds_chuc|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux11~0_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (!\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (!\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux11~0_combout\);

-- Location: LCCOMB_X69_Y41_N10
\giai_ma_soto_ds_chuc|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux11~1_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[1]~2_combout\) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & 
-- (((\giai_ma_bcd_ds|chuc[2]~0_combout\ & \giai_ma_bcd_ds|chuc[1]~2_combout\)) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux11~1_combout\);

-- Location: LCCOMB_X69_Y41_N0
\lcd_full|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~0_combout\ = (\lcd_full|Mux14~0_combout\ & ((\giai_ma_soto_ds_chuc|Add1~0_combout\ & ((\giai_ma_soto_ds_chuc|Mux11~0_combout\))) # (!\giai_ma_soto_ds_chuc|Add1~0_combout\ & (!\giai_ma_soto_ds_chuc|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_chuc|Mux11~1_combout\,
	datab => \lcd_full|Mux14~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux11~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Add1~0_combout\,
	combout => \lcd_full|Mux16~0_combout\);

-- Location: LCCOMB_X65_Y40_N14
\lcd_full|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\thoi_gian|giay_reg\(0) $ (((\giai_ma_bcd_giay|donvi[3]~2_combout\) # (\giai_ma_bcd_giay|donvi[1]~0_combout\))))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\thoi_gian|giay_reg\(0) 
-- & (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & \giai_ma_bcd_giay|donvi[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \lcd_full|Mux16~1_combout\);

-- Location: LCCOMB_X66_Y40_N24
\lcd_full|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~2_combout\ = (\giai_ma_soto_GIAY_CHUC|Add0~1_combout\ & (!\giai_ma_bcd_giay|chuc[0]~0_combout\)) # (!\giai_ma_soto_GIAY_CHUC|Add0~1_combout\ & ((\LessThan0~4_combout\ & ((\giai_ma_soto_GIAY_CHUC|Add0~0_combout\))) # (!\LessThan0~4_combout\ 
-- & (!\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\,
	datab => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Add0~0_combout\,
	combout => \lcd_full|Mux16~2_combout\);

-- Location: LCCOMB_X66_Y40_N26
\lcd_full|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~3_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & (((\LessThan0~4_combout\ & \lcd_full|Mux16~1_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|Mux16~2_combout\,
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux16~1_combout\,
	combout => \lcd_full|Mux16~3_combout\);

-- Location: LCCOMB_X69_Y41_N26
\lcd_full|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~4_combout\ = (\lcd_full|Mux16~0_combout\) # ((\lcd_full|LCD_DIS_PTR\(3) & \lcd_full|Mux16~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux16~3_combout\,
	datad => \lcd_full|Mux16~0_combout\,
	combout => \lcd_full|Mux16~4_combout\);

-- Location: LCCOMB_X67_Y39_N4
\lcd_full|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~2_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & (\LessThan0~4_combout\ & \lcd_full|LCD_DIS_PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|LCD_DIS_PTR\(2),
	combout => \lcd_full|Mux14~2_combout\);

-- Location: LCCOMB_X66_Y39_N16
\giai_ma_soto_gauy_donvi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux3~0_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[3]~2_combout\))))) # 
-- (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\thoi_gian|giay_reg\(0) $ (!\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y39_N26
\giai_ma_soto_gauy_donvi|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux3~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (((\thoi_gian|giay_reg\(0) & !\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\thoi_gian|giay_reg\(0)) # (\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux3~1_combout\);

-- Location: LCCOMB_X66_Y39_N12
\lcd_full|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~8_combout\ = (\lcd_full|Mux14~2_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((\giai_ma_soto_gauy_donvi|Mux3~0_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (\giai_ma_soto_gauy_donvi|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~2_combout\,
	datab => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux3~1_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux3~0_combout\,
	combout => \lcd_full|Mux16~8_combout\);

-- Location: LCCOMB_X66_Y41_N16
\giai_ma_soto_GIAY_CHUC|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux11~0_combout\ = (\giai_ma_bcd_giay|chuc[0]~0_combout\ & (\thoi_gian|giay_reg\(5) & ((\thoi_gian|giay_reg\(3)) # (\thoi_gian|giay_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datab => \thoi_gian|giay_reg\(4),
	datac => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datad => \thoi_gian|giay_reg\(5),
	combout => \giai_ma_soto_GIAY_CHUC|Mux11~0_combout\);

-- Location: LCCOMB_X67_Y39_N2
\giai_ma_bcd_phut|hex_bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|hex_bcd~0_combout\ = (\thoi_gian|phut_reg\(3) & (!\thoi_gian|phut_reg\(5) & ((\thoi_gian|phut_reg\(2)) # (!\thoi_gian|phut_reg\(4))))) # (!\thoi_gian|phut_reg\(3) & (\thoi_gian|phut_reg\(5) & ((\thoi_gian|phut_reg\(4)) # 
-- (!\thoi_gian|phut_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(2),
	datab => \thoi_gian|phut_reg\(3),
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \giai_ma_bcd_phut|hex_bcd~0_combout\);

-- Location: LCCOMB_X66_Y39_N24
\giai_ma_soto_gauy_donvi|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux11~0_combout\ = (\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\thoi_gian|giay_reg\(0))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((!\giai_ma_bcd_giay|donvi[3]~2_combout\))))) # 
-- (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\thoi_gian|giay_reg\(0) & ((!\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux11~0_combout\);

-- Location: LCCOMB_X66_Y39_N2
\giai_ma_soto_gauy_donvi|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux11~1_combout\ = (\thoi_gian|giay_reg\(0) & (((!\giai_ma_bcd_giay|donvi[1]~0_combout\ & \giai_ma_bcd_giay|donvi[2]~1_combout\)) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\))) # (!\thoi_gian|giay_reg\(0) & 
-- (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux11~1_combout\);

-- Location: LCCOMB_X67_Y39_N8
\h1_15[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_15[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add1~0_combout\ & (\giai_ma_soto_gauy_donvi|Mux11~0_combout\)) # (!\giai_ma_soto_gauy_donvi|Add1~0_combout\ & ((!\giai_ma_soto_gauy_donvi|Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux11~0_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add1~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux11~1_combout\,
	combout => \h1_15[0]~0_combout\);

-- Location: LCCOMB_X68_Y43_N26
\lcd_full|Selector37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~5_combout\ = (\lcd_full|LCD_CMD_PTR\(0) & \lcd_full|LCD_CMD_PTR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|LCD_CMD_PTR\(1),
	combout => \lcd_full|Selector37~5_combout\);

-- Location: LCCOMB_X67_Y41_N20
\h1_11[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_11[1]~3_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (((\thoi_gian|giay_reg\(5)) # (!\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & ((\LessThan0~2_combout\ $ (\giai_ma_bcd_giay|chuc[0]~0_combout\)) # 
-- (!\thoi_gian|giay_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \h1_11[1]~3_combout\);

-- Location: LCCOMB_X67_Y39_N10
\giai_ma_bcd_phut|hex_bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|hex_bcd~3_combout\ = (\thoi_gian|phut_reg\(3) & (((!\thoi_gian|phut_reg\(2) & \thoi_gian|phut_reg\(5))) # (!\thoi_gian|phut_reg\(4)))) # (!\thoi_gian|phut_reg\(3) & ((\thoi_gian|phut_reg\(5) & ((\thoi_gian|phut_reg\(4)))) # 
-- (!\thoi_gian|phut_reg\(5) & ((!\thoi_gian|phut_reg\(4)) # (!\thoi_gian|phut_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(2),
	datab => \thoi_gian|phut_reg\(3),
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \giai_ma_bcd_phut|hex_bcd~3_combout\);

-- Location: LCCOMB_X70_Y39_N8
\giai_ma_soto_ds_donvi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux2~0_combout\ = (\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\doc_ds18b20|TEMP\(4)) # (\giai_ma_bcd_ds|donvi[2]~0_combout\ $ (\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & 
-- (((\giai_ma_bcd_ds|donvi[2]~0_combout\) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y39_N6
\giai_ma_soto_ds_donvi|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux2~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((!\giai_ma_bcd_ds|donvi[3]~1_combout\))))) # 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux2~1_combout\);

-- Location: LCCOMB_X70_Y39_N20
\h1_3[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_3[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~2_combout\ & (!\giai_ma_soto_ds_donvi|Mux2~1_combout\)) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & ((\giai_ma_soto_ds_donvi|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Mux2~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux2~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	combout => \h1_3[1]~1_combout\);

-- Location: LCCOMB_X70_Y39_N10
\lcd_full|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~0_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & (((\lcd_full|LCD_DIS_PTR\(3))) # (!\giai_ma_bcd_phut|hex_bcd~3_combout\))) # (!\lcd_full|LCD_DIS_PTR\(2) & (((!\lcd_full|LCD_DIS_PTR\(3) & \h1_3[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \giai_ma_bcd_phut|hex_bcd~3_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(3),
	datad => \h1_3[1]~1_combout\,
	combout => \lcd_full|Mux15~0_combout\);

-- Location: LCCOMB_X66_Y39_N28
\giai_ma_soto_gauy_donvi|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux10~0_combout\ = (\giai_ma_bcd_giay|donvi[1]~0_combout\ & (((\giai_ma_bcd_giay|donvi[3]~2_combout\)) # (!\thoi_gian|giay_reg\(0)))) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\thoi_gian|giay_reg\(0) $ 
-- (\giai_ma_bcd_giay|donvi[3]~2_combout\)) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y39_N22
\giai_ma_soto_gauy_donvi|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux10~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (((\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & 
-- ((\giai_ma_bcd_giay|donvi[3]~2_combout\) # (!\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux10~1_combout\);

-- Location: LCCOMB_X67_Y39_N24
\h1_15[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_15[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add1~0_combout\ & (!\giai_ma_soto_gauy_donvi|Mux10~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add1~0_combout\ & ((\giai_ma_soto_gauy_donvi|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux10~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add1~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux10~0_combout\,
	combout => \h1_15[1]~1_combout\);

-- Location: LCCOMB_X70_Y39_N28
\lcd_full|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~1_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux15~0_combout\ & ((\h1_15[1]~1_combout\))) # (!\lcd_full|Mux15~0_combout\ & (\h1_11[1]~5_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((\lcd_full|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \h1_11[1]~5_combout\,
	datac => \h1_15[1]~1_combout\,
	datad => \lcd_full|Mux15~0_combout\,
	combout => \lcd_full|Mux15~1_combout\);

-- Location: LCCOMB_X70_Y39_N30
\lcd_full|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~0_combout\ = (\lcd_full|Selector37~1_combout\ & (((\lcd_full|Mux15~1_combout\) # (!\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~1_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|LCD_DIS_PTR\(0),
	datad => \lcd_full|Mux15~1_combout\,
	combout => \lcd_full|Selector36~0_combout\);

-- Location: LCCOMB_X67_Y38_N30
\giai_ma_soto_ds_donvi|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux6~1_combout\ = (\doc_ds18b20|TEMP\(4) & (((!\giai_ma_bcd_ds|donvi[3]~1_combout\) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & 
-- ((\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux6~1_combout\);

-- Location: LCCOMB_X66_Y40_N14
\giai_ma_soto_GIAY_CHUC|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux10~1_combout\ = (\giai_ma_bcd_giay|chuc[0]~0_combout\ & ((\thoi_gian|giay_reg\(5) & (\giai_ma_bcd_giay|LessThan3~0_combout\ & \LessThan0~2_combout\)) # (!\thoi_gian|giay_reg\(5) & (!\giai_ma_bcd_giay|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux10~1_combout\);

-- Location: LCCOMB_X65_Y40_N16
\giai_ma_soto_gauy_donvi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux6~0_combout\ = (\thoi_gian|giay_reg\(0) & (((!\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[3]~2_combout\) # (\giai_ma_bcd_giay|donvi[2]~1_combout\ $ 
-- (!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y38_N14
\giai_ma_soto_ds_chuc|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux6~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & (((\giai_ma_bcd_ds|chuc[0]~3_combout\)))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (\giai_ma_bcd_ds|chuc[1]~2_combout\)) # 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y38_N28
\giai_ma_soto_ds_chuc|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux6~1_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\)))) # 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\) # ((!\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux6~1_combout\);

-- Location: LCCOMB_X66_Y38_N22
\lcd_full|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~9_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & ((\giai_ma_soto_ds_chuc|Add0~2_combout\ & ((!\giai_ma_soto_ds_chuc|Mux6~1_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~2_combout\ & (\giai_ma_soto_ds_chuc|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \giai_ma_soto_ds_chuc|Mux6~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux6~1_combout\,
	combout => \lcd_full|Mux15~9_combout\);

-- Location: LCCOMB_X70_Y40_N24
\giai_ma_soto_ds_donvi|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux22~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (\doc_ds18b20|TEMP\(4) $ (!\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & 
-- ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # ((\doc_ds18b20|TEMP\(4) & \giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux22~1_combout\);

-- Location: LCCOMB_X67_Y42_N22
\giai_ma_soto_GIAY_CHUC|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux14~0_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (\thoi_gian|giay_reg\(5) & (\LessThan0~2_combout\ $ (!\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & (((!\thoi_gian|giay_reg\(5) & 
-- \giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux14~0_combout\);

-- Location: LCCOMB_X67_Y42_N28
\giai_ma_soto_GIAY_CHUC|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux14~1_combout\ = (\LessThan0~2_combout\ & (((!\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\LessThan0~2_combout\ & ((\thoi_gian|giay_reg\(5) & (!\giai_ma_bcd_giay|LessThan3~0_combout\)) # (!\thoi_gian|giay_reg\(5) & 
-- ((!\giai_ma_bcd_giay|chuc[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux14~1_combout\);

-- Location: LCCOMB_X67_Y42_N30
\lcd_full|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~2_combout\ = (!\lcd_full|LCD_DIS_PTR\(0) & ((\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & (\giai_ma_soto_GIAY_CHUC|Mux14~0_combout\)) # (!\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & ((\giai_ma_soto_GIAY_CHUC|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \giai_ma_soto_GIAY_CHUC|Add1~1_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Mux14~0_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Mux14~1_combout\,
	combout => \lcd_full|Mux23~2_combout\);

-- Location: LCCOMB_X67_Y41_N14
\lcd_full|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~3_combout\ = (\lcd_full|Mux24~6_combout\ & ((\lcd_full|Mux23~2_combout\) # ((!\lcd_full|Mux19~4_combout\ & \lcd_full|LCD_DIS_PTR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux19~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|Mux23~2_combout\,
	datad => \lcd_full|Mux24~6_combout\,
	combout => \lcd_full|Mux23~3_combout\);

-- Location: LCCOMB_X69_Y39_N14
\giai_ma_soto_ds_donvi|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux14~0_combout\ = (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # 
-- (!\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\ $ (!\giai_ma_bcd_ds|donvi[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux14~0_combout\);

-- Location: LCCOMB_X69_Y39_N20
\giai_ma_soto_ds_donvi|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux14~1_combout\ = (\giai_ma_bcd_ds|donvi[3]~1_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) $ (\giai_ma_bcd_ds|donvi[2]~0_combout\)))) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & 
-- ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux14~1_combout\);

-- Location: LCCOMB_X70_Y38_N30
\h2_3[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_3[1]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add1~0_combout\ & (\giai_ma_soto_ds_donvi|Mux14~0_combout\)) # (!\giai_ma_soto_ds_donvi|Add1~0_combout\ & ((!\giai_ma_soto_ds_donvi|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Add1~0_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux14~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux14~1_combout\,
	combout => \h2_3[1]~2_combout\);

-- Location: LCCOMB_X66_Y39_N20
\giai_ma_soto_gauy_donvi|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux14~0_combout\ = (\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\giai_ma_bcd_giay|donvi[3]~2_combout\))))) # 
-- (!\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\giai_ma_bcd_giay|donvi[2]~1_combout\ $ (!\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux14~0_combout\);

-- Location: LCCOMB_X66_Y39_N18
\giai_ma_soto_gauy_donvi|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux14~1_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\thoi_gian|giay_reg\(0) $ (\giai_ma_bcd_giay|donvi[2]~1_combout\)))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux14~1_combout\);

-- Location: LCCOMB_X66_Y39_N8
\h2_13[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_13[1]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add1~0_combout\ & ((\giai_ma_soto_gauy_donvi|Mux14~0_combout\))) # (!\giai_ma_soto_gauy_donvi|Add1~0_combout\ & (!\giai_ma_soto_gauy_donvi|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux14~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add1~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux14~0_combout\,
	combout => \h2_13[1]~2_combout\);

-- Location: LCCOMB_X66_Y39_N30
\giai_ma_soto_gauy_donvi|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux22~0_combout\ = (\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[3]~2_combout\ $ (((\giai_ma_bcd_giay|donvi[1]~0_combout\ & !\giai_ma_bcd_giay|donvi[2]~1_combout\))))) # (!\thoi_gian|giay_reg\(0) & 
-- (((\giai_ma_bcd_giay|donvi[2]~1_combout\) # (\giai_ma_bcd_giay|donvi[3]~2_combout\)) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux22~0_combout\);

-- Location: LCCOMB_X69_Y44_N10
\lcd_full|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux7~0_combout\ = (!\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(4) & (!\lcd_full|LCD_CGRAM_PTR\(2) & !\lcd_full|LCD_CGRAM_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux7~0_combout\);

-- Location: LCCOMB_X69_Y44_N24
\lcd_full|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux7~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(5) & (((\lcd_full|LCD_CGRAM_PTR\(3))))) # (!\lcd_full|LCD_CGRAM_PTR\(5) & ((\lcd_full|LCD_CGRAM_PTR\(3) & ((!\lcd_full|Mux8~2_combout\))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & 
-- (!\lcd_full|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux7~0_combout\,
	datab => \lcd_full|Mux8~2_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|LCD_CGRAM_PTR\(3),
	combout => \lcd_full|Mux7~1_combout\);

-- Location: LCCOMB_X69_Y44_N6
\lcd_full|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux7~2_combout\ = (\lcd_full|LCD_CGRAM_PTR\(1) & (!\lcd_full|LCD_CGRAM_PTR\(4) & (\lcd_full|LCD_CGRAM_PTR\(2) & \lcd_full|LCD_CGRAM_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux7~2_combout\);

-- Location: LCCOMB_X69_Y44_N12
\lcd_full|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux7~3_combout\ = (\lcd_full|Mux7~1_combout\ & (((!\lcd_full|LCD_CGRAM_PTR\(5))) # (!\lcd_full|Mux7~2_combout\))) # (!\lcd_full|Mux7~1_combout\ & (((\lcd_full|LCD_CGRAM_PTR\(5) & !\lcd_full|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux7~2_combout\,
	datab => \lcd_full|Mux7~1_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~1_combout\,
	combout => \lcd_full|Mux7~3_combout\);

-- Location: LCCOMB_X68_Y43_N16
\lcd_full|Selector36~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~7_combout\ = (\lcd_full|LCD_CMD_PTR\(2) & ((\lcd_full|Selector37~4_combout\) # ((\lcd_full|Mux7~3_combout\ & \lcd_full|Selector37~6_combout\)))) # (!\lcd_full|LCD_CMD_PTR\(2) & (((\lcd_full|Mux7~3_combout\ & 
-- \lcd_full|Selector37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(2),
	datab => \lcd_full|Selector37~4_combout\,
	datac => \lcd_full|Mux7~3_combout\,
	datad => \lcd_full|Selector37~6_combout\,
	combout => \lcd_full|Selector36~7_combout\);

-- Location: LCCOMB_X65_Y40_N0
\giai_ma_soto_gauy_donvi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux5~0_combout\ = (\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[2]~1_combout\ $ (\giai_ma_bcd_giay|donvi[3]~2_combout\)) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\))) # (!\thoi_gian|giay_reg\(0) & 
-- ((\giai_ma_bcd_giay|donvi[3]~2_combout\ & (!\giai_ma_bcd_giay|donvi[2]~1_combout\)) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((!\giai_ma_bcd_giay|donvi[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y40_N26
\giai_ma_soto_gauy_donvi|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux5~1_combout\ = (\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\giai_ma_bcd_giay|donvi[2]~1_combout\) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\thoi_gian|giay_reg\(0) & 
-- (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\giai_ma_bcd_giay|donvi[2]~1_combout\ $ (!\giai_ma_bcd_giay|donvi[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y40_N12
\lcd_full|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~6_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\giai_ma_soto_gauy_donvi|Add0~0_combout\ & ((\giai_ma_soto_gauy_donvi|Mux5~0_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~0_combout\ & (\giai_ma_soto_gauy_donvi|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Mux5~1_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux5~0_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \giai_ma_soto_gauy_donvi|Add0~0_combout\,
	combout => \lcd_full|Mux14~6_combout\);

-- Location: LCCOMB_X69_Y40_N12
\giai_ma_soto_ds_donvi|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux9~1_combout\ = ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # ((!\doc_ds18b20|TEMP\(4) & \giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux9~1_combout\);

-- Location: LCCOMB_X66_Y39_N4
\giai_ma_soto_gauy_donvi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux1~0_combout\ = (\giai_ma_bcd_giay|donvi[1]~0_combout\ & (((\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (\thoi_gian|giay_reg\(0))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((!\giai_ma_bcd_giay|donvi[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y39_N10
\giai_ma_soto_gauy_donvi|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux1~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\) # ((\giai_ma_bcd_giay|donvi[3]~2_combout\) # ((\thoi_gian|giay_reg\(0) & !\giai_ma_bcd_giay|donvi[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux1~1_combout\);

-- Location: LCCOMB_X66_Y39_N0
\lcd_full|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~12_combout\ = (\lcd_full|Mux14~2_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (!\giai_ma_soto_gauy_donvi|Mux1~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((\giai_ma_soto_gauy_donvi|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Mux1~1_combout\,
	datab => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux1~0_combout\,
	datad => \lcd_full|Mux14~2_combout\,
	combout => \lcd_full|Mux14~12_combout\);

-- Location: LCCOMB_X66_Y39_N14
\h1_11[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_11[2]~4_combout\ = (\LessThan0~4_combout\ & (\giai_ma_soto_GIAY_CHUC|Add0~1_combout\ $ ((\giai_ma_soto_GIAY_CHUC|Mux7~2_combout\)))) # (!\LessThan0~4_combout\ & (((\giai_ma_bcd_giay|donvi[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\,
	datab => \giai_ma_soto_GIAY_CHUC|Mux7~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \h1_11[2]~4_combout\);

-- Location: LCCOMB_X67_Y42_N8
\lcd_full|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~0_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (((!\thoi_gian|giay_reg\(5) & !\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & (\thoi_gian|giay_reg\(5) & (\LessThan0~2_combout\ $ 
-- (\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \lcd_full|Mux22~0_combout\);

-- Location: LCCOMB_X67_Y42_N10
\lcd_full|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~1_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (\giai_ma_bcd_giay|chuc[0]~0_combout\ & ((!\thoi_gian|giay_reg\(5)) # (!\LessThan0~2_combout\)))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & (\thoi_gian|giay_reg\(5) & 
-- ((\giai_ma_bcd_giay|chuc[0]~0_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \lcd_full|Mux22~1_combout\);

-- Location: LCCOMB_X67_Y42_N0
\lcd_full|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~2_combout\ = \lcd_full|Mux22~1_combout\ $ (((\giai_ma_soto_GIAY_CHUC|Add1~2_combout\ & !\lcd_full|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_soto_GIAY_CHUC|Add1~2_combout\,
	datac => \lcd_full|Mux22~0_combout\,
	datad => \lcd_full|Mux22~1_combout\,
	combout => \lcd_full|Mux22~2_combout\);

-- Location: LCCOMB_X67_Y42_N14
\lcd_full|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~3_combout\ = (\lcd_full|Mux24~6_combout\ & ((\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|Mux22~0_combout\ & !\lcd_full|Mux22~2_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|Mux24~6_combout\,
	datac => \lcd_full|Mux22~0_combout\,
	datad => \lcd_full|Mux22~2_combout\,
	combout => \lcd_full|Mux22~3_combout\);

-- Location: LCCOMB_X68_Y40_N16
\giai_ma_soto_ds_donvi|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux17~1_combout\ = (\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & (!\doc_ds18b20|TEMP\(4) & \giai_ma_bcd_ds|donvi[2]~0_combout\)) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) & 
-- !\giai_ma_bcd_ds|donvi[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux17~1_combout\);

-- Location: LCCOMB_X68_Y40_N26
\lcd_full|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~6_combout\ = (!\lcd_full|LCD_DIS_PTR\(0) & (\giai_ma_soto_ds_donvi|Mux17~1_combout\ & \giai_ma_soto_ds_donvi|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \giai_ma_soto_ds_donvi|Mux17~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	combout => \lcd_full|Mux22~6_combout\);

-- Location: LCCOMB_X65_Y39_N8
\giai_ma_soto_gauy_donvi|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux17~0_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\thoi_gian|giay_reg\(0) & 
-- (\giai_ma_bcd_giay|donvi[2]~1_combout\ & \giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux17~0_combout\);

-- Location: LCCOMB_X65_Y39_N2
\giai_ma_soto_gauy_donvi|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux17~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (((\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[1]~0_combout\))) # 
-- (!\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[3]~2_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux17~1_combout\);

-- Location: LCCOMB_X65_Y39_N12
\h2_14[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_14[2]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (\giai_ma_soto_gauy_donvi|Mux17~0_combout\)) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((\giai_ma_soto_gauy_donvi|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux17~0_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux17~1_combout\,
	combout => \h2_14[2]~1_combout\);

-- Location: LCCOMB_X66_Y40_N6
\h2_12[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_12[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_bcd_giay|chuc[0]~0_combout\ $ (\giai_ma_soto_GIAY_CHUC|Add0~0_combout\)) # (!\giai_ma_soto_GIAY_CHUC|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\,
	datab => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Add0~0_combout\,
	combout => \h2_12[2]~2_combout\);

-- Location: LCCOMB_X65_Y40_N10
\lcd_full|Mux22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~11_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|LCD_DIS_PTR\(0)) # (\h2_14[2]~1_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(1) & (\h2_12[2]~2_combout\ & (!\lcd_full|LCD_DIS_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h2_12[2]~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|LCD_DIS_PTR\(0),
	datad => \h2_14[2]~1_combout\,
	combout => \lcd_full|Mux22~11_combout\);

-- Location: LCCOMB_X65_Y39_N6
\giai_ma_soto_gauy_donvi|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux21~1_combout\ = (\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\giai_ma_bcd_giay|donvi[3]~2_combout\ $ (\giai_ma_bcd_giay|donvi[1]~0_combout\)))) # (!\thoi_gian|giay_reg\(0) & 
-- (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux21~1_combout\);

-- Location: LCCOMB_X68_Y39_N8
\lcd_full|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux13~0_combout\ = (\giai_ma_bcd_phut|hex_bcd~0_combout\ & (\giai_ma_bcd_phut|hex_bcd~2_combout\ & ((!\thoi_gian|phut_reg\(1))))) # (!\giai_ma_bcd_phut|hex_bcd~0_combout\ & (\giai_ma_bcd_phut|hex_bcd~1_combout\ & ((\thoi_gian|phut_reg\(1)) # 
-- (!\giai_ma_bcd_phut|hex_bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_phut|hex_bcd~0_combout\,
	datab => \giai_ma_bcd_phut|hex_bcd~2_combout\,
	datac => \giai_ma_bcd_phut|hex_bcd~1_combout\,
	datad => \thoi_gian|phut_reg\(1),
	combout => \lcd_full|Mux13~0_combout\);

-- Location: LCCOMB_X69_Y44_N28
\lcd_full|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux5~0_combout\ = (\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(0) & (\lcd_full|LCD_CGRAM_PTR\(4) $ (\lcd_full|LCD_CGRAM_PTR\(2))))) # (!\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(4) & (\lcd_full|LCD_CGRAM_PTR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y44_N26
\lcd_full|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux5~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(3) & (((\lcd_full|LCD_CGRAM_PTR\(5)) # (!\lcd_full|Mux8~2_combout\)))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & (!\lcd_full|Mux5~0_combout\ & (\lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datab => \lcd_full|Mux5~0_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~2_combout\,
	combout => \lcd_full|Mux5~1_combout\);

-- Location: LCCOMB_X69_Y42_N8
\lcd_full|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux5~2_combout\ = (\lcd_full|LCD_CGRAM_PTR\(1)) # ((\lcd_full|LCD_CGRAM_PTR\(4)) # ((\lcd_full|LCD_CGRAM_PTR\(2)) # (\lcd_full|LCD_CGRAM_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux5~2_combout\);

-- Location: LCCOMB_X69_Y42_N26
\lcd_full|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux5~3_combout\ = (\lcd_full|Mux5~1_combout\) # ((!\lcd_full|LCD_CGRAM_PTR\(3) & (\lcd_full|Mux5~2_combout\ & !\lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux5~1_combout\,
	datab => \lcd_full|LCD_CGRAM_PTR\(3),
	datac => \lcd_full|Mux5~2_combout\,
	datad => \lcd_full|LCD_CGRAM_PTR\(5),
	combout => \lcd_full|Mux5~3_combout\);

-- Location: LCCOMB_X66_Y43_N14
\lcd_full|Selector32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~3_combout\ = (\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\) # ((\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\) # ((\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\) # (\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector32~3_combout\);

-- Location: LCCOMB_X67_Y43_N12
\lcd_full|Selector32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~4_combout\ = ((!\lcd_full|Selector37~0_combout\ & ((\lcd_full|Selector32~3_combout\) # (!\lcd_full|Selector25~1_combout\)))) # (!\lcd_full|Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~0_combout\,
	datab => \lcd_full|Selector25~1_combout\,
	datac => \lcd_full|Selector29~0_combout\,
	datad => \lcd_full|Selector32~3_combout\,
	combout => \lcd_full|Selector32~4_combout\);

-- Location: LCCOMB_X68_Y38_N6
\lcd_full|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~4_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (\giai_ma_bcd_ds|chuc[3]~1_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & !\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \lcd_full|Mux11~4_combout\);

-- Location: LCCOMB_X67_Y43_N6
\lcd_full|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector31~1_combout\ = (!\lcd_full|Equal2~3_combout\ & (!\lcd_full|Equal4~4_combout\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Selector31~0_combout\,
	combout => \lcd_full|Selector31~1_combout\);

-- Location: LCCOMB_X66_Y43_N12
\lcd_full|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector30~0_combout\ = (\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\) # (\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector30~0_combout\);

-- Location: LCCOMB_X65_Y45_N30
\xung_ena|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~6_combout\ = (!\xung_ena|d1hz_reg\(16) & (\xung_ena|d1hz_reg\(23) & (!\xung_ena|d1hz_reg\(18) & \xung_ena|d1hz_reg\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(16),
	datab => \xung_ena|d1hz_reg\(23),
	datac => \xung_ena|d1hz_reg\(18),
	datad => \xung_ena|d1hz_reg\(17),
	combout => \xung_ena|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y45_N30
\xung_ena|d1hz_next[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[13]~1_combout\ = (\xung_ena|Add0~26_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Add0~26_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[13]~1_combout\);

-- Location: LCCOMB_X65_Y45_N12
\xung_ena|d1hz_next[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[21]~5_combout\ = (\xung_ena|Add0~42_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Add0~42_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[21]~5_combout\);

-- Location: LCCOMB_X69_Y45_N14
\xung_ena|Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~5_combout\ = (\xung_ena|d50hz_reg\(14) & (\xung_ena|d50hz_reg\(19) & (!\xung_ena|d50hz_reg\(15) & !\xung_ena|d50hz_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(14),
	datab => \xung_ena|d50hz_reg\(19),
	datac => \xung_ena|d50hz_reg\(15),
	datad => \xung_ena|d50hz_reg\(13),
	combout => \xung_ena|Equal12~5_combout\);

-- Location: LCCOMB_X70_Y46_N10
\xung_ena|d50hz_next[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[6]~1_combout\ = (\xung_ena|Add12~10_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Add12~10_combout\,
	datac => \xung_ena|Equal12~4_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[6]~1_combout\);

-- Location: LCCOMB_X70_Y43_N26
\lcd_full|Selector25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~6_combout\ = (\lcd_full|Equal6~0_combout\ & \lcd_full|Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|Equal6~0_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector25~6_combout\);

-- Location: LCCOMB_X70_Y39_N12
\lcd_full|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Add3~0_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(2) & \lcd_full|LCD_DIS_PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|LCD_DIS_PTR\(1),
	combout => \lcd_full|Add3~0_combout\);

-- Location: LCCOMB_X69_Y38_N26
\doc_ds18b20|TEMP[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[7]~4_combout\ = (\doc_ds18b20|Decoder0~9_combout\ & ((\doc_ds18b20|Decoder0~2_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Decoder0~2_combout\ & ((\doc_ds18b20|TEMP\(7)))))) # (!\doc_ds18b20|Decoder0~9_combout\ & 
-- (((\doc_ds18b20|TEMP\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Decoder0~9_combout\,
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|TEMP\(7),
	datad => \doc_ds18b20|Decoder0~2_combout\,
	combout => \doc_ds18b20|TEMP[7]~4_combout\);

-- Location: LCCOMB_X72_Y38_N26
\doc_ds18b20|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~8_combout\ = (\doc_ds18b20|RD_PTR\(0) & (!\doc_ds18b20|RD_PTR\(1) & \doc_ds18b20|RD_PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|RD_PTR\(0),
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(2),
	combout => \doc_ds18b20|Decoder0~8_combout\);

-- Location: LCCOMB_X74_Y45_N26
\tao_gtc|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector1~0_combout\ = (!\tao_gtc|btn_reg.zero~q\ & (!\btn_n[1]~input_o\ & !\tao_gtc|btn_reg.wait0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|btn_reg.zero~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.wait0~q\,
	combout => \tao_gtc|Selector1~0_combout\);

-- Location: LCCOMB_X73_Y45_N24
\tao_gtc|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~0_combout\ = (!\tao_gtc|delay_reg\(16) & (!\tao_gtc|delay_reg\(19) & (!\tao_gtc|delay_reg\(17) & !\tao_gtc|delay_reg\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(16),
	datab => \tao_gtc|delay_reg\(19),
	datac => \tao_gtc|delay_reg\(17),
	datad => \tao_gtc|delay_reg\(18),
	combout => \tao_gtc|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y46_N0
\tao_gtc|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~1_combout\ = (!\tao_gtc|delay_reg\(0) & (!\tao_gtc|delay_reg\(3) & (!\tao_gtc|delay_reg\(1) & !\tao_gtc|delay_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(0),
	datab => \tao_gtc|delay_reg\(3),
	datac => \tao_gtc|delay_reg\(1),
	datad => \tao_gtc|delay_reg\(2),
	combout => \tao_gtc|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y46_N10
\tao_gtc|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~2_combout\ = (!\tao_gtc|delay_reg\(7) & !\tao_gtc|delay_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tao_gtc|delay_reg\(7),
	datad => \tao_gtc|delay_reg\(6),
	combout => \tao_gtc|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y46_N4
\tao_gtc|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~3_combout\ = (\tao_gtc|Equal0~2_combout\ & (\tao_gtc|Equal0~1_combout\ & (!\tao_gtc|delay_reg\(5) & !\tao_gtc|delay_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~2_combout\,
	datab => \tao_gtc|Equal0~1_combout\,
	datac => \tao_gtc|delay_reg\(5),
	datad => \tao_gtc|delay_reg\(4),
	combout => \tao_gtc|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y45_N22
\tao_gtc|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~4_combout\ = (!\tao_gtc|delay_reg\(8) & (!\tao_gtc|delay_reg\(11) & (!\tao_gtc|delay_reg\(9) & !\tao_gtc|delay_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(8),
	datab => \tao_gtc|delay_reg\(11),
	datac => \tao_gtc|delay_reg\(9),
	datad => \tao_gtc|delay_reg\(10),
	combout => \tao_gtc|Equal0~4_combout\);

-- Location: LCCOMB_X73_Y45_N28
\tao_gtc|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~5_combout\ = (!\tao_gtc|delay_reg\(15) & (!\tao_gtc|delay_reg\(12) & (!\tao_gtc|delay_reg\(14) & !\tao_gtc|delay_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|delay_reg\(15),
	datab => \tao_gtc|delay_reg\(12),
	datac => \tao_gtc|delay_reg\(14),
	datad => \tao_gtc|delay_reg\(13),
	combout => \tao_gtc|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y45_N26
\tao_gtc|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Equal0~6_combout\ = (\tao_gtc|Equal0~3_combout\ & (\tao_gtc|Equal0~5_combout\ & (\tao_gtc|Equal0~4_combout\ & \tao_gtc|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~3_combout\,
	datab => \tao_gtc|Equal0~5_combout\,
	datac => \tao_gtc|Equal0~4_combout\,
	datad => \tao_gtc|Equal0~0_combout\,
	combout => \tao_gtc|Equal0~6_combout\);

-- Location: LCCOMB_X74_Y45_N30
\tao_gtc|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~2_combout\ = ((\tao_gtc|btn_reg.wait0~q\ & ((\tao_gtc|Equal0~6_combout\) # (!\btn_n[1]~input_o\)))) # (!\tao_gtc|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~6_combout\,
	datab => \tao_gtc|Selector0~1_combout\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.wait0~q\,
	combout => \tao_gtc|Selector0~2_combout\);

-- Location: FF_X72_Y40_N21
\doc_ds18b20|WR_BIT_0_I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_BIT_0_I[1]~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BIT_0_I\(1));

-- Location: LCCOMB_X74_Y40_N22
\doc_ds18b20|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~1_combout\ = (\doc_ds18b20|STATE.RESET~q\ & ((\doc_ds18b20|STATE.WRITE_BIT_1~q\ & ((\doc_ds18b20|STATE_WR_BIT_0\(1)))) # (!\doc_ds18b20|STATE.WRITE_BIT_1~q\ & (\doc_ds18b20|WR_BIT_0_I\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(1),
	datab => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datac => \doc_ds18b20|STATE.RESET~q\,
	datad => \doc_ds18b20|STATE_WR_BIT_0\(1),
	combout => \doc_ds18b20|Selector29~1_combout\);

-- Location: LCCOMB_X76_Y40_N10
\doc_ds18b20|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~0_combout\ = (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & (!\doc_ds18b20|STATE.WRITE_BIT_1~q\ & \doc_ds18b20|STATE.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datab => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datad => \doc_ds18b20|STATE.RESET~q\,
	combout => \doc_ds18b20|Selector2~0_combout\);

-- Location: LCCOMB_X75_Y40_N0
\doc_ds18b20|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~2_combout\ = (!\doc_ds18b20|Selector2~0_combout\ & ((\doc_ds18b20|J[17]~21_combout\) # (\doc_ds18b20|Selector29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J[17]~21_combout\,
	datac => \doc_ds18b20|Selector2~0_combout\,
	datad => \doc_ds18b20|Selector29~1_combout\,
	combout => \doc_ds18b20|Selector29~2_combout\);

-- Location: FF_X75_Y40_N11
\doc_ds18b20|STATE.READ_SCRATCHPAD_BE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector29~6_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\);

-- Location: LCCOMB_X76_Y40_N20
\doc_ds18b20|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WideOr5~0_combout\ = (\doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\) # ((\doc_ds18b20|STATE.CONVERT_T_44~q\) # (\doc_ds18b20|STATE.SKIP_ROM_CC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\,
	datab => \doc_ds18b20|STATE.CONVERT_T_44~q\,
	datad => \doc_ds18b20|STATE.SKIP_ROM_CC~q\,
	combout => \doc_ds18b20|WideOr5~0_combout\);

-- Location: LCCOMB_X75_Y40_N12
\doc_ds18b20|Selector29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~4_combout\ = (\doc_ds18b20|WR_STATE_I\(1) & (\doc_ds18b20|Selector29~0_combout\ & ((\doc_ds18b20|Selector29~2_combout\) # (!\doc_ds18b20|Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector29~3_combout\,
	datab => \doc_ds18b20|WR_STATE_I\(1),
	datac => \doc_ds18b20|Selector29~0_combout\,
	datad => \doc_ds18b20|Selector29~2_combout\,
	combout => \doc_ds18b20|Selector29~4_combout\);

-- Location: LCCOMB_X74_Y45_N12
\tao_gtc|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector2~0_combout\ = (\tao_gtc|Selector0~3_combout\ & ((\tao_gtc|Selector0~2_combout\))) # (!\tao_gtc|Selector0~3_combout\ & (\tao_gtc|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector0~0_combout\,
	datab => \tao_gtc|Selector0~3_combout\,
	datac => \tao_gtc|Selector0~2_combout\,
	combout => \tao_gtc|Selector2~0_combout\);

-- Location: LCCOMB_X74_Y45_N22
\tao_gtc|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~6_combout\ = (\tao_gtc|btn_reg.one~q\) # (!\tao_gtc|btn_reg.zero~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tao_gtc|btn_reg.zero~q\,
	datad => \tao_gtc|btn_reg.one~q\,
	combout => \tao_gtc|Selector0~6_combout\);

-- Location: LCCOMB_X74_Y45_N16
\tao_gtc|delay_reg[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[14]~54_combout\ = (\tao_gtc|btn_reg.one~q\ & (((!\btn_n[1]~input_o\)))) # (!\tao_gtc|btn_reg.one~q\ & ((\btn_n[1]~input_o\ & (!\tao_gtc|btn_reg.zero~q\)) # (!\btn_n[1]~input_o\ & ((\tao_gtc|btn_reg.wait0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|btn_reg.zero~q\,
	datab => \tao_gtc|btn_reg.one~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.wait0~q\,
	combout => \tao_gtc|delay_reg[14]~54_combout\);

-- Location: LCCOMB_X74_Y45_N14
\tao_gtc|delay_reg[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|delay_reg[14]~55_combout\ = (!\tao_gtc|delay_reg[14]~54_combout\ & ((!\btn_n[1]~input_o\) # (!\tao_gtc|btn_reg.wait1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|btn_reg.wait1~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|delay_reg[14]~54_combout\,
	combout => \tao_gtc|delay_reg[14]~55_combout\);

-- Location: LCCOMB_X76_Y40_N6
\doc_ds18b20|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~1_combout\ = (!\doc_ds18b20|STATE.RESET~q\ & ((\doc_ds18b20|S_RST\(0) & (\doc_ds18b20|S_RST\(1) & \doc_ds18b20|ds_ena~q\)) # (!\doc_ds18b20|S_RST\(0) & (!\doc_ds18b20|S_RST\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|S_RST\(0),
	datab => \doc_ds18b20|S_RST\(1),
	datac => \doc_ds18b20|ds_ena~q\,
	datad => \doc_ds18b20|STATE.RESET~q\,
	combout => \doc_ds18b20|Selector2~1_combout\);

-- Location: FF_X72_Y40_N7
\doc_ds18b20|WR_BIT_0_I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_BIT_0_I[0]~2_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BIT_0_I\(0));

-- Location: LCCOMB_X72_Y40_N12
\doc_ds18b20|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~2_combout\ = (!\doc_ds18b20|WR_BIT_0_I\(0) & (\doc_ds18b20|STATE.WRITE_BIT_0~q\ & ((\doc_ds18b20|ds_ena~q\) # (!\doc_ds18b20|WR_BIT_0_I\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(0),
	datab => \doc_ds18b20|ds_ena~q\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|WR_BIT_0_I\(1),
	combout => \doc_ds18b20|Selector2~2_combout\);

-- Location: LCCOMB_X76_Y40_N0
\doc_ds18b20|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~3_combout\ = (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & (!\doc_ds18b20|STATE.WRITE_BIT_1~q\ & (\doc_ds18b20|ds_ena~q\ & \doc_ds18b20|STATE.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datab => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datac => \doc_ds18b20|ds_ena~q\,
	datad => \doc_ds18b20|STATE.RESET~q\,
	combout => \doc_ds18b20|Selector2~3_combout\);

-- Location: LCCOMB_X75_Y40_N26
\doc_ds18b20|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~4_combout\ = (\doc_ds18b20|Selector2~1_combout\) # ((\doc_ds18b20|Selector2~2_combout\) # ((!\doc_ds18b20|STATE.READ_BIT~q\ & \doc_ds18b20|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector2~1_combout\,
	datab => \doc_ds18b20|STATE.READ_BIT~q\,
	datac => \doc_ds18b20|Selector2~3_combout\,
	datad => \doc_ds18b20|Selector2~2_combout\,
	combout => \doc_ds18b20|Selector2~4_combout\);

-- Location: LCCOMB_X74_Y41_N4
\doc_ds18b20|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal0~0_combout\ = (!\doc_ds18b20|J\(1) & (!\doc_ds18b20|J\(4) & (!\doc_ds18b20|J\(12) & !\doc_ds18b20|J\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|J\(4),
	datac => \doc_ds18b20|J\(12),
	datad => \doc_ds18b20|J\(15),
	combout => \doc_ds18b20|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y41_N20
\doc_ds18b20|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal0~1_combout\ = (\doc_ds18b20|J\(5) & (\doc_ds18b20|J[17]~18_combout\ & (\doc_ds18b20|J\(13) & \doc_ds18b20|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(5),
	datab => \doc_ds18b20|J[17]~18_combout\,
	datac => \doc_ds18b20|J\(13),
	datad => \doc_ds18b20|Equal0~0_combout\,
	combout => \doc_ds18b20|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y40_N2
\doc_ds18b20|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal2~2_combout\ = (\doc_ds18b20|J\(6) & (\doc_ds18b20|J\(7) & \doc_ds18b20|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(7),
	datad => \doc_ds18b20|Equal2~1_combout\,
	combout => \doc_ds18b20|Equal2~2_combout\);

-- Location: LCCOMB_X73_Y40_N20
\doc_ds18b20|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal2~3_combout\ = (!\doc_ds18b20|J\(14) & (\doc_ds18b20|Equal2~0_combout\ & (\doc_ds18b20|Equal0~1_combout\ & \doc_ds18b20|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(14),
	datab => \doc_ds18b20|Equal2~0_combout\,
	datac => \doc_ds18b20|Equal0~1_combout\,
	datad => \doc_ds18b20|Equal2~2_combout\,
	combout => \doc_ds18b20|Equal2~3_combout\);

-- Location: LCCOMB_X73_Y40_N24
\doc_ds18b20|J[17]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~49_combout\ = (\doc_ds18b20|J\(6) & (\doc_ds18b20|J\(7) & (\doc_ds18b20|J\(2) & \doc_ds18b20|J\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(7),
	datac => \doc_ds18b20|J\(2),
	datad => \doc_ds18b20|J\(5),
	combout => \doc_ds18b20|J[17]~49_combout\);

-- Location: LCCOMB_X73_Y40_N14
\doc_ds18b20|J[17]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~50_combout\ = (\doc_ds18b20|J[17]~48_combout\ & (\doc_ds18b20|S_RST\(0) & (\doc_ds18b20|Equal0~2_combout\ & \doc_ds18b20|J[17]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~48_combout\,
	datab => \doc_ds18b20|S_RST\(0),
	datac => \doc_ds18b20|Equal0~2_combout\,
	datad => \doc_ds18b20|J[17]~49_combout\,
	combout => \doc_ds18b20|J[17]~50_combout\);

-- Location: LCCOMB_X73_Y40_N10
\doc_ds18b20|J[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~51_combout\ = (!\doc_ds18b20|J\(6) & (\doc_ds18b20|J\(8) & (\doc_ds18b20|J\(3) & !\doc_ds18b20|S_RST\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(8),
	datac => \doc_ds18b20|J\(3),
	datad => \doc_ds18b20|S_RST\(0),
	combout => \doc_ds18b20|J[17]~51_combout\);

-- Location: LCCOMB_X73_Y40_N12
\doc_ds18b20|J[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~52_combout\ = (\doc_ds18b20|Equal0~1_combout\ & (\doc_ds18b20|Equal0~3_combout\ & (\doc_ds18b20|J\(14) & \doc_ds18b20|J[17]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Equal0~1_combout\,
	datab => \doc_ds18b20|Equal0~3_combout\,
	datac => \doc_ds18b20|J\(14),
	datad => \doc_ds18b20|J[17]~51_combout\,
	combout => \doc_ds18b20|J[17]~52_combout\);

-- Location: LCCOMB_X73_Y40_N30
\doc_ds18b20|J[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~53_combout\ = (\doc_ds18b20|S_RST\(1) & (((\doc_ds18b20|Equal2~3_combout\)))) # (!\doc_ds18b20|S_RST\(1) & ((\doc_ds18b20|J[17]~52_combout\) # ((\doc_ds18b20|J[17]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~52_combout\,
	datab => \doc_ds18b20|J[17]~50_combout\,
	datac => \doc_ds18b20|S_RST\(1),
	datad => \doc_ds18b20|Equal2~3_combout\,
	combout => \doc_ds18b20|J[17]~53_combout\);

-- Location: LCCOMB_X73_Y40_N4
\doc_ds18b20|J[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~58_combout\ = (!\doc_ds18b20|J\(5) & (!\doc_ds18b20|J\(6) & !\doc_ds18b20|STATE_WR_BIT_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(5),
	datac => \doc_ds18b20|J\(6),
	datad => \doc_ds18b20|STATE_WR_BIT_0\(0),
	combout => \doc_ds18b20|J[17]~58_combout\);

-- Location: LCCOMB_X72_Y40_N26
\doc_ds18b20|J[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~60_combout\ = (\doc_ds18b20|STATE.WRITE_BIT_1~q\ & ((\doc_ds18b20|J[17]~59_combout\) # ((!\doc_ds18b20|Equal11~2_combout\ & \doc_ds18b20|STATE_WR_BIT_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datab => \doc_ds18b20|Equal11~2_combout\,
	datac => \doc_ds18b20|STATE_WR_BIT_0\(0),
	datad => \doc_ds18b20|J[17]~59_combout\,
	combout => \doc_ds18b20|J[17]~60_combout\);

-- Location: LCCOMB_X75_Y40_N6
\doc_ds18b20|J[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~65_combout\ = (!\doc_ds18b20|WideOr5~0_combout\ & (!\doc_ds18b20|STATE.GET_TEMPERATURE~q\ & !\doc_ds18b20|STATE.WRITE_BYTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WideOr5~0_combout\,
	datab => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	datac => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	combout => \doc_ds18b20|J[17]~65_combout\);

-- Location: LCCOMB_X74_Y40_N24
\doc_ds18b20|S_RST[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|S_RST[1]~0_combout\ = (\doc_ds18b20|S_RST\(1) & (((\doc_ds18b20|S_RST\(0)) # (\doc_ds18b20|Equal2~3_combout\)))) # (!\doc_ds18b20|S_RST\(1) & (\doc_ds18b20|J[17]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~52_combout\,
	datab => \doc_ds18b20|S_RST\(0),
	datac => \doc_ds18b20|S_RST\(1),
	datad => \doc_ds18b20|Equal2~3_combout\,
	combout => \doc_ds18b20|S_RST[1]~0_combout\);

-- Location: LCCOMB_X74_Y40_N26
\doc_ds18b20|S_RST[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|S_RST[1]~1_combout\ = (!\doc_ds18b20|STATE.RESET~q\ & (\btn_n[0]~input_o\ & ((\doc_ds18b20|S_RST[1]~0_combout\) # (\doc_ds18b20|J[17]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.RESET~q\,
	datab => \doc_ds18b20|S_RST[1]~0_combout\,
	datac => \btn_n[0]~input_o\,
	datad => \doc_ds18b20|J[17]~50_combout\,
	combout => \doc_ds18b20|S_RST[1]~1_combout\);

-- Location: LCCOMB_X76_Y40_N4
\doc_ds18b20|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector22~2_combout\ = (!\doc_ds18b20|STATE.RESET~q\ & (((\doc_ds18b20|ds_in~q\) # (!\doc_ds18b20|S_RST\(1))) # (!\doc_ds18b20|S_RST\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|S_RST\(0),
	datab => \doc_ds18b20|STATE.RESET~q\,
	datac => \doc_ds18b20|S_RST\(1),
	datad => \doc_ds18b20|ds_in~q\,
	combout => \doc_ds18b20|Selector22~2_combout\);

-- Location: LCCOMB_X74_Y40_N12
\doc_ds18b20|STATE_RD_BIT_0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_RD_BIT_0[1]~0_combout\ = (\doc_ds18b20|STATE_RD_BIT_0\(1) & ((\doc_ds18b20|STATE_RD_BIT_0\(0) & ((\doc_ds18b20|Equal14~0_combout\))) # (!\doc_ds18b20|STATE_RD_BIT_0\(0) & (\doc_ds18b20|Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datab => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datac => \doc_ds18b20|Equal13~0_combout\,
	datad => \doc_ds18b20|Equal14~0_combout\,
	combout => \doc_ds18b20|STATE_RD_BIT_0[1]~0_combout\);

-- Location: FF_X77_Y40_N23
\doc_ds18b20|WR_PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_PTR~1_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_PTR\(1));

-- Location: LCCOMB_X72_Y40_N20
\doc_ds18b20|WR_BIT_0_I[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_BIT_0_I[1]~0_combout\ = (\doc_ds18b20|STATE.WRITE_BIT_0~q\ & (\doc_ds18b20|WR_BIT_0_I\(0) & (!\doc_ds18b20|WR_BIT_0_I\(1) & !\doc_ds18b20|Equal9~2_combout\))) # (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & (((\doc_ds18b20|WR_BIT_0_I\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(0),
	datab => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datac => \doc_ds18b20|WR_BIT_0_I\(1),
	datad => \doc_ds18b20|Equal9~2_combout\,
	combout => \doc_ds18b20|WR_BIT_0_I[1]~0_combout\);

-- Location: FF_X76_Y40_N27
\doc_ds18b20|WR_BYTE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector37~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BYTE\(1));

-- Location: FF_X77_Y40_N25
\doc_ds18b20|WR_BYTE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_BYTE[0]~feeder_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BYTE\(0));

-- Location: FF_X76_Y40_N25
\doc_ds18b20|WR_BYTE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector36~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BYTE\(3));

-- Location: FF_X76_Y40_N15
\doc_ds18b20|WR_BYTE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector33~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BYTE\(6));

-- Location: FF_X77_Y40_N19
\doc_ds18b20|WR_BYTE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_BYTE[2]~feeder_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_BYTE\(2));

-- Location: LCCOMB_X77_Y40_N0
\doc_ds18b20|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Mux34~0_combout\ = (\doc_ds18b20|WR_PTR\(2) & ((\doc_ds18b20|WR_BYTE\(6)) # ((!\doc_ds18b20|WR_PTR\(1))))) # (!\doc_ds18b20|WR_PTR\(2) & (((\doc_ds18b20|WR_PTR\(1) & \doc_ds18b20|WR_BYTE\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BYTE\(6),
	datab => \doc_ds18b20|WR_PTR\(2),
	datac => \doc_ds18b20|WR_PTR\(1),
	datad => \doc_ds18b20|WR_BYTE\(2),
	combout => \doc_ds18b20|Mux34~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\doc_ds18b20|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Mux34~1_combout\ = (\doc_ds18b20|WR_PTR\(0) & (((\doc_ds18b20|WR_BYTE\(3)) # (!\doc_ds18b20|WR_PTR\(1))))) # (!\doc_ds18b20|WR_PTR\(0) & (\doc_ds18b20|Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_PTR\(0),
	datab => \doc_ds18b20|Mux34~0_combout\,
	datac => \doc_ds18b20|WR_PTR\(1),
	datad => \doc_ds18b20|WR_BYTE\(3),
	combout => \doc_ds18b20|Mux34~1_combout\);

-- Location: LCCOMB_X77_Y40_N4
\doc_ds18b20|Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Mux34~2_combout\ = (\doc_ds18b20|WR_PTR\(1) & (((\doc_ds18b20|Mux34~1_combout\)))) # (!\doc_ds18b20|WR_PTR\(1) & ((\doc_ds18b20|Mux34~1_combout\ & (\doc_ds18b20|WR_BYTE\(1))) # (!\doc_ds18b20|Mux34~1_combout\ & 
-- ((!\doc_ds18b20|WR_BYTE\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BYTE\(1),
	datab => \doc_ds18b20|WR_BYTE\(0),
	datac => \doc_ds18b20|WR_PTR\(1),
	datad => \doc_ds18b20|Mux34~1_combout\,
	combout => \doc_ds18b20|Mux34~2_combout\);

-- Location: LCCOMB_X74_Y40_N28
\doc_ds18b20|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector26~1_combout\ = (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & ((\doc_ds18b20|STATE.READ_BIT~q\ & ((!\doc_ds18b20|Equal14~0_combout\))) # (!\doc_ds18b20|STATE.READ_BIT~q\ & (\doc_ds18b20|STATE_WR_BIT_0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_BIT~q\,
	datab => \doc_ds18b20|STATE_WR_BIT_0\(1),
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|Equal14~0_combout\,
	combout => \doc_ds18b20|Selector26~1_combout\);

-- Location: LCCOMB_X74_Y40_N14
\doc_ds18b20|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector26~2_combout\ = (\doc_ds18b20|STATE.RESET~q\ & ((\doc_ds18b20|Selector26~1_combout\) # ((\doc_ds18b20|STATE.WRITE_BIT_0~q\ & \doc_ds18b20|WR_BIT_0_I\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.RESET~q\,
	datab => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datac => \doc_ds18b20|WR_BIT_0_I\(1),
	datad => \doc_ds18b20|Selector26~1_combout\,
	combout => \doc_ds18b20|Selector26~2_combout\);

-- Location: LCCOMB_X75_Y40_N10
\doc_ds18b20|Selector29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~6_combout\ = (\doc_ds18b20|Selector29~4_combout\ & (!\doc_ds18b20|WR_STATE_I\(0) & ((!\doc_ds18b20|Selector29~5_combout\) # (!\doc_ds18b20|STATE.READ_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector29~4_combout\,
	datab => \doc_ds18b20|WR_STATE_I\(0),
	datac => \doc_ds18b20|STATE.READ_BIT~q\,
	datad => \doc_ds18b20|Selector29~5_combout\,
	combout => \doc_ds18b20|Selector29~6_combout\);

-- Location: LCCOMB_X72_Y40_N16
\doc_ds18b20|WR_BIT_0_I[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_BIT_0_I[0]~1_combout\ = (\doc_ds18b20|WR_BIT_0_I\(0) & (((\doc_ds18b20|Equal9~2_combout\ & !\doc_ds18b20|WR_BIT_0_I\(1))) # (!\doc_ds18b20|STATE.WRITE_BIT_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(0),
	datab => \doc_ds18b20|Equal9~2_combout\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|WR_BIT_0_I\(1),
	combout => \doc_ds18b20|WR_BIT_0_I[0]~1_combout\);

-- Location: LCCOMB_X72_Y40_N6
\doc_ds18b20|WR_BIT_0_I[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_BIT_0_I[0]~2_combout\ = (\doc_ds18b20|WR_BIT_0_I[0]~1_combout\) # ((\doc_ds18b20|J[17]~56_combout\ & (!\doc_ds18b20|WR_BIT_0_I\(1) & \doc_ds18b20|STATE.WRITE_BIT_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~56_combout\,
	datab => \doc_ds18b20|WR_BIT_0_I\(1),
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|WR_BIT_0_I[0]~1_combout\,
	combout => \doc_ds18b20|WR_BIT_0_I[0]~2_combout\);

-- Location: LCCOMB_X77_Y40_N22
\doc_ds18b20|WR_PTR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_PTR~1_combout\ = (!\doc_ds18b20|WR_PTR\(3) & (\doc_ds18b20|WR_PTR\(1) $ (\doc_ds18b20|WR_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_PTR\(3),
	datac => \doc_ds18b20|WR_PTR\(1),
	datad => \doc_ds18b20|WR_PTR\(0),
	combout => \doc_ds18b20|WR_PTR~1_combout\);

-- Location: LCCOMB_X76_Y40_N26
\doc_ds18b20|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector37~0_combout\ = (\doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\) # ((!\doc_ds18b20|STATE.CONVERT_T_44~q\ & (\doc_ds18b20|WR_BYTE\(1) & !\doc_ds18b20|STATE.SKIP_ROM_CC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\,
	datab => \doc_ds18b20|STATE.CONVERT_T_44~q\,
	datac => \doc_ds18b20|WR_BYTE\(1),
	datad => \doc_ds18b20|STATE.SKIP_ROM_CC~q\,
	combout => \doc_ds18b20|Selector37~0_combout\);

-- Location: LCCOMB_X76_Y40_N24
\doc_ds18b20|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector36~0_combout\ = (\doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\) # ((\doc_ds18b20|STATE.SKIP_ROM_CC~q\) # ((!\doc_ds18b20|STATE.CONVERT_T_44~q\ & \doc_ds18b20|WR_BYTE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\,
	datab => \doc_ds18b20|STATE.CONVERT_T_44~q\,
	datac => \doc_ds18b20|WR_BYTE\(3),
	datad => \doc_ds18b20|STATE.SKIP_ROM_CC~q\,
	combout => \doc_ds18b20|Selector36~0_combout\);

-- Location: LCCOMB_X76_Y40_N14
\doc_ds18b20|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector33~0_combout\ = (\doc_ds18b20|STATE.CONVERT_T_44~q\) # ((\doc_ds18b20|STATE.SKIP_ROM_CC~q\) # ((!\doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\ & \doc_ds18b20|WR_BYTE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\,
	datab => \doc_ds18b20|STATE.CONVERT_T_44~q\,
	datac => \doc_ds18b20|WR_BYTE\(6),
	datad => \doc_ds18b20|STATE.SKIP_ROM_CC~q\,
	combout => \doc_ds18b20|Selector33~0_combout\);

-- Location: LCCOMB_X67_Y41_N2
\h1_11[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_11[1]~5_combout\ = (\LessThan0~4_combout\ & (((\h1_11[1]~3_combout\)))) # (!\LessThan0~4_combout\ & (\giai_ma_bcd_giay|chuc[0]~1_combout\ $ ((!\thoi_gian|giay_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \thoi_gian|giay_reg\(1),
	datad => \h1_11[1]~3_combout\,
	combout => \h1_11[1]~5_combout\);

-- Location: LCCOMB_X68_Y43_N18
\lcd_full|Selector32~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~7_combout\ = (!\lcd_full|LCD_CMD_PTR\(2) & (!\lcd_full|LCD_CMD_PTR\(1) & (\lcd_full|LCD_CMD_PTR\(0) & \lcd_full|Selector37~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(2),
	datab => \lcd_full|LCD_CMD_PTR\(1),
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|Selector37~4_combout\,
	combout => \lcd_full|Selector32~7_combout\);

-- Location: LCCOMB_X72_Y38_N10
\doc_ds18b20|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~9_combout\ = (!\doc_ds18b20|RD_PTR\(2) & (\doc_ds18b20|STATE.GET_TEMPERATURE~q\ & (\btn_n[0]~input_o\ & \doc_ds18b20|RD_PTR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(2),
	datab => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	datac => \btn_n[0]~input_o\,
	datad => \doc_ds18b20|RD_PTR\(3),
	combout => \doc_ds18b20|Decoder0~9_combout\);

-- Location: LCCOMB_X66_Y41_N10
\lcd_full|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~5_combout\ = (\thoi_gian|giay_reg\(5) & (((\thoi_gian|giay_reg\(4) & !\thoi_gian|giay_reg\(2))) # (!\thoi_gian|giay_reg\(3)))) # (!\thoi_gian|giay_reg\(5) & (\thoi_gian|giay_reg\(3) $ (((\thoi_gian|giay_reg\(4) & 
-- !\thoi_gian|giay_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \thoi_gian|giay_reg\(4),
	datac => \thoi_gian|giay_reg\(3),
	datad => \thoi_gian|giay_reg\(2),
	combout => \lcd_full|Mux24~5_combout\);

-- Location: LCCOMB_X77_Y40_N24
\doc_ds18b20|WR_BYTE[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_BYTE[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \doc_ds18b20|WR_BYTE[0]~feeder_combout\);

-- Location: LCCOMB_X77_Y40_N18
\doc_ds18b20|WR_BYTE[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_BYTE[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \doc_ds18b20|WR_BYTE[2]~feeder_combout\);

-- Location: IOOBUF_X96_Y0_N2
\ds18b20~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \doc_ds18b20|ds_ena~q\,
	devoe => ww_devoe,
	o => \ds18b20~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\led[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\led[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\led[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\led[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\led[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\led[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\led[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\led[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~1_combout\,
	devoe => ww_devoe,
	o => \led[15]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\led_oe[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\led_oe[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\led_oe[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\led_oe[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\led_oe[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\led_oe[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\led_oe[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\led_oe[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\led_oe[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_oe~0_combout\,
	devoe => ww_devoe,
	o => \led_oe[8]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\lcd_blon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_blon~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_ENABLE~q\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\lcd_wr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_wr~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(8),
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_full|LCD_RS_DB\(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\sseg7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\sseg7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\sseg7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tao_gtc|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \sseg7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\sseg7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\sseg7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tao_gtc|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \sseg7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\sseg7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\sseg7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg7[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\sseg6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tao_gtc|s_reg\(0),
	devoe => ww_devoe,
	o => \sseg6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\sseg6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\sseg6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\sseg6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tao_gtc|s_reg\(0),
	devoe => ww_devoe,
	o => \sseg6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\sseg6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\sseg6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\sseg6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sseg6[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\sseg1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\sseg1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\sseg1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\sseg1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\sseg1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\sseg1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\sseg1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\sseg2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\sseg2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\sseg2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\sseg2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\sseg2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\sseg2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\sseg2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg2[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\sseg0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\sseg0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\sseg0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\sseg0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\sseg0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sseg0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\sseg0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\sseg0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \thoi_gian|giay_reg\(0),
	devoe => ww_devoe,
	o => \sseg0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\ckht~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ckht,
	o => \ckht~input_o\);

-- Location: CLKCTRL_G4
\ckht~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ckht~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ckht~inputclkctrl_outclk\);

-- Location: LCCOMB_X73_Y42_N14
\doc_ds18b20|J[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[0]~22_combout\ = \doc_ds18b20|J\(0) $ (VCC)
-- \doc_ds18b20|J[0]~23\ = CARRY(\doc_ds18b20|J\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(0),
	datad => VCC,
	combout => \doc_ds18b20|J[0]~22_combout\,
	cout => \doc_ds18b20|J[0]~23\);

-- Location: LCCOMB_X73_Y42_N8
\doc_ds18b20|J[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[0]~feeder_combout\ = \doc_ds18b20|J[0]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|J[0]~22_combout\,
	combout => \doc_ds18b20|J[0]~feeder_combout\);

-- Location: LCCOMB_X73_Y42_N16
\doc_ds18b20|J[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[1]~24_combout\ = (\doc_ds18b20|J\(1) & (!\doc_ds18b20|J[0]~23\)) # (!\doc_ds18b20|J\(1) & ((\doc_ds18b20|J[0]~23\) # (GND)))
-- \doc_ds18b20|J[1]~25\ = CARRY((!\doc_ds18b20|J[0]~23\) # (!\doc_ds18b20|J\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(1),
	datad => VCC,
	cin => \doc_ds18b20|J[0]~23\,
	combout => \doc_ds18b20|J[1]~24_combout\,
	cout => \doc_ds18b20|J[1]~25\);

-- Location: LCCOMB_X73_Y42_N18
\doc_ds18b20|J[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[2]~26_combout\ = (\doc_ds18b20|J\(2) & (\doc_ds18b20|J[1]~25\ $ (GND))) # (!\doc_ds18b20|J\(2) & (!\doc_ds18b20|J[1]~25\ & VCC))
-- \doc_ds18b20|J[2]~27\ = CARRY((\doc_ds18b20|J\(2) & !\doc_ds18b20|J[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(2),
	datad => VCC,
	cin => \doc_ds18b20|J[1]~25\,
	combout => \doc_ds18b20|J[2]~26_combout\,
	cout => \doc_ds18b20|J[2]~27\);

-- Location: LCCOMB_X77_Y40_N10
\doc_ds18b20|WR_PTR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_PTR~3_combout\ = (!\doc_ds18b20|WR_PTR\(0) & !\doc_ds18b20|WR_PTR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|WR_PTR\(0),
	datad => \doc_ds18b20|WR_PTR\(3),
	combout => \doc_ds18b20|WR_PTR~3_combout\);

-- Location: IOIBUF_X115_Y40_N8
\btn_n[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n(0),
	o => \btn_n[0]~input_o\);

-- Location: LCCOMB_X75_Y40_N20
\doc_ds18b20|WR_STATE_I[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_STATE_I[0]~1_combout\ = !\doc_ds18b20|WR_STATE_I\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|WR_STATE_I\(0),
	combout => \doc_ds18b20|WR_STATE_I[0]~1_combout\);

-- Location: LCCOMB_X76_Y40_N8
\doc_ds18b20|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~0_combout\ = (\doc_ds18b20|STATE.WRITE_BYTE~q\ & \doc_ds18b20|WR_PTR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	datac => \doc_ds18b20|WR_PTR\(3),
	combout => \doc_ds18b20|Selector29~0_combout\);

-- Location: FF_X75_Y40_N21
\doc_ds18b20|WR_STATE_I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_STATE_I[0]~1_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_STATE_I\(0));

-- Location: LCCOMB_X75_Y40_N14
\doc_ds18b20|WR_STATE_I~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_STATE_I~0_combout\ = \doc_ds18b20|WR_STATE_I\(1) $ (\doc_ds18b20|WR_STATE_I\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|WR_STATE_I\(1),
	datad => \doc_ds18b20|WR_STATE_I\(0),
	combout => \doc_ds18b20|WR_STATE_I~0_combout\);

-- Location: FF_X75_Y40_N15
\doc_ds18b20|WR_STATE_I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_STATE_I~0_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_STATE_I\(1));

-- Location: LCCOMB_X76_Y40_N22
\doc_ds18b20|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector22~1_combout\ = (\doc_ds18b20|STATE.WRITE_BYTE~q\ & (\doc_ds18b20|WR_STATE_I\(0) & (\doc_ds18b20|WR_PTR\(3) & !\doc_ds18b20|WR_STATE_I\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	datab => \doc_ds18b20|WR_STATE_I\(0),
	datac => \doc_ds18b20|WR_PTR\(3),
	datad => \doc_ds18b20|WR_STATE_I\(1),
	combout => \doc_ds18b20|Selector22~1_combout\);

-- Location: LCCOMB_X73_Y42_N22
\doc_ds18b20|J[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[4]~30_combout\ = (\doc_ds18b20|J\(4) & (\doc_ds18b20|J[3]~29\ $ (GND))) # (!\doc_ds18b20|J\(4) & (!\doc_ds18b20|J[3]~29\ & VCC))
-- \doc_ds18b20|J[4]~31\ = CARRY((\doc_ds18b20|J\(4) & !\doc_ds18b20|J[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(4),
	datad => VCC,
	cin => \doc_ds18b20|J[3]~29\,
	combout => \doc_ds18b20|J[4]~30_combout\,
	cout => \doc_ds18b20|J[4]~31\);

-- Location: LCCOMB_X73_Y42_N24
\doc_ds18b20|J[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[5]~32_combout\ = (\doc_ds18b20|J\(5) & (!\doc_ds18b20|J[4]~31\)) # (!\doc_ds18b20|J\(5) & ((\doc_ds18b20|J[4]~31\) # (GND)))
-- \doc_ds18b20|J[5]~33\ = CARRY((!\doc_ds18b20|J[4]~31\) # (!\doc_ds18b20|J\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(5),
	datad => VCC,
	cin => \doc_ds18b20|J[4]~31\,
	combout => \doc_ds18b20|J[5]~32_combout\,
	cout => \doc_ds18b20|J[5]~33\);

-- Location: FF_X73_Y42_N25
\doc_ds18b20|J[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[5]~32_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(5));

-- Location: LCCOMB_X73_Y42_N28
\doc_ds18b20|J[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[7]~36_combout\ = (\doc_ds18b20|J\(7) & (!\doc_ds18b20|J[6]~35\)) # (!\doc_ds18b20|J\(7) & ((\doc_ds18b20|J[6]~35\) # (GND)))
-- \doc_ds18b20|J[7]~37\ = CARRY((!\doc_ds18b20|J[6]~35\) # (!\doc_ds18b20|J\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(7),
	datad => VCC,
	cin => \doc_ds18b20|J[6]~35\,
	combout => \doc_ds18b20|J[7]~36_combout\,
	cout => \doc_ds18b20|J[7]~37\);

-- Location: FF_X73_Y42_N29
\doc_ds18b20|J[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[7]~36_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(7));

-- Location: LCCOMB_X73_Y42_N30
\doc_ds18b20|J[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[8]~38_combout\ = (\doc_ds18b20|J\(8) & (\doc_ds18b20|J[7]~37\ $ (GND))) # (!\doc_ds18b20|J\(8) & (!\doc_ds18b20|J[7]~37\ & VCC))
-- \doc_ds18b20|J[8]~39\ = CARRY((\doc_ds18b20|J\(8) & !\doc_ds18b20|J[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(8),
	datad => VCC,
	cin => \doc_ds18b20|J[7]~37\,
	combout => \doc_ds18b20|J[8]~38_combout\,
	cout => \doc_ds18b20|J[8]~39\);

-- Location: LCCOMB_X73_Y41_N0
\doc_ds18b20|J[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[9]~40_combout\ = (\doc_ds18b20|J\(9) & (!\doc_ds18b20|J[8]~39\)) # (!\doc_ds18b20|J\(9) & ((\doc_ds18b20|J[8]~39\) # (GND)))
-- \doc_ds18b20|J[9]~41\ = CARRY((!\doc_ds18b20|J[8]~39\) # (!\doc_ds18b20|J\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(9),
	datad => VCC,
	cin => \doc_ds18b20|J[8]~39\,
	combout => \doc_ds18b20|J[9]~40_combout\,
	cout => \doc_ds18b20|J[9]~41\);

-- Location: FF_X73_Y41_N1
\doc_ds18b20|J[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[9]~40_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(9));

-- Location: LCCOMB_X73_Y41_N2
\doc_ds18b20|J[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[10]~42_combout\ = (\doc_ds18b20|J\(10) & (\doc_ds18b20|J[9]~41\ $ (GND))) # (!\doc_ds18b20|J\(10) & (!\doc_ds18b20|J[9]~41\ & VCC))
-- \doc_ds18b20|J[10]~43\ = CARRY((\doc_ds18b20|J\(10) & !\doc_ds18b20|J[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(10),
	datad => VCC,
	cin => \doc_ds18b20|J[9]~41\,
	combout => \doc_ds18b20|J[10]~42_combout\,
	cout => \doc_ds18b20|J[10]~43\);

-- Location: FF_X73_Y41_N3
\doc_ds18b20|J[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[10]~42_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(10));

-- Location: LCCOMB_X73_Y41_N4
\doc_ds18b20|J[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[11]~44_combout\ = (\doc_ds18b20|J\(11) & (!\doc_ds18b20|J[10]~43\)) # (!\doc_ds18b20|J\(11) & ((\doc_ds18b20|J[10]~43\) # (GND)))
-- \doc_ds18b20|J[11]~45\ = CARRY((!\doc_ds18b20|J[10]~43\) # (!\doc_ds18b20|J\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(11),
	datad => VCC,
	cin => \doc_ds18b20|J[10]~43\,
	combout => \doc_ds18b20|J[11]~44_combout\,
	cout => \doc_ds18b20|J[11]~45\);

-- Location: FF_X73_Y41_N5
\doc_ds18b20|J[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[11]~44_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(11));

-- Location: LCCOMB_X73_Y41_N6
\doc_ds18b20|J[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[12]~46_combout\ = (\doc_ds18b20|J\(12) & (\doc_ds18b20|J[11]~45\ $ (GND))) # (!\doc_ds18b20|J\(12) & (!\doc_ds18b20|J[11]~45\ & VCC))
-- \doc_ds18b20|J[12]~47\ = CARRY((\doc_ds18b20|J\(12) & !\doc_ds18b20|J[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(12),
	datad => VCC,
	cin => \doc_ds18b20|J[11]~45\,
	combout => \doc_ds18b20|J[12]~46_combout\,
	cout => \doc_ds18b20|J[12]~47\);

-- Location: LCCOMB_X73_Y41_N8
\doc_ds18b20|J[13]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[13]~68_combout\ = (\doc_ds18b20|J\(13) & (!\doc_ds18b20|J[12]~47\)) # (!\doc_ds18b20|J\(13) & ((\doc_ds18b20|J[12]~47\) # (GND)))
-- \doc_ds18b20|J[13]~69\ = CARRY((!\doc_ds18b20|J[12]~47\) # (!\doc_ds18b20|J\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(13),
	datad => VCC,
	cin => \doc_ds18b20|J[12]~47\,
	combout => \doc_ds18b20|J[13]~68_combout\,
	cout => \doc_ds18b20|J[13]~69\);

-- Location: FF_X73_Y41_N9
\doc_ds18b20|J[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[13]~68_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(13));

-- Location: LCCOMB_X73_Y41_N10
\doc_ds18b20|J[14]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[14]~70_combout\ = (\doc_ds18b20|J\(14) & (\doc_ds18b20|J[13]~69\ $ (GND))) # (!\doc_ds18b20|J\(14) & (!\doc_ds18b20|J[13]~69\ & VCC))
-- \doc_ds18b20|J[14]~71\ = CARRY((\doc_ds18b20|J\(14) & !\doc_ds18b20|J[13]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(14),
	datad => VCC,
	cin => \doc_ds18b20|J[13]~69\,
	combout => \doc_ds18b20|J[14]~70_combout\,
	cout => \doc_ds18b20|J[14]~71\);

-- Location: FF_X73_Y41_N11
\doc_ds18b20|J[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[14]~70_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(14));

-- Location: LCCOMB_X73_Y41_N12
\doc_ds18b20|J[15]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[15]~72_combout\ = (\doc_ds18b20|J\(15) & (!\doc_ds18b20|J[14]~71\)) # (!\doc_ds18b20|J\(15) & ((\doc_ds18b20|J[14]~71\) # (GND)))
-- \doc_ds18b20|J[15]~73\ = CARRY((!\doc_ds18b20|J[14]~71\) # (!\doc_ds18b20|J\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(15),
	datad => VCC,
	cin => \doc_ds18b20|J[14]~71\,
	combout => \doc_ds18b20|J[15]~72_combout\,
	cout => \doc_ds18b20|J[15]~73\);

-- Location: FF_X73_Y41_N13
\doc_ds18b20|J[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[15]~72_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(15));

-- Location: LCCOMB_X73_Y41_N14
\doc_ds18b20|J[16]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[16]~74_combout\ = (\doc_ds18b20|J\(16) & (\doc_ds18b20|J[15]~73\ $ (GND))) # (!\doc_ds18b20|J\(16) & (!\doc_ds18b20|J[15]~73\ & VCC))
-- \doc_ds18b20|J[16]~75\ = CARRY((\doc_ds18b20|J\(16) & !\doc_ds18b20|J[15]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(16),
	datad => VCC,
	cin => \doc_ds18b20|J[15]~73\,
	combout => \doc_ds18b20|J[16]~74_combout\,
	cout => \doc_ds18b20|J[16]~75\);

-- Location: FF_X73_Y41_N15
\doc_ds18b20|J[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[16]~74_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(16));

-- Location: LCCOMB_X73_Y41_N16
\doc_ds18b20|J[17]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~76_combout\ = \doc_ds18b20|J[16]~75\ $ (\doc_ds18b20|J\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \doc_ds18b20|J\(17),
	cin => \doc_ds18b20|J[16]~75\,
	combout => \doc_ds18b20|J[17]~76_combout\);

-- Location: FF_X73_Y41_N17
\doc_ds18b20|J[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[17]~76_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(17));

-- Location: FF_X73_Y41_N7
\doc_ds18b20|J[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[12]~46_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(12));

-- Location: LCCOMB_X73_Y41_N22
\doc_ds18b20|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|LessThan4~0_combout\ = (!\doc_ds18b20|J\(14) & (!\doc_ds18b20|J\(13) & (!\doc_ds18b20|J\(15) & !\doc_ds18b20|J\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(14),
	datab => \doc_ds18b20|J\(13),
	datac => \doc_ds18b20|J\(15),
	datad => \doc_ds18b20|J\(12),
	combout => \doc_ds18b20|LessThan4~0_combout\);

-- Location: FF_X73_Y42_N31
\doc_ds18b20|J[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[8]~38_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(8));

-- Location: LCCOMB_X73_Y41_N18
\doc_ds18b20|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|LessThan4~1_combout\ = (!\doc_ds18b20|J\(9) & (((!\doc_ds18b20|J\(6) & !\doc_ds18b20|J\(7))) # (!\doc_ds18b20|J\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(7),
	datac => \doc_ds18b20|J\(8),
	datad => \doc_ds18b20|J\(9),
	combout => \doc_ds18b20|LessThan4~1_combout\);

-- Location: LCCOMB_X74_Y41_N24
\doc_ds18b20|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|LessThan4~2_combout\ = (\doc_ds18b20|LessThan4~0_combout\ & (((\doc_ds18b20|LessThan4~1_combout\) # (!\doc_ds18b20|J\(11))) # (!\doc_ds18b20|J\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(10),
	datab => \doc_ds18b20|LessThan4~0_combout\,
	datac => \doc_ds18b20|J\(11),
	datad => \doc_ds18b20|LessThan4~1_combout\,
	combout => \doc_ds18b20|LessThan4~2_combout\);

-- Location: LCCOMB_X74_Y41_N10
\doc_ds18b20|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector22~0_combout\ = (\doc_ds18b20|J\(16) & (\doc_ds18b20|J\(17) & !\doc_ds18b20|LessThan4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(16),
	datac => \doc_ds18b20|J\(17),
	datad => \doc_ds18b20|LessThan4~2_combout\,
	combout => \doc_ds18b20|Selector22~0_combout\);

-- Location: LCCOMB_X73_Y42_N20
\doc_ds18b20|J[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[3]~28_combout\ = (\doc_ds18b20|J\(3) & (!\doc_ds18b20|J[2]~27\)) # (!\doc_ds18b20|J\(3) & ((\doc_ds18b20|J[2]~27\) # (GND)))
-- \doc_ds18b20|J[3]~29\ = CARRY((!\doc_ds18b20|J[2]~27\) # (!\doc_ds18b20|J\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(3),
	datad => VCC,
	cin => \doc_ds18b20|J[2]~27\,
	combout => \doc_ds18b20|J[3]~28_combout\,
	cout => \doc_ds18b20|J[3]~29\);

-- Location: FF_X73_Y42_N21
\doc_ds18b20|J[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[3]~28_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(3));

-- Location: LCCOMB_X73_Y42_N10
\doc_ds18b20|J[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~19_combout\ = (!\doc_ds18b20|J\(6) & (\doc_ds18b20|J\(5) & (\doc_ds18b20|J\(3) & \doc_ds18b20|J\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(5),
	datac => \doc_ds18b20|J\(3),
	datad => \doc_ds18b20|J\(7),
	combout => \doc_ds18b20|J[17]~19_combout\);

-- Location: LCCOMB_X74_Y41_N6
\doc_ds18b20|J[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~20_combout\ = (\doc_ds18b20|J[17]~18_combout\ & (\doc_ds18b20|J\(11) & (\doc_ds18b20|J[17]~19_combout\ & \doc_ds18b20|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~18_combout\,
	datab => \doc_ds18b20|J\(11),
	datac => \doc_ds18b20|J[17]~19_combout\,
	datad => \doc_ds18b20|LessThan4~0_combout\,
	combout => \doc_ds18b20|J[17]~20_combout\);

-- Location: LCCOMB_X74_Y41_N8
\doc_ds18b20|ds_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~0_combout\ = (!\doc_ds18b20|J\(10) & (\doc_ds18b20|J\(4) & (\doc_ds18b20|J\(9) & \doc_ds18b20|J[17]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(10),
	datab => \doc_ds18b20|J\(4),
	datac => \doc_ds18b20|J\(9),
	datad => \doc_ds18b20|J[17]~20_combout\,
	combout => \doc_ds18b20|ds_in~0_combout\);

-- Location: LCCOMB_X73_Y40_N18
\doc_ds18b20|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal14~0_combout\ = ((\doc_ds18b20|J\(8)) # ((!\doc_ds18b20|ds_in~0_combout\) # (!\doc_ds18b20|J\(2)))) # (!\doc_ds18b20|J\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|J\(8),
	datac => \doc_ds18b20|J\(2),
	datad => \doc_ds18b20|ds_in~0_combout\,
	combout => \doc_ds18b20|Equal14~0_combout\);

-- Location: LCCOMB_X74_Y40_N8
\doc_ds18b20|Selector29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~5_combout\ = (\doc_ds18b20|STATE_RD_BIT_0\(1) & (\doc_ds18b20|STATE_RD_BIT_0\(0) & !\doc_ds18b20|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datac => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datad => \doc_ds18b20|Equal14~0_combout\,
	combout => \doc_ds18b20|Selector29~5_combout\);

-- Location: LCCOMB_X75_Y40_N4
\doc_ds18b20|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector27~0_combout\ = (\doc_ds18b20|Selector31~0_combout\ & (((\doc_ds18b20|STATE.READ_BIT~q\ & !\doc_ds18b20|Selector29~5_combout\)))) # (!\doc_ds18b20|Selector31~0_combout\ & ((\doc_ds18b20|STATE.GET_TEMPERATURE~q\) # 
-- ((\doc_ds18b20|STATE.READ_BIT~q\ & !\doc_ds18b20|Selector29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector31~0_combout\,
	datab => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	datac => \doc_ds18b20|STATE.READ_BIT~q\,
	datad => \doc_ds18b20|Selector29~5_combout\,
	combout => \doc_ds18b20|Selector27~0_combout\);

-- Location: FF_X75_Y40_N5
\doc_ds18b20|STATE.READ_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector27~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.READ_BIT~q\);

-- Location: LCCOMB_X75_Y40_N8
\doc_ds18b20|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector30~0_combout\ = (\doc_ds18b20|Selector29~4_combout\ & ((\doc_ds18b20|WR_STATE_I\(0)) # ((\doc_ds18b20|STATE.READ_BIT~q\ & \doc_ds18b20|Selector29~5_combout\)))) # (!\doc_ds18b20|Selector29~4_combout\ & 
-- (((\doc_ds18b20|STATE.READ_BIT~q\ & \doc_ds18b20|Selector29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector29~4_combout\,
	datab => \doc_ds18b20|WR_STATE_I\(0),
	datac => \doc_ds18b20|STATE.READ_BIT~q\,
	datad => \doc_ds18b20|Selector29~5_combout\,
	combout => \doc_ds18b20|Selector30~0_combout\);

-- Location: FF_X75_Y40_N9
\doc_ds18b20|STATE.GET_TEMPERATURE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector30~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.GET_TEMPERATURE~q\);

-- Location: LCCOMB_X73_Y38_N2
\doc_ds18b20|RD_PTR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|RD_PTR~3_combout\ = (\doc_ds18b20|RD_PTR\(0) & ((\doc_ds18b20|RD_PTR\(1) & (!\doc_ds18b20|RD_PTR\(2))) # (!\doc_ds18b20|RD_PTR\(1) & (\doc_ds18b20|RD_PTR\(2) & !\doc_ds18b20|RD_PTR\(3))))) # (!\doc_ds18b20|RD_PTR\(0) & 
-- (\doc_ds18b20|RD_PTR\(2) & ((!\doc_ds18b20|RD_PTR\(3)) # (!\doc_ds18b20|RD_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(0),
	datab => \doc_ds18b20|RD_PTR\(1),
	datac => \doc_ds18b20|RD_PTR\(2),
	datad => \doc_ds18b20|RD_PTR\(3),
	combout => \doc_ds18b20|RD_PTR~3_combout\);

-- Location: LCCOMB_X72_Y38_N6
\doc_ds18b20|RD_PTR[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|RD_PTR[3]~0_combout\ = (\btn_n[0]~input_o\ & \doc_ds18b20|STATE.GET_TEMPERATURE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn_n[0]~input_o\,
	datad => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	combout => \doc_ds18b20|RD_PTR[3]~0_combout\);

-- Location: FF_X73_Y38_N3
\doc_ds18b20|RD_PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|RD_PTR~3_combout\,
	ena => \doc_ds18b20|RD_PTR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|RD_PTR\(2));

-- Location: LCCOMB_X73_Y38_N0
\doc_ds18b20|RD_PTR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|RD_PTR~2_combout\ = (\doc_ds18b20|RD_PTR\(3) & (!\doc_ds18b20|RD_PTR\(2) & (\doc_ds18b20|RD_PTR\(0) $ (\doc_ds18b20|RD_PTR\(1))))) # (!\doc_ds18b20|RD_PTR\(3) & (\doc_ds18b20|RD_PTR\(0) $ ((\doc_ds18b20|RD_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(0),
	datab => \doc_ds18b20|RD_PTR\(3),
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(2),
	combout => \doc_ds18b20|RD_PTR~2_combout\);

-- Location: FF_X73_Y38_N1
\doc_ds18b20|RD_PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|RD_PTR~2_combout\,
	ena => \doc_ds18b20|RD_PTR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|RD_PTR\(1));

-- Location: LCCOMB_X73_Y38_N24
\doc_ds18b20|RD_PTR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|RD_PTR~1_combout\ = (\doc_ds18b20|RD_PTR\(3) & (((!\doc_ds18b20|RD_PTR\(0) & !\doc_ds18b20|RD_PTR\(1))) # (!\doc_ds18b20|RD_PTR\(2)))) # (!\doc_ds18b20|RD_PTR\(3) & (\doc_ds18b20|RD_PTR\(0) & (\doc_ds18b20|RD_PTR\(1) & 
-- \doc_ds18b20|RD_PTR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(0),
	datab => \doc_ds18b20|RD_PTR\(1),
	datac => \doc_ds18b20|RD_PTR\(3),
	datad => \doc_ds18b20|RD_PTR\(2),
	combout => \doc_ds18b20|RD_PTR~1_combout\);

-- Location: FF_X73_Y38_N25
\doc_ds18b20|RD_PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|RD_PTR~1_combout\,
	ena => \doc_ds18b20|RD_PTR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|RD_PTR\(3));

-- Location: LCCOMB_X73_Y38_N12
\doc_ds18b20|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector31~0_combout\ = (\doc_ds18b20|RD_PTR\(0) & (\doc_ds18b20|RD_PTR\(3) & (!\doc_ds18b20|RD_PTR\(1) & \doc_ds18b20|RD_PTR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(0),
	datab => \doc_ds18b20|RD_PTR\(3),
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(2),
	combout => \doc_ds18b20|Selector31~0_combout\);

-- Location: LCCOMB_X75_Y40_N24
\doc_ds18b20|Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector31~1_combout\ = (\doc_ds18b20|Selector22~0_combout\ & (\doc_ds18b20|STATE.GET_TEMPERATURE~q\ & ((\doc_ds18b20|Selector31~0_combout\)))) # (!\doc_ds18b20|Selector22~0_combout\ & ((\doc_ds18b20|STATE.WAIT4MS~q\) # 
-- ((\doc_ds18b20|STATE.GET_TEMPERATURE~q\ & \doc_ds18b20|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector22~0_combout\,
	datab => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	datac => \doc_ds18b20|STATE.WAIT4MS~q\,
	datad => \doc_ds18b20|Selector31~0_combout\,
	combout => \doc_ds18b20|Selector31~1_combout\);

-- Location: FF_X75_Y40_N25
\doc_ds18b20|STATE.WAIT4MS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector31~1_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.WAIT4MS~q\);

-- Location: LCCOMB_X75_Y40_N30
\doc_ds18b20|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector22~3_combout\ = (!\doc_ds18b20|Selector22~2_combout\ & (!\doc_ds18b20|Selector22~1_combout\ & ((!\doc_ds18b20|STATE.WAIT4MS~q\) # (!\doc_ds18b20|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector22~2_combout\,
	datab => \doc_ds18b20|Selector22~1_combout\,
	datac => \doc_ds18b20|Selector22~0_combout\,
	datad => \doc_ds18b20|STATE.WAIT4MS~q\,
	combout => \doc_ds18b20|Selector22~3_combout\);

-- Location: FF_X75_Y40_N31
\doc_ds18b20|STATE.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector22~3_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.RESET~q\);

-- Location: LCCOMB_X74_Y40_N18
\doc_ds18b20|S_RST[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|S_RST[0]~3_combout\ = \doc_ds18b20|S_RST[1]~1_combout\ $ (\doc_ds18b20|S_RST\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|S_RST[1]~1_combout\,
	datac => \doc_ds18b20|S_RST\(0),
	combout => \doc_ds18b20|S_RST[0]~3_combout\);

-- Location: FF_X74_Y40_N19
\doc_ds18b20|S_RST[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|S_RST[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|S_RST\(0));

-- Location: LCCOMB_X74_Y40_N0
\doc_ds18b20|S_RST[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|S_RST[1]~2_combout\ = \doc_ds18b20|S_RST\(1) $ (((\doc_ds18b20|S_RST[1]~1_combout\ & \doc_ds18b20|S_RST\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|S_RST[1]~1_combout\,
	datab => \doc_ds18b20|S_RST\(0),
	datac => \doc_ds18b20|S_RST\(1),
	combout => \doc_ds18b20|S_RST[1]~2_combout\);

-- Location: FF_X74_Y40_N1
\doc_ds18b20|S_RST[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|S_RST[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|S_RST\(1));

-- Location: IOIBUF_X96_Y0_N1
\ds18b20~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ds18b20,
	o => \ds18b20~input_o\);

-- Location: LCCOMB_X73_Y40_N16
\doc_ds18b20|ds_in~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~1_combout\ = (!\doc_ds18b20|J\(1) & (\doc_ds18b20|J\(8) & (\doc_ds18b20|S_RST\(1) & !\doc_ds18b20|S_RST\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|J\(8),
	datac => \doc_ds18b20|S_RST\(1),
	datad => \doc_ds18b20|S_RST\(0),
	combout => \doc_ds18b20|ds_in~1_combout\);

-- Location: LCCOMB_X72_Y40_N10
\doc_ds18b20|ds_in~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~2_combout\ = (!\doc_ds18b20|STATE.RESET~q\ & (\doc_ds18b20|ds_in~0_combout\ & (!\doc_ds18b20|J\(2) & \doc_ds18b20|ds_in~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.RESET~q\,
	datab => \doc_ds18b20|ds_in~0_combout\,
	datac => \doc_ds18b20|J\(2),
	datad => \doc_ds18b20|ds_in~1_combout\,
	combout => \doc_ds18b20|ds_in~2_combout\);

-- Location: LCCOMB_X72_Y40_N8
\doc_ds18b20|ds_in~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~4_combout\ = (\doc_ds18b20|ds_in~2_combout\) # ((\doc_ds18b20|ds_in~3_combout\ & (\doc_ds18b20|STATE_RD_BIT_0\(1) & \doc_ds18b20|STATE.RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|ds_in~3_combout\,
	datab => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datac => \doc_ds18b20|STATE.RESET~q\,
	datad => \doc_ds18b20|ds_in~2_combout\,
	combout => \doc_ds18b20|ds_in~4_combout\);

-- Location: LCCOMB_X76_Y40_N28
\doc_ds18b20|ds_in~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~5_combout\ = (\btn_n[0]~input_o\ & ((\doc_ds18b20|ds_in~4_combout\ & (\ds18b20~input_o\)) # (!\doc_ds18b20|ds_in~4_combout\ & ((\doc_ds18b20|ds_in~q\))))) # (!\btn_n[0]~input_o\ & (((\doc_ds18b20|ds_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_n[0]~input_o\,
	datab => \ds18b20~input_o\,
	datac => \doc_ds18b20|ds_in~q\,
	datad => \doc_ds18b20|ds_in~4_combout\,
	combout => \doc_ds18b20|ds_in~5_combout\);

-- Location: FF_X76_Y40_N29
\doc_ds18b20|ds_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|ds_in~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|ds_in~q\);

-- Location: LCCOMB_X76_Y40_N2
\doc_ds18b20|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector23~0_combout\ = (\doc_ds18b20|S_RST\(0) & (!\doc_ds18b20|STATE.RESET~q\ & (\doc_ds18b20|S_RST\(1) & !\doc_ds18b20|ds_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|S_RST\(0),
	datab => \doc_ds18b20|STATE.RESET~q\,
	datac => \doc_ds18b20|S_RST\(1),
	datad => \doc_ds18b20|ds_in~q\,
	combout => \doc_ds18b20|Selector23~0_combout\);

-- Location: FF_X76_Y40_N3
\doc_ds18b20|STATE.SKIP_ROM_CC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector23~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.SKIP_ROM_CC~q\);

-- Location: LCCOMB_X76_Y40_N16
\doc_ds18b20|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector28~0_combout\ = (\doc_ds18b20|STATE.WRITE_BYTE~q\ & (!\doc_ds18b20|WR_STATE_I\(0) & (\doc_ds18b20|WR_PTR\(3) & !\doc_ds18b20|WR_STATE_I\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	datab => \doc_ds18b20|WR_STATE_I\(0),
	datac => \doc_ds18b20|WR_PTR\(3),
	datad => \doc_ds18b20|WR_STATE_I\(1),
	combout => \doc_ds18b20|Selector28~0_combout\);

-- Location: FF_X76_Y40_N17
\doc_ds18b20|STATE.CONVERT_T_44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector28~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.CONVERT_T_44~q\);

-- Location: LCCOMB_X76_Y40_N30
\doc_ds18b20|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector24~2_combout\ = (\doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\) # ((\doc_ds18b20|STATE.SKIP_ROM_CC~q\) # ((\doc_ds18b20|STATE.CONVERT_T_44~q\) # (!\doc_ds18b20|J[17]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.READ_SCRATCHPAD_BE~q\,
	datab => \doc_ds18b20|STATE.SKIP_ROM_CC~q\,
	datac => \doc_ds18b20|J[17]~66_combout\,
	datad => \doc_ds18b20|STATE.CONVERT_T_44~q\,
	combout => \doc_ds18b20|Selector24~2_combout\);

-- Location: FF_X76_Y40_N31
\doc_ds18b20|STATE.WRITE_BYTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector24~2_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.WRITE_BYTE~q\);

-- Location: FF_X77_Y40_N11
\doc_ds18b20|WR_PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_PTR~3_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_PTR\(0));

-- Location: LCCOMB_X77_Y40_N20
\doc_ds18b20|WR_PTR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_PTR~2_combout\ = (!\doc_ds18b20|WR_PTR\(3) & (\doc_ds18b20|WR_PTR\(2) $ (((\doc_ds18b20|WR_PTR\(1) & \doc_ds18b20|WR_PTR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_PTR\(1),
	datab => \doc_ds18b20|WR_PTR\(3),
	datac => \doc_ds18b20|WR_PTR\(2),
	datad => \doc_ds18b20|WR_PTR\(0),
	combout => \doc_ds18b20|WR_PTR~2_combout\);

-- Location: FF_X77_Y40_N21
\doc_ds18b20|WR_PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_PTR~2_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_PTR\(2));

-- Location: LCCOMB_X77_Y40_N12
\doc_ds18b20|WR_PTR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|WR_PTR~0_combout\ = (\doc_ds18b20|WR_PTR\(1) & (\doc_ds18b20|WR_PTR\(2) & (!\doc_ds18b20|WR_PTR\(3) & \doc_ds18b20|WR_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_PTR\(1),
	datab => \doc_ds18b20|WR_PTR\(2),
	datac => \doc_ds18b20|WR_PTR\(3),
	datad => \doc_ds18b20|WR_PTR\(0),
	combout => \doc_ds18b20|WR_PTR~0_combout\);

-- Location: FF_X77_Y40_N13
\doc_ds18b20|WR_PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|WR_PTR~0_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|WR_PTR\(3));

-- Location: LCCOMB_X76_Y40_N18
\doc_ds18b20|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector26~0_combout\ = (\doc_ds18b20|Mux34~2_combout\ & (!\doc_ds18b20|WR_PTR\(3) & \doc_ds18b20|STATE.WRITE_BYTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Mux34~2_combout\,
	datab => \doc_ds18b20|WR_PTR\(3),
	datac => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	combout => \doc_ds18b20|Selector26~0_combout\);

-- Location: LCCOMB_X74_Y40_N20
\doc_ds18b20|J[17]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~21_combout\ = (\doc_ds18b20|S_RST\(1) & (!\doc_ds18b20|STATE.RESET~q\ & \doc_ds18b20|S_RST\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|S_RST\(1),
	datac => \doc_ds18b20|STATE.RESET~q\,
	datad => \doc_ds18b20|S_RST\(0),
	combout => \doc_ds18b20|J[17]~21_combout\);

-- Location: LCCOMB_X75_Y40_N22
\doc_ds18b20|Selector29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector29~3_combout\ = (!\doc_ds18b20|WideOr5~0_combout\ & (!\doc_ds18b20|STATE.GET_TEMPERATURE~q\ & (!\doc_ds18b20|STATE.WRITE_BYTE~q\ & !\doc_ds18b20|STATE.WAIT4MS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WideOr5~0_combout\,
	datab => \doc_ds18b20|STATE.GET_TEMPERATURE~q\,
	datac => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	datad => \doc_ds18b20|STATE.WAIT4MS~q\,
	combout => \doc_ds18b20|Selector29~3_combout\);

-- Location: LCCOMB_X75_Y40_N28
\doc_ds18b20|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector25~0_combout\ = ((\doc_ds18b20|STATE_RD_BIT_0\(0) & \doc_ds18b20|STATE_RD_BIT_0\(1))) # (!\doc_ds18b20|STATE.READ_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datac => \doc_ds18b20|STATE.READ_BIT~q\,
	datad => \doc_ds18b20|STATE_RD_BIT_0\(1),
	combout => \doc_ds18b20|Selector25~0_combout\);

-- Location: LCCOMB_X75_Y40_N2
\doc_ds18b20|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector25~1_combout\ = ((\doc_ds18b20|Selector25~0_combout\ & ((\doc_ds18b20|Selector26~2_combout\) # (\doc_ds18b20|J[17]~21_combout\)))) # (!\doc_ds18b20|Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector26~2_combout\,
	datab => \doc_ds18b20|J[17]~21_combout\,
	datac => \doc_ds18b20|Selector29~3_combout\,
	datad => \doc_ds18b20|Selector25~0_combout\,
	combout => \doc_ds18b20|Selector25~1_combout\);

-- Location: FF_X76_Y40_N19
\doc_ds18b20|STATE.WRITE_BIT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector26~0_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|Selector25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.WRITE_BIT_1~q\);

-- Location: LCCOMB_X76_Y40_N12
\doc_ds18b20|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector25~2_combout\ = (!\doc_ds18b20|Mux34~2_combout\ & (!\doc_ds18b20|WR_PTR\(3) & \doc_ds18b20|STATE.WRITE_BYTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Mux34~2_combout\,
	datab => \doc_ds18b20|WR_PTR\(3),
	datac => \doc_ds18b20|STATE.WRITE_BYTE~q\,
	combout => \doc_ds18b20|Selector25~2_combout\);

-- Location: FF_X76_Y40_N13
\doc_ds18b20|STATE.WRITE_BIT_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector25~2_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \doc_ds18b20|Selector25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE.WRITE_BIT_0~q\);

-- Location: LCCOMB_X74_Y41_N18
\doc_ds18b20|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal2~0_combout\ = (\doc_ds18b20|J\(9) & (\doc_ds18b20|J\(11) & \doc_ds18b20|J\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(9),
	datac => \doc_ds18b20|J\(11),
	datad => \doc_ds18b20|J\(10),
	combout => \doc_ds18b20|Equal2~0_combout\);

-- Location: LCCOMB_X73_Y40_N28
\doc_ds18b20|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal2~1_combout\ = (!\doc_ds18b20|J\(3) & (!\doc_ds18b20|J\(2) & !\doc_ds18b20|J\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(3),
	datac => \doc_ds18b20|J\(2),
	datad => \doc_ds18b20|J\(8),
	combout => \doc_ds18b20|Equal2~1_combout\);

-- Location: LCCOMB_X74_Y41_N22
\doc_ds18b20|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal11~0_combout\ = (\doc_ds18b20|J[17]~18_combout\ & (\doc_ds18b20|J\(4) & \doc_ds18b20|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~18_combout\,
	datab => \doc_ds18b20|J\(4),
	datad => \doc_ds18b20|LessThan4~0_combout\,
	combout => \doc_ds18b20|Equal11~0_combout\);

-- Location: LCCOMB_X73_Y40_N6
\doc_ds18b20|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal11~1_combout\ = (!\doc_ds18b20|J\(6) & (!\doc_ds18b20|J\(7) & (\doc_ds18b20|Equal2~1_combout\ & \doc_ds18b20|Equal11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datab => \doc_ds18b20|J\(7),
	datac => \doc_ds18b20|Equal2~1_combout\,
	datad => \doc_ds18b20|Equal11~0_combout\,
	combout => \doc_ds18b20|Equal11~1_combout\);

-- Location: LCCOMB_X73_Y40_N8
\doc_ds18b20|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal11~2_combout\ = (\doc_ds18b20|J\(1)) # ((\doc_ds18b20|J\(5)) # ((!\doc_ds18b20|Equal11~1_combout\) # (!\doc_ds18b20|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|J\(5),
	datac => \doc_ds18b20|Equal2~0_combout\,
	datad => \doc_ds18b20|Equal11~1_combout\,
	combout => \doc_ds18b20|Equal11~2_combout\);

-- Location: LCCOMB_X73_Y41_N30
\doc_ds18b20|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal0~2_combout\ = (!\doc_ds18b20|J\(10) & (!\doc_ds18b20|J\(11) & !\doc_ds18b20|J\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(10),
	datac => \doc_ds18b20|J\(11),
	datad => \doc_ds18b20|J\(9),
	combout => \doc_ds18b20|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y40_N0
\doc_ds18b20|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal0~3_combout\ = (!\doc_ds18b20|J\(2) & (\doc_ds18b20|Equal0~2_combout\ & \doc_ds18b20|J\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(2),
	datac => \doc_ds18b20|Equal0~2_combout\,
	datad => \doc_ds18b20|J\(7),
	combout => \doc_ds18b20|Equal0~3_combout\);

-- Location: LCCOMB_X73_Y40_N22
\doc_ds18b20|J[17]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~48_combout\ = (!\doc_ds18b20|J\(1) & (\doc_ds18b20|Equal11~0_combout\ & (!\doc_ds18b20|J\(3) & \doc_ds18b20|J\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|Equal11~0_combout\,
	datac => \doc_ds18b20|J\(3),
	datad => \doc_ds18b20|J\(8),
	combout => \doc_ds18b20|J[17]~48_combout\);

-- Location: LCCOMB_X72_Y40_N28
\doc_ds18b20|J[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~59_combout\ = (\doc_ds18b20|J[17]~58_combout\ & (\doc_ds18b20|Equal0~3_combout\ & \doc_ds18b20|J[17]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~58_combout\,
	datac => \doc_ds18b20|Equal0~3_combout\,
	datad => \doc_ds18b20|J[17]~48_combout\,
	combout => \doc_ds18b20|J[17]~59_combout\);

-- Location: LCCOMB_X72_Y40_N2
\doc_ds18b20|STATE_WR_BIT_0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_WR_BIT_0[0]~1_combout\ = (\doc_ds18b20|STATE_WR_BIT_0\(0) & (((\doc_ds18b20|Equal11~2_combout\ & !\doc_ds18b20|STATE_WR_BIT_0\(1))) # (!\doc_ds18b20|STATE.WRITE_BIT_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datab => \doc_ds18b20|Equal11~2_combout\,
	datac => \doc_ds18b20|STATE_WR_BIT_0\(0),
	datad => \doc_ds18b20|STATE_WR_BIT_0\(1),
	combout => \doc_ds18b20|STATE_WR_BIT_0[0]~1_combout\);

-- Location: LCCOMB_X72_Y40_N14
\doc_ds18b20|STATE_WR_BIT_0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_WR_BIT_0[0]~2_combout\ = (\doc_ds18b20|STATE_WR_BIT_0[0]~1_combout\) # ((!\doc_ds18b20|STATE_WR_BIT_0\(1) & (\doc_ds18b20|J[17]~59_combout\ & \doc_ds18b20|STATE.WRITE_BIT_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE_WR_BIT_0\(1),
	datab => \doc_ds18b20|J[17]~59_combout\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datad => \doc_ds18b20|STATE_WR_BIT_0[0]~1_combout\,
	combout => \doc_ds18b20|STATE_WR_BIT_0[0]~2_combout\);

-- Location: FF_X72_Y40_N15
\doc_ds18b20|STATE_WR_BIT_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|STATE_WR_BIT_0[0]~2_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE_WR_BIT_0\(0));

-- Location: LCCOMB_X72_Y40_N30
\doc_ds18b20|STATE_WR_BIT_0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_WR_BIT_0[1]~0_combout\ = (\doc_ds18b20|STATE.WRITE_BIT_1~q\ & (!\doc_ds18b20|Equal11~2_combout\ & (!\doc_ds18b20|STATE_WR_BIT_0\(1) & \doc_ds18b20|STATE_WR_BIT_0\(0)))) # (!\doc_ds18b20|STATE.WRITE_BIT_1~q\ & 
-- (((\doc_ds18b20|STATE_WR_BIT_0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datab => \doc_ds18b20|Equal11~2_combout\,
	datac => \doc_ds18b20|STATE_WR_BIT_0\(1),
	datad => \doc_ds18b20|STATE_WR_BIT_0\(0),
	combout => \doc_ds18b20|STATE_WR_BIT_0[1]~0_combout\);

-- Location: FF_X72_Y40_N31
\doc_ds18b20|STATE_WR_BIT_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|STATE_WR_BIT_0[1]~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE_WR_BIT_0\(1));

-- Location: LCCOMB_X74_Y40_N16
\doc_ds18b20|J[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~66_combout\ = (\doc_ds18b20|WR_BIT_0_I\(1) & (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & ((!\doc_ds18b20|STATE_WR_BIT_0\(1)) # (!\doc_ds18b20|STATE.WRITE_BIT_1~q\)))) # (!\doc_ds18b20|WR_BIT_0_I\(1) & (((!\doc_ds18b20|STATE_WR_BIT_0\(1))) # 
-- (!\doc_ds18b20|STATE.WRITE_BIT_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(1),
	datab => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|STATE_WR_BIT_0\(1),
	combout => \doc_ds18b20|J[17]~66_combout\);

-- Location: LCCOMB_X74_Y40_N10
\doc_ds18b20|J[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~67_combout\ = (\doc_ds18b20|J[17]~65_combout\ & (\doc_ds18b20|J[17]~66_combout\ & (\btn_n[0]~input_o\ & !\doc_ds18b20|J[17]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~65_combout\,
	datab => \doc_ds18b20|J[17]~66_combout\,
	datac => \btn_n[0]~input_o\,
	datad => \doc_ds18b20|J[17]~21_combout\,
	combout => \doc_ds18b20|J[17]~67_combout\);

-- Location: FF_X73_Y42_N19
\doc_ds18b20|J[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[2]~26_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(2));

-- Location: FF_X73_Y42_N23
\doc_ds18b20|J[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[4]~30_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(4));

-- Location: LCCOMB_X74_Y41_N12
\doc_ds18b20|J[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~18_combout\ = (!\doc_ds18b20|J\(16) & (!\doc_ds18b20|J\(17) & !\doc_ds18b20|J\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(16),
	datac => \doc_ds18b20|J\(17),
	datad => \doc_ds18b20|J\(0),
	combout => \doc_ds18b20|J[17]~18_combout\);

-- Location: LCCOMB_X73_Y42_N6
\doc_ds18b20|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal9~0_combout\ = (\doc_ds18b20|J\(6) & (!\doc_ds18b20|J\(8) & \doc_ds18b20|J\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(6),
	datac => \doc_ds18b20|J\(8),
	datad => \doc_ds18b20|J\(3),
	combout => \doc_ds18b20|Equal9~0_combout\);

-- Location: LCCOMB_X73_Y41_N24
\doc_ds18b20|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal9~1_combout\ = (\doc_ds18b20|LessThan4~0_combout\ & (\doc_ds18b20|J[17]~18_combout\ & (\doc_ds18b20|Equal9~0_combout\ & \doc_ds18b20|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|LessThan4~0_combout\,
	datab => \doc_ds18b20|J[17]~18_combout\,
	datac => \doc_ds18b20|Equal9~0_combout\,
	datad => \doc_ds18b20|Equal0~3_combout\,
	combout => \doc_ds18b20|Equal9~1_combout\);

-- Location: LCCOMB_X73_Y42_N0
\doc_ds18b20|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal9~2_combout\ = (((!\doc_ds18b20|Equal9~1_combout\) # (!\doc_ds18b20|J\(4))) # (!\doc_ds18b20|J\(1))) # (!\doc_ds18b20|J\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(5),
	datab => \doc_ds18b20|J\(1),
	datac => \doc_ds18b20|J\(4),
	datad => \doc_ds18b20|Equal9~1_combout\,
	combout => \doc_ds18b20|Equal9~2_combout\);

-- Location: LCCOMB_X73_Y41_N28
\doc_ds18b20|J[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~55_combout\ = (\doc_ds18b20|J\(10) & (\doc_ds18b20|J\(8) & !\doc_ds18b20|J\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J\(10),
	datac => \doc_ds18b20|J\(8),
	datad => \doc_ds18b20|J\(9),
	combout => \doc_ds18b20|J[17]~55_combout\);

-- Location: LCCOMB_X73_Y42_N4
\doc_ds18b20|J[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~54_combout\ = (!\doc_ds18b20|WR_BIT_0_I\(0) & (\doc_ds18b20|J\(2) & (!\doc_ds18b20|J\(4) & !\doc_ds18b20|J\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(0),
	datab => \doc_ds18b20|J\(2),
	datac => \doc_ds18b20|J\(4),
	datad => \doc_ds18b20|J\(1),
	combout => \doc_ds18b20|J[17]~54_combout\);

-- Location: LCCOMB_X73_Y41_N26
\doc_ds18b20|J[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~56_combout\ = (\doc_ds18b20|J[17]~55_combout\ & (\doc_ds18b20|J[17]~54_combout\ & \doc_ds18b20|J[17]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|J[17]~55_combout\,
	datac => \doc_ds18b20|J[17]~54_combout\,
	datad => \doc_ds18b20|J[17]~20_combout\,
	combout => \doc_ds18b20|J[17]~56_combout\);

-- Location: LCCOMB_X72_Y40_N18
\doc_ds18b20|J[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~57_combout\ = (\doc_ds18b20|STATE.WRITE_BIT_0~q\ & ((\doc_ds18b20|J[17]~56_combout\) # ((\doc_ds18b20|WR_BIT_0_I\(0) & !\doc_ds18b20|Equal9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|WR_BIT_0_I\(0),
	datab => \doc_ds18b20|Equal9~2_combout\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datad => \doc_ds18b20|J[17]~56_combout\,
	combout => \doc_ds18b20|J[17]~57_combout\);

-- Location: LCCOMB_X73_Y40_N26
\doc_ds18b20|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal13~0_combout\ = (((!\doc_ds18b20|Equal11~1_combout\) # (!\doc_ds18b20|Equal0~2_combout\)) # (!\doc_ds18b20|J\(5))) # (!\doc_ds18b20|J\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(1),
	datab => \doc_ds18b20|J\(5),
	datac => \doc_ds18b20|Equal0~2_combout\,
	datad => \doc_ds18b20|Equal11~1_combout\,
	combout => \doc_ds18b20|Equal13~0_combout\);

-- Location: LCCOMB_X74_Y40_N6
\doc_ds18b20|J[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~61_combout\ = (\doc_ds18b20|STATE_RD_BIT_0\(1) & (!\doc_ds18b20|STATE_RD_BIT_0\(0) & (!\doc_ds18b20|Equal13~0_combout\))) # (!\doc_ds18b20|STATE_RD_BIT_0\(1) & (((!\doc_ds18b20|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datab => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datac => \doc_ds18b20|Equal13~0_combout\,
	datad => \doc_ds18b20|Equal12~0_combout\,
	combout => \doc_ds18b20|J[17]~61_combout\);

-- Location: LCCOMB_X75_Y40_N16
\doc_ds18b20|J[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~62_combout\ = (\doc_ds18b20|STATE.WAIT4MS~q\ & (\doc_ds18b20|Selector22~0_combout\)) # (!\doc_ds18b20|STATE.WAIT4MS~q\ & (((\doc_ds18b20|J[17]~61_combout\) # (\doc_ds18b20|Selector29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector22~0_combout\,
	datab => \doc_ds18b20|STATE.WAIT4MS~q\,
	datac => \doc_ds18b20|J[17]~61_combout\,
	datad => \doc_ds18b20|Selector29~5_combout\,
	combout => \doc_ds18b20|J[17]~62_combout\);

-- Location: LCCOMB_X72_Y40_N0
\doc_ds18b20|J[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~63_combout\ = (!\doc_ds18b20|STATE.WRITE_BIT_0~q\ & ((\doc_ds18b20|J[17]~60_combout\) # ((!\doc_ds18b20|STATE.WRITE_BIT_1~q\ & \doc_ds18b20|J[17]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~60_combout\,
	datab => \doc_ds18b20|STATE.WRITE_BIT_0~q\,
	datac => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datad => \doc_ds18b20|J[17]~62_combout\,
	combout => \doc_ds18b20|J[17]~63_combout\);

-- Location: LCCOMB_X72_Y40_N22
\doc_ds18b20|J[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|J[17]~64_combout\ = (\doc_ds18b20|STATE.RESET~q\ & (((\doc_ds18b20|J[17]~57_combout\) # (\doc_ds18b20|J[17]~63_combout\)))) # (!\doc_ds18b20|STATE.RESET~q\ & (\doc_ds18b20|J[17]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J[17]~53_combout\,
	datab => \doc_ds18b20|J[17]~57_combout\,
	datac => \doc_ds18b20|STATE.RESET~q\,
	datad => \doc_ds18b20|J[17]~63_combout\,
	combout => \doc_ds18b20|J[17]~64_combout\);

-- Location: FF_X73_Y42_N9
\doc_ds18b20|J[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[0]~feeder_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(0));

-- Location: FF_X73_Y42_N17
\doc_ds18b20|J[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|J[1]~24_combout\,
	sclr => \doc_ds18b20|J[17]~64_combout\,
	ena => \doc_ds18b20|J[17]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|J\(1));

-- Location: LCCOMB_X73_Y42_N2
\doc_ds18b20|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Equal12~0_combout\ = (\doc_ds18b20|J\(5)) # ((\doc_ds18b20|J\(1)) # ((\doc_ds18b20|J\(4)) # (!\doc_ds18b20|Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|J\(5),
	datab => \doc_ds18b20|J\(1),
	datac => \doc_ds18b20|J\(4),
	datad => \doc_ds18b20|Equal9~1_combout\,
	combout => \doc_ds18b20|Equal12~0_combout\);

-- Location: LCCOMB_X74_Y40_N2
\doc_ds18b20|STATE_RD_BIT_0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\ = (!\doc_ds18b20|STATE_RD_BIT_0[1]~0_combout\ & (\doc_ds18b20|STATE.READ_BIT~q\ & ((\doc_ds18b20|STATE_RD_BIT_0\(1)) # (!\doc_ds18b20|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE_RD_BIT_0[1]~0_combout\,
	datab => \doc_ds18b20|Equal12~0_combout\,
	datac => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datad => \doc_ds18b20|STATE.READ_BIT~q\,
	combout => \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\);

-- Location: LCCOMB_X74_Y40_N4
\doc_ds18b20|STATE_RD_BIT_0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_RD_BIT_0[0]~2_combout\ = \doc_ds18b20|STATE_RD_BIT_0\(0) $ (\doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datad => \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\,
	combout => \doc_ds18b20|STATE_RD_BIT_0[0]~2_combout\);

-- Location: FF_X74_Y40_N5
\doc_ds18b20|STATE_RD_BIT_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|STATE_RD_BIT_0[0]~2_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE_RD_BIT_0\(0));

-- Location: LCCOMB_X74_Y40_N30
\doc_ds18b20|STATE_RD_BIT_0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|STATE_RD_BIT_0[1]~3_combout\ = \doc_ds18b20|STATE_RD_BIT_0\(1) $ (((\doc_ds18b20|STATE_RD_BIT_0\(0) & \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datac => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datad => \doc_ds18b20|STATE_RD_BIT_0[1]~1_combout\,
	combout => \doc_ds18b20|STATE_RD_BIT_0[1]~3_combout\);

-- Location: FF_X74_Y40_N31
\doc_ds18b20|STATE_RD_BIT_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|STATE_RD_BIT_0[1]~3_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|STATE_RD_BIT_0\(1));

-- Location: LCCOMB_X75_Y40_N18
\doc_ds18b20|ds_in~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|ds_in~3_combout\ = (!\doc_ds18b20|STATE_RD_BIT_0\(0) & \doc_ds18b20|STATE.READ_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|STATE_RD_BIT_0\(0),
	datac => \doc_ds18b20|STATE.READ_BIT~q\,
	combout => \doc_ds18b20|ds_in~3_combout\);

-- Location: LCCOMB_X72_Y40_N24
\doc_ds18b20|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~5_combout\ = (\doc_ds18b20|STATE.WRITE_BIT_1~q\ & (!\doc_ds18b20|STATE_WR_BIT_0\(0) & ((\doc_ds18b20|ds_ena~q\) # (!\doc_ds18b20|STATE_WR_BIT_0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|STATE.WRITE_BIT_1~q\,
	datab => \doc_ds18b20|ds_ena~q\,
	datac => \doc_ds18b20|STATE_WR_BIT_0\(0),
	datad => \doc_ds18b20|STATE_WR_BIT_0\(1),
	combout => \doc_ds18b20|Selector2~5_combout\);

-- Location: LCCOMB_X72_Y40_N4
\doc_ds18b20|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector2~6_combout\ = (\doc_ds18b20|Selector2~4_combout\) # ((\doc_ds18b20|Selector2~5_combout\) # ((!\doc_ds18b20|STATE_RD_BIT_0\(1) & \doc_ds18b20|ds_in~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Selector2~4_combout\,
	datab => \doc_ds18b20|STATE_RD_BIT_0\(1),
	datac => \doc_ds18b20|ds_in~3_combout\,
	datad => \doc_ds18b20|Selector2~5_combout\,
	combout => \doc_ds18b20|Selector2~6_combout\);

-- Location: FF_X72_Y40_N5
\doc_ds18b20|ds_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector2~6_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|ds_ena~q\);

-- Location: LCCOMB_X69_Y46_N14
\dem_mode_10|q_reg[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[2]~14_combout\ = (\dem_mode_10|q_reg\(2) & (\dem_mode_10|q_reg[1]~13\ $ (GND))) # (!\dem_mode_10|q_reg\(2) & (!\dem_mode_10|q_reg[1]~13\ & VCC))
-- \dem_mode_10|q_reg[2]~15\ = CARRY((\dem_mode_10|q_reg\(2) & !\dem_mode_10|q_reg[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(2),
	datad => VCC,
	cin => \dem_mode_10|q_reg[1]~13\,
	combout => \dem_mode_10|q_reg[2]~14_combout\,
	cout => \dem_mode_10|q_reg[2]~15\);

-- Location: LCCOMB_X69_Y46_N18
\dem_mode_10|q_reg[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[4]~18_combout\ = (\dem_mode_10|q_reg\(4) & (\dem_mode_10|q_reg[3]~17\ $ (GND))) # (!\dem_mode_10|q_reg\(4) & (!\dem_mode_10|q_reg[3]~17\ & VCC))
-- \dem_mode_10|q_reg[4]~19\ = CARRY((\dem_mode_10|q_reg\(4) & !\dem_mode_10|q_reg[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(4),
	datad => VCC,
	cin => \dem_mode_10|q_reg[3]~17\,
	combout => \dem_mode_10|q_reg[4]~18_combout\,
	cout => \dem_mode_10|q_reg[4]~19\);

-- Location: LCCOMB_X69_Y46_N20
\dem_mode_10|q_reg[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[5]~20_combout\ = (\dem_mode_10|q_reg\(5) & (!\dem_mode_10|q_reg[4]~19\)) # (!\dem_mode_10|q_reg\(5) & ((\dem_mode_10|q_reg[4]~19\) # (GND)))
-- \dem_mode_10|q_reg[5]~21\ = CARRY((!\dem_mode_10|q_reg[4]~19\) # (!\dem_mode_10|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(5),
	datad => VCC,
	cin => \dem_mode_10|q_reg[4]~19\,
	combout => \dem_mode_10|q_reg[5]~20_combout\,
	cout => \dem_mode_10|q_reg[5]~21\);

-- Location: LCCOMB_X70_Y46_N14
\xung_ena|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~0_combout\ = (\xung_ena|d1hz_reg\(0) & (\xung_ena|d50hz_reg\(1) & VCC)) # (!\xung_ena|d1hz_reg\(0) & (\xung_ena|d50hz_reg\(1) $ (VCC)))
-- \xung_ena|Add12~1\ = CARRY((!\xung_ena|d1hz_reg\(0) & \xung_ena|d50hz_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(0),
	datab => \xung_ena|d50hz_reg\(1),
	datad => VCC,
	combout => \xung_ena|Add12~0_combout\,
	cout => \xung_ena|Add12~1\);

-- Location: FF_X70_Y46_N15
\xung_ena|d50hz_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(1));

-- Location: LCCOMB_X70_Y46_N16
\xung_ena|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~2_combout\ = (\xung_ena|d50hz_reg\(2) & (!\xung_ena|Add12~1\)) # (!\xung_ena|d50hz_reg\(2) & ((\xung_ena|Add12~1\) # (GND)))
-- \xung_ena|Add12~3\ = CARRY((!\xung_ena|Add12~1\) # (!\xung_ena|d50hz_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(2),
	datad => VCC,
	cin => \xung_ena|Add12~1\,
	combout => \xung_ena|Add12~2_combout\,
	cout => \xung_ena|Add12~3\);

-- Location: FF_X70_Y46_N17
\xung_ena|d50hz_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(2));

-- Location: LCCOMB_X70_Y46_N18
\xung_ena|Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~4_combout\ = (\xung_ena|d50hz_reg\(3) & (\xung_ena|Add12~3\ $ (GND))) # (!\xung_ena|d50hz_reg\(3) & (!\xung_ena|Add12~3\ & VCC))
-- \xung_ena|Add12~5\ = CARRY((\xung_ena|d50hz_reg\(3) & !\xung_ena|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(3),
	datad => VCC,
	cin => \xung_ena|Add12~3\,
	combout => \xung_ena|Add12~4_combout\,
	cout => \xung_ena|Add12~5\);

-- Location: FF_X70_Y46_N19
\xung_ena|d50hz_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(3));

-- Location: LCCOMB_X70_Y46_N20
\xung_ena|Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~6_combout\ = (\xung_ena|d50hz_reg\(4) & (!\xung_ena|Add12~5\)) # (!\xung_ena|d50hz_reg\(4) & ((\xung_ena|Add12~5\) # (GND)))
-- \xung_ena|Add12~7\ = CARRY((!\xung_ena|Add12~5\) # (!\xung_ena|d50hz_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(4),
	datad => VCC,
	cin => \xung_ena|Add12~5\,
	combout => \xung_ena|Add12~6_combout\,
	cout => \xung_ena|Add12~7\);

-- Location: FF_X70_Y46_N21
\xung_ena|d50hz_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(4));

-- Location: LCCOMB_X70_Y46_N22
\xung_ena|Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~8_combout\ = (\xung_ena|d50hz_reg\(5) & (\xung_ena|Add12~7\ $ (GND))) # (!\xung_ena|d50hz_reg\(5) & (!\xung_ena|Add12~7\ & VCC))
-- \xung_ena|Add12~9\ = CARRY((\xung_ena|d50hz_reg\(5) & !\xung_ena|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(5),
	datad => VCC,
	cin => \xung_ena|Add12~7\,
	combout => \xung_ena|Add12~8_combout\,
	cout => \xung_ena|Add12~9\);

-- Location: LCCOMB_X70_Y46_N28
\xung_ena|Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~14_combout\ = (\xung_ena|d50hz_reg\(8) & (!\xung_ena|Add12~13\)) # (!\xung_ena|d50hz_reg\(8) & ((\xung_ena|Add12~13\) # (GND)))
-- \xung_ena|Add12~15\ = CARRY((!\xung_ena|Add12~13\) # (!\xung_ena|d50hz_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(8),
	datad => VCC,
	cin => \xung_ena|Add12~13\,
	combout => \xung_ena|Add12~14_combout\,
	cout => \xung_ena|Add12~15\);

-- Location: FF_X70_Y46_N29
\xung_ena|d50hz_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(8));

-- Location: FF_X70_Y46_N23
\xung_ena|d50hz_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(5));

-- Location: LCCOMB_X70_Y46_N30
\xung_ena|Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~16_combout\ = (\xung_ena|d50hz_reg\(9) & (\xung_ena|Add12~15\ $ (GND))) # (!\xung_ena|d50hz_reg\(9) & (!\xung_ena|Add12~15\ & VCC))
-- \xung_ena|Add12~17\ = CARRY((\xung_ena|d50hz_reg\(9) & !\xung_ena|Add12~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(9),
	datad => VCC,
	cin => \xung_ena|Add12~15\,
	combout => \xung_ena|Add12~16_combout\,
	cout => \xung_ena|Add12~17\);

-- Location: LCCOMB_X70_Y46_N4
\xung_ena|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~2_combout\ = (!\xung_ena|d50hz_reg\(2) & (!\xung_ena|d50hz_reg\(3) & (!\xung_ena|d50hz_reg\(1) & !\xung_ena|d50hz_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(2),
	datab => \xung_ena|d50hz_reg\(3),
	datac => \xung_ena|d50hz_reg\(1),
	datad => \xung_ena|d50hz_reg\(4),
	combout => \xung_ena|Equal12~2_combout\);

-- Location: LCCOMB_X70_Y45_N0
\xung_ena|Add12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~18_combout\ = (\xung_ena|d50hz_reg\(10) & (!\xung_ena|Add12~17\)) # (!\xung_ena|d50hz_reg\(10) & ((\xung_ena|Add12~17\) # (GND)))
-- \xung_ena|Add12~19\ = CARRY((!\xung_ena|Add12~17\) # (!\xung_ena|d50hz_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(10),
	datad => VCC,
	cin => \xung_ena|Add12~17\,
	combout => \xung_ena|Add12~18_combout\,
	cout => \xung_ena|Add12~19\);

-- Location: FF_X70_Y45_N1
\xung_ena|d50hz_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(10));

-- Location: LCCOMB_X70_Y45_N2
\xung_ena|Add12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~20_combout\ = (\xung_ena|d50hz_reg\(11) & (\xung_ena|Add12~19\ $ (GND))) # (!\xung_ena|d50hz_reg\(11) & (!\xung_ena|Add12~19\ & VCC))
-- \xung_ena|Add12~21\ = CARRY((\xung_ena|d50hz_reg\(11) & !\xung_ena|Add12~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(11),
	datad => VCC,
	cin => \xung_ena|Add12~19\,
	combout => \xung_ena|Add12~20_combout\,
	cout => \xung_ena|Add12~21\);

-- Location: FF_X70_Y45_N3
\xung_ena|d50hz_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(11));

-- Location: LCCOMB_X70_Y45_N4
\xung_ena|Add12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~22_combout\ = (\xung_ena|d50hz_reg\(12) & (!\xung_ena|Add12~21\)) # (!\xung_ena|d50hz_reg\(12) & ((\xung_ena|Add12~21\) # (GND)))
-- \xung_ena|Add12~23\ = CARRY((!\xung_ena|Add12~21\) # (!\xung_ena|d50hz_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(12),
	datad => VCC,
	cin => \xung_ena|Add12~21\,
	combout => \xung_ena|Add12~22_combout\,
	cout => \xung_ena|Add12~23\);

-- Location: FF_X70_Y45_N5
\xung_ena|d50hz_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(12));

-- Location: LCCOMB_X70_Y45_N22
\xung_ena|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~1_combout\ = (!\xung_ena|d50hz_reg\(7) & (!\xung_ena|d50hz_reg\(11) & (!\xung_ena|d50hz_reg\(12) & !\xung_ena|d50hz_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(7),
	datab => \xung_ena|d50hz_reg\(11),
	datac => \xung_ena|d50hz_reg\(12),
	datad => \xung_ena|d50hz_reg\(10),
	combout => \xung_ena|Equal12~1_combout\);

-- Location: LCCOMB_X70_Y45_N6
\xung_ena|Add12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~24_combout\ = (\xung_ena|d50hz_reg\(13) & (\xung_ena|Add12~23\ $ (GND))) # (!\xung_ena|d50hz_reg\(13) & (!\xung_ena|Add12~23\ & VCC))
-- \xung_ena|Add12~25\ = CARRY((\xung_ena|d50hz_reg\(13) & !\xung_ena|Add12~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(13),
	datad => VCC,
	cin => \xung_ena|Add12~23\,
	combout => \xung_ena|Add12~24_combout\,
	cout => \xung_ena|Add12~25\);

-- Location: LCCOMB_X70_Y45_N8
\xung_ena|Add12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~26_combout\ = (\xung_ena|d50hz_reg\(14) & (!\xung_ena|Add12~25\)) # (!\xung_ena|d50hz_reg\(14) & ((\xung_ena|Add12~25\) # (GND)))
-- \xung_ena|Add12~27\ = CARRY((!\xung_ena|Add12~25\) # (!\xung_ena|d50hz_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(14),
	datad => VCC,
	cin => \xung_ena|Add12~25\,
	combout => \xung_ena|Add12~26_combout\,
	cout => \xung_ena|Add12~27\);

-- Location: LCCOMB_X70_Y45_N30
\xung_ena|d50hz_next[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[14]~6_combout\ = (\xung_ena|Add12~26_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~4_combout\,
	datac => \xung_ena|Add12~26_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[14]~6_combout\);

-- Location: FF_X70_Y45_N31
\xung_ena|d50hz_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[14]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(14));

-- Location: LCCOMB_X70_Y45_N10
\xung_ena|Add12~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~28_combout\ = (\xung_ena|d50hz_reg\(15) & (\xung_ena|Add12~27\ $ (GND))) # (!\xung_ena|d50hz_reg\(15) & (!\xung_ena|Add12~27\ & VCC))
-- \xung_ena|Add12~29\ = CARRY((\xung_ena|d50hz_reg\(15) & !\xung_ena|Add12~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(15),
	datad => VCC,
	cin => \xung_ena|Add12~27\,
	combout => \xung_ena|Add12~28_combout\,
	cout => \xung_ena|Add12~29\);

-- Location: LCCOMB_X70_Y45_N12
\xung_ena|Add12~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~30_combout\ = (\xung_ena|d50hz_reg\(16) & (!\xung_ena|Add12~29\)) # (!\xung_ena|d50hz_reg\(16) & ((\xung_ena|Add12~29\) # (GND)))
-- \xung_ena|Add12~31\ = CARRY((!\xung_ena|Add12~29\) # (!\xung_ena|d50hz_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(16),
	datad => VCC,
	cin => \xung_ena|Add12~29\,
	combout => \xung_ena|Add12~30_combout\,
	cout => \xung_ena|Add12~31\);

-- Location: LCCOMB_X70_Y45_N24
\xung_ena|d50hz_next[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[16]~4_combout\ = (\xung_ena|Add12~30_combout\ & (((!\xung_ena|Equal12~4_combout\) # (!\xung_ena|Equal12~3_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~3_combout\,
	datac => \xung_ena|Add12~30_combout\,
	datad => \xung_ena|Equal12~4_combout\,
	combout => \xung_ena|d50hz_next[16]~4_combout\);

-- Location: FF_X70_Y45_N25
\xung_ena|d50hz_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(16));

-- Location: LCCOMB_X70_Y45_N14
\xung_ena|Add12~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~32_combout\ = (\xung_ena|d50hz_reg\(17) & (\xung_ena|Add12~31\ $ (GND))) # (!\xung_ena|d50hz_reg\(17) & (!\xung_ena|Add12~31\ & VCC))
-- \xung_ena|Add12~33\ = CARRY((\xung_ena|d50hz_reg\(17) & !\xung_ena|Add12~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(17),
	datad => VCC,
	cin => \xung_ena|Add12~31\,
	combout => \xung_ena|Add12~32_combout\,
	cout => \xung_ena|Add12~33\);

-- Location: LCCOMB_X70_Y45_N26
\xung_ena|d50hz_next[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[17]~3_combout\ = (\xung_ena|Add12~32_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~4_combout\,
	datac => \xung_ena|Add12~32_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[17]~3_combout\);

-- Location: FF_X70_Y45_N27
\xung_ena|d50hz_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(17));

-- Location: LCCOMB_X70_Y45_N16
\xung_ena|Add12~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~34_combout\ = (\xung_ena|d50hz_reg\(18) & (!\xung_ena|Add12~33\)) # (!\xung_ena|d50hz_reg\(18) & ((\xung_ena|Add12~33\) # (GND)))
-- \xung_ena|Add12~35\ = CARRY((!\xung_ena|Add12~33\) # (!\xung_ena|d50hz_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d50hz_reg\(18),
	datad => VCC,
	cin => \xung_ena|Add12~33\,
	combout => \xung_ena|Add12~34_combout\,
	cout => \xung_ena|Add12~35\);

-- Location: LCCOMB_X70_Y45_N20
\xung_ena|d50hz_next[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[18]~2_combout\ = (\xung_ena|Add12~34_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~4_combout\,
	datac => \xung_ena|Add12~34_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[18]~2_combout\);

-- Location: FF_X70_Y45_N21
\xung_ena|d50hz_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(18));

-- Location: LCCOMB_X66_Y46_N6
\xung_ena|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~0_combout\ = \xung_ena|d1hz_reg\(0) $ (GND)
-- \xung_ena|Add0~1\ = CARRY(!\xung_ena|d1hz_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(0),
	datad => VCC,
	combout => \xung_ena|Add0~0_combout\,
	cout => \xung_ena|Add0~1\);

-- Location: LCCOMB_X66_Y46_N0
\xung_ena|d1hz_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_reg[0]~0_combout\ = !\xung_ena|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \xung_ena|Add0~0_combout\,
	combout => \xung_ena|d1hz_reg[0]~0_combout\);

-- Location: FF_X66_Y46_N1
\xung_ena|d1hz_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(0));

-- Location: LCCOMB_X70_Y46_N6
\xung_ena|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~0_combout\ = (\xung_ena|d50hz_reg\(16) & (\xung_ena|d50hz_reg\(17) & (\xung_ena|d50hz_reg\(18) & \xung_ena|d1hz_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(16),
	datab => \xung_ena|d50hz_reg\(17),
	datac => \xung_ena|d50hz_reg\(18),
	datad => \xung_ena|d1hz_reg\(0),
	combout => \xung_ena|Equal12~0_combout\);

-- Location: LCCOMB_X70_Y46_N2
\xung_ena|Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~3_combout\ = (\xung_ena|Equal12~2_combout\ & (\xung_ena|Equal12~1_combout\ & \xung_ena|Equal12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Equal12~2_combout\,
	datac => \xung_ena|Equal12~1_combout\,
	datad => \xung_ena|Equal12~0_combout\,
	combout => \xung_ena|Equal12~3_combout\);

-- Location: LCCOMB_X70_Y46_N0
\xung_ena|d50hz_next[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[9]~0_combout\ = (\xung_ena|Add12~16_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~4_combout\,
	datac => \xung_ena|Add12~16_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[9]~0_combout\);

-- Location: FF_X70_Y46_N1
\xung_ena|d50hz_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(9));

-- Location: LCCOMB_X70_Y46_N8
\xung_ena|Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal12~4_combout\ = (\xung_ena|d50hz_reg\(6) & (!\xung_ena|d50hz_reg\(8) & (!\xung_ena|d50hz_reg\(5) & \xung_ena|d50hz_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(6),
	datab => \xung_ena|d50hz_reg\(8),
	datac => \xung_ena|d50hz_reg\(5),
	datad => \xung_ena|d50hz_reg\(9),
	combout => \xung_ena|Equal12~4_combout\);

-- Location: LCCOMB_X70_Y45_N18
\xung_ena|Add12~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add12~36_combout\ = \xung_ena|Add12~35\ $ (!\xung_ena|d50hz_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \xung_ena|d50hz_reg\(19),
	cin => \xung_ena|Add12~35\,
	combout => \xung_ena|Add12~36_combout\);

-- Location: LCCOMB_X70_Y45_N28
\xung_ena|d50hz_next[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d50hz_next[19]~5_combout\ = (\xung_ena|Add12~36_combout\ & (((!\xung_ena|Equal12~3_combout\) # (!\xung_ena|Equal12~4_combout\)) # (!\xung_ena|Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal12~5_combout\,
	datab => \xung_ena|Equal12~4_combout\,
	datac => \xung_ena|Add12~36_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|d50hz_next[19]~5_combout\);

-- Location: FF_X70_Y45_N29
\xung_ena|d50hz_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d50hz_next[19]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(19));

-- Location: FF_X70_Y45_N11
\xung_ena|d50hz_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(15));

-- Location: FF_X70_Y45_N7
\xung_ena|d50hz_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add12~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d50hz_reg\(13));

-- Location: LCCOMB_X69_Y45_N0
\xung_ena|Equal28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal28~1_combout\ = (!\xung_ena|d50hz_reg\(14) & (!\xung_ena|d50hz_reg\(19) & (\xung_ena|d50hz_reg\(15) & \xung_ena|d50hz_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(14),
	datab => \xung_ena|d50hz_reg\(19),
	datac => \xung_ena|d50hz_reg\(15),
	datad => \xung_ena|d50hz_reg\(13),
	combout => \xung_ena|Equal28~1_combout\);

-- Location: LCCOMB_X70_Y46_N12
\xung_ena|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal28~0_combout\ = (!\xung_ena|d50hz_reg\(6) & (\xung_ena|d50hz_reg\(8) & (\xung_ena|d50hz_reg\(5) & !\xung_ena|d50hz_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d50hz_reg\(6),
	datab => \xung_ena|d50hz_reg\(8),
	datac => \xung_ena|d50hz_reg\(5),
	datad => \xung_ena|d50hz_reg\(9),
	combout => \xung_ena|Equal28~0_combout\);

-- Location: LCCOMB_X69_Y46_N2
\xung_ena|Equal28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal28~2_combout\ = (\xung_ena|Equal28~1_combout\ & (\xung_ena|Equal28~0_combout\ & \xung_ena|Equal12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Equal28~1_combout\,
	datac => \xung_ena|Equal28~0_combout\,
	datad => \xung_ena|Equal12~3_combout\,
	combout => \xung_ena|Equal28~2_combout\);

-- Location: FF_X69_Y46_N21
\dem_mode_10|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[5]~20_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(5));

-- Location: LCCOMB_X69_Y46_N22
\dem_mode_10|q_reg[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[6]~22_combout\ = (\dem_mode_10|q_reg\(6) & (\dem_mode_10|q_reg[5]~21\ $ (GND))) # (!\dem_mode_10|q_reg\(6) & (!\dem_mode_10|q_reg[5]~21\ & VCC))
-- \dem_mode_10|q_reg[6]~23\ = CARRY((\dem_mode_10|q_reg\(6) & !\dem_mode_10|q_reg[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(6),
	datad => VCC,
	cin => \dem_mode_10|q_reg[5]~21\,
	combout => \dem_mode_10|q_reg[6]~22_combout\,
	cout => \dem_mode_10|q_reg[6]~23\);

-- Location: LCCOMB_X69_Y46_N24
\dem_mode_10|q_reg[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[7]~24_combout\ = (\dem_mode_10|q_reg\(7) & (!\dem_mode_10|q_reg[6]~23\)) # (!\dem_mode_10|q_reg\(7) & ((\dem_mode_10|q_reg[6]~23\) # (GND)))
-- \dem_mode_10|q_reg[7]~25\ = CARRY((!\dem_mode_10|q_reg[6]~23\) # (!\dem_mode_10|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(7),
	datad => VCC,
	cin => \dem_mode_10|q_reg[6]~23\,
	combout => \dem_mode_10|q_reg[7]~24_combout\,
	cout => \dem_mode_10|q_reg[7]~25\);

-- Location: FF_X69_Y46_N25
\dem_mode_10|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[7]~24_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(7));

-- Location: LCCOMB_X69_Y46_N26
\dem_mode_10|q_reg[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[8]~26_combout\ = (\dem_mode_10|q_reg\(8) & (\dem_mode_10|q_reg[7]~25\ $ (GND))) # (!\dem_mode_10|q_reg\(8) & (!\dem_mode_10|q_reg[7]~25\ & VCC))
-- \dem_mode_10|q_reg[8]~27\ = CARRY((\dem_mode_10|q_reg\(8) & !\dem_mode_10|q_reg[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(8),
	datad => VCC,
	cin => \dem_mode_10|q_reg[7]~25\,
	combout => \dem_mode_10|q_reg[8]~26_combout\,
	cout => \dem_mode_10|q_reg[8]~27\);

-- Location: FF_X69_Y46_N27
\dem_mode_10|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[8]~26_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(8));

-- Location: LCCOMB_X69_Y46_N28
\dem_mode_10|q_reg[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[9]~28_combout\ = \dem_mode_10|q_reg[8]~27\ $ (\dem_mode_10|q_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dem_mode_10|q_reg\(9),
	cin => \dem_mode_10|q_reg[8]~27\,
	combout => \dem_mode_10|q_reg[9]~28_combout\);

-- Location: FF_X69_Y46_N29
\dem_mode_10|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[9]~28_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(9));

-- Location: LCCOMB_X69_Y46_N4
\dem_mode_10|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|LessThan1~1_combout\ = (((\dem_mode_10|q_reg\(8)) # (\dem_mode_10|q_reg\(9))) # (!\LessThan25~0_combout\)) # (!\dem_mode_10|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|LessThan1~0_combout\,
	datab => \LessThan25~0_combout\,
	datac => \dem_mode_10|q_reg\(8),
	datad => \dem_mode_10|q_reg\(9),
	combout => \dem_mode_10|LessThan1~1_combout\);

-- Location: FF_X69_Y46_N15
\dem_mode_10|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[2]~14_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(2));

-- Location: LCCOMB_X69_Y46_N16
\dem_mode_10|q_reg[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dem_mode_10|q_reg[3]~16_combout\ = (\dem_mode_10|q_reg\(3) & (!\dem_mode_10|q_reg[2]~15\)) # (!\dem_mode_10|q_reg\(3) & ((\dem_mode_10|q_reg[2]~15\) # (GND)))
-- \dem_mode_10|q_reg[3]~17\ = CARRY((!\dem_mode_10|q_reg[2]~15\) # (!\dem_mode_10|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dem_mode_10|q_reg\(3),
	datad => VCC,
	cin => \dem_mode_10|q_reg[2]~15\,
	combout => \dem_mode_10|q_reg[3]~16_combout\,
	cout => \dem_mode_10|q_reg[3]~17\);

-- Location: FF_X69_Y46_N17
\dem_mode_10|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[3]~16_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(3));

-- Location: FF_X69_Y46_N19
\dem_mode_10|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[4]~18_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(4));

-- Location: FF_X69_Y46_N23
\dem_mode_10|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \dem_mode_10|q_reg[6]~22_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \dem_mode_10|LessThan1~1_combout\,
	ena => \xung_ena|Equal28~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dem_mode_10|q_reg\(6));

-- Location: LCCOMB_X69_Y46_N8
\LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~0_combout\ = (!\dem_mode_10|q_reg\(5) & (!\dem_mode_10|q_reg\(4) & (!\dem_mode_10|q_reg\(6) & !\dem_mode_10|q_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dem_mode_10|q_reg\(5),
	datab => \dem_mode_10|q_reg\(4),
	datac => \dem_mode_10|q_reg\(6),
	datad => \dem_mode_10|q_reg\(7),
	combout => \LessThan25~0_combout\);

-- Location: LCCOMB_X69_Y46_N0
\LessThan25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~2_combout\ = (\LessThan25~1_combout\ & (\LessThan25~0_combout\ & (!\dem_mode_10|q_reg\(8) & !\dem_mode_10|q_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~1_combout\,
	datab => \LessThan25~0_combout\,
	datac => \dem_mode_10|q_reg\(8),
	datad => \dem_mode_10|q_reg\(9),
	combout => \LessThan25~2_combout\);

-- Location: LCCOMB_X66_Y42_N6
\thoi_gian|giay_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[0]~6_combout\ = \thoi_gian|giay_reg\(0) $ (VCC)
-- \thoi_gian|giay_reg[0]~7\ = CARRY(\thoi_gian|giay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datad => VCC,
	combout => \thoi_gian|giay_reg[0]~6_combout\,
	cout => \thoi_gian|giay_reg[0]~7\);

-- Location: LCCOMB_X66_Y42_N8
\thoi_gian|giay_reg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[1]~8_combout\ = (\thoi_gian|giay_reg\(1) & (!\thoi_gian|giay_reg[0]~7\)) # (!\thoi_gian|giay_reg\(1) & ((\thoi_gian|giay_reg[0]~7\) # (GND)))
-- \thoi_gian|giay_reg[1]~9\ = CARRY((!\thoi_gian|giay_reg[0]~7\) # (!\thoi_gian|giay_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|giay_reg\(1),
	datad => VCC,
	cin => \thoi_gian|giay_reg[0]~7\,
	combout => \thoi_gian|giay_reg[1]~8_combout\,
	cout => \thoi_gian|giay_reg[1]~9\);

-- Location: LCCOMB_X66_Y42_N10
\thoi_gian|giay_reg[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[2]~10_combout\ = (\thoi_gian|giay_reg\(2) & (\thoi_gian|giay_reg[1]~9\ $ (GND))) # (!\thoi_gian|giay_reg\(2) & (!\thoi_gian|giay_reg[1]~9\ & VCC))
-- \thoi_gian|giay_reg[2]~11\ = CARRY((\thoi_gian|giay_reg\(2) & !\thoi_gian|giay_reg[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(2),
	datad => VCC,
	cin => \thoi_gian|giay_reg[1]~9\,
	combout => \thoi_gian|giay_reg[2]~10_combout\,
	cout => \thoi_gian|giay_reg[2]~11\);

-- Location: LCCOMB_X66_Y42_N12
\thoi_gian|giay_reg[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[3]~12_combout\ = (\thoi_gian|giay_reg\(3) & (!\thoi_gian|giay_reg[2]~11\)) # (!\thoi_gian|giay_reg\(3) & ((\thoi_gian|giay_reg[2]~11\) # (GND)))
-- \thoi_gian|giay_reg[3]~13\ = CARRY((!\thoi_gian|giay_reg[2]~11\) # (!\thoi_gian|giay_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datad => VCC,
	cin => \thoi_gian|giay_reg[2]~11\,
	combout => \thoi_gian|giay_reg[3]~12_combout\,
	cout => \thoi_gian|giay_reg[3]~13\);

-- Location: LCCOMB_X66_Y42_N14
\thoi_gian|giay_reg[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[4]~14_combout\ = (\thoi_gian|giay_reg\(4) & (\thoi_gian|giay_reg[3]~13\ $ (GND))) # (!\thoi_gian|giay_reg\(4) & (!\thoi_gian|giay_reg[3]~13\ & VCC))
-- \thoi_gian|giay_reg[4]~15\ = CARRY((\thoi_gian|giay_reg\(4) & !\thoi_gian|giay_reg[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|giay_reg\(4),
	datad => VCC,
	cin => \thoi_gian|giay_reg[3]~13\,
	combout => \thoi_gian|giay_reg[4]~14_combout\,
	cout => \thoi_gian|giay_reg[4]~15\);

-- Location: LCCOMB_X66_Y46_N8
\xung_ena|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~2_combout\ = (\xung_ena|d1hz_reg\(1) & (!\xung_ena|Add0~1\)) # (!\xung_ena|d1hz_reg\(1) & ((\xung_ena|Add0~1\) # (GND)))
-- \xung_ena|Add0~3\ = CARRY((!\xung_ena|Add0~1\) # (!\xung_ena|d1hz_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(1),
	datad => VCC,
	cin => \xung_ena|Add0~1\,
	combout => \xung_ena|Add0~2_combout\,
	cout => \xung_ena|Add0~3\);

-- Location: FF_X66_Y46_N9
\xung_ena|d1hz_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(1));

-- Location: LCCOMB_X66_Y46_N10
\xung_ena|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~4_combout\ = (\xung_ena|d1hz_reg\(2) & (\xung_ena|Add0~3\ $ (GND))) # (!\xung_ena|d1hz_reg\(2) & (!\xung_ena|Add0~3\ & VCC))
-- \xung_ena|Add0~5\ = CARRY((\xung_ena|d1hz_reg\(2) & !\xung_ena|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(2),
	datad => VCC,
	cin => \xung_ena|Add0~3\,
	combout => \xung_ena|Add0~4_combout\,
	cout => \xung_ena|Add0~5\);

-- Location: LCCOMB_X66_Y46_N14
\xung_ena|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~8_combout\ = (\xung_ena|d1hz_reg\(4) & (\xung_ena|Add0~7\ $ (GND))) # (!\xung_ena|d1hz_reg\(4) & (!\xung_ena|Add0~7\ & VCC))
-- \xung_ena|Add0~9\ = CARRY((\xung_ena|d1hz_reg\(4) & !\xung_ena|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(4),
	datad => VCC,
	cin => \xung_ena|Add0~7\,
	combout => \xung_ena|Add0~8_combout\,
	cout => \xung_ena|Add0~9\);

-- Location: FF_X66_Y46_N15
\xung_ena|d1hz_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(4));

-- Location: LCCOMB_X66_Y46_N16
\xung_ena|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~10_combout\ = (\xung_ena|d1hz_reg\(5) & (!\xung_ena|Add0~9\)) # (!\xung_ena|d1hz_reg\(5) & ((\xung_ena|Add0~9\) # (GND)))
-- \xung_ena|Add0~11\ = CARRY((!\xung_ena|Add0~9\) # (!\xung_ena|d1hz_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(5),
	datad => VCC,
	cin => \xung_ena|Add0~9\,
	combout => \xung_ena|Add0~10_combout\,
	cout => \xung_ena|Add0~11\);

-- Location: FF_X66_Y46_N17
\xung_ena|d1hz_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(5));

-- Location: LCCOMB_X66_Y46_N18
\xung_ena|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~12_combout\ = (\xung_ena|d1hz_reg\(6) & (\xung_ena|Add0~11\ $ (GND))) # (!\xung_ena|d1hz_reg\(6) & (!\xung_ena|Add0~11\ & VCC))
-- \xung_ena|Add0~13\ = CARRY((\xung_ena|d1hz_reg\(6) & !\xung_ena|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(6),
	datad => VCC,
	cin => \xung_ena|Add0~11\,
	combout => \xung_ena|Add0~12_combout\,
	cout => \xung_ena|Add0~13\);

-- Location: FF_X66_Y46_N19
\xung_ena|d1hz_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(6));

-- Location: LCCOMB_X66_Y46_N20
\xung_ena|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~14_combout\ = (\xung_ena|d1hz_reg\(7) & (!\xung_ena|Add0~13\)) # (!\xung_ena|d1hz_reg\(7) & ((\xung_ena|Add0~13\) # (GND)))
-- \xung_ena|Add0~15\ = CARRY((!\xung_ena|Add0~13\) # (!\xung_ena|d1hz_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(7),
	datad => VCC,
	cin => \xung_ena|Add0~13\,
	combout => \xung_ena|Add0~14_combout\,
	cout => \xung_ena|Add0~15\);

-- Location: LCCOMB_X65_Y46_N30
\xung_ena|d1hz_next[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[7]~7_combout\ = (!\xung_ena|Equal0~8_combout\ & \xung_ena|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Equal0~8_combout\,
	datac => \xung_ena|Add0~14_combout\,
	combout => \xung_ena|d1hz_next[7]~7_combout\);

-- Location: FF_X65_Y46_N31
\xung_ena|d1hz_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(7));

-- Location: LCCOMB_X66_Y46_N24
\xung_ena|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~18_combout\ = (\xung_ena|d1hz_reg\(9) & (!\xung_ena|Add0~17\)) # (!\xung_ena|d1hz_reg\(9) & ((\xung_ena|Add0~17\) # (GND)))
-- \xung_ena|Add0~19\ = CARRY((!\xung_ena|Add0~17\) # (!\xung_ena|d1hz_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(9),
	datad => VCC,
	cin => \xung_ena|Add0~17\,
	combout => \xung_ena|Add0~18_combout\,
	cout => \xung_ena|Add0~19\);

-- Location: FF_X66_Y46_N25
\xung_ena|d1hz_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(9));

-- Location: LCCOMB_X66_Y46_N26
\xung_ena|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~20_combout\ = (\xung_ena|d1hz_reg\(10) & (\xung_ena|Add0~19\ $ (GND))) # (!\xung_ena|d1hz_reg\(10) & (!\xung_ena|Add0~19\ & VCC))
-- \xung_ena|Add0~21\ = CARRY((\xung_ena|d1hz_reg\(10) & !\xung_ena|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(10),
	datad => VCC,
	cin => \xung_ena|Add0~19\,
	combout => \xung_ena|Add0~20_combout\,
	cout => \xung_ena|Add0~21\);

-- Location: LCCOMB_X66_Y46_N28
\xung_ena|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~22_combout\ = (\xung_ena|d1hz_reg\(11) & (!\xung_ena|Add0~21\)) # (!\xung_ena|d1hz_reg\(11) & ((\xung_ena|Add0~21\) # (GND)))
-- \xung_ena|Add0~23\ = CARRY((!\xung_ena|Add0~21\) # (!\xung_ena|d1hz_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(11),
	datad => VCC,
	cin => \xung_ena|Add0~21\,
	combout => \xung_ena|Add0~22_combout\,
	cout => \xung_ena|Add0~23\);

-- Location: FF_X66_Y46_N29
\xung_ena|d1hz_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(11));

-- Location: LCCOMB_X65_Y45_N24
\xung_ena|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~5_combout\ = (!\xung_ena|d1hz_reg\(6) & (!\xung_ena|d1hz_reg\(11) & (\xung_ena|d1hz_reg\(7) & \xung_ena|d1hz_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(6),
	datab => \xung_ena|d1hz_reg\(11),
	datac => \xung_ena|d1hz_reg\(7),
	datad => \xung_ena|d1hz_reg\(15),
	combout => \xung_ena|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y45_N18
\xung_ena|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~44_combout\ = (\xung_ena|d1hz_reg\(22) & (\xung_ena|Add0~43\ $ (GND))) # (!\xung_ena|d1hz_reg\(22) & (!\xung_ena|Add0~43\ & VCC))
-- \xung_ena|Add0~45\ = CARRY((\xung_ena|d1hz_reg\(22) & !\xung_ena|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(22),
	datad => VCC,
	cin => \xung_ena|Add0~43\,
	combout => \xung_ena|Add0~44_combout\,
	cout => \xung_ena|Add0~45\);

-- Location: LCCOMB_X66_Y45_N20
\xung_ena|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~46_combout\ = (\xung_ena|d1hz_reg\(23) & (!\xung_ena|Add0~45\)) # (!\xung_ena|d1hz_reg\(23) & ((\xung_ena|Add0~45\) # (GND)))
-- \xung_ena|Add0~47\ = CARRY((!\xung_ena|Add0~45\) # (!\xung_ena|d1hz_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(23),
	datad => VCC,
	cin => \xung_ena|Add0~45\,
	combout => \xung_ena|Add0~46_combout\,
	cout => \xung_ena|Add0~47\);

-- Location: LCCOMB_X65_Y45_N20
\xung_ena|d1hz_next[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[23]~10_combout\ = (\xung_ena|Add0~46_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xung_ena|Add0~46_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[23]~10_combout\);

-- Location: FF_X65_Y45_N21
\xung_ena|d1hz_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[23]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(23));

-- Location: LCCOMB_X66_Y45_N22
\xung_ena|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~48_combout\ = (\xung_ena|d1hz_reg\(24) & (\xung_ena|Add0~47\ $ (GND))) # (!\xung_ena|d1hz_reg\(24) & (!\xung_ena|Add0~47\ & VCC))
-- \xung_ena|Add0~49\ = CARRY((\xung_ena|d1hz_reg\(24) & !\xung_ena|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(24),
	datad => VCC,
	cin => \xung_ena|Add0~47\,
	combout => \xung_ena|Add0~48_combout\,
	cout => \xung_ena|Add0~49\);

-- Location: FF_X66_Y45_N23
\xung_ena|d1hz_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(24));

-- Location: LCCOMB_X66_Y45_N24
\xung_ena|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~50_combout\ = \xung_ena|d1hz_reg\(25) $ (\xung_ena|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(25),
	cin => \xung_ena|Add0~49\,
	combout => \xung_ena|Add0~50_combout\);

-- Location: LCCOMB_X66_Y45_N26
\xung_ena|d1hz_next[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[25]~11_combout\ = (\xung_ena|Add0~50_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Add0~50_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[25]~11_combout\);

-- Location: FF_X66_Y45_N27
\xung_ena|d1hz_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[25]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(25));

-- Location: LCCOMB_X65_Y45_N0
\xung_ena|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~7_combout\ = (!\xung_ena|d1hz_reg\(24) & \xung_ena|d1hz_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(24),
	datad => \xung_ena|d1hz_reg\(25),
	combout => \xung_ena|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y45_N10
\xung_ena|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~8_combout\ = (\xung_ena|Equal0~6_combout\ & (\xung_ena|Equal0~5_combout\ & (\xung_ena|Equal0~4_combout\ & \xung_ena|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal0~6_combout\,
	datab => \xung_ena|Equal0~5_combout\,
	datac => \xung_ena|Equal0~4_combout\,
	datad => \xung_ena|Equal0~7_combout\,
	combout => \xung_ena|Equal0~8_combout\);

-- Location: LCCOMB_X65_Y45_N6
\xung_ena|d1hz_next[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[15]~8_combout\ = (\xung_ena|Add0~30_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Add0~30_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[15]~8_combout\);

-- Location: FF_X65_Y45_N7
\xung_ena|d1hz_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(15));

-- Location: LCCOMB_X66_Y46_N30
\xung_ena|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~24_combout\ = (\xung_ena|d1hz_reg\(12) & (\xung_ena|Add0~23\ $ (GND))) # (!\xung_ena|d1hz_reg\(12) & (!\xung_ena|Add0~23\ & VCC))
-- \xung_ena|Add0~25\ = CARRY((\xung_ena|d1hz_reg\(12) & !\xung_ena|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(12),
	datad => VCC,
	cin => \xung_ena|Add0~23\,
	combout => \xung_ena|Add0~24_combout\,
	cout => \xung_ena|Add0~25\);

-- Location: LCCOMB_X66_Y45_N2
\xung_ena|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~28_combout\ = (\xung_ena|d1hz_reg\(14) & (\xung_ena|Add0~27\ $ (GND))) # (!\xung_ena|d1hz_reg\(14) & (!\xung_ena|Add0~27\ & VCC))
-- \xung_ena|Add0~29\ = CARRY((\xung_ena|d1hz_reg\(14) & !\xung_ena|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(14),
	datad => VCC,
	cin => \xung_ena|Add0~27\,
	combout => \xung_ena|Add0~28_combout\,
	cout => \xung_ena|Add0~29\);

-- Location: LCCOMB_X66_Y45_N28
\xung_ena|d1hz_next[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[14]~2_combout\ = (\xung_ena|Add0~28_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Add0~28_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[14]~2_combout\);

-- Location: FF_X66_Y45_N29
\xung_ena|d1hz_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(14));

-- Location: LCCOMB_X66_Y45_N8
\xung_ena|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~34_combout\ = (\xung_ena|d1hz_reg\(17) & (!\xung_ena|Add0~33\)) # (!\xung_ena|d1hz_reg\(17) & ((\xung_ena|Add0~33\) # (GND)))
-- \xung_ena|Add0~35\ = CARRY((!\xung_ena|Add0~33\) # (!\xung_ena|d1hz_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(17),
	datad => VCC,
	cin => \xung_ena|Add0~33\,
	combout => \xung_ena|Add0~34_combout\,
	cout => \xung_ena|Add0~35\);

-- Location: LCCOMB_X65_Y45_N18
\xung_ena|d1hz_next[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[17]~9_combout\ = (\xung_ena|Add0~34_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xung_ena|Add0~34_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[17]~9_combout\);

-- Location: FF_X65_Y45_N19
\xung_ena|d1hz_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[17]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(17));

-- Location: LCCOMB_X66_Y45_N12
\xung_ena|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~38_combout\ = (\xung_ena|d1hz_reg\(19) & (!\xung_ena|Add0~37\)) # (!\xung_ena|d1hz_reg\(19) & ((\xung_ena|Add0~37\) # (GND)))
-- \xung_ena|Add0~39\ = CARRY((!\xung_ena|Add0~37\) # (!\xung_ena|d1hz_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(19),
	datad => VCC,
	cin => \xung_ena|Add0~37\,
	combout => \xung_ena|Add0~38_combout\,
	cout => \xung_ena|Add0~39\);

-- Location: LCCOMB_X65_Y45_N28
\xung_ena|d1hz_next[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[19]~3_combout\ = (\xung_ena|Add0~38_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xung_ena|Add0~38_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[19]~3_combout\);

-- Location: FF_X65_Y45_N29
\xung_ena|d1hz_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[19]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(19));

-- Location: LCCOMB_X66_Y45_N14
\xung_ena|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Add0~40_combout\ = (\xung_ena|d1hz_reg\(20) & (\xung_ena|Add0~39\ $ (GND))) # (!\xung_ena|d1hz_reg\(20) & (!\xung_ena|Add0~39\ & VCC))
-- \xung_ena|Add0~41\ = CARRY((\xung_ena|d1hz_reg\(20) & !\xung_ena|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(20),
	datad => VCC,
	cin => \xung_ena|Add0~39\,
	combout => \xung_ena|Add0~40_combout\,
	cout => \xung_ena|Add0~41\);

-- Location: LCCOMB_X65_Y45_N14
\xung_ena|d1hz_next[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[22]~6_combout\ = (\xung_ena|Add0~44_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Add0~44_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[22]~6_combout\);

-- Location: FF_X65_Y45_N15
\xung_ena|d1hz_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[22]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(22));

-- Location: LCCOMB_X65_Y45_N26
\xung_ena|d1hz_next[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[20]~4_combout\ = (\xung_ena|Add0~40_combout\ & !\xung_ena|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xung_ena|Add0~40_combout\,
	datad => \xung_ena|Equal0~8_combout\,
	combout => \xung_ena|d1hz_next[20]~4_combout\);

-- Location: FF_X65_Y45_N27
\xung_ena|d1hz_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(20));

-- Location: LCCOMB_X65_Y45_N4
\xung_ena|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~3_combout\ = (\xung_ena|d1hz_reg\(21) & (\xung_ena|d1hz_reg\(22) & (\xung_ena|d1hz_reg\(20) & \xung_ena|d1hz_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(21),
	datab => \xung_ena|d1hz_reg\(22),
	datac => \xung_ena|d1hz_reg\(20),
	datad => \xung_ena|d1hz_reg\(19),
	combout => \xung_ena|Equal0~3_combout\);

-- Location: FF_X66_Y46_N27
\xung_ena|d1hz_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(10));

-- Location: LCCOMB_X65_Y46_N0
\xung_ena|d1hz_next[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|d1hz_next[12]~0_combout\ = (!\xung_ena|Equal0~8_combout\ & \xung_ena|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|Equal0~8_combout\,
	datac => \xung_ena|Add0~24_combout\,
	combout => \xung_ena|d1hz_next[12]~0_combout\);

-- Location: FF_X65_Y46_N1
\xung_ena|d1hz_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|d1hz_next[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(12));

-- Location: LCCOMB_X65_Y46_N22
\xung_ena|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~2_combout\ = (\xung_ena|d1hz_reg\(13) & (!\xung_ena|d1hz_reg\(10) & (\xung_ena|d1hz_reg\(14) & \xung_ena|d1hz_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(13),
	datab => \xung_ena|d1hz_reg\(10),
	datac => \xung_ena|d1hz_reg\(14),
	datad => \xung_ena|d1hz_reg\(12),
	combout => \xung_ena|Equal0~2_combout\);

-- Location: FF_X66_Y46_N11
\xung_ena|d1hz_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \xung_ena|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xung_ena|d1hz_reg\(2));

-- Location: LCCOMB_X66_Y46_N2
\xung_ena|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~0_combout\ = (!\xung_ena|d1hz_reg\(3) & (\xung_ena|d1hz_reg\(0) & (!\xung_ena|d1hz_reg\(1) & !\xung_ena|d1hz_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(3),
	datab => \xung_ena|d1hz_reg\(0),
	datac => \xung_ena|d1hz_reg\(1),
	datad => \xung_ena|d1hz_reg\(2),
	combout => \xung_ena|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y46_N16
\xung_ena|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal0~4_combout\ = (\xung_ena|Equal0~1_combout\ & (\xung_ena|Equal0~3_combout\ & (\xung_ena|Equal0~2_combout\ & \xung_ena|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal0~1_combout\,
	datab => \xung_ena|Equal0~3_combout\,
	datac => \xung_ena|Equal0~2_combout\,
	datad => \xung_ena|Equal0~0_combout\,
	combout => \xung_ena|Equal0~4_combout\);

-- Location: LCCOMB_X65_Y45_N8
\xung_ena|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal16~2_combout\ = (\xung_ena|d1hz_reg\(24) & !\xung_ena|d1hz_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xung_ena|d1hz_reg\(24),
	datad => \xung_ena|d1hz_reg\(25),
	combout => \xung_ena|Equal16~2_combout\);

-- Location: LCCOMB_X65_Y45_N16
\xung_ena|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal16~0_combout\ = (\xung_ena|d1hz_reg\(6) & (\xung_ena|d1hz_reg\(11) & (!\xung_ena|d1hz_reg\(7) & !\xung_ena|d1hz_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|d1hz_reg\(6),
	datab => \xung_ena|d1hz_reg\(11),
	datac => \xung_ena|d1hz_reg\(7),
	datad => \xung_ena|d1hz_reg\(15),
	combout => \xung_ena|Equal16~0_combout\);

-- Location: LCCOMB_X65_Y45_N2
\xung_ena|Equal16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xung_ena|Equal16~3_combout\ = (\xung_ena|Equal16~1_combout\ & (\xung_ena|Equal0~4_combout\ & (\xung_ena|Equal16~2_combout\ & \xung_ena|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xung_ena|Equal16~1_combout\,
	datab => \xung_ena|Equal0~4_combout\,
	datac => \xung_ena|Equal16~2_combout\,
	datad => \xung_ena|Equal16~0_combout\,
	combout => \xung_ena|Equal16~3_combout\);

-- Location: FF_X66_Y42_N15
\thoi_gian|giay_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[4]~14_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(4));

-- Location: LCCOMB_X66_Y41_N2
\LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan24~0_combout\ = (\thoi_gian|giay_reg\(3) & \thoi_gian|giay_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datac => \thoi_gian|giay_reg\(4),
	combout => \LessThan24~0_combout\);

-- Location: FF_X66_Y42_N11
\thoi_gian|giay_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[2]~10_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(2));

-- Location: LCCOMB_X66_Y41_N22
\thoi_gian|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|LessThan0~1_combout\ = (\thoi_gian|giay_reg\(5) & (\LessThan24~0_combout\ & ((\thoi_gian|LessThan0~0_combout\) # (\thoi_gian|giay_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \thoi_gian|LessThan0~0_combout\,
	datac => \LessThan24~0_combout\,
	datad => \thoi_gian|giay_reg\(2),
	combout => \thoi_gian|LessThan0~1_combout\);

-- Location: FF_X66_Y42_N9
\thoi_gian|giay_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[1]~8_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(1));

-- Location: FF_X66_Y42_N7
\thoi_gian|giay_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[0]~6_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(0));

-- Location: LCCOMB_X66_Y41_N28
\thoi_gian|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|LessThan0~0_combout\ = (\thoi_gian|giay_reg\(1) & \thoi_gian|giay_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \thoi_gian|giay_reg\(1),
	datad => \thoi_gian|giay_reg\(0),
	combout => \thoi_gian|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y41_N0
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (!\thoi_gian|giay_reg\(5) & (((!\thoi_gian|giay_reg\(2)) # (!\LessThan24~0_combout\)) # (!\thoi_gian|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \thoi_gian|LessThan0~0_combout\,
	datac => \LessThan24~0_combout\,
	datad => \thoi_gian|giay_reg\(2),
	combout => \led~0_combout\);

-- Location: LCCOMB_X67_Y72_N16
\led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~1_combout\ = (\LessThan25~2_combout\ & \led~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan25~2_combout\,
	datac => \led~0_combout\,
	combout => \led~1_combout\);

-- Location: LCCOMB_X67_Y72_N2
\led_oe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_oe~0_combout\ = (\LessThan25~2_combout\ & !\led~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan25~2_combout\,
	datac => \led~0_combout\,
	combout => \led_oe~0_combout\);

-- Location: LCCOMB_X67_Y46_N12
\lcd_full|LCD_DELAY[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[0]~20_combout\ = \lcd_full|LCD_DELAY\(0) $ (VCC)
-- \lcd_full|LCD_DELAY[0]~21\ = CARRY(\lcd_full|LCD_DELAY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(0),
	datad => VCC,
	combout => \lcd_full|LCD_DELAY[0]~20_combout\,
	cout => \lcd_full|LCD_DELAY[0]~21\);

-- Location: LCCOMB_X67_Y46_N14
\lcd_full|LCD_DELAY[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[1]~22_combout\ = (\lcd_full|LCD_DELAY\(1) & (!\lcd_full|LCD_DELAY[0]~21\)) # (!\lcd_full|LCD_DELAY\(1) & ((\lcd_full|LCD_DELAY[0]~21\) # (GND)))
-- \lcd_full|LCD_DELAY[1]~23\ = CARRY((!\lcd_full|LCD_DELAY[0]~21\) # (!\lcd_full|LCD_DELAY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(1),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[0]~21\,
	combout => \lcd_full|LCD_DELAY[1]~22_combout\,
	cout => \lcd_full|LCD_DELAY[1]~23\);

-- Location: LCCOMB_X67_Y44_N16
\lcd_full|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal4~0_combout\ = (!\lcd_full|LCD_DELAY\(1) & !\lcd_full|LCD_DELAY\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(1),
	datad => \lcd_full|LCD_DELAY\(4),
	combout => \lcd_full|Equal4~0_combout\);

-- Location: LCCOMB_X67_Y45_N10
\lcd_full|LCD_DELAY[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[15]~52_combout\ = (\lcd_full|LCD_DELAY\(15) & (!\lcd_full|LCD_DELAY[14]~51\)) # (!\lcd_full|LCD_DELAY\(15) & ((\lcd_full|LCD_DELAY[14]~51\) # (GND)))
-- \lcd_full|LCD_DELAY[15]~53\ = CARRY((!\lcd_full|LCD_DELAY[14]~51\) # (!\lcd_full|LCD_DELAY\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(15),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[14]~51\,
	combout => \lcd_full|LCD_DELAY[15]~52_combout\,
	cout => \lcd_full|LCD_DELAY[15]~53\);

-- Location: LCCOMB_X67_Y45_N12
\lcd_full|LCD_DELAY[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[16]~54_combout\ = (\lcd_full|LCD_DELAY\(16) & (\lcd_full|LCD_DELAY[15]~53\ $ (GND))) # (!\lcd_full|LCD_DELAY\(16) & (!\lcd_full|LCD_DELAY[15]~53\ & VCC))
-- \lcd_full|LCD_DELAY[16]~55\ = CARRY((\lcd_full|LCD_DELAY\(16) & !\lcd_full|LCD_DELAY[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(16),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[15]~53\,
	combout => \lcd_full|LCD_DELAY[16]~54_combout\,
	cout => \lcd_full|LCD_DELAY[16]~55\);

-- Location: FF_X67_Y45_N13
\lcd_full|LCD_DELAY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[16]~54_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(16));

-- Location: LCCOMB_X67_Y45_N14
\lcd_full|LCD_DELAY[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[17]~56_combout\ = (\lcd_full|LCD_DELAY\(17) & (!\lcd_full|LCD_DELAY[16]~55\)) # (!\lcd_full|LCD_DELAY\(17) & ((\lcd_full|LCD_DELAY[16]~55\) # (GND)))
-- \lcd_full|LCD_DELAY[17]~57\ = CARRY((!\lcd_full|LCD_DELAY[16]~55\) # (!\lcd_full|LCD_DELAY\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(17),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[16]~55\,
	combout => \lcd_full|LCD_DELAY[17]~56_combout\,
	cout => \lcd_full|LCD_DELAY[17]~57\);

-- Location: FF_X67_Y45_N15
\lcd_full|LCD_DELAY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[17]~56_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(17));

-- Location: LCCOMB_X67_Y45_N16
\lcd_full|LCD_DELAY[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[18]~58_combout\ = (\lcd_full|LCD_DELAY\(18) & (\lcd_full|LCD_DELAY[17]~57\ $ (GND))) # (!\lcd_full|LCD_DELAY\(18) & (!\lcd_full|LCD_DELAY[17]~57\ & VCC))
-- \lcd_full|LCD_DELAY[18]~59\ = CARRY((\lcd_full|LCD_DELAY\(18) & !\lcd_full|LCD_DELAY[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(18),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[17]~57\,
	combout => \lcd_full|LCD_DELAY[18]~58_combout\,
	cout => \lcd_full|LCD_DELAY[18]~59\);

-- Location: FF_X67_Y45_N17
\lcd_full|LCD_DELAY[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[18]~58_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(18));

-- Location: LCCOMB_X67_Y45_N18
\lcd_full|LCD_DELAY[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[19]~60_combout\ = \lcd_full|LCD_DELAY\(19) $ (\lcd_full|LCD_DELAY[18]~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(19),
	cin => \lcd_full|LCD_DELAY[18]~59\,
	combout => \lcd_full|LCD_DELAY[19]~60_combout\);

-- Location: FF_X67_Y45_N19
\lcd_full|LCD_DELAY[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[19]~60_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(19));

-- Location: LCCOMB_X67_Y45_N30
\lcd_full|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~1_combout\ = (!\lcd_full|LCD_DELAY\(14) & (!\lcd_full|LCD_DELAY\(19) & (!\lcd_full|LCD_DELAY\(16) & !\lcd_full|LCD_DELAY\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(14),
	datab => \lcd_full|LCD_DELAY\(19),
	datac => \lcd_full|LCD_DELAY\(16),
	datad => \lcd_full|LCD_DELAY\(18),
	combout => \lcd_full|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y46_N26
\lcd_full|LCD_DELAY[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[7]~34_combout\ = (\lcd_full|LCD_DELAY\(7) & (!\lcd_full|LCD_DELAY[6]~33\)) # (!\lcd_full|LCD_DELAY\(7) & ((\lcd_full|LCD_DELAY[6]~33\) # (GND)))
-- \lcd_full|LCD_DELAY[7]~35\ = CARRY((!\lcd_full|LCD_DELAY[6]~33\) # (!\lcd_full|LCD_DELAY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(7),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[6]~33\,
	combout => \lcd_full|LCD_DELAY[7]~34_combout\,
	cout => \lcd_full|LCD_DELAY[7]~35\);

-- Location: FF_X67_Y46_N27
\lcd_full|LCD_DELAY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[7]~34_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(7));

-- Location: LCCOMB_X67_Y44_N6
\lcd_full|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~2_combout\ = (\lcd_full|Equal0~0_combout\ & (!\lcd_full|LCD_DELAY\(6) & (\lcd_full|Equal0~1_combout\ & \lcd_full|LCD_DELAY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~0_combout\,
	datab => \lcd_full|LCD_DELAY\(6),
	datac => \lcd_full|Equal0~1_combout\,
	datad => \lcd_full|LCD_DELAY\(7),
	combout => \lcd_full|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y44_N4
\lcd_full|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal4~1_combout\ = (\lcd_full|LCD_DELAY\(8) & (\lcd_full|Equal4~0_combout\ & (\lcd_full|LCD_DELAY\(3) & \lcd_full|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(8),
	datab => \lcd_full|Equal4~0_combout\,
	datac => \lcd_full|LCD_DELAY\(3),
	datad => \lcd_full|Equal0~2_combout\,
	combout => \lcd_full|Equal4~1_combout\);

-- Location: LCCOMB_X67_Y46_N22
\lcd_full|LCD_DELAY[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[5]~30_combout\ = (\lcd_full|LCD_DELAY\(5) & (!\lcd_full|LCD_DELAY[4]~29\)) # (!\lcd_full|LCD_DELAY\(5) & ((\lcd_full|LCD_DELAY[4]~29\) # (GND)))
-- \lcd_full|LCD_DELAY[5]~31\ = CARRY((!\lcd_full|LCD_DELAY[4]~29\) # (!\lcd_full|LCD_DELAY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(5),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[4]~29\,
	combout => \lcd_full|LCD_DELAY[5]~30_combout\,
	cout => \lcd_full|LCD_DELAY[5]~31\);

-- Location: FF_X67_Y46_N23
\lcd_full|LCD_DELAY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[5]~30_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(5));

-- Location: LCCOMB_X67_Y44_N22
\lcd_full|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal4~2_combout\ = (!\lcd_full|LCD_DELAY\(0) & (!\lcd_full|LCD_DELAY\(15) & (!\lcd_full|LCD_DELAY\(2) & !\lcd_full|LCD_DELAY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(0),
	datab => \lcd_full|LCD_DELAY\(15),
	datac => \lcd_full|LCD_DELAY\(2),
	datad => \lcd_full|LCD_DELAY\(5),
	combout => \lcd_full|Equal4~2_combout\);

-- Location: LCCOMB_X67_Y46_N30
\lcd_full|LCD_DELAY[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[9]~38_combout\ = (\lcd_full|LCD_DELAY\(9) & (!\lcd_full|LCD_DELAY[8]~37\)) # (!\lcd_full|LCD_DELAY\(9) & ((\lcd_full|LCD_DELAY[8]~37\) # (GND)))
-- \lcd_full|LCD_DELAY[9]~39\ = CARRY((!\lcd_full|LCD_DELAY[8]~37\) # (!\lcd_full|LCD_DELAY\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(9),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[8]~37\,
	combout => \lcd_full|LCD_DELAY[9]~38_combout\,
	cout => \lcd_full|LCD_DELAY[9]~39\);

-- Location: FF_X67_Y46_N31
\lcd_full|LCD_DELAY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[9]~38_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(9));

-- Location: LCCOMB_X67_Y44_N24
\lcd_full|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal4~3_combout\ = (\lcd_full|Equal4~2_combout\ & \lcd_full|LCD_DELAY\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_full|Equal4~2_combout\,
	datad => \lcd_full|LCD_DELAY\(9),
	combout => \lcd_full|Equal4~3_combout\);

-- Location: LCCOMB_X67_Y44_N10
\lcd_full|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal4~4_combout\ = (\lcd_full|LCD_DELAY\(12) & (\lcd_full|Equal4~1_combout\ & (!\lcd_full|LCD_DELAY\(17) & \lcd_full|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(12),
	datab => \lcd_full|Equal4~1_combout\,
	datac => \lcd_full|LCD_DELAY\(17),
	datad => \lcd_full|Equal4~3_combout\,
	combout => \lcd_full|Equal4~4_combout\);

-- Location: LCCOMB_X69_Y43_N26
\lcd_full|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector23~0_combout\ = (!\lcd_full|Selector20~11_combout\ & ((\lcd_full|Selector20~10_combout\ & ((!\lcd_full|Selector20~9_combout\))) # (!\lcd_full|Selector20~10_combout\ & (\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector20~11_combout\,
	datab => \lcd_full|Selector20~10_combout\,
	datac => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datad => \lcd_full|Selector20~9_combout\,
	combout => \lcd_full|Selector23~0_combout\);

-- Location: FF_X69_Y43_N27
\lcd_full|LCD_STATE.LCD_ADDRESS_L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector23~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\);

-- Location: LCCOMB_X70_Y43_N16
\lcd_full|Selector25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~5_combout\ = (\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & (\lcd_full|Equal6~0_combout\ & (\lcd_full|Equal4~4_combout\ & !\lcd_full|LCD_STATE.LCD_DATA_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datab => \lcd_full|Equal6~0_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|Selector25~5_combout\);

-- Location: LCCOMB_X69_Y43_N10
\lcd_full|Selector28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~5_combout\ = (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & !\lcd_full|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Equal0~6_combout\,
	combout => \lcd_full|Selector28~5_combout\);

-- Location: LCCOMB_X69_Y43_N28
\lcd_full|Selector25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~9_combout\ = (\lcd_full|Selector25~1_combout\ & (!\lcd_full|Selector28~5_combout\ & ((\lcd_full|Equal4~4_combout\) # (!\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datab => \lcd_full|Selector25~1_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|Selector28~5_combout\,
	combout => \lcd_full|Selector25~9_combout\);

-- Location: LCCOMB_X69_Y45_N22
\lcd_full|LCD_CGRAM_PTR[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[1]~5_combout\ = (\lcd_full|LCD_CGRAM_PTR\(0) & (\lcd_full|LCD_CGRAM_PTR\(1) $ (VCC))) # (!\lcd_full|LCD_CGRAM_PTR\(0) & (\lcd_full|LCD_CGRAM_PTR\(1) & VCC))
-- \lcd_full|LCD_CGRAM_PTR[1]~6\ = CARRY((\lcd_full|LCD_CGRAM_PTR\(0) & \lcd_full|LCD_CGRAM_PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(0),
	datab => \lcd_full|LCD_CGRAM_PTR\(1),
	datad => VCC,
	combout => \lcd_full|LCD_CGRAM_PTR[1]~5_combout\,
	cout => \lcd_full|LCD_CGRAM_PTR[1]~6\);

-- Location: LCCOMB_X69_Y42_N2
\lcd_full|LCD_CGRAM_PTR[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[5]~11_combout\ = (\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (\lcd_full|Equal4~4_combout\ & !\lcd_full|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|Equal5~1_combout\,
	combout => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\);

-- Location: FF_X69_Y45_N23
\lcd_full|LCD_CGRAM_PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[1]~5_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(1));

-- Location: LCCOMB_X69_Y45_N24
\lcd_full|LCD_CGRAM_PTR[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[2]~7_combout\ = (\lcd_full|LCD_CGRAM_PTR\(2) & (!\lcd_full|LCD_CGRAM_PTR[1]~6\)) # (!\lcd_full|LCD_CGRAM_PTR\(2) & ((\lcd_full|LCD_CGRAM_PTR[1]~6\) # (GND)))
-- \lcd_full|LCD_CGRAM_PTR[2]~8\ = CARRY((!\lcd_full|LCD_CGRAM_PTR[1]~6\) # (!\lcd_full|LCD_CGRAM_PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => VCC,
	cin => \lcd_full|LCD_CGRAM_PTR[1]~6\,
	combout => \lcd_full|LCD_CGRAM_PTR[2]~7_combout\,
	cout => \lcd_full|LCD_CGRAM_PTR[2]~8\);

-- Location: FF_X69_Y45_N25
\lcd_full|LCD_CGRAM_PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[2]~7_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(2));

-- Location: LCCOMB_X69_Y45_N26
\lcd_full|LCD_CGRAM_PTR[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[3]~9_combout\ = (\lcd_full|LCD_CGRAM_PTR\(3) & (\lcd_full|LCD_CGRAM_PTR[2]~8\ $ (GND))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & (!\lcd_full|LCD_CGRAM_PTR[2]~8\ & VCC))
-- \lcd_full|LCD_CGRAM_PTR[3]~10\ = CARRY((\lcd_full|LCD_CGRAM_PTR\(3) & !\lcd_full|LCD_CGRAM_PTR[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datad => VCC,
	cin => \lcd_full|LCD_CGRAM_PTR[2]~8\,
	combout => \lcd_full|LCD_CGRAM_PTR[3]~9_combout\,
	cout => \lcd_full|LCD_CGRAM_PTR[3]~10\);

-- Location: LCCOMB_X69_Y45_N28
\lcd_full|LCD_CGRAM_PTR[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[4]~12_combout\ = (\lcd_full|LCD_CGRAM_PTR\(4) & (!\lcd_full|LCD_CGRAM_PTR[3]~10\)) # (!\lcd_full|LCD_CGRAM_PTR\(4) & ((\lcd_full|LCD_CGRAM_PTR[3]~10\) # (GND)))
-- \lcd_full|LCD_CGRAM_PTR[4]~13\ = CARRY((!\lcd_full|LCD_CGRAM_PTR[3]~10\) # (!\lcd_full|LCD_CGRAM_PTR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datad => VCC,
	cin => \lcd_full|LCD_CGRAM_PTR[3]~10\,
	combout => \lcd_full|LCD_CGRAM_PTR[4]~12_combout\,
	cout => \lcd_full|LCD_CGRAM_PTR[4]~13\);

-- Location: FF_X69_Y45_N29
\lcd_full|LCD_CGRAM_PTR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[4]~12_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(4));

-- Location: LCCOMB_X69_Y45_N30
\lcd_full|LCD_CGRAM_PTR[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[5]~14_combout\ = \lcd_full|LCD_CGRAM_PTR\(5) $ (!\lcd_full|LCD_CGRAM_PTR[4]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(5),
	cin => \lcd_full|LCD_CGRAM_PTR[4]~13\,
	combout => \lcd_full|LCD_CGRAM_PTR[5]~14_combout\);

-- Location: FF_X69_Y45_N31
\lcd_full|LCD_CGRAM_PTR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[5]~14_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(5));

-- Location: LCCOMB_X69_Y42_N12
\lcd_full|LCD_CGRAM_PTR[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CGRAM_PTR[0]~16_combout\ = \lcd_full|LCD_CGRAM_PTR\(0) $ (((\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (\lcd_full|Equal4~4_combout\ & !\lcd_full|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datab => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(0),
	datad => \lcd_full|Equal5~1_combout\,
	combout => \lcd_full|LCD_CGRAM_PTR[0]~16_combout\);

-- Location: FF_X69_Y42_N13
\lcd_full|LCD_CGRAM_PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[0]~16_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(0));

-- Location: LCCOMB_X69_Y42_N14
\lcd_full|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal5~0_combout\ = (\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(4) & (\lcd_full|LCD_CGRAM_PTR\(2) & \lcd_full|LCD_CGRAM_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Equal5~0_combout\);

-- Location: FF_X69_Y45_N27
\lcd_full|LCD_CGRAM_PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CGRAM_PTR[3]~9_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \lcd_full|LCD_CGRAM_PTR[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CGRAM_PTR\(3));

-- Location: LCCOMB_X69_Y42_N20
\lcd_full|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal5~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(5) & (\lcd_full|Equal5~0_combout\ & \lcd_full|LCD_CGRAM_PTR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_CGRAM_PTR\(5),
	datac => \lcd_full|Equal5~0_combout\,
	datad => \lcd_full|LCD_CGRAM_PTR\(3),
	combout => \lcd_full|Equal5~1_combout\);

-- Location: LCCOMB_X67_Y44_N14
\lcd_full|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~2_combout\ = (\lcd_full|LCD_DELAY\(14) & (\lcd_full|LCD_DELAY\(16) & (\lcd_full|LCD_DELAY\(6) & !\lcd_full|LCD_DELAY\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(14),
	datab => \lcd_full|LCD_DELAY\(16),
	datac => \lcd_full|LCD_DELAY\(6),
	datad => \lcd_full|LCD_DELAY\(7),
	combout => \lcd_full|Selector25~2_combout\);

-- Location: LCCOMB_X68_Y44_N0
\lcd_full|Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~3_combout\ = (\lcd_full|LCD_DELAY\(19) & (\lcd_full|Equal4~3_combout\ & (\lcd_full|LCD_DELAY\(18) & \lcd_full|Selector25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(19),
	datab => \lcd_full|Equal4~3_combout\,
	datac => \lcd_full|LCD_DELAY\(18),
	datad => \lcd_full|Selector25~2_combout\,
	combout => \lcd_full|Selector25~3_combout\);

-- Location: LCCOMB_X67_Y45_N28
\lcd_full|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~0_combout\ = (!\lcd_full|LCD_DELAY\(13) & (!\lcd_full|LCD_DELAY\(11) & !\lcd_full|LCD_DELAY\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(13),
	datab => \lcd_full|LCD_DELAY\(11),
	datad => \lcd_full|LCD_DELAY\(10),
	combout => \lcd_full|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y44_N18
\lcd_full|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~4_combout\ = (!\lcd_full|LCD_DELAY\(8) & (!\lcd_full|LCD_DELAY\(3) & (!\lcd_full|LCD_DELAY\(12) & \lcd_full|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(8),
	datab => \lcd_full|LCD_DELAY\(3),
	datac => \lcd_full|LCD_DELAY\(12),
	datad => \lcd_full|Equal4~0_combout\,
	combout => \lcd_full|Equal0~4_combout\);

-- Location: LCCOMB_X67_Y44_N12
\lcd_full|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~0_combout\ = (\lcd_full|LCD_DELAY\(17) & \lcd_full|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_full|LCD_DELAY\(17),
	datad => \lcd_full|Equal0~4_combout\,
	combout => \lcd_full|Selector25~0_combout\);

-- Location: LCCOMB_X68_Y44_N30
\lcd_full|Selector25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~4_combout\ = (\lcd_full|LCD_STATE.LCD_STOP~q\ & (\lcd_full|Selector25~3_combout\ & (\lcd_full|Equal0~0_combout\ & \lcd_full|Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datab => \lcd_full|Selector25~3_combout\,
	datac => \lcd_full|Equal0~0_combout\,
	datad => \lcd_full|Selector25~0_combout\,
	combout => \lcd_full|Selector25~4_combout\);

-- Location: LCCOMB_X69_Y43_N24
\lcd_full|LCD_DELAY[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[12]~46_combout\ = (\lcd_full|Selector25~4_combout\) # ((!\lcd_full|LCD_STATE.LCD_STOP~q\ & \lcd_full|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|Selector25~4_combout\,
	combout => \lcd_full|LCD_DELAY[12]~46_combout\);

-- Location: LCCOMB_X69_Y43_N20
\lcd_full|Selector25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~7_combout\ = (\lcd_full|LCD_STATE.LCD_INITIAL~q\ & ((\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (\lcd_full|Equal5~1_combout\)) # (!\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & ((\lcd_full|LCD_DELAY[12]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datab => \lcd_full|Equal5~1_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|LCD_DELAY[12]~46_combout\,
	combout => \lcd_full|Selector25~7_combout\);

-- Location: LCCOMB_X69_Y43_N14
\lcd_full|Selector25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~8_combout\ = (\lcd_full|Selector25~7_combout\) # ((\lcd_full|Equal1~0_combout\ & !\lcd_full|LCD_STATE.LCD_INITIAL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal1~0_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Selector25~7_combout\,
	combout => \lcd_full|Selector25~8_combout\);

-- Location: LCCOMB_X70_Y43_N28
\lcd_full|Selector25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~10_combout\ = (\lcd_full|Selector25~6_combout\ & (\lcd_full|Selector25~1_combout\ & ((!\lcd_full|Selector25~8_combout\) # (!\lcd_full|Selector25~9_combout\)))) # (!\lcd_full|Selector25~6_combout\ & 
-- (((!\lcd_full|Selector25~8_combout\)) # (!\lcd_full|Selector25~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector25~6_combout\,
	datab => \lcd_full|Selector25~9_combout\,
	datac => \lcd_full|Selector25~1_combout\,
	datad => \lcd_full|Selector25~8_combout\,
	combout => \lcd_full|Selector25~10_combout\);

-- Location: LCCOMB_X70_Y43_N20
\lcd_full|Selector25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~11_combout\ = (\lcd_full|Selector25~10_combout\ & ((\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\))) # (!\lcd_full|Selector25~10_combout\ & (\lcd_full|Selector25~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|Selector25~5_combout\,
	datac => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	datad => \lcd_full|Selector25~10_combout\,
	combout => \lcd_full|Selector25~11_combout\);

-- Location: FF_X70_Y43_N21
\lcd_full|LCD_STATE.LCD_ADDRESS_L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector25~11_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\);

-- Location: LCCOMB_X70_Y43_N24
\lcd_full|LCD_DIS_PTR[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[0]~8_combout\ = (!\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\ & ((\lcd_full|Equal6~0_combout\) # ((!\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & !\lcd_full|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	datac => \lcd_full|Equal6~0_combout\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|LCD_DIS_PTR[0]~8_combout\);

-- Location: LCCOMB_X70_Y43_N30
\lcd_full|LCD_DIS_PTR[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[0]~4_combout\ = ((!\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\ & (!\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\ & \lcd_full|LCD_DIS_PTR[0]~8_combout\))) # (!\lcd_full|Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datab => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datad => \lcd_full|LCD_DIS_PTR[0]~8_combout\,
	combout => \lcd_full|LCD_DIS_PTR[0]~4_combout\);

-- Location: LCCOMB_X70_Y43_N8
\lcd_full|LCD_DIS_PTR[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[0]~9_combout\ = (\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (((\lcd_full|LCD_DIS_PTR\(0))))) # (!\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|LCD_STATE.LCD_DATA_L1~q\) # 
-- (\lcd_full|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datab => \lcd_full|LCD_DIS_PTR[0]~4_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(0),
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|LCD_DIS_PTR[0]~9_combout\);

-- Location: FF_X70_Y43_N9
\lcd_full|LCD_DIS_PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DIS_PTR[0]~9_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DIS_PTR\(0));

-- Location: LCCOMB_X70_Y39_N24
\lcd_full|LCD_DIS_PTR[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[1]~5_combout\ = (\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (((\lcd_full|LCD_DIS_PTR\(1))))) # (!\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (!\lcd_full|Selector25~1_combout\ & (\lcd_full|LCD_DIS_PTR\(0) $ (\lcd_full|LCD_DIS_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|Selector25~1_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(1),
	datad => \lcd_full|LCD_DIS_PTR[0]~4_combout\,
	combout => \lcd_full|LCD_DIS_PTR[1]~5_combout\);

-- Location: FF_X70_Y39_N25
\lcd_full|LCD_DIS_PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DIS_PTR[1]~5_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DIS_PTR\(1));

-- Location: LCCOMB_X70_Y39_N18
\lcd_full|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Add3~1_combout\ = \lcd_full|LCD_DIS_PTR\(2) $ (((\lcd_full|LCD_DIS_PTR\(0) & \lcd_full|LCD_DIS_PTR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|LCD_DIS_PTR\(1),
	combout => \lcd_full|Add3~1_combout\);

-- Location: LCCOMB_X70_Y39_N22
\lcd_full|LCD_DIS_PTR[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[2]~7_combout\ = (\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (((\lcd_full|LCD_DIS_PTR\(2))))) # (!\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (\lcd_full|Add3~1_combout\ & ((!\lcd_full|Selector25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR[0]~4_combout\,
	datab => \lcd_full|Add3~1_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|Selector25~1_combout\,
	combout => \lcd_full|LCD_DIS_PTR[2]~7_combout\);

-- Location: FF_X70_Y39_N23
\lcd_full|LCD_DIS_PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DIS_PTR[2]~7_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DIS_PTR\(2));

-- Location: LCCOMB_X69_Y42_N30
\lcd_full|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal6~0_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|LCD_DIS_PTR\(1) & \lcd_full|LCD_DIS_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \lcd_full|LCD_DIS_PTR\(1),
	datad => \lcd_full|LCD_DIS_PTR\(0),
	combout => \lcd_full|Equal6~0_combout\);

-- Location: LCCOMB_X70_Y43_N10
\lcd_full|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector26~0_combout\ = (\lcd_full|Equal4~4_combout\ & ((\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\) # ((!\lcd_full|Equal6~0_combout\ & \lcd_full|LCD_STATE.LCD_DATA_L2~q\)))) # (!\lcd_full|Equal4~4_combout\ & (((\lcd_full|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal4~4_combout\,
	datab => \lcd_full|Equal6~0_combout\,
	datac => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector26~0_combout\);

-- Location: FF_X70_Y43_N11
\lcd_full|LCD_STATE.LCD_DATA_L2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector26~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_DATA_L2~q\);

-- Location: LCCOMB_X70_Y43_N22
\lcd_full|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector25~1_combout\ = (!\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & !\lcd_full|LCD_STATE.LCD_DATA_L2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|Selector25~1_combout\);

-- Location: LCCOMB_X70_Y43_N0
\lcd_full|Selector20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~7_combout\ = (\lcd_full|Selector25~1_combout\ & (((\lcd_full|Equal4~4_combout\ & \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\)))) # (!\lcd_full|Selector25~1_combout\ & ((\lcd_full|Equal6~0_combout\) # ((\lcd_full|Equal4~4_combout\ & 
-- \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector25~1_combout\,
	datab => \lcd_full|Equal6~0_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector20~7_combout\);

-- Location: LCCOMB_X70_Y43_N18
\lcd_full|Selector20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~8_combout\ = (\lcd_full|Selector20~7_combout\) # ((\lcd_full|Equal4~4_combout\ & ((\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\) # (\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datab => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datad => \lcd_full|Selector20~7_combout\,
	combout => \lcd_full|Selector20~8_combout\);

-- Location: LCCOMB_X69_Y43_N2
\lcd_full|Selector20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~9_combout\ = (\lcd_full|Selector20~8_combout\ & (((!\lcd_full|Selector25~1_combout\ & \lcd_full|Equal4~4_combout\)) # (!\lcd_full|Selector20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector20~4_combout\,
	datab => \lcd_full|Selector25~1_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|Selector20~8_combout\,
	combout => \lcd_full|Selector20~9_combout\);

-- Location: LCCOMB_X69_Y42_N24
\lcd_full|Selector20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~5_combout\ = (!\lcd_full|LCD_STATE.LCD_STOP~q\ & (\lcd_full|LCD_CGRAM_PTR\(3) & (\lcd_full|Equal5~0_combout\ & \lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datab => \lcd_full|LCD_CGRAM_PTR\(3),
	datac => \lcd_full|Equal5~0_combout\,
	datad => \lcd_full|LCD_CGRAM_PTR\(5),
	combout => \lcd_full|Selector20~5_combout\);

-- Location: LCCOMB_X69_Y43_N4
\lcd_full|Selector20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~6_combout\ = (\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (\lcd_full|Equal4~4_combout\ & ((\lcd_full|Selector20~5_combout\) # (\lcd_full|Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datab => \lcd_full|Selector20~5_combout\,
	datac => \lcd_full|Equal4~4_combout\,
	datad => \lcd_full|Selector25~4_combout\,
	combout => \lcd_full|Selector20~6_combout\);

-- Location: LCCOMB_X69_Y43_N0
\lcd_full|Selector20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~10_combout\ = (\lcd_full|Selector20~9_combout\) # ((\lcd_full|Selector20~6_combout\) # ((\lcd_full|LCD_STATE.LCD_STOP~q\ & \lcd_full|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datab => \lcd_full|Selector20~9_combout\,
	datac => \lcd_full|Selector20~6_combout\,
	datad => \lcd_full|Selector25~4_combout\,
	combout => \lcd_full|Selector20~10_combout\);

-- Location: LCCOMB_X69_Y43_N22
\lcd_full|LCD_STATE.LCD_INITIAL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_STATE.LCD_INITIAL~2_combout\ = (\lcd_full|Selector20~10_combout\) # ((\lcd_full|LCD_STATE.LCD_INITIAL~q\) # ((\lcd_full|Equal1~0_combout\ & \lcd_full|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal1~0_combout\,
	datab => \lcd_full|Selector20~10_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Equal0~6_combout\,
	combout => \lcd_full|LCD_STATE.LCD_INITIAL~2_combout\);

-- Location: FF_X69_Y43_N23
\lcd_full|LCD_STATE.LCD_INITIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_STATE.LCD_INITIAL~2_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_INITIAL~q\);

-- Location: LCCOMB_X69_Y43_N30
\lcd_full|LCD_DELAY[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[12]~47_combout\ = (\lcd_full|LCD_STATE.LCD_INITIAL~q\ & ((\lcd_full|LCD_DELAY[12]~46_combout\))) # (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & (\lcd_full|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~6_combout\,
	datab => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|LCD_DELAY[12]~46_combout\,
	combout => \lcd_full|LCD_DELAY[12]~47_combout\);

-- Location: FF_X67_Y46_N15
\lcd_full|LCD_DELAY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[1]~22_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(1));

-- Location: LCCOMB_X67_Y46_N16
\lcd_full|LCD_DELAY[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[2]~24_combout\ = (\lcd_full|LCD_DELAY\(2) & (\lcd_full|LCD_DELAY[1]~23\ $ (GND))) # (!\lcd_full|LCD_DELAY\(2) & (!\lcd_full|LCD_DELAY[1]~23\ & VCC))
-- \lcd_full|LCD_DELAY[2]~25\ = CARRY((\lcd_full|LCD_DELAY\(2) & !\lcd_full|LCD_DELAY[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(2),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[1]~23\,
	combout => \lcd_full|LCD_DELAY[2]~24_combout\,
	cout => \lcd_full|LCD_DELAY[2]~25\);

-- Location: FF_X67_Y46_N17
\lcd_full|LCD_DELAY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[2]~24_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(2));

-- Location: LCCOMB_X67_Y46_N18
\lcd_full|LCD_DELAY[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[3]~26_combout\ = (\lcd_full|LCD_DELAY\(3) & (!\lcd_full|LCD_DELAY[2]~25\)) # (!\lcd_full|LCD_DELAY\(3) & ((\lcd_full|LCD_DELAY[2]~25\) # (GND)))
-- \lcd_full|LCD_DELAY[3]~27\ = CARRY((!\lcd_full|LCD_DELAY[2]~25\) # (!\lcd_full|LCD_DELAY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(3),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[2]~25\,
	combout => \lcd_full|LCD_DELAY[3]~26_combout\,
	cout => \lcd_full|LCD_DELAY[3]~27\);

-- Location: FF_X67_Y46_N19
\lcd_full|LCD_DELAY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[3]~26_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(3));

-- Location: LCCOMB_X67_Y46_N20
\lcd_full|LCD_DELAY[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[4]~28_combout\ = (\lcd_full|LCD_DELAY\(4) & (\lcd_full|LCD_DELAY[3]~27\ $ (GND))) # (!\lcd_full|LCD_DELAY\(4) & (!\lcd_full|LCD_DELAY[3]~27\ & VCC))
-- \lcd_full|LCD_DELAY[4]~29\ = CARRY((\lcd_full|LCD_DELAY\(4) & !\lcd_full|LCD_DELAY[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(4),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[3]~27\,
	combout => \lcd_full|LCD_DELAY[4]~28_combout\,
	cout => \lcd_full|LCD_DELAY[4]~29\);

-- Location: FF_X67_Y46_N21
\lcd_full|LCD_DELAY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[4]~28_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(4));

-- Location: LCCOMB_X67_Y46_N24
\lcd_full|LCD_DELAY[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[6]~32_combout\ = (\lcd_full|LCD_DELAY\(6) & (\lcd_full|LCD_DELAY[5]~31\ $ (GND))) # (!\lcd_full|LCD_DELAY\(6) & (!\lcd_full|LCD_DELAY[5]~31\ & VCC))
-- \lcd_full|LCD_DELAY[6]~33\ = CARRY((\lcd_full|LCD_DELAY\(6) & !\lcd_full|LCD_DELAY[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(6),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[5]~31\,
	combout => \lcd_full|LCD_DELAY[6]~32_combout\,
	cout => \lcd_full|LCD_DELAY[6]~33\);

-- Location: FF_X67_Y46_N25
\lcd_full|LCD_DELAY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[6]~32_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(6));

-- Location: LCCOMB_X67_Y46_N28
\lcd_full|LCD_DELAY[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[8]~36_combout\ = (\lcd_full|LCD_DELAY\(8) & (\lcd_full|LCD_DELAY[7]~35\ $ (GND))) # (!\lcd_full|LCD_DELAY\(8) & (!\lcd_full|LCD_DELAY[7]~35\ & VCC))
-- \lcd_full|LCD_DELAY[8]~37\ = CARRY((\lcd_full|LCD_DELAY\(8) & !\lcd_full|LCD_DELAY[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(8),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[7]~35\,
	combout => \lcd_full|LCD_DELAY[8]~36_combout\,
	cout => \lcd_full|LCD_DELAY[8]~37\);

-- Location: FF_X67_Y46_N29
\lcd_full|LCD_DELAY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[8]~36_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(8));

-- Location: LCCOMB_X67_Y45_N0
\lcd_full|LCD_DELAY[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[10]~40_combout\ = (\lcd_full|LCD_DELAY\(10) & (\lcd_full|LCD_DELAY[9]~39\ $ (GND))) # (!\lcd_full|LCD_DELAY\(10) & (!\lcd_full|LCD_DELAY[9]~39\ & VCC))
-- \lcd_full|LCD_DELAY[10]~41\ = CARRY((\lcd_full|LCD_DELAY\(10) & !\lcd_full|LCD_DELAY[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(10),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[9]~39\,
	combout => \lcd_full|LCD_DELAY[10]~40_combout\,
	cout => \lcd_full|LCD_DELAY[10]~41\);

-- Location: FF_X67_Y45_N1
\lcd_full|LCD_DELAY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[10]~40_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(10));

-- Location: LCCOMB_X67_Y45_N2
\lcd_full|LCD_DELAY[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[11]~42_combout\ = (\lcd_full|LCD_DELAY\(11) & (!\lcd_full|LCD_DELAY[10]~41\)) # (!\lcd_full|LCD_DELAY\(11) & ((\lcd_full|LCD_DELAY[10]~41\) # (GND)))
-- \lcd_full|LCD_DELAY[11]~43\ = CARRY((!\lcd_full|LCD_DELAY[10]~41\) # (!\lcd_full|LCD_DELAY\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(11),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[10]~41\,
	combout => \lcd_full|LCD_DELAY[11]~42_combout\,
	cout => \lcd_full|LCD_DELAY[11]~43\);

-- Location: FF_X67_Y45_N3
\lcd_full|LCD_DELAY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[11]~42_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(11));

-- Location: LCCOMB_X67_Y45_N4
\lcd_full|LCD_DELAY[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DELAY[12]~44_combout\ = (\lcd_full|LCD_DELAY\(12) & (\lcd_full|LCD_DELAY[11]~43\ $ (GND))) # (!\lcd_full|LCD_DELAY\(12) & (!\lcd_full|LCD_DELAY[11]~43\ & VCC))
-- \lcd_full|LCD_DELAY[12]~45\ = CARRY((\lcd_full|LCD_DELAY\(12) & !\lcd_full|LCD_DELAY[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(12),
	datad => VCC,
	cin => \lcd_full|LCD_DELAY[11]~43\,
	combout => \lcd_full|LCD_DELAY[12]~44_combout\,
	cout => \lcd_full|LCD_DELAY[12]~45\);

-- Location: FF_X67_Y45_N5
\lcd_full|LCD_DELAY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[12]~44_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(12));

-- Location: FF_X67_Y45_N11
\lcd_full|LCD_DELAY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[15]~52_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(15));

-- Location: LCCOMB_X67_Y44_N2
\lcd_full|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~5_combout\ = (!\lcd_full|LCD_DELAY\(0) & (!\lcd_full|LCD_DELAY\(9) & (!\lcd_full|LCD_DELAY\(2) & \lcd_full|LCD_DELAY\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(0),
	datab => \lcd_full|LCD_DELAY\(9),
	datac => \lcd_full|LCD_DELAY\(2),
	datad => \lcd_full|LCD_DELAY\(5),
	combout => \lcd_full|Equal0~5_combout\);

-- Location: LCCOMB_X67_Y44_N8
\lcd_full|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~6_combout\ = (\lcd_full|Equal0~2_combout\ & (\lcd_full|LCD_DELAY\(15) & (\lcd_full|Selector25~0_combout\ & \lcd_full|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~2_combout\,
	datab => \lcd_full|LCD_DELAY\(15),
	datac => \lcd_full|Selector25~0_combout\,
	datad => \lcd_full|Equal0~5_combout\,
	combout => \lcd_full|Equal0~6_combout\);

-- Location: LCCOMB_X67_Y44_N20
\lcd_full|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal0~3_combout\ = (!\lcd_full|LCD_DELAY\(6) & (\lcd_full|Equal0~1_combout\ & \lcd_full|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DELAY\(6),
	datac => \lcd_full|Equal0~1_combout\,
	datad => \lcd_full|Equal0~0_combout\,
	combout => \lcd_full|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y44_N28
\lcd_full|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal2~1_combout\ = (\lcd_full|Equal2~0_combout\ & (!\lcd_full|LCD_DELAY\(9) & (!\lcd_full|LCD_DELAY\(17) & \lcd_full|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~0_combout\,
	datab => \lcd_full|LCD_DELAY\(9),
	datac => \lcd_full|LCD_DELAY\(17),
	datad => \lcd_full|Equal0~3_combout\,
	combout => \lcd_full|Equal2~1_combout\);

-- Location: LCCOMB_X67_Y43_N22
\lcd_full|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal3~0_combout\ = (\lcd_full|LCD_DELAY\(0) & (\lcd_full|Equal0~4_combout\ & \lcd_full|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(0),
	datac => \lcd_full|Equal0~4_combout\,
	datad => \lcd_full|Equal2~1_combout\,
	combout => \lcd_full|Equal3~0_combout\);

-- Location: LCCOMB_X67_Y43_N2
\lcd_full|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~2_combout\ = (!\lcd_full|Equal2~3_combout\ & (!\lcd_full|Equal0~6_combout\ & (\lcd_full|Equal3~0_combout\ & !\lcd_full|LCD_STATE.LCD_INITIAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|Equal0~6_combout\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	combout => \lcd_full|Selector28~2_combout\);

-- Location: FF_X67_Y46_N13
\lcd_full|LCD_DELAY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DELAY[0]~20_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \lcd_full|LCD_DELAY[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DELAY\(0));

-- Location: LCCOMB_X67_Y44_N0
\lcd_full|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal2~2_combout\ = (!\lcd_full|LCD_DELAY\(8) & (!\lcd_full|LCD_DELAY\(0) & (!\lcd_full|LCD_DELAY\(12) & \lcd_full|LCD_DELAY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(8),
	datab => \lcd_full|LCD_DELAY\(0),
	datac => \lcd_full|LCD_DELAY\(12),
	datad => \lcd_full|LCD_DELAY\(1),
	combout => \lcd_full|Equal2~2_combout\);

-- Location: LCCOMB_X67_Y44_N30
\lcd_full|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal2~3_combout\ = (\lcd_full|LCD_DELAY\(4) & (\lcd_full|Equal2~1_combout\ & (\lcd_full|LCD_DELAY\(3) & \lcd_full|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(4),
	datab => \lcd_full|Equal2~1_combout\,
	datac => \lcd_full|LCD_DELAY\(3),
	datad => \lcd_full|Equal2~2_combout\,
	combout => \lcd_full|Equal2~3_combout\);

-- Location: LCCOMB_X70_Y43_N2
\lcd_full|LCD_STATE.LCD_STOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_STATE.LCD_STOP~0_combout\ = (\lcd_full|Selector25~10_combout\ & (((\lcd_full|LCD_STATE.LCD_STOP~q\)))) # (!\lcd_full|Selector25~10_combout\ & (\lcd_full|Selector25~6_combout\ & ((\lcd_full|LCD_STATE.LCD_DATA_L2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector25~6_combout\,
	datab => \lcd_full|Selector25~10_combout\,
	datac => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	combout => \lcd_full|LCD_STATE.LCD_STOP~0_combout\);

-- Location: FF_X70_Y43_N3
\lcd_full|LCD_STATE.LCD_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_STATE.LCD_STOP~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_STOP~q\);

-- Location: LCCOMB_X67_Y43_N0
\lcd_full|Selector28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~3_combout\ = (\lcd_full|LCD_STATE.LCD_STOP~q\) # ((!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & ((\lcd_full|Equal0~6_combout\) # (!\lcd_full|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datab => \lcd_full|Equal0~6_combout\,
	datac => \lcd_full|Equal2~3_combout\,
	datad => \lcd_full|LCD_STATE.LCD_STOP~q\,
	combout => \lcd_full|Selector28~3_combout\);

-- Location: LCCOMB_X67_Y43_N8
\lcd_full|Selector28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector28~4_combout\ = (\lcd_full|Selector28~1_combout\) # ((\lcd_full|Selector28~2_combout\) # ((\lcd_full|LCD_ENABLE~q\ & \lcd_full|Selector28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~1_combout\,
	datab => \lcd_full|Selector28~2_combout\,
	datac => \lcd_full|LCD_ENABLE~q\,
	datad => \lcd_full|Selector28~3_combout\,
	combout => \lcd_full|Selector28~4_combout\);

-- Location: FF_X67_Y43_N9
\lcd_full|LCD_ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector28~4_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_ENABLE~q\);

-- Location: LCCOMB_X67_Y43_N10
\lcd_full|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~0_combout\ = (!\lcd_full|Equal2~3_combout\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector37~0_combout\);

-- Location: LCCOMB_X67_Y43_N16
\lcd_full|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~0_combout\ = (!\lcd_full|Equal2~3_combout\ & (((!\lcd_full|Equal2~1_combout\) # (!\lcd_full|Equal0~4_combout\)) # (!\lcd_full|LCD_DELAY\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DELAY\(0),
	datab => \lcd_full|Equal0~4_combout\,
	datac => \lcd_full|Equal2~3_combout\,
	datad => \lcd_full|Equal2~1_combout\,
	combout => \lcd_full|Selector34~0_combout\);

-- Location: LCCOMB_X67_Y43_N26
\lcd_full|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector29~0_combout\ = (!\lcd_full|LCD_STATE.LCD_STOP~q\ & ((\lcd_full|LCD_STATE.LCD_INITIAL~q\) # ((!\lcd_full|Equal0~6_combout\ & \lcd_full|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_STOP~q\,
	datab => \lcd_full|Equal0~6_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Selector34~0_combout\,
	combout => \lcd_full|Selector29~0_combout\);

-- Location: LCCOMB_X69_Y43_N8
\lcd_full|LCD_CMD_PTR[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CMD_PTR[0]~5_combout\ = \lcd_full|LCD_CMD_PTR\(0) $ (((\lcd_full|Equal0~6_combout\ & (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & !\lcd_full|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~6_combout\,
	datab => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|Equal1~0_combout\,
	combout => \lcd_full|LCD_CMD_PTR[0]~5_combout\);

-- Location: FF_X69_Y43_N9
\lcd_full|LCD_CMD_PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CMD_PTR[0]~5_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CMD_PTR\(0));

-- Location: LCCOMB_X69_Y43_N18
\lcd_full|LCD_CMD_PTR[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CMD_PTR[3]~4_combout\ = (\lcd_full|Equal0~6_combout\ & (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & !\lcd_full|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~6_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Equal1~0_combout\,
	combout => \lcd_full|LCD_CMD_PTR[3]~4_combout\);

-- Location: LCCOMB_X68_Y43_N0
\lcd_full|LCD_CMD_PTR[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CMD_PTR[1]~7_combout\ = \lcd_full|LCD_CMD_PTR\(1) $ (((\lcd_full|LCD_CMD_PTR\(0) & \lcd_full|LCD_CMD_PTR[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_CMD_PTR\(0),
	datac => \lcd_full|LCD_CMD_PTR\(1),
	datad => \lcd_full|LCD_CMD_PTR[3]~4_combout\,
	combout => \lcd_full|LCD_CMD_PTR[1]~7_combout\);

-- Location: FF_X68_Y43_N1
\lcd_full|LCD_CMD_PTR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CMD_PTR[1]~7_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CMD_PTR\(1));

-- Location: LCCOMB_X68_Y43_N22
\lcd_full|LCD_CMD_PTR[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CMD_PTR[2]~8_combout\ = \lcd_full|LCD_CMD_PTR\(2) $ (((\lcd_full|LCD_CMD_PTR\(1) & (\lcd_full|LCD_CMD_PTR\(0) & \lcd_full|LCD_CMD_PTR[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(1),
	datab => \lcd_full|LCD_CMD_PTR\(0),
	datac => \lcd_full|LCD_CMD_PTR\(2),
	datad => \lcd_full|LCD_CMD_PTR[3]~4_combout\,
	combout => \lcd_full|LCD_CMD_PTR[2]~8_combout\);

-- Location: FF_X68_Y43_N23
\lcd_full|LCD_CMD_PTR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CMD_PTR[2]~8_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CMD_PTR\(2));

-- Location: LCCOMB_X68_Y43_N10
\lcd_full|LCD_CMD_PTR[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_CMD_PTR[3]~6_combout\ = \lcd_full|LCD_CMD_PTR\(3) $ (((\lcd_full|Selector37~5_combout\ & (\lcd_full|LCD_CMD_PTR[3]~4_combout\ & \lcd_full|LCD_CMD_PTR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~5_combout\,
	datab => \lcd_full|LCD_CMD_PTR[3]~4_combout\,
	datac => \lcd_full|LCD_CMD_PTR\(3),
	datad => \lcd_full|LCD_CMD_PTR\(2),
	combout => \lcd_full|LCD_CMD_PTR[3]~6_combout\);

-- Location: FF_X68_Y43_N11
\lcd_full|LCD_CMD_PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_CMD_PTR[3]~6_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_CMD_PTR\(3));

-- Location: LCCOMB_X68_Y43_N8
\lcd_full|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Equal1~0_combout\ = (\lcd_full|LCD_CMD_PTR\(2) & (!\lcd_full|LCD_CMD_PTR\(1) & (\lcd_full|LCD_CMD_PTR\(0) & !\lcd_full|LCD_CMD_PTR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(2),
	datab => \lcd_full|LCD_CMD_PTR\(1),
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|LCD_CMD_PTR\(3),
	combout => \lcd_full|Equal1~0_combout\);

-- Location: LCCOMB_X69_Y43_N6
\lcd_full|Selector20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~11_combout\ = (\lcd_full|Equal0~6_combout\ & (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & \lcd_full|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal0~6_combout\,
	datac => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datad => \lcd_full|Equal1~0_combout\,
	combout => \lcd_full|Selector20~11_combout\);

-- Location: LCCOMB_X69_Y43_N16
\lcd_full|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector21~0_combout\ = (\lcd_full|Selector20~11_combout\) # ((!\lcd_full|Equal4~4_combout\ & \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datad => \lcd_full|Selector20~11_combout\,
	combout => \lcd_full|Selector21~0_combout\);

-- Location: FF_X69_Y43_N17
\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector21~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\);

-- Location: LCCOMB_X66_Y43_N16
\lcd_full|Selector20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector20~4_combout\ = (!\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\ & (!\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\ & !\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector20~4_combout\);

-- Location: LCCOMB_X66_Y43_N24
\lcd_full|Selector29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector29~1_combout\ = (((!\lcd_full|Selector37~0_combout\ & !\lcd_full|Selector20~4_combout\)) # (!\lcd_full|Selector29~0_combout\)) # (!\lcd_full|Selector28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|Selector29~0_combout\,
	datac => \lcd_full|Selector37~0_combout\,
	datad => \lcd_full|Selector20~4_combout\,
	combout => \lcd_full|Selector29~1_combout\);

-- Location: LCCOMB_X66_Y43_N0
\lcd_full|Selector29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector29~2_combout\ = (\lcd_full|Selector28~0_combout\ & (((\lcd_full|LCD_RS_DB\(8) & \lcd_full|Selector29~1_combout\)))) # (!\lcd_full|Selector28~0_combout\ & ((\lcd_full|Selector37~0_combout\) # ((\lcd_full|LCD_RS_DB\(8) & 
-- \lcd_full|Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|Selector37~0_combout\,
	datac => \lcd_full|LCD_RS_DB\(8),
	datad => \lcd_full|Selector29~1_combout\,
	combout => \lcd_full|Selector29~2_combout\);

-- Location: FF_X66_Y43_N1
\lcd_full|LCD_RS_DB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector29~2_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(8));

-- Location: LCCOMB_X67_Y43_N24
\lcd_full|Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~4_combout\ = (!\lcd_full|Equal2~3_combout\ & (!\lcd_full|LCD_STATE.LCD_INITIAL~q\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|LCD_STATE.LCD_INITIAL~q\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal0~6_combout\,
	combout => \lcd_full|Selector37~4_combout\);

-- Location: LCCOMB_X69_Y44_N0
\lcd_full|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux8~2_combout\ = (\lcd_full|LCD_CGRAM_PTR\(4) & (((!\lcd_full|LCD_CGRAM_PTR\(1) & !\lcd_full|LCD_CGRAM_PTR\(0))) # (!\lcd_full|LCD_CGRAM_PTR\(2)))) # (!\lcd_full|LCD_CGRAM_PTR\(4) & ((\lcd_full|LCD_CGRAM_PTR\(2)) # ((\lcd_full|LCD_CGRAM_PTR\(1) 
-- & \lcd_full|LCD_CGRAM_PTR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux8~2_combout\);

-- Location: LCCOMB_X69_Y44_N2
\lcd_full|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux8~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(4) & ((\lcd_full|LCD_CGRAM_PTR\(1) & (!\lcd_full|LCD_CGRAM_PTR\(2) & \lcd_full|LCD_CGRAM_PTR\(0))) # (!\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux8~1_combout\);

-- Location: LCCOMB_X69_Y44_N14
\lcd_full|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux8~3_combout\ = (\lcd_full|LCD_CGRAM_PTR\(5) & ((\lcd_full|Mux8~1_combout\))) # (!\lcd_full|LCD_CGRAM_PTR\(5) & (\lcd_full|Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|Mux8~2_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~1_combout\,
	combout => \lcd_full|Mux8~3_combout\);

-- Location: LCCOMB_X69_Y44_N20
\lcd_full|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux8~0_combout\ = (\lcd_full|LCD_CGRAM_PTR\(1) & (!\lcd_full|LCD_CGRAM_PTR\(4) & (\lcd_full|LCD_CGRAM_PTR\(2) & \lcd_full|LCD_CGRAM_PTR\(5)))) # (!\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(4) & (!\lcd_full|LCD_CGRAM_PTR\(2) & 
-- !\lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(5),
	combout => \lcd_full|Mux8~0_combout\);

-- Location: LCCOMB_X69_Y44_N8
\lcd_full|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux8~4_combout\ = (\lcd_full|LCD_CGRAM_PTR\(3) & ((\lcd_full|LCD_CGRAM_PTR\(5) & ((!\lcd_full|Mux8~0_combout\))) # (!\lcd_full|LCD_CGRAM_PTR\(5) & (!\lcd_full|Mux8~3_combout\)))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & ((\lcd_full|LCD_CGRAM_PTR\(5) & 
-- (!\lcd_full|Mux8~3_combout\)) # (!\lcd_full|LCD_CGRAM_PTR\(5) & ((!\lcd_full|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datab => \lcd_full|Mux8~3_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~0_combout\,
	combout => \lcd_full|Mux8~4_combout\);

-- Location: LCCOMB_X69_Y43_N12
\lcd_full|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector22~0_combout\ = (\lcd_full|Equal4~4_combout\ & ((\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\) # ((!\lcd_full|Equal5~1_combout\ & \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\)))) # (!\lcd_full|Equal4~4_combout\ & 
-- (((\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal4~4_combout\,
	datab => \lcd_full|Equal5~1_combout\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datad => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	combout => \lcd_full|Selector22~0_combout\);

-- Location: FF_X69_Y43_N13
\lcd_full|LCD_STATE.LCD_CGRAM_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector22~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\);

-- Location: LCCOMB_X67_Y43_N18
\lcd_full|Selector37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~6_combout\ = (!\lcd_full|Equal2~3_combout\ & (\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector37~6_combout\);

-- Location: LCCOMB_X68_Y43_N20
\lcd_full|Selector37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~7_combout\ = (\lcd_full|Selector37~5_combout\ & ((\lcd_full|Selector37~4_combout\) # ((\lcd_full|Mux8~4_combout\ & \lcd_full|Selector37~6_combout\)))) # (!\lcd_full|Selector37~5_combout\ & (((\lcd_full|Mux8~4_combout\ & 
-- \lcd_full|Selector37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~5_combout\,
	datab => \lcd_full|Selector37~4_combout\,
	datac => \lcd_full|Mux8~4_combout\,
	datad => \lcd_full|Selector37~6_combout\,
	combout => \lcd_full|Selector37~7_combout\);

-- Location: LCCOMB_X67_Y43_N30
\lcd_full|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~2_combout\ = (!\lcd_full|Equal2~3_combout\ & (\lcd_full|LCD_STATE.LCD_DATA_L2~q\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector37~2_combout\);

-- Location: FF_X66_Y42_N13
\thoi_gian|giay_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[3]~12_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(3));

-- Location: LCCOMB_X66_Y41_N20
\lcd_full|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~4_combout\ = (\thoi_gian|giay_reg\(5) & (\thoi_gian|giay_reg\(3) $ (((\thoi_gian|giay_reg\(2)) # (!\thoi_gian|giay_reg\(4)))))) # (!\thoi_gian|giay_reg\(5) & ((\thoi_gian|giay_reg\(4) & (!\thoi_gian|giay_reg\(3) & 
-- !\thoi_gian|giay_reg\(2))) # (!\thoi_gian|giay_reg\(4) & (\thoi_gian|giay_reg\(3) & \thoi_gian|giay_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \thoi_gian|giay_reg\(4),
	datac => \thoi_gian|giay_reg\(3),
	datad => \thoi_gian|giay_reg\(2),
	combout => \lcd_full|Mux24~4_combout\);

-- Location: LCCOMB_X67_Y41_N26
\lcd_full|Mux24~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~17_combout\ = (\thoi_gian|giay_reg\(1) & (\lcd_full|Mux24~5_combout\)) # (!\thoi_gian|giay_reg\(1) & ((\lcd_full|Mux24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux24~5_combout\,
	datab => \lcd_full|Mux24~4_combout\,
	datac => \thoi_gian|giay_reg\(1),
	combout => \lcd_full|Mux24~17_combout\);

-- Location: LCCOMB_X74_Y38_N18
\tao_gtc|s_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|s_reg[0]~0_combout\ = !\tao_gtc|s_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tao_gtc|s_reg\(0),
	combout => \tao_gtc|s_reg[0]~0_combout\);

-- Location: IOIBUF_X115_Y53_N15
\btn_n[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n(1),
	o => \btn_n[1]~input_o\);

-- Location: LCCOMB_X74_Y45_N20
\tao_gtc|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector2~1_combout\ = (\tao_gtc|Selector2~0_combout\ & (!\btn_n[1]~input_o\)) # (!\tao_gtc|Selector2~0_combout\ & (((\tao_gtc|btn_reg.one~q\ & \tao_gtc|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector2~0_combout\,
	datab => \btn_n[1]~input_o\,
	datac => \tao_gtc|btn_reg.one~q\,
	datad => \tao_gtc|Selector0~3_combout\,
	combout => \tao_gtc|Selector2~1_combout\);

-- Location: FF_X74_Y45_N21
\tao_gtc|btn_reg.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|btn_reg.one~q\);

-- Location: LCCOMB_X74_Y45_N0
\tao_gtc|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector3~0_combout\ = (\tao_gtc|Selector1~2_combout\ & (\btn_n[1]~input_o\ & ((\tao_gtc|btn_reg.one~q\)))) # (!\tao_gtc|Selector1~2_combout\ & ((\tao_gtc|btn_reg.wait0~q\) # ((\btn_n[1]~input_o\ & \tao_gtc|btn_reg.one~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector1~2_combout\,
	datab => \btn_n[1]~input_o\,
	datac => \tao_gtc|btn_reg.wait0~q\,
	datad => \tao_gtc|btn_reg.one~q\,
	combout => \tao_gtc|Selector3~0_combout\);

-- Location: FF_X74_Y45_N1
\tao_gtc|btn_reg.wait0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|btn_reg.wait0~q\);

-- Location: LCCOMB_X74_Y45_N18
\tao_gtc|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector1~1_combout\ = (\tao_gtc|Equal0~6_combout\ & ((\tao_gtc|btn_reg.wait1~q\) # ((\tao_gtc|btn_reg.wait0~q\)))) # (!\tao_gtc|Equal0~6_combout\ & ((\btn_n[1]~input_o\ & (\tao_gtc|btn_reg.wait1~q\)) # (!\btn_n[1]~input_o\ & 
-- ((\tao_gtc|btn_reg.wait0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~6_combout\,
	datab => \tao_gtc|btn_reg.wait1~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.wait0~q\,
	combout => \tao_gtc|Selector1~1_combout\);

-- Location: LCCOMB_X74_Y45_N24
\tao_gtc|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector1~2_combout\ = (\tao_gtc|Selector1~1_combout\) # ((\btn_n[1]~input_o\ & ((\tao_gtc|btn_reg.one~q\))) # (!\btn_n[1]~input_o\ & (!\tao_gtc|btn_reg.zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|btn_reg.zero~q\,
	datab => \tao_gtc|Selector1~1_combout\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.one~q\,
	combout => \tao_gtc|Selector1~2_combout\);

-- Location: LCCOMB_X74_Y45_N4
\tao_gtc|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector1~3_combout\ = (\tao_gtc|Selector1~0_combout\) # ((\tao_gtc|btn_reg.wait1~q\ & !\tao_gtc|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector1~0_combout\,
	datac => \tao_gtc|btn_reg.wait1~q\,
	datad => \tao_gtc|Selector1~2_combout\,
	combout => \tao_gtc|Selector1~3_combout\);

-- Location: FF_X74_Y45_N5
\tao_gtc|btn_reg.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|btn_reg.wait1~q\);

-- Location: LCCOMB_X74_Y45_N6
\tao_gtc|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~0_combout\ = (\tao_gtc|btn_reg.wait1~q\ & ((\tao_gtc|Equal0~6_combout\) # (\btn_n[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~6_combout\,
	datab => \tao_gtc|btn_reg.wait1~q\,
	datac => \btn_n[1]~input_o\,
	combout => \tao_gtc|Selector0~0_combout\);

-- Location: LCCOMB_X74_Y45_N8
\tao_gtc|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~1_combout\ = (!\tao_gtc|Selector0~0_combout\ & ((\tao_gtc|btn_reg.one~q\ & ((!\btn_n[1]~input_o\))) # (!\tao_gtc|btn_reg.one~q\ & ((\tao_gtc|btn_reg.zero~q\) # (\btn_n[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|btn_reg.zero~q\,
	datab => \tao_gtc|btn_reg.one~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|Selector0~0_combout\,
	combout => \tao_gtc|Selector0~1_combout\);

-- Location: LCCOMB_X74_Y45_N28
\tao_gtc|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~3_combout\ = (\tao_gtc|Selector0~1_combout\) # ((\tao_gtc|btn_reg.wait0~q\ & ((\tao_gtc|Equal0~6_combout\) # (!\btn_n[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Equal0~6_combout\,
	datab => \tao_gtc|Selector0~1_combout\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|btn_reg.wait0~q\,
	combout => \tao_gtc|Selector0~3_combout\);

-- Location: LCCOMB_X74_Y45_N2
\tao_gtc|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~4_combout\ = (\btn_n[1]~input_o\ & ((\tao_gtc|Selector0~3_combout\ & (\tao_gtc|Selector0~2_combout\)) # (!\tao_gtc|Selector0~3_combout\ & ((\tao_gtc|btn_reg.wait1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector0~2_combout\,
	datab => \tao_gtc|btn_reg.wait1~q\,
	datac => \btn_n[1]~input_o\,
	datad => \tao_gtc|Selector0~3_combout\,
	combout => \tao_gtc|Selector0~4_combout\);

-- Location: LCCOMB_X74_Y45_N10
\tao_gtc|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Selector0~5_combout\ = (!\tao_gtc|Selector0~4_combout\ & ((\tao_gtc|Selector0~2_combout\) # ((\tao_gtc|btn_reg.zero~q\) # (!\tao_gtc|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tao_gtc|Selector0~2_combout\,
	datab => \tao_gtc|Selector0~3_combout\,
	datac => \tao_gtc|btn_reg.zero~q\,
	datad => \tao_gtc|Selector0~4_combout\,
	combout => \tao_gtc|Selector0~5_combout\);

-- Location: FF_X74_Y45_N11
\tao_gtc|btn_reg.zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|btn_reg.zero~q\);

-- Location: LCCOMB_X74_Y38_N0
\tao_gtc|btn_cd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|btn_cd~0_combout\ = (\tao_gtc|btn_reg.zero~q\ & !\tao_gtc|btn_reg.wait1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|btn_reg.zero~q\,
	datac => \tao_gtc|btn_reg.wait1~q\,
	combout => \tao_gtc|btn_cd~0_combout\);

-- Location: FF_X74_Y38_N1
\tao_gtc|qff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|btn_cd~0_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|qff~q\);

-- Location: LCCOMB_X74_Y38_N2
\tao_gtc|btn_cd_hep\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|btn_cd_hep~combout\ = (\tao_gtc|btn_reg.zero~q\ & (!\tao_gtc|btn_reg.wait1~q\ & !\tao_gtc|qff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tao_gtc|btn_reg.zero~q\,
	datac => \tao_gtc|btn_reg.wait1~q\,
	datad => \tao_gtc|qff~q\,
	combout => \tao_gtc|btn_cd_hep~combout\);

-- Location: FF_X74_Y38_N19
\tao_gtc|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|s_reg[0]~0_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \tao_gtc|btn_cd_hep~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|s_reg\(0));

-- Location: LCCOMB_X66_Y41_N24
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\thoi_gian|giay_reg\(2) & (!\tao_gtc|s_reg\(0) & ((!\thoi_gian|giay_reg\(1)) # (!\thoi_gian|giay_reg\(0))))) # (!\thoi_gian|giay_reg\(2) & (((!\tao_gtc|s_reg\(0)) # (!\thoi_gian|giay_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \thoi_gian|giay_reg\(2),
	datac => \thoi_gian|giay_reg\(1),
	datad => \tao_gtc|s_reg\(0),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X66_Y42_N24
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\thoi_gian|giay_reg\(4) & !\thoi_gian|giay_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(3),
	combout => \LessThan0~2_combout\);

-- Location: FF_X74_Y38_N25
\tao_gtc|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \tao_gtc|Mux2~0_combout\,
	clrn => \btn_n[0]~input_o\,
	ena => \tao_gtc|btn_cd_hep~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tao_gtc|s_reg\(1));

-- Location: LCCOMB_X74_Y38_N24
\tao_gtc|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tao_gtc|Mux2~0_combout\ = \tao_gtc|s_reg\(1) $ (\tao_gtc|s_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tao_gtc|s_reg\(1),
	datad => \tao_gtc|s_reg\(0),
	combout => \tao_gtc|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y41_N30
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \tao_gtc|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \tao_gtc|Mux2~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X67_Y41_N0
\lcd_full|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~6_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & \LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux24~6_combout\);

-- Location: LCCOMB_X67_Y41_N8
\lcd_full|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~7_combout\ = (\lcd_full|Mux24~6_combout\ & ((\lcd_full|LCD_DIS_PTR\(0) & (!\lcd_full|Mux19~4_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux24~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux19~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|Mux24~17_combout\,
	datad => \lcd_full|Mux24~6_combout\,
	combout => \lcd_full|Mux24~7_combout\);

-- Location: LCCOMB_X66_Y42_N16
\thoi_gian|giay_reg[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|giay_reg[5]~16_combout\ = \thoi_gian|giay_reg[4]~15\ $ (\thoi_gian|giay_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \thoi_gian|giay_reg\(5),
	cin => \thoi_gian|giay_reg[4]~15\,
	combout => \thoi_gian|giay_reg[5]~16_combout\);

-- Location: FF_X66_Y42_N17
\thoi_gian|giay_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|giay_reg[5]~16_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan0~1_combout\,
	ena => \xung_ena|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|giay_reg\(5));

-- Location: LCCOMB_X66_Y42_N0
\giai_ma_bcd_giay|hex_bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|hex_bcd~0_combout\ = (!\thoi_gian|giay_reg\(3) & (!\thoi_gian|giay_reg\(4) & \thoi_gian|giay_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(5),
	combout => \giai_ma_bcd_giay|hex_bcd~0_combout\);

-- Location: LCCOMB_X66_Y42_N28
\giai_ma_bcd_giay|hex_bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|hex_bcd~3_combout\ = (\thoi_gian|giay_reg\(4) & ((\thoi_gian|giay_reg\(3)) # (!\thoi_gian|giay_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(5),
	combout => \giai_ma_bcd_giay|hex_bcd~3_combout\);

-- Location: LCCOMB_X66_Y42_N26
\giai_ma_bcd_giay|hex_bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|hex_bcd~1_combout\ = (\thoi_gian|giay_reg\(5) & (!\thoi_gian|giay_reg\(3) & ((\thoi_gian|giay_reg\(4)) # (!\thoi_gian|giay_reg\(2))))) # (!\thoi_gian|giay_reg\(5) & (\thoi_gian|giay_reg\(3) & ((\thoi_gian|giay_reg\(2)) # 
-- (!\thoi_gian|giay_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(2),
	datab => \thoi_gian|giay_reg\(5),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(3),
	combout => \giai_ma_bcd_giay|hex_bcd~1_combout\);

-- Location: LCCOMB_X66_Y42_N20
\giai_ma_bcd_giay|hex_bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|hex_bcd~2_combout\ = (\thoi_gian|giay_reg\(2) & (\thoi_gian|giay_reg\(4) $ (((\thoi_gian|giay_reg\(5) & !\thoi_gian|giay_reg\(3)))))) # (!\thoi_gian|giay_reg\(2) & ((\thoi_gian|giay_reg\(5) & ((\thoi_gian|giay_reg\(4)) # 
-- (\thoi_gian|giay_reg\(3)))) # (!\thoi_gian|giay_reg\(5) & ((!\thoi_gian|giay_reg\(3)) # (!\thoi_gian|giay_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(2),
	datab => \thoi_gian|giay_reg\(5),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(3),
	combout => \giai_ma_bcd_giay|hex_bcd~2_combout\);

-- Location: LCCOMB_X65_Y40_N2
\giai_ma_bcd_giay|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|Add5~0_combout\ = (\giai_ma_bcd_giay|hex_bcd~1_combout\ & ((\thoi_gian|giay_reg\(1)) # (!\giai_ma_bcd_giay|hex_bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|giay_reg\(1),
	datac => \giai_ma_bcd_giay|hex_bcd~1_combout\,
	datad => \giai_ma_bcd_giay|hex_bcd~2_combout\,
	combout => \giai_ma_bcd_giay|Add5~0_combout\);

-- Location: LCCOMB_X66_Y40_N18
\giai_ma_bcd_giay|chuc[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|chuc[0]~1_combout\ = (!\giai_ma_bcd_giay|Add5~0_combout\ & ((\giai_ma_bcd_giay|Add3~0_combout\ & ((\giai_ma_bcd_giay|hex_bcd~3_combout\) # (!\giai_ma_bcd_giay|hex_bcd~0_combout\))) # (!\giai_ma_bcd_giay|Add3~0_combout\ & 
-- ((!\giai_ma_bcd_giay|hex_bcd~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|Add3~0_combout\,
	datab => \giai_ma_bcd_giay|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_giay|hex_bcd~3_combout\,
	datad => \giai_ma_bcd_giay|Add5~0_combout\,
	combout => \giai_ma_bcd_giay|chuc[0]~1_combout\);

-- Location: LCCOMB_X65_Y40_N20
\giai_ma_soto_gauy_donvi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Add0~0_combout\ = \giai_ma_bcd_giay|hex_bcd~2_combout\ $ (((\thoi_gian|giay_reg\(1) & (\giai_ma_bcd_giay|chuc[0]~1_combout\ & !\thoi_gian|giay_reg\(0))) # (!\thoi_gian|giay_reg\(1) & (!\giai_ma_bcd_giay|chuc[0]~1_combout\ & 
-- \thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|hex_bcd~2_combout\,
	datab => \thoi_gian|giay_reg\(1),
	datac => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Add0~0_combout\);

-- Location: LCCOMB_X65_Y40_N8
\giai_ma_bcd_giay|donvi[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|donvi[3]~2_combout\ = \giai_ma_bcd_giay|hex_bcd~1_combout\ $ (((!\giai_ma_bcd_giay|chuc[0]~1_combout\ & ((\thoi_gian|giay_reg\(1)) # (!\giai_ma_bcd_giay|hex_bcd~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|hex_bcd~2_combout\,
	datab => \thoi_gian|giay_reg\(1),
	datac => \giai_ma_bcd_giay|hex_bcd~1_combout\,
	datad => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	combout => \giai_ma_bcd_giay|donvi[3]~2_combout\);

-- Location: LCCOMB_X65_Y40_N28
\giai_ma_bcd_giay|donvi[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|donvi[1]~0_combout\ = \thoi_gian|giay_reg\(1) $ (\giai_ma_bcd_giay|chuc[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|giay_reg\(1),
	datad => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	combout => \giai_ma_bcd_giay|donvi[1]~0_combout\);

-- Location: LCCOMB_X65_Y40_N22
\giai_ma_soto_gauy_donvi|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux19~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & (\thoi_gian|giay_reg\(0) $ (\giai_ma_bcd_giay|donvi[1]~0_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (!\thoi_gian|giay_reg\(0) & ((!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux19~1_combout\);

-- Location: LCCOMB_X65_Y40_N18
\giai_ma_soto_gauy_donvi|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux19~0_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[3]~2_combout\ $ (\giai_ma_bcd_giay|donvi[1]~0_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (((!\giai_ma_bcd_giay|donvi[3]~2_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux19~0_combout\);

-- Location: LCCOMB_X65_Y40_N4
\giai_ma_soto_gauy_donvi|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux19~2_combout\ = (\giai_ma_soto_gauy_donvi|Add0~0_combout\ & (!\giai_ma_soto_gauy_donvi|Mux19~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add0~0_combout\ & ((\giai_ma_soto_gauy_donvi|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_soto_gauy_donvi|Add0~0_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux19~1_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux19~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux19~2_combout\);

-- Location: LCCOMB_X65_Y42_N16
\lcd_full|Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~13_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(1))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Mux19~2_combout\) # (!\lcd_full|LCD_DIS_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \giai_ma_soto_gauy_donvi|Mux19~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux24~13_combout\);

-- Location: LCCOMB_X65_Y40_N30
\giai_ma_bcd_giay|donvi[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|donvi[2]~1_combout\ = \giai_ma_bcd_giay|hex_bcd~2_combout\ $ (((\thoi_gian|giay_reg\(1)) # (\giai_ma_bcd_giay|chuc[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|hex_bcd~2_combout\,
	datab => \thoi_gian|giay_reg\(1),
	datad => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	combout => \giai_ma_bcd_giay|donvi[2]~1_combout\);

-- Location: LCCOMB_X65_Y39_N20
\giai_ma_soto_gauy_donvi|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux23~0_combout\ = (\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & (\giai_ma_bcd_giay|donvi[2]~1_combout\))) # (!\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[1]~0_combout\ $ 
-- (((\giai_ma_bcd_giay|donvi[3]~2_combout\) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux23~0_combout\);

-- Location: LCCOMB_X65_Y39_N18
\giai_ma_soto_gauy_donvi|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux23~1_combout\ = (\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[3]~2_combout\ & (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- (\giai_ma_bcd_giay|donvi[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux23~1_combout\);

-- Location: LCCOMB_X65_Y39_N24
\h2_15[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_15[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~0_combout\ & ((!\giai_ma_soto_gauy_donvi|Mux23~1_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~0_combout\ & (\giai_ma_soto_gauy_donvi|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux23~0_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add0~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux23~1_combout\,
	combout => \h2_15[0]~0_combout\);

-- Location: LCCOMB_X65_Y42_N24
\h2_13[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_13[0]~0_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\thoi_gian|giay_reg\(0) $ (\giai_ma_bcd_giay|donvi[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \h2_13[0]~0_combout\);

-- Location: LCCOMB_X65_Y42_N18
\h2_13[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_13[0]~1_combout\ = (\LessThan0~4_combout\ & ((\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\h2_13[0]~0_combout\))) # (!\thoi_gian|giay_reg\(0) & ((\h2_13[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \h2_13[0]~0_combout\,
	combout => \h2_13[0]~1_combout\);

-- Location: LCCOMB_X65_Y42_N30
\lcd_full|Mux24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~14_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux24~13_combout\ & (\h2_15[0]~0_combout\)) # (!\lcd_full|Mux24~13_combout\ & ((\h2_13[0]~1_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|Mux24~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|Mux24~13_combout\,
	datac => \h2_15[0]~0_combout\,
	datad => \h2_13[0]~1_combout\,
	combout => \lcd_full|Mux24~14_combout\);

-- Location: LCCOMB_X73_Y38_N22
\doc_ds18b20|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Selector0~0_combout\ = (!\doc_ds18b20|RD_PTR\(0) & (((!\doc_ds18b20|RD_PTR\(2)) # (!\doc_ds18b20|RD_PTR\(3))) # (!\doc_ds18b20|RD_PTR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(1),
	datab => \doc_ds18b20|RD_PTR\(3),
	datac => \doc_ds18b20|RD_PTR\(0),
	datad => \doc_ds18b20|RD_PTR\(2),
	combout => \doc_ds18b20|Selector0~0_combout\);

-- Location: FF_X73_Y38_N23
\doc_ds18b20|RD_PTR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|Selector0~0_combout\,
	ena => \doc_ds18b20|RD_PTR[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|RD_PTR\(0));

-- Location: LCCOMB_X72_Y38_N4
\doc_ds18b20|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~2_combout\ = (!\doc_ds18b20|RD_PTR\(1) & !\doc_ds18b20|RD_PTR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(0),
	combout => \doc_ds18b20|Decoder0~2_combout\);

-- Location: LCCOMB_X72_Y38_N2
\doc_ds18b20|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~6_combout\ = (!\doc_ds18b20|RD_PTR\(3) & (\doc_ds18b20|RD_PTR[3]~0_combout\ & ((\doc_ds18b20|RD_PTR\(2)) # (!\doc_ds18b20|Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(2),
	datab => \doc_ds18b20|RD_PTR\(3),
	datac => \doc_ds18b20|Decoder0~2_combout\,
	datad => \doc_ds18b20|RD_PTR[3]~0_combout\,
	combout => \doc_ds18b20|Decoder0~6_combout\);

-- Location: LCCOMB_X72_Y38_N12
\doc_ds18b20|TEMP[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[4]~7_combout\ = (\doc_ds18b20|Decoder0~8_combout\ & ((\doc_ds18b20|Decoder0~6_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Decoder0~6_combout\ & ((\doc_ds18b20|TEMP\(4)))))) # (!\doc_ds18b20|Decoder0~8_combout\ & 
-- (((\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Decoder0~8_combout\,
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \doc_ds18b20|Decoder0~6_combout\,
	combout => \doc_ds18b20|TEMP[4]~7_combout\);

-- Location: FF_X68_Y39_N25
\doc_ds18b20|TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[4]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(4));

-- Location: LCCOMB_X72_Y38_N28
\doc_ds18b20|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Add3~0_combout\ = (\doc_ds18b20|RD_PTR\(1) & \doc_ds18b20|RD_PTR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(0),
	combout => \doc_ds18b20|Add3~0_combout\);

-- Location: LCCOMB_X69_Y38_N22
\doc_ds18b20|TEMP[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[10]~1_combout\ = (\doc_ds18b20|Decoder0~9_combout\ & ((\doc_ds18b20|Add3~0_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Add3~0_combout\ & ((\doc_ds18b20|TEMP\(10)))))) # (!\doc_ds18b20|Decoder0~9_combout\ & 
-- (((\doc_ds18b20|TEMP\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Decoder0~9_combout\,
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|TEMP\(10),
	datad => \doc_ds18b20|Add3~0_combout\,
	combout => \doc_ds18b20|TEMP[10]~1_combout\);

-- Location: FF_X69_Y38_N23
\doc_ds18b20|TEMP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	d => \doc_ds18b20|TEMP[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(10));

-- Location: LCCOMB_X72_Y38_N14
\doc_ds18b20|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~4_combout\ = (\doc_ds18b20|RD_PTR\(1) & !\doc_ds18b20|RD_PTR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(0),
	combout => \doc_ds18b20|Decoder0~4_combout\);

-- Location: LCCOMB_X72_Y38_N16
\doc_ds18b20|TEMP[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[9]~2_combout\ = (\doc_ds18b20|Decoder0~9_combout\ & ((\doc_ds18b20|Decoder0~4_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Decoder0~4_combout\ & ((\doc_ds18b20|TEMP\(9)))))) # (!\doc_ds18b20|Decoder0~9_combout\ & 
-- (((\doc_ds18b20|TEMP\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Decoder0~9_combout\,
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|Decoder0~4_combout\,
	datad => \doc_ds18b20|TEMP\(9),
	combout => \doc_ds18b20|TEMP[9]~2_combout\);

-- Location: FF_X69_Y38_N9
\doc_ds18b20|TEMP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[9]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(9));

-- Location: LCCOMB_X72_Y38_N18
\doc_ds18b20|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~5_combout\ = (!\doc_ds18b20|RD_PTR\(1) & \doc_ds18b20|RD_PTR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|RD_PTR\(0),
	combout => \doc_ds18b20|Decoder0~5_combout\);

-- Location: LCCOMB_X72_Y38_N8
\doc_ds18b20|TEMP[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[8]~3_combout\ = (\doc_ds18b20|Decoder0~9_combout\ & ((\doc_ds18b20|Decoder0~5_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Decoder0~5_combout\ & ((\doc_ds18b20|TEMP\(8)))))) # (!\doc_ds18b20|Decoder0~9_combout\ & 
-- (((\doc_ds18b20|TEMP\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|Decoder0~9_combout\,
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|TEMP\(8),
	datad => \doc_ds18b20|Decoder0~5_combout\,
	combout => \doc_ds18b20|TEMP[8]~3_combout\);

-- Location: FF_X69_Y38_N11
\doc_ds18b20|TEMP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[8]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(8));

-- Location: LCCOMB_X69_Y38_N8
\giai_ma_bcd_ds|hex_bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~0_combout\ = (\doc_ds18b20|TEMP\(10) & (!\doc_ds18b20|TEMP\(8) & (\doc_ds18b20|TEMP\(11) $ (!\doc_ds18b20|TEMP\(9))))) # (!\doc_ds18b20|TEMP\(10) & (\doc_ds18b20|TEMP\(11) & (!\doc_ds18b20|TEMP\(9) & \doc_ds18b20|TEMP\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \doc_ds18b20|TEMP\(10),
	datac => \doc_ds18b20|TEMP\(9),
	datad => \doc_ds18b20|TEMP\(8),
	combout => \giai_ma_bcd_ds|hex_bcd~0_combout\);

-- Location: LCCOMB_X72_Y38_N20
\doc_ds18b20|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~3_combout\ = (\doc_ds18b20|RD_PTR\(2) & (\doc_ds18b20|RD_PTR\(3) & (\doc_ds18b20|Decoder0~2_combout\ & \doc_ds18b20|RD_PTR[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(2),
	datab => \doc_ds18b20|RD_PTR\(3),
	datac => \doc_ds18b20|Decoder0~2_combout\,
	datad => \doc_ds18b20|RD_PTR[3]~0_combout\,
	combout => \doc_ds18b20|Decoder0~3_combout\);

-- Location: LCCOMB_X72_Y38_N22
\doc_ds18b20|TEMP[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[11]~0_combout\ = (\doc_ds18b20|Decoder0~3_combout\ & (\doc_ds18b20|ds_in~q\)) # (!\doc_ds18b20|Decoder0~3_combout\ & ((\doc_ds18b20|TEMP\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|ds_in~q\,
	datac => \doc_ds18b20|TEMP\(11),
	datad => \doc_ds18b20|Decoder0~3_combout\,
	combout => \doc_ds18b20|TEMP[11]~0_combout\);

-- Location: FF_X69_Y38_N21
\doc_ds18b20|TEMP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[11]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(11));

-- Location: LCCOMB_X69_Y38_N4
\giai_ma_bcd_ds|hex_bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~1_combout\ = (\doc_ds18b20|TEMP\(8) & (\doc_ds18b20|TEMP\(10) $ (((!\doc_ds18b20|TEMP\(9) & \doc_ds18b20|TEMP\(11)))))) # (!\doc_ds18b20|TEMP\(8) & ((\doc_ds18b20|TEMP\(10) & ((\doc_ds18b20|TEMP\(11)) # (!\doc_ds18b20|TEMP\(9)))) # 
-- (!\doc_ds18b20|TEMP\(10) & ((\doc_ds18b20|TEMP\(9)) # (!\doc_ds18b20|TEMP\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(8),
	datab => \doc_ds18b20|TEMP\(10),
	datac => \doc_ds18b20|TEMP\(9),
	datad => \doc_ds18b20|TEMP\(11),
	combout => \giai_ma_bcd_ds|hex_bcd~1_combout\);

-- Location: LCCOMB_X69_Y38_N20
\giai_ma_bcd_ds|hex_bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~2_combout\ = (\doc_ds18b20|TEMP\(11) & (!\doc_ds18b20|TEMP\(9) & ((\doc_ds18b20|TEMP\(10)) # (!\doc_ds18b20|TEMP\(8))))) # (!\doc_ds18b20|TEMP\(11) & (\doc_ds18b20|TEMP\(9) & ((\doc_ds18b20|TEMP\(8)) # (!\doc_ds18b20|TEMP\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(8),
	datab => \doc_ds18b20|TEMP\(10),
	datac => \doc_ds18b20|TEMP\(11),
	datad => \doc_ds18b20|TEMP\(9),
	combout => \giai_ma_bcd_ds|hex_bcd~2_combout\);

-- Location: LCCOMB_X69_Y38_N28
\giai_ma_bcd_ds|hex_bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~5_combout\ = (\doc_ds18b20|TEMP\(7) & (((!\giai_ma_bcd_ds|hex_bcd~1_combout\)))) # (!\doc_ds18b20|TEMP\(7) & ((\giai_ma_bcd_ds|hex_bcd~0_combout\ & (\giai_ma_bcd_ds|hex_bcd~1_combout\)) # (!\giai_ma_bcd_ds|hex_bcd~0_combout\ & 
-- (!\giai_ma_bcd_ds|hex_bcd~1_combout\ & !\giai_ma_bcd_ds|hex_bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(7),
	datab => \giai_ma_bcd_ds|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~1_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~2_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~5_combout\);

-- Location: LCCOMB_X69_Y38_N30
\giai_ma_bcd_ds|hex_bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~4_combout\ = (\doc_ds18b20|TEMP\(7) & (((\giai_ma_bcd_ds|hex_bcd~0_combout\) # (\giai_ma_bcd_ds|hex_bcd~2_combout\)))) # (!\doc_ds18b20|TEMP\(7) & (!\giai_ma_bcd_ds|hex_bcd~0_combout\ & ((\giai_ma_bcd_ds|hex_bcd~1_combout\) # 
-- (!\giai_ma_bcd_ds|hex_bcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(7),
	datab => \giai_ma_bcd_ds|hex_bcd~1_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~0_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~2_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~4_combout\);

-- Location: LCCOMB_X69_Y38_N24
\giai_ma_bcd_ds|hex_bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~3_combout\ = (\giai_ma_bcd_ds|hex_bcd~2_combout\ & (!\doc_ds18b20|TEMP\(7) & ((\giai_ma_bcd_ds|hex_bcd~1_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~2_combout\ & (\giai_ma_bcd_ds|hex_bcd~0_combout\ & ((\doc_ds18b20|TEMP\(7)) # 
-- (!\giai_ma_bcd_ds|hex_bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(7),
	datab => \giai_ma_bcd_ds|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~1_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~2_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~3_combout\);

-- Location: LCCOMB_X69_Y38_N18
\giai_ma_bcd_ds|hex_bcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~7_combout\ = (\doc_ds18b20|TEMP\(6) & (((!\giai_ma_bcd_ds|hex_bcd~4_combout\)))) # (!\doc_ds18b20|TEMP\(6) & ((\giai_ma_bcd_ds|hex_bcd~4_combout\ & ((\giai_ma_bcd_ds|hex_bcd~3_combout\))) # (!\giai_ma_bcd_ds|hex_bcd~4_combout\ & 
-- (!\giai_ma_bcd_ds|hex_bcd~5_combout\ & !\giai_ma_bcd_ds|hex_bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(6),
	datab => \giai_ma_bcd_ds|hex_bcd~5_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~4_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~3_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~7_combout\);

-- Location: LCCOMB_X72_Y38_N0
\doc_ds18b20|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|Decoder0~7_combout\ = (\doc_ds18b20|RD_PTR\(2) & (\doc_ds18b20|RD_PTR\(1) & \doc_ds18b20|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|RD_PTR\(2),
	datac => \doc_ds18b20|RD_PTR\(1),
	datad => \doc_ds18b20|Decoder0~6_combout\,
	combout => \doc_ds18b20|Decoder0~7_combout\);

-- Location: LCCOMB_X72_Y38_N30
\doc_ds18b20|TEMP[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[6]~5_combout\ = (\doc_ds18b20|RD_PTR\(0) & ((\doc_ds18b20|Decoder0~7_combout\ & ((\doc_ds18b20|ds_in~q\))) # (!\doc_ds18b20|Decoder0~7_combout\ & (\doc_ds18b20|TEMP\(6))))) # (!\doc_ds18b20|RD_PTR\(0) & (\doc_ds18b20|TEMP\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(6),
	datab => \doc_ds18b20|RD_PTR\(0),
	datac => \doc_ds18b20|ds_in~q\,
	datad => \doc_ds18b20|Decoder0~7_combout\,
	combout => \doc_ds18b20|TEMP[6]~5_combout\);

-- Location: FF_X69_Y38_N15
\doc_ds18b20|TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[6]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(6));

-- Location: LCCOMB_X69_Y38_N14
\giai_ma_bcd_ds|hex_bcd~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~8_combout\ = (\giai_ma_bcd_ds|hex_bcd~5_combout\ & ((\doc_ds18b20|TEMP\(6)) # ((\giai_ma_bcd_ds|hex_bcd~4_combout\ & !\giai_ma_bcd_ds|hex_bcd~3_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~5_combout\ & ((\doc_ds18b20|TEMP\(6) $ 
-- (!\giai_ma_bcd_ds|hex_bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~4_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~5_combout\,
	datac => \doc_ds18b20|TEMP\(6),
	datad => \giai_ma_bcd_ds|hex_bcd~3_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~8_combout\);

-- Location: LCCOMB_X69_Y38_N12
\giai_ma_bcd_ds|hex_bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~6_combout\ = (\giai_ma_bcd_ds|hex_bcd~5_combout\ & (!\doc_ds18b20|TEMP\(6) & ((\giai_ma_bcd_ds|hex_bcd~4_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~5_combout\ & (\giai_ma_bcd_ds|hex_bcd~3_combout\ & ((\doc_ds18b20|TEMP\(6)) # 
-- (!\giai_ma_bcd_ds|hex_bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(6),
	datab => \giai_ma_bcd_ds|hex_bcd~3_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~4_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~5_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~6_combout\);

-- Location: LCCOMB_X69_Y38_N2
\giai_ma_bcd_ds|donvi[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|donvi[1]~2_combout\ = (\doc_ds18b20|TEMP\(5) & ((\giai_ma_bcd_ds|hex_bcd~7_combout\) # ((\giai_ma_bcd_ds|hex_bcd~6_combout\)))) # (!\doc_ds18b20|TEMP\(5) & (!\giai_ma_bcd_ds|hex_bcd~6_combout\ & ((\giai_ma_bcd_ds|hex_bcd~8_combout\) # 
-- (!\giai_ma_bcd_ds|hex_bcd~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(5),
	datab => \giai_ma_bcd_ds|hex_bcd~7_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~8_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~6_combout\,
	combout => \giai_ma_bcd_ds|donvi[1]~2_combout\);

-- Location: LCCOMB_X69_Y39_N0
\giai_ma_bcd_ds|donvi[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|donvi[3]~1_combout\ = (\giai_ma_bcd_ds|hex_bcd~7_combout\ & (!\doc_ds18b20|TEMP\(5) & ((\giai_ma_bcd_ds|hex_bcd~8_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~7_combout\ & (\giai_ma_bcd_ds|hex_bcd~6_combout\ & ((\doc_ds18b20|TEMP\(5)) # 
-- (!\giai_ma_bcd_ds|hex_bcd~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(5),
	datab => \giai_ma_bcd_ds|hex_bcd~6_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~8_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~7_combout\,
	combout => \giai_ma_bcd_ds|donvi[3]~1_combout\);

-- Location: LCCOMB_X70_Y41_N2
\giai_ma_soto_ds_donvi|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux23~0_combout\ = (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & 
-- \giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux23~0_combout\);

-- Location: LCCOMB_X72_Y38_N24
\doc_ds18b20|TEMP[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \doc_ds18b20|TEMP[5]~6_combout\ = (\doc_ds18b20|RD_PTR\(0) & (\doc_ds18b20|TEMP\(5))) # (!\doc_ds18b20|RD_PTR\(0) & ((\doc_ds18b20|Decoder0~7_combout\ & ((\doc_ds18b20|ds_in~q\))) # (!\doc_ds18b20|Decoder0~7_combout\ & (\doc_ds18b20|TEMP\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(5),
	datab => \doc_ds18b20|RD_PTR\(0),
	datac => \doc_ds18b20|ds_in~q\,
	datad => \doc_ds18b20|Decoder0~7_combout\,
	combout => \doc_ds18b20|TEMP[5]~6_combout\);

-- Location: FF_X69_Y38_N1
\doc_ds18b20|TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ckht~inputclkctrl_outclk\,
	asdata => \doc_ds18b20|TEMP[5]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \doc_ds18b20|TEMP\(5));

-- Location: LCCOMB_X69_Y38_N0
\giai_ma_bcd_ds|donvi[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|donvi[2]~0_combout\ = (\giai_ma_bcd_ds|hex_bcd~6_combout\ & (\giai_ma_bcd_ds|hex_bcd~8_combout\ $ ((\doc_ds18b20|TEMP\(5))))) # (!\giai_ma_bcd_ds|hex_bcd~6_combout\ & (!\giai_ma_bcd_ds|hex_bcd~8_combout\ & ((\doc_ds18b20|TEMP\(5)) # 
-- (!\giai_ma_bcd_ds|hex_bcd~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~6_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~8_combout\,
	datac => \doc_ds18b20|TEMP\(5),
	datad => \giai_ma_bcd_ds|hex_bcd~7_combout\,
	combout => \giai_ma_bcd_ds|donvi[2]~0_combout\);

-- Location: LCCOMB_X69_Y39_N2
\lcd_full|Mux24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~18_combout\ = (\giai_ma_bcd_ds|donvi[3]~1_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) $ (\lcd_full|LCD_DIS_PTR\(0))))) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\lcd_full|LCD_DIS_PTR\(0)) # 
-- (\doc_ds18b20|TEMP\(4) $ (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \lcd_full|Mux24~18_combout\);

-- Location: LCCOMB_X69_Y39_N24
\lcd_full|Mux24~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~19_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (((\lcd_full|Mux24~18_combout\) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|Mux24~18_combout\ & (\doc_ds18b20|TEMP\(4) $ 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \lcd_full|Mux24~18_combout\,
	combout => \lcd_full|Mux24~19_combout\);

-- Location: LCCOMB_X69_Y39_N22
\giai_ma_soto_ds_donvi|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux19~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & (\doc_ds18b20|TEMP\(4) $ (\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\doc_ds18b20|TEMP\(4) & 
-- ((!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux19~0_combout\);

-- Location: LCCOMB_X70_Y41_N0
\lcd_full|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~8_combout\ = (\giai_ma_soto_ds_donvi|Add0~0_combout\ & ((\lcd_full|Mux24~19_combout\ & (!\giai_ma_soto_ds_donvi|Mux23~0_combout\)) # (!\lcd_full|Mux24~19_combout\ & ((!\giai_ma_soto_ds_donvi|Mux19~0_combout\))))) # 
-- (!\giai_ma_soto_ds_donvi|Add0~0_combout\ & (((\lcd_full|Mux24~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Add0~0_combout\,
	datab => \giai_ma_soto_ds_donvi|Mux23~0_combout\,
	datac => \lcd_full|Mux24~19_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux19~0_combout\,
	combout => \lcd_full|Mux24~8_combout\);

-- Location: LCCOMB_X70_Y41_N26
\lcd_full|Mux24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~16_combout\ = (!\lcd_full|LCD_DIS_PTR\(1) & (\LessThan0~4_combout\ & \lcd_full|Mux24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux24~8_combout\,
	combout => \lcd_full|Mux24~16_combout\);

-- Location: LCCOMB_X68_Y38_N0
\giai_ma_bcd_ds|hex_bcd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~9_combout\ = (\doc_ds18b20|TEMP\(9)) # (\doc_ds18b20|TEMP\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \doc_ds18b20|TEMP\(9),
	datad => \doc_ds18b20|TEMP\(10),
	combout => \giai_ma_bcd_ds|hex_bcd~9_combout\);

-- Location: LCCOMB_X69_Y38_N10
\giai_ma_bcd_ds|hex_bcd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~10_combout\ = (\doc_ds18b20|TEMP\(11) & ((\doc_ds18b20|TEMP\(9) & ((!\doc_ds18b20|TEMP\(10)) # (!\doc_ds18b20|TEMP\(8)))) # (!\doc_ds18b20|TEMP\(9) & ((\doc_ds18b20|TEMP\(10)))))) # (!\doc_ds18b20|TEMP\(11) & 
-- (((!\doc_ds18b20|TEMP\(9) & !\doc_ds18b20|TEMP\(8))) # (!\doc_ds18b20|TEMP\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \doc_ds18b20|TEMP\(9),
	datac => \doc_ds18b20|TEMP\(8),
	datad => \doc_ds18b20|TEMP\(10),
	combout => \giai_ma_bcd_ds|hex_bcd~10_combout\);

-- Location: LCCOMB_X69_Y38_N16
\giai_ma_bcd_ds|hex_bcd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~11_combout\ = \giai_ma_bcd_ds|hex_bcd~0_combout\ $ ((((!\doc_ds18b20|TEMP\(7) & \giai_ma_bcd_ds|hex_bcd~1_combout\)) # (!\giai_ma_bcd_ds|hex_bcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(7),
	datab => \giai_ma_bcd_ds|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~1_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~2_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~11_combout\);

-- Location: LCCOMB_X68_Y38_N2
\giai_ma_bcd_ds|hex_bcd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~12_combout\ = (\doc_ds18b20|TEMP\(11) & (\giai_ma_bcd_ds|hex_bcd~9_combout\ & (\giai_ma_bcd_ds|hex_bcd~10_combout\ & \giai_ma_bcd_ds|hex_bcd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \giai_ma_bcd_ds|hex_bcd~9_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~10_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~11_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~12_combout\);

-- Location: LCCOMB_X68_Y38_N8
\giai_ma_bcd_ds|hex_bcd~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~13_combout\ = (!\giai_ma_bcd_ds|hex_bcd~10_combout\ & (((!\giai_ma_bcd_ds|hex_bcd~11_combout\) # (!\giai_ma_bcd_ds|hex_bcd~9_combout\)) # (!\doc_ds18b20|TEMP\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \giai_ma_bcd_ds|hex_bcd~9_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~10_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~11_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~13_combout\);

-- Location: LCCOMB_X68_Y38_N14
\giai_ma_bcd_ds|hex_bcd~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~14_combout\ = (\doc_ds18b20|TEMP\(11) & (\doc_ds18b20|TEMP\(10) & (\doc_ds18b20|TEMP\(9) & \doc_ds18b20|TEMP\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \doc_ds18b20|TEMP\(10),
	datac => \doc_ds18b20|TEMP\(9),
	datad => \doc_ds18b20|TEMP\(8),
	combout => \giai_ma_bcd_ds|hex_bcd~14_combout\);

-- Location: LCCOMB_X68_Y38_N12
\giai_ma_bcd_ds|hex_bcd~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~15_combout\ = (\giai_ma_bcd_ds|hex_bcd~14_combout\) # ((!\giai_ma_bcd_ds|hex_bcd~11_combout\ & ((!\giai_ma_bcd_ds|hex_bcd~9_combout\) # (!\doc_ds18b20|TEMP\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(11),
	datab => \giai_ma_bcd_ds|hex_bcd~9_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~14_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~11_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~15_combout\);

-- Location: LCCOMB_X68_Y38_N22
\giai_ma_bcd_ds|chuc[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|chuc[1]~2_combout\ = (\giai_ma_bcd_ds|hex_bcd~16_combout\ & ((\giai_ma_bcd_ds|hex_bcd~12_combout\) # ((\giai_ma_bcd_ds|hex_bcd~13_combout\ & \giai_ma_bcd_ds|hex_bcd~15_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~16_combout\ & 
-- (!\giai_ma_bcd_ds|hex_bcd~12_combout\ & (!\giai_ma_bcd_ds|hex_bcd~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~16_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~12_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~13_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~15_combout\,
	combout => \giai_ma_bcd_ds|chuc[1]~2_combout\);

-- Location: LCCOMB_X68_Y38_N30
\giai_ma_bcd_ds|chuc[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|chuc[2]~0_combout\ = (\giai_ma_bcd_ds|hex_bcd~16_combout\ & ((\giai_ma_bcd_ds|hex_bcd~12_combout\ & ((!\giai_ma_bcd_ds|hex_bcd~15_combout\))) # (!\giai_ma_bcd_ds|hex_bcd~12_combout\ & (!\giai_ma_bcd_ds|hex_bcd~13_combout\ & 
-- \giai_ma_bcd_ds|hex_bcd~15_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~16_combout\ & (((\giai_ma_bcd_ds|hex_bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~16_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~13_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~12_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~15_combout\,
	combout => \giai_ma_bcd_ds|chuc[2]~0_combout\);

-- Location: LCCOMB_X68_Y38_N16
\giai_ma_bcd_ds|chuc[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|chuc[3]~1_combout\ = (\giai_ma_bcd_ds|hex_bcd~16_combout\ & (\giai_ma_bcd_ds|hex_bcd~13_combout\ & ((!\giai_ma_bcd_ds|hex_bcd~15_combout\)))) # (!\giai_ma_bcd_ds|hex_bcd~16_combout\ & (((\giai_ma_bcd_ds|hex_bcd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~16_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~13_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~12_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~15_combout\,
	combout => \giai_ma_bcd_ds|chuc[3]~1_combout\);

-- Location: LCCOMB_X68_Y38_N4
\giai_ma_bcd_ds|chuc[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|chuc[0]~3_combout\ = \giai_ma_bcd_ds|hex_bcd~6_combout\ $ ((((!\doc_ds18b20|TEMP\(5) & \giai_ma_bcd_ds|hex_bcd~8_combout\)) # (!\giai_ma_bcd_ds|hex_bcd~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(5),
	datab => \giai_ma_bcd_ds|hex_bcd~8_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~6_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~7_combout\,
	combout => \giai_ma_bcd_ds|chuc[0]~3_combout\);

-- Location: LCCOMB_X69_Y41_N16
\h2_0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[0]~0_combout\ = (\LessThan0~4_combout\ & (((\giai_ma_bcd_ds|chuc[2]~0_combout\ & \giai_ma_bcd_ds|chuc[3]~1_combout\)) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \h2_0[0]~0_combout\);

-- Location: LCCOMB_X69_Y41_N6
\h2_0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[0]~1_combout\ = (\h2_0[0]~0_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\) # ((!\giai_ma_bcd_ds|chuc[2]~0_combout\) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \h2_0[0]~0_combout\,
	combout => \h2_0[0]~1_combout\);

-- Location: LCCOMB_X69_Y41_N24
\h2_1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[0]~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\) # (\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ & \giai_ma_bcd_ds|chuc[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \h2_1[0]~0_combout\);

-- Location: LCCOMB_X69_Y41_N2
\h2_1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[0]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (!\h2_1[0]~0_combout\))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((!\h2_1[0]~0_combout\) # 
-- (!\giai_ma_bcd_ds|chuc[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \h2_1[0]~0_combout\,
	combout => \h2_1[0]~1_combout\);

-- Location: LCCOMB_X70_Y41_N14
\lcd_full|Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~10_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|LCD_DIS_PTR\(0) & ((\h2_1[0]~1_combout\))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\h2_0[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \h2_0[0]~1_combout\,
	datad => \h2_1[0]~1_combout\,
	combout => \lcd_full|Mux24~10_combout\);

-- Location: LCCOMB_X69_Y40_N20
\giai_ma_soto_ds_chuc|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux23~0_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (((!\giai_ma_bcd_ds|chuc[0]~3_combout\) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\))))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux23~0_combout\);

-- Location: LCCOMB_X69_Y40_N30
\giai_ma_soto_ds_chuc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Add0~0_combout\ = \giai_ma_bcd_ds|chuc[2]~0_combout\ $ (((\giai_ma_bcd_ds|chuc[1]~2_combout\ & \giai_ma_bcd_ds|chuc[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Add0~0_combout\);

-- Location: LCCOMB_X69_Y40_N28
\giai_ma_soto_ds_chuc|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux23~1_combout\ = (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[3]~1_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & 
-- \giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux23~1_combout\);

-- Location: LCCOMB_X69_Y40_N14
\h2_2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_2[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add0~0_combout\ & (\giai_ma_soto_ds_chuc|Mux23~0_combout\)) # (!\giai_ma_soto_ds_chuc|Add0~0_combout\ & ((!\giai_ma_soto_ds_chuc|Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_chuc|Mux23~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Add0~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux23~1_combout\,
	combout => \h2_2[0]~0_combout\);

-- Location: LCCOMB_X70_Y41_N16
\lcd_full|Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~11_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux24~10_combout\ & (\h2_3[0]~1_combout\)) # (!\lcd_full|Mux24~10_combout\ & ((\h2_2[0]~0_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h2_3[0]~1_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|Mux24~10_combout\,
	datad => \h2_2[0]~0_combout\,
	combout => \lcd_full|Mux24~11_combout\);

-- Location: LCCOMB_X70_Y41_N6
\lcd_full|Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~12_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|LCD_DIS_PTR\(2))) # (!\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|Mux24~16_combout\)) # (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux24~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \lcd_full|Mux24~16_combout\,
	datad => \lcd_full|Mux24~11_combout\,
	combout => \lcd_full|Mux24~12_combout\);

-- Location: LCCOMB_X70_Y41_N8
\lcd_full|Mux24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~15_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux24~12_combout\ & ((\lcd_full|Mux24~14_combout\))) # (!\lcd_full|Mux24~12_combout\ & (\lcd_full|Mux24~7_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(3) & 
-- (((\lcd_full|Mux24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|Mux24~7_combout\,
	datac => \lcd_full|Mux24~14_combout\,
	datad => \lcd_full|Mux24~12_combout\,
	combout => \lcd_full|Mux24~15_combout\);

-- Location: LCCOMB_X70_Y39_N26
\lcd_full|LCD_DIS_PTR[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|LCD_DIS_PTR[3]~6_combout\ = (\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (((\lcd_full|LCD_DIS_PTR\(3))))) # (!\lcd_full|LCD_DIS_PTR[0]~4_combout\ & (!\lcd_full|Selector25~1_combout\ & (\lcd_full|Add3~0_combout\ $ (\lcd_full|LCD_DIS_PTR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Add3~0_combout\,
	datab => \lcd_full|Selector25~1_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(3),
	datad => \lcd_full|LCD_DIS_PTR[0]~4_combout\,
	combout => \lcd_full|LCD_DIS_PTR[3]~6_combout\);

-- Location: FF_X70_Y39_N27
\lcd_full|LCD_DIS_PTR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|LCD_DIS_PTR[3]~6_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_DIS_PTR\(3));

-- Location: LCCOMB_X66_Y42_N22
\giai_ma_bcd_giay|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|Add3~0_combout\ = (\thoi_gian|giay_reg\(2)) # ((\thoi_gian|giay_reg\(3) & (!\thoi_gian|giay_reg\(5))) # (!\thoi_gian|giay_reg\(3) & (\thoi_gian|giay_reg\(5) & \thoi_gian|giay_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datab => \thoi_gian|giay_reg\(5),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(2),
	combout => \giai_ma_bcd_giay|Add3~0_combout\);

-- Location: LCCOMB_X66_Y40_N16
\giai_ma_bcd_giay|chuc[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|chuc[0]~0_combout\ = \giai_ma_bcd_giay|Add5~0_combout\ $ (((\giai_ma_bcd_giay|hex_bcd~3_combout\ & ((\giai_ma_bcd_giay|Add3~0_combout\))) # (!\giai_ma_bcd_giay|hex_bcd~3_combout\ & ((!\giai_ma_bcd_giay|Add3~0_combout\) # 
-- (!\giai_ma_bcd_giay|hex_bcd~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|hex_bcd~3_combout\,
	datab => \giai_ma_bcd_giay|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_giay|Add3~0_combout\,
	datad => \giai_ma_bcd_giay|Add5~0_combout\,
	combout => \giai_ma_bcd_giay|chuc[0]~0_combout\);

-- Location: LCCOMB_X66_Y41_N18
\giai_ma_soto_GIAY_CHUC|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux7~2_combout\ = (!\giai_ma_bcd_giay|chuc[0]~0_combout\ & (((!\thoi_gian|giay_reg\(3) & !\thoi_gian|giay_reg\(4))) # (!\thoi_gian|giay_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datab => \thoi_gian|giay_reg\(4),
	datac => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datad => \thoi_gian|giay_reg\(5),
	combout => \giai_ma_soto_GIAY_CHUC|Mux7~2_combout\);

-- Location: LCCOMB_X66_Y40_N30
\giai_ma_soto_GIAY_CHUC|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Add0~1_combout\ = \giai_ma_bcd_giay|Add5~0_combout\ $ (((\giai_ma_bcd_giay|hex_bcd~3_combout\ & (!\giai_ma_bcd_giay|hex_bcd~0_combout\)) # (!\giai_ma_bcd_giay|hex_bcd~3_combout\ & (\giai_ma_bcd_giay|hex_bcd~0_combout\ & 
-- !\giai_ma_bcd_giay|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|hex_bcd~3_combout\,
	datab => \giai_ma_bcd_giay|hex_bcd~0_combout\,
	datac => \giai_ma_bcd_giay|Add3~0_combout\,
	datad => \giai_ma_bcd_giay|Add5~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\);

-- Location: LCCOMB_X66_Y39_N6
\h1_11[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_11[0]~2_combout\ = (\LessThan0~4_combout\ & (((!\giai_ma_soto_GIAY_CHUC|Mux7~2_combout\ & !\giai_ma_soto_GIAY_CHUC|Add0~1_combout\)))) # (!\LessThan0~4_combout\ & (\thoi_gian|giay_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_soto_GIAY_CHUC|Mux7~2_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \h1_11[0]~2_combout\);

-- Location: LCCOMB_X67_Y39_N12
\thoi_gian|phut_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[0]~6_combout\ = \thoi_gian|phut_reg\(0) $ (VCC)
-- \thoi_gian|phut_reg[0]~7\ = CARRY(\thoi_gian|phut_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(0),
	datad => VCC,
	combout => \thoi_gian|phut_reg[0]~6_combout\,
	cout => \thoi_gian|phut_reg[0]~7\);

-- Location: LCCOMB_X67_Y39_N14
\thoi_gian|phut_reg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[1]~9_combout\ = (\thoi_gian|phut_reg\(1) & (!\thoi_gian|phut_reg[0]~7\)) # (!\thoi_gian|phut_reg\(1) & ((\thoi_gian|phut_reg[0]~7\) # (GND)))
-- \thoi_gian|phut_reg[1]~10\ = CARRY((!\thoi_gian|phut_reg[0]~7\) # (!\thoi_gian|phut_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|phut_reg\(1),
	datad => VCC,
	cin => \thoi_gian|phut_reg[0]~7\,
	combout => \thoi_gian|phut_reg[1]~9_combout\,
	cout => \thoi_gian|phut_reg[1]~10\);

-- Location: LCCOMB_X67_Y39_N28
\thoi_gian|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|LessThan1~0_combout\ = ((!\thoi_gian|phut_reg\(2) & ((!\thoi_gian|phut_reg\(1)) # (!\thoi_gian|phut_reg\(0))))) # (!\thoi_gian|phut_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(0),
	datab => \thoi_gian|phut_reg\(2),
	datac => \thoi_gian|phut_reg\(1),
	datad => \thoi_gian|phut_reg\(3),
	combout => \thoi_gian|LessThan1~0_combout\);

-- Location: LCCOMB_X67_Y39_N18
\thoi_gian|phut_reg[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[3]~13_combout\ = (\thoi_gian|phut_reg\(3) & (!\thoi_gian|phut_reg[2]~12\)) # (!\thoi_gian|phut_reg\(3) & ((\thoi_gian|phut_reg[2]~12\) # (GND)))
-- \thoi_gian|phut_reg[3]~14\ = CARRY((!\thoi_gian|phut_reg[2]~12\) # (!\thoi_gian|phut_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|phut_reg\(3),
	datad => VCC,
	cin => \thoi_gian|phut_reg[2]~12\,
	combout => \thoi_gian|phut_reg[3]~13_combout\,
	cout => \thoi_gian|phut_reg[3]~14\);

-- Location: LCCOMB_X67_Y39_N20
\thoi_gian|phut_reg[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[4]~15_combout\ = (\thoi_gian|phut_reg\(4) & (\thoi_gian|phut_reg[3]~14\ $ (GND))) # (!\thoi_gian|phut_reg\(4) & (!\thoi_gian|phut_reg[3]~14\ & VCC))
-- \thoi_gian|phut_reg[4]~16\ = CARRY((\thoi_gian|phut_reg\(4) & !\thoi_gian|phut_reg[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|phut_reg\(4),
	datad => VCC,
	cin => \thoi_gian|phut_reg[3]~14\,
	combout => \thoi_gian|phut_reg[4]~15_combout\,
	cout => \thoi_gian|phut_reg[4]~16\);

-- Location: LCCOMB_X66_Y42_N30
\thoi_gian|phut_reg[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[4]~8_combout\ = (\thoi_gian|LessThan0~1_combout\ & \xung_ena|Equal16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \thoi_gian|LessThan0~1_combout\,
	datad => \xung_ena|Equal16~3_combout\,
	combout => \thoi_gian|phut_reg[4]~8_combout\);

-- Location: FF_X67_Y39_N21
\thoi_gian|phut_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[4]~15_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(4));

-- Location: LCCOMB_X67_Y39_N22
\thoi_gian|phut_reg[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[5]~17_combout\ = \thoi_gian|phut_reg\(5) $ (\thoi_gian|phut_reg[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(5),
	cin => \thoi_gian|phut_reg[4]~16\,
	combout => \thoi_gian|phut_reg[5]~17_combout\);

-- Location: FF_X67_Y39_N23
\thoi_gian|phut_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[5]~17_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(5));

-- Location: LCCOMB_X67_Y39_N26
\thoi_gian|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|LessThan1~1_combout\ = (!\thoi_gian|LessThan1~0_combout\ & (\thoi_gian|phut_reg\(5) & \thoi_gian|phut_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|LessThan1~0_combout\,
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \thoi_gian|LessThan1~1_combout\);

-- Location: FF_X67_Y39_N15
\thoi_gian|phut_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[1]~9_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(1));

-- Location: LCCOMB_X67_Y39_N16
\thoi_gian|phut_reg[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \thoi_gian|phut_reg[2]~11_combout\ = (\thoi_gian|phut_reg\(2) & (\thoi_gian|phut_reg[1]~10\ $ (GND))) # (!\thoi_gian|phut_reg\(2) & (!\thoi_gian|phut_reg[1]~10\ & VCC))
-- \thoi_gian|phut_reg[2]~12\ = CARRY((\thoi_gian|phut_reg\(2) & !\thoi_gian|phut_reg[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|phut_reg\(2),
	datad => VCC,
	cin => \thoi_gian|phut_reg[1]~10\,
	combout => \thoi_gian|phut_reg[2]~11_combout\,
	cout => \thoi_gian|phut_reg[2]~12\);

-- Location: FF_X67_Y39_N17
\thoi_gian|phut_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[2]~11_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(2));

-- Location: FF_X67_Y39_N19
\thoi_gian|phut_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[3]~13_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(3));

-- Location: LCCOMB_X67_Y39_N30
\giai_ma_bcd_phut|hex_bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|hex_bcd~2_combout\ = (\thoi_gian|phut_reg\(2) & (\thoi_gian|phut_reg\(4) $ (((!\thoi_gian|phut_reg\(3) & \thoi_gian|phut_reg\(5)))))) # (!\thoi_gian|phut_reg\(2) & ((\thoi_gian|phut_reg\(3) & ((\thoi_gian|phut_reg\(5)) # 
-- (!\thoi_gian|phut_reg\(4)))) # (!\thoi_gian|phut_reg\(3) & ((\thoi_gian|phut_reg\(4)) # (!\thoi_gian|phut_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(2),
	datab => \thoi_gian|phut_reg\(3),
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \giai_ma_bcd_phut|hex_bcd~2_combout\);

-- Location: LCCOMB_X67_Y39_N0
\giai_ma_bcd_phut|hex_bcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|hex_bcd~1_combout\ = (\thoi_gian|phut_reg\(2) & (!\thoi_gian|phut_reg\(3) & (\thoi_gian|phut_reg\(5) & !\thoi_gian|phut_reg\(4)))) # (!\thoi_gian|phut_reg\(2) & (\thoi_gian|phut_reg\(4) & (\thoi_gian|phut_reg\(3) $ 
-- (!\thoi_gian|phut_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|phut_reg\(2),
	datab => \thoi_gian|phut_reg\(3),
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \giai_ma_bcd_phut|hex_bcd~1_combout\);

-- Location: LCCOMB_X68_Y39_N26
\giai_ma_bcd_phut|chuc[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|chuc[0]~0_combout\ = \giai_ma_bcd_phut|hex_bcd~1_combout\ $ ((((\giai_ma_bcd_phut|hex_bcd~2_combout\ & !\thoi_gian|phut_reg\(1))) # (!\giai_ma_bcd_phut|hex_bcd~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_phut|hex_bcd~0_combout\,
	datab => \giai_ma_bcd_phut|hex_bcd~2_combout\,
	datac => \giai_ma_bcd_phut|hex_bcd~1_combout\,
	datad => \thoi_gian|phut_reg\(1),
	combout => \giai_ma_bcd_phut|chuc[0]~0_combout\);

-- Location: LCCOMB_X68_Y39_N4
\giai_ma_soto_ds_donvi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux3~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\doc_ds18b20|TEMP\(4) & ((!\giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) $ (!\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y39_N12
\giai_ma_soto_ds_donvi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Add0~2_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((!\giai_ma_bcd_ds|donvi[1]~2_combout\ & !\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\ & 
-- ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Add0~2_combout\);

-- Location: LCCOMB_X68_Y39_N2
\giai_ma_soto_ds_donvi|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux3~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((\doc_ds18b20|TEMP\(4) & !\giai_ma_bcd_ds|donvi[1]~2_combout\)) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & 
-- (\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((\doc_ds18b20|TEMP\(4)) # (\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux3~1_combout\);

-- Location: LCCOMB_X68_Y39_N28
\h1_3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_3[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~2_combout\ & (\giai_ma_soto_ds_donvi|Mux3~0_combout\)) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & ((\giai_ma_soto_ds_donvi|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_donvi|Mux3~0_combout\,
	datac => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux3~1_combout\,
	combout => \h1_3[0]~0_combout\);

-- Location: LCCOMB_X68_Y39_N10
\lcd_full|Mux16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~13_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3)) # ((!\giai_ma_bcd_phut|chuc[0]~0_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & ((\h1_3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \giai_ma_bcd_phut|chuc[0]~0_combout\,
	datad => \h1_3[0]~0_combout\,
	combout => \lcd_full|Mux16~13_combout\);

-- Location: LCCOMB_X68_Y39_N20
\lcd_full|Mux16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~14_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux16~13_combout\ & (\h1_15[0]~0_combout\)) # (!\lcd_full|Mux16~13_combout\ & ((\h1_11[0]~2_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((\lcd_full|Mux16~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h1_15[0]~0_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \h1_11[0]~2_combout\,
	datad => \lcd_full|Mux16~13_combout\,
	combout => \lcd_full|Mux16~14_combout\);

-- Location: LCCOMB_X68_Y41_N24
\lcd_full|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~7_combout\ = (!\LessThan0~4_combout\ & (!\lcd_full|LCD_DIS_PTR\(3) & (!\lcd_full|LCD_DIS_PTR\(2) & \doc_ds18b20|TEMP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \doc_ds18b20|TEMP\(4),
	combout => \lcd_full|Mux16~7_combout\);

-- Location: LCCOMB_X68_Y39_N24
\lcd_full|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~1_combout\ = (\LessThan0~4_combout\ & (!\lcd_full|LCD_DIS_PTR\(3) & \lcd_full|LCD_DIS_PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datad => \lcd_full|LCD_DIS_PTR\(2),
	combout => \lcd_full|Mux14~1_combout\);

-- Location: LCCOMB_X69_Y39_N8
\giai_ma_soto_ds_donvi|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux11~1_combout\ = (\doc_ds18b20|TEMP\(4) & (((\giai_ma_bcd_ds|donvi[2]~0_combout\ & !\giai_ma_bcd_ds|donvi[1]~2_combout\)) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[2]~0_combout\ 
-- & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux11~1_combout\);

-- Location: LCCOMB_X69_Y39_N16
\giai_ma_soto_ds_donvi|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux11~0_combout\ = (\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\doc_ds18b20|TEMP\(4))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((!\giai_ma_bcd_ds|donvi[3]~1_combout\))))) # 
-- (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux11~0_combout\);

-- Location: LCCOMB_X69_Y39_N6
\lcd_full|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~5_combout\ = (\lcd_full|Mux14~1_combout\ & ((\giai_ma_soto_ds_donvi|Add1~0_combout\ & ((\giai_ma_soto_ds_donvi|Mux11~0_combout\))) # (!\giai_ma_soto_ds_donvi|Add1~0_combout\ & (!\giai_ma_soto_ds_donvi|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Add1~0_combout\,
	datab => \lcd_full|Mux14~1_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux11~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux11~0_combout\,
	combout => \lcd_full|Mux16~5_combout\);

-- Location: LCCOMB_X69_Y41_N20
\giai_ma_soto_ds_chuc|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux7~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (\giai_ma_bcd_ds|chuc[1]~2_combout\)) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (((!\giai_ma_bcd_ds|chuc[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux7~0_combout\);

-- Location: LCCOMB_X68_Y42_N28
\giai_ma_soto_ds_chuc|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Add0~1_combout\ = \giai_ma_bcd_ds|chuc[1]~2_combout\ $ (\giai_ma_bcd_ds|chuc[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Add0~1_combout\);

-- Location: LCCOMB_X69_Y41_N22
\giai_ma_soto_ds_chuc|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux7~1_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\ & (!\giai_ma_bcd_ds|chuc[0]~3_combout\)) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((!\giai_ma_bcd_ds|chuc[2]~0_combout\))))) # 
-- (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((!\giai_ma_bcd_ds|chuc[1]~2_combout\) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux7~1_combout\);

-- Location: LCCOMB_X69_Y41_N12
\lcd_full|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~6_combout\ = (\lcd_full|Mux14~0_combout\ & ((\giai_ma_soto_ds_chuc|Add0~1_combout\ & ((!\giai_ma_soto_ds_chuc|Mux7~1_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~1_combout\ & (!\giai_ma_soto_ds_chuc|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~0_combout\,
	datab => \giai_ma_soto_ds_chuc|Mux7~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Add0~1_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux7~1_combout\,
	combout => \lcd_full|Mux16~6_combout\);

-- Location: LCCOMB_X70_Y41_N22
\lcd_full|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~9_combout\ = (\lcd_full|Mux16~8_combout\) # ((\lcd_full|Mux16~7_combout\) # ((\lcd_full|Mux16~5_combout\) # (\lcd_full|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux16~8_combout\,
	datab => \lcd_full|Mux16~7_combout\,
	datac => \lcd_full|Mux16~5_combout\,
	datad => \lcd_full|Mux16~6_combout\,
	combout => \lcd_full|Mux16~9_combout\);

-- Location: LCCOMB_X66_Y41_N26
\giai_ma_soto_GIAY_CHUC|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux11~1_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (\thoi_gian|giay_reg\(5) & (\LessThan0~2_combout\ $ (!\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & 
-- (\giai_ma_bcd_giay|chuc[0]~0_combout\ & ((!\thoi_gian|giay_reg\(5)) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datad => \thoi_gian|giay_reg\(5),
	combout => \giai_ma_soto_GIAY_CHUC|Mux11~1_combout\);

-- Location: LCCOMB_X66_Y42_N18
\giai_ma_soto_GIAY_CHUC|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Add1~0_combout\ = (\thoi_gian|giay_reg\(4) & ((\thoi_gian|giay_reg\(3)) # ((\thoi_gian|giay_reg\(1)) # (\thoi_gian|giay_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datab => \thoi_gian|giay_reg\(4),
	datac => \thoi_gian|giay_reg\(1),
	datad => \thoi_gian|giay_reg\(2),
	combout => \giai_ma_soto_GIAY_CHUC|Add1~0_combout\);

-- Location: LCCOMB_X67_Y42_N12
\giai_ma_soto_GIAY_CHUC|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Add1~1_combout\ = (\thoi_gian|giay_reg\(5) & \giai_ma_soto_GIAY_CHUC|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_soto_GIAY_CHUC|Add1~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Add1~1_combout\);

-- Location: LCCOMB_X67_Y41_N22
\h1_12[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_12[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & ((!\giai_ma_soto_GIAY_CHUC|Mux11~1_combout\))) # (!\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & (\giai_ma_soto_GIAY_CHUC|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_GIAY_CHUC|Mux11~0_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Mux11~1_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Add1~1_combout\,
	combout => \h1_12[0]~0_combout\);

-- Location: FF_X67_Y39_N13
\thoi_gian|phut_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \thoi_gian|phut_reg[0]~6_combout\,
	clrn => \btn_n[0]~input_o\,
	sclr => \thoi_gian|LessThan1~1_combout\,
	ena => \thoi_gian|phut_reg[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \thoi_gian|phut_reg\(0));

-- Location: LCCOMB_X69_Y38_N6
\giai_ma_bcd_ds|hex_bcd~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_ds|hex_bcd~16_combout\ = \giai_ma_bcd_ds|hex_bcd~3_combout\ $ ((((!\doc_ds18b20|TEMP\(6) & \giai_ma_bcd_ds|hex_bcd~4_combout\)) # (!\giai_ma_bcd_ds|hex_bcd~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(6),
	datab => \giai_ma_bcd_ds|hex_bcd~3_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~4_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~5_combout\,
	combout => \giai_ma_bcd_ds|hex_bcd~16_combout\);

-- Location: LCCOMB_X68_Y38_N18
\giai_ma_soto_ds_chuc|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Add0~2_combout\ = (\giai_ma_bcd_ds|hex_bcd~15_combout\ & (!\giai_ma_bcd_ds|hex_bcd~13_combout\ & (!\giai_ma_bcd_ds|hex_bcd~16_combout\ & !\giai_ma_bcd_ds|hex_bcd~12_combout\))) # (!\giai_ma_bcd_ds|hex_bcd~15_combout\ & 
-- (\giai_ma_bcd_ds|hex_bcd~12_combout\ $ (((\giai_ma_bcd_ds|hex_bcd~13_combout\ & \giai_ma_bcd_ds|hex_bcd~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|hex_bcd~15_combout\,
	datab => \giai_ma_bcd_ds|hex_bcd~13_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~16_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~12_combout\,
	combout => \giai_ma_soto_ds_chuc|Add0~2_combout\);

-- Location: LCCOMB_X68_Y38_N26
\h1_0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[0]~1_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[3]~1_combout\) # (!\giai_ma_soto_ds_chuc|Add0~2_combout\)))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & 
-- ((\giai_ma_soto_ds_chuc|Add0~2_combout\) # ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & \giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \h1_0[0]~1_combout\);

-- Location: LCCOMB_X68_Y38_N20
\h1_0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[0]~0_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (((!\giai_ma_soto_ds_chuc|Add0~2_combout\))))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & !\giai_ma_soto_ds_chuc|Add0~2_combout\)) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & \giai_ma_soto_ds_chuc|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	combout => \h1_0[0]~0_combout\);

-- Location: LCCOMB_X69_Y41_N18
\h1_0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[0]~2_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (\LessThan0~4_combout\ & ((\h1_0[0]~0_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & (((!\h1_0[0]~1_combout\)) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \LessThan0~4_combout\,
	datac => \h1_0[0]~1_combout\,
	datad => \h1_0[0]~0_combout\,
	combout => \h1_0[0]~2_combout\);

-- Location: LCCOMB_X70_Y41_N4
\lcd_full|Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~10_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|LCD_DIS_PTR\(2)) # ((\thoi_gian|phut_reg\(0))))) # (!\lcd_full|LCD_DIS_PTR\(3) & (!\lcd_full|LCD_DIS_PTR\(2) & ((\h1_0[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \thoi_gian|phut_reg\(0),
	datad => \h1_0[0]~2_combout\,
	combout => \lcd_full|Mux16~10_combout\);

-- Location: LCCOMB_X70_Y40_N8
\giai_ma_soto_ds_donvi|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Add0~1_combout\ = \doc_ds18b20|TEMP\(4) $ (\giai_ma_bcd_ds|donvi[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Add0~1_combout\);

-- Location: LCCOMB_X70_Y40_N4
\giai_ma_soto_ds_donvi|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux7~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[3]~1_combout\ $ (\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\doc_ds18b20|TEMP\(4)) # 
-- ((\giai_ma_bcd_ds|donvi[3]~1_combout\ & \giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux7~1_combout\);

-- Location: LCCOMB_X70_Y40_N2
\giai_ma_soto_ds_donvi|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux7~0_combout\ = (\doc_ds18b20|TEMP\(4) & (((\giai_ma_bcd_ds|donvi[3]~1_combout\) # (\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[1]~2_combout\ $ 
-- (((!\giai_ma_bcd_ds|donvi[3]~1_combout\) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux7~0_combout\);

-- Location: LCCOMB_X70_Y40_N18
\h1_4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_4[0]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~1_combout\ & (!\giai_ma_soto_ds_donvi|Mux7~1_combout\)) # (!\giai_ma_soto_ds_donvi|Add0~1_combout\ & ((!\giai_ma_soto_ds_donvi|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_donvi|Add0~1_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux7~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux7~0_combout\,
	combout => \h1_4[0]~0_combout\);

-- Location: LCCOMB_X70_Y41_N10
\lcd_full|Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~11_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux16~10_combout\ & (\h1_12[0]~0_combout\)) # (!\lcd_full|Mux16~10_combout\ & ((\h1_4[0]~0_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(2) & (((\lcd_full|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \h1_12[0]~0_combout\,
	datac => \lcd_full|Mux16~10_combout\,
	datad => \h1_4[0]~0_combout\,
	combout => \lcd_full|Mux16~11_combout\);

-- Location: LCCOMB_X70_Y41_N20
\lcd_full|Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~12_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|Mux16~9_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux16~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|Mux16~9_combout\,
	datad => \lcd_full|Mux16~11_combout\,
	combout => \lcd_full|Mux16~12_combout\);

-- Location: LCCOMB_X70_Y41_N18
\lcd_full|Mux16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux16~15_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux16~12_combout\ & ((\lcd_full|Mux16~14_combout\))) # (!\lcd_full|Mux16~12_combout\ & (\lcd_full|Mux16~4_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(1) & 
-- (((\lcd_full|Mux16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux16~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|Mux16~14_combout\,
	datad => \lcd_full|Mux16~12_combout\,
	combout => \lcd_full|Mux16~15_combout\);

-- Location: LCCOMB_X70_Y41_N28
\lcd_full|Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~3_combout\ = (\lcd_full|Selector37~1_combout\ & ((\lcd_full|Mux16~15_combout\) # ((\lcd_full|Selector37~2_combout\ & \lcd_full|Mux24~15_combout\)))) # (!\lcd_full|Selector37~1_combout\ & (\lcd_full|Selector37~2_combout\ & 
-- (\lcd_full|Mux24~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~1_combout\,
	datab => \lcd_full|Selector37~2_combout\,
	datac => \lcd_full|Mux24~15_combout\,
	datad => \lcd_full|Mux16~15_combout\,
	combout => \lcd_full|Selector37~3_combout\);

-- Location: LCCOMB_X70_Y41_N12
\lcd_full|Selector37~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~9_combout\ = (\lcd_full|Selector37~7_combout\) # ((\lcd_full|Selector37~3_combout\) # ((\lcd_full|Selector37~8_combout\ & \lcd_full|LCD_RS_DB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~8_combout\,
	datab => \lcd_full|Selector37~7_combout\,
	datac => \lcd_full|LCD_RS_DB\(0),
	datad => \lcd_full|Selector37~3_combout\,
	combout => \lcd_full|Selector37~9_combout\);

-- Location: FF_X70_Y41_N13
\lcd_full|LCD_RS_DB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector37~9_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(0));

-- Location: LCCOMB_X66_Y43_N30
\lcd_full|Selector37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~8_combout\ = ((!\lcd_full|Selector37~0_combout\ & ((!\lcd_full|Selector20~4_combout\) # (!\lcd_full|Selector28~0_combout\)))) # (!\lcd_full|Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|Selector29~0_combout\,
	datac => \lcd_full|Selector37~0_combout\,
	datad => \lcd_full|Selector20~4_combout\,
	combout => \lcd_full|Selector37~8_combout\);

-- Location: LCCOMB_X65_Y40_N6
\giai_ma_soto_gauy_donvi|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux6~1_combout\ = (\thoi_gian|giay_reg\(0) & (((!\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (\giai_ma_bcd_giay|donvi[3]~2_combout\)) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((!\giai_ma_bcd_giay|donvi[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux6~1_combout\);

-- Location: LCCOMB_X65_Y39_N22
\giai_ma_soto_gauy_donvi|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Add0~1_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (((!\giai_ma_bcd_giay|donvi[3]~2_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \thoi_gian|giay_reg\(0),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Add0~1_combout\);

-- Location: LCCOMB_X66_Y40_N4
\lcd_full|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~5_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((!\giai_ma_soto_gauy_donvi|Mux6~1_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (\giai_ma_soto_gauy_donvi|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Mux6~0_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \giai_ma_soto_gauy_donvi|Mux6~1_combout\,
	datad => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	combout => \lcd_full|Mux15~5_combout\);

-- Location: LCCOMB_X66_Y42_N2
\giai_ma_bcd_giay|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_giay|LessThan3~0_combout\ = ((\thoi_gian|giay_reg\(3) & (\thoi_gian|giay_reg\(5) & !\thoi_gian|giay_reg\(2))) # (!\thoi_gian|giay_reg\(3) & ((\thoi_gian|giay_reg\(5)) # (!\thoi_gian|giay_reg\(2))))) # (!\thoi_gian|giay_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(3),
	datab => \thoi_gian|giay_reg\(5),
	datac => \thoi_gian|giay_reg\(4),
	datad => \thoi_gian|giay_reg\(2),
	combout => \giai_ma_bcd_giay|LessThan3~0_combout\);

-- Location: LCCOMB_X66_Y40_N12
\lcd_full|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~4_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (!\LessThan0~4_combout\ & (\giai_ma_bcd_giay|LessThan3~0_combout\ $ (!\giai_ma_bcd_giay|hex_bcd~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_bcd_giay|hex_bcd~0_combout\,
	combout => \lcd_full|Mux15~4_combout\);

-- Location: LCCOMB_X66_Y40_N22
\lcd_full|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~6_combout\ = (\lcd_full|Mux15~4_combout\) # ((\LessThan0~4_combout\ & ((\lcd_full|Mux14~3_combout\) # (\lcd_full|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~3_combout\,
	datab => \LessThan0~4_combout\,
	datac => \lcd_full|Mux15~5_combout\,
	datad => \lcd_full|Mux15~4_combout\,
	combout => \lcd_full|Mux15~6_combout\);

-- Location: LCCOMB_X67_Y38_N16
\giai_ma_soto_ds_chuc|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux10~0_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (!\giai_ma_bcd_ds|chuc[3]~1_combout\)) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[0]~3_combout\) # ((\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux10~0_combout\);

-- Location: LCCOMB_X67_Y38_N14
\giai_ma_soto_ds_chuc|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux10~1_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (((\giai_ma_bcd_ds|chuc[3]~1_combout\)))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\) # 
-- (\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux10~1_combout\);

-- Location: LCCOMB_X70_Y38_N6
\giai_ma_soto_ds_chuc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Add1~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\)))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Add1~0_combout\);

-- Location: LCCOMB_X67_Y38_N24
\lcd_full|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~3_combout\ = (\lcd_full|Mux14~0_combout\ & ((\giai_ma_soto_ds_chuc|Add1~0_combout\ & ((!\giai_ma_soto_ds_chuc|Mux10~1_combout\))) # (!\giai_ma_soto_ds_chuc|Add1~0_combout\ & (\giai_ma_soto_ds_chuc|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~0_combout\,
	datab => \giai_ma_soto_ds_chuc|Mux10~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux10~1_combout\,
	datad => \giai_ma_soto_ds_chuc|Add1~0_combout\,
	combout => \lcd_full|Mux15~3_combout\);

-- Location: LCCOMB_X67_Y38_N22
\lcd_full|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~7_combout\ = (\lcd_full|Mux15~3_combout\) # ((\lcd_full|LCD_DIS_PTR\(3) & \lcd_full|Mux15~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux15~6_combout\,
	datad => \lcd_full|Mux15~3_combout\,
	combout => \lcd_full|Mux15~7_combout\);

-- Location: LCCOMB_X66_Y40_N0
\giai_ma_soto_GIAY_CHUC|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux10~0_combout\ = (\giai_ma_bcd_giay|LessThan3~0_combout\ & (!\giai_ma_bcd_giay|chuc[0]~0_combout\ & ((!\LessThan0~2_combout\) # (!\thoi_gian|giay_reg\(5))))) # (!\giai_ma_bcd_giay|LessThan3~0_combout\ & (\thoi_gian|giay_reg\(5) & 
-- (\LessThan0~2_combout\ $ (\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux10~0_combout\);

-- Location: LCCOMB_X67_Y40_N22
\h1_12[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_12[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & (!\giai_ma_soto_GIAY_CHUC|Mux10~1_combout\)) # (!\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & ((!\giai_ma_soto_GIAY_CHUC|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_GIAY_CHUC|Mux10~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Mux10~0_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Add1~1_combout\,
	combout => \h1_12[1]~1_combout\);

-- Location: LCCOMB_X68_Y39_N22
\giai_ma_bcd_phut|donvi[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|donvi[1]~0_combout\ = (\giai_ma_bcd_phut|hex_bcd~0_combout\ & ((\thoi_gian|phut_reg\(1)) # ((\giai_ma_bcd_phut|hex_bcd~2_combout\ & !\giai_ma_bcd_phut|hex_bcd~1_combout\)))) # (!\giai_ma_bcd_phut|hex_bcd~0_combout\ & 
-- ((\giai_ma_bcd_phut|hex_bcd~1_combout\ $ (!\thoi_gian|phut_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_phut|hex_bcd~0_combout\,
	datab => \giai_ma_bcd_phut|hex_bcd~2_combout\,
	datac => \giai_ma_bcd_phut|hex_bcd~1_combout\,
	datad => \thoi_gian|phut_reg\(1),
	combout => \giai_ma_bcd_phut|donvi[1]~0_combout\);

-- Location: LCCOMB_X67_Y38_N26
\h1_0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[1]~3_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (((!\giai_ma_soto_ds_chuc|Add0~2_combout\))))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- ((!\giai_ma_soto_ds_chuc|Add0~2_combout\) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_soto_ds_chuc|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	combout => \h1_0[1]~3_combout\);

-- Location: LCCOMB_X67_Y38_N28
\h1_0[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[1]~4_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (((\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- \giai_ma_soto_ds_chuc|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	combout => \h1_0[1]~4_combout\);

-- Location: LCCOMB_X67_Y38_N10
\h1_0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_0[1]~5_combout\ = (\LessThan0~4_combout\ & (\h1_0[1]~4_combout\ $ (((\giai_ma_bcd_ds|chuc[1]~2_combout\) # (\h1_0[1]~3_combout\))))) # (!\LessThan0~4_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datab => \LessThan0~4_combout\,
	datac => \h1_0[1]~3_combout\,
	datad => \h1_0[1]~4_combout\,
	combout => \h1_0[1]~5_combout\);

-- Location: LCCOMB_X67_Y38_N8
\lcd_full|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~2_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|LCD_DIS_PTR\(3))) # (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3) & (!\giai_ma_bcd_phut|donvi[1]~0_combout\)) # (!\lcd_full|LCD_DIS_PTR\(3) & ((\h1_0[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \giai_ma_bcd_phut|donvi[1]~0_combout\,
	datad => \h1_0[1]~5_combout\,
	combout => \lcd_full|Mux15~2_combout\);

-- Location: LCCOMB_X67_Y38_N12
\giai_ma_soto_ds_donvi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux6~0_combout\ = (\doc_ds18b20|TEMP\(4) & (((!\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # (\giai_ma_bcd_ds|donvi[2]~0_combout\ $ 
-- (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y38_N20
\h1_4[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_4[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~2_combout\ & (!\giai_ma_soto_ds_donvi|Mux6~1_combout\)) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & ((\giai_ma_soto_ds_donvi|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Mux6~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux6~0_combout\,
	combout => \h1_4[1]~1_combout\);

-- Location: LCCOMB_X67_Y38_N18
\lcd_full|Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~1_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux15~2_combout\ & (\h1_12[1]~1_combout\)) # (!\lcd_full|Mux15~2_combout\ & ((\h1_4[1]~1_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(2) & (((\lcd_full|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \h1_12[1]~1_combout\,
	datac => \lcd_full|Mux15~2_combout\,
	datad => \h1_4[1]~1_combout\,
	combout => \lcd_full|Selector36~1_combout\);

-- Location: LCCOMB_X67_Y38_N0
\lcd_full|Selector36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~2_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(1))) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|Mux15~7_combout\)) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Selector36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|Mux15~7_combout\,
	datad => \lcd_full|Selector36~1_combout\,
	combout => \lcd_full|Selector36~2_combout\);

-- Location: LCCOMB_X66_Y38_N0
\lcd_full|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~8_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3)) # ((!\giai_ma_bcd_ds|donvi[1]~2_combout\ & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux15~8_combout\);

-- Location: LCCOMB_X66_Y38_N30
\giai_ma_soto_gauy_donvi|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux2~1_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\thoi_gian|giay_reg\(0) & ((!\giai_ma_bcd_giay|donvi[2]~1_combout\))))) # 
-- (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & (\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\thoi_gian|giay_reg\(0)) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Mux2~1_combout\);

-- Location: LCCOMB_X66_Y38_N16
\giai_ma_soto_gauy_donvi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux2~0_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\thoi_gian|giay_reg\(0)) # (\giai_ma_bcd_giay|donvi[1]~0_combout\ $ (\giai_ma_bcd_giay|donvi[2]~1_combout\)))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- (((\giai_ma_bcd_giay|donvi[2]~1_combout\)) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y38_N24
\lcd_full|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~10_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (!\giai_ma_soto_gauy_donvi|Mux2~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((\giai_ma_soto_gauy_donvi|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux2~1_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux2~0_combout\,
	combout => \lcd_full|Mux15~10_combout\);

-- Location: LCCOMB_X66_Y38_N8
\giai_ma_soto_ds_donvi|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux10~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # 
-- (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux10~1_combout\);

-- Location: LCCOMB_X66_Y38_N18
\giai_ma_soto_ds_donvi|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux10~0_combout\ = (\giai_ma_bcd_ds|donvi[1]~2_combout\ & (((\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\doc_ds18b20|TEMP\(4)))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((\doc_ds18b20|TEMP\(4) $ 
-- (\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y38_N6
\lcd_full|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~11_combout\ = (\giai_ma_soto_ds_donvi|Add1~0_combout\ & (!\giai_ma_soto_ds_donvi|Mux10~1_combout\)) # (!\giai_ma_soto_ds_donvi|Add1~0_combout\ & ((\giai_ma_soto_ds_donvi|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Add1~0_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux10~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux10~0_combout\,
	combout => \lcd_full|Mux15~11_combout\);

-- Location: LCCOMB_X66_Y38_N20
\lcd_full|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~12_combout\ = (\lcd_full|Mux15~10_combout\) # ((!\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|LCD_DIS_PTR\(2) & \lcd_full|Mux15~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|Mux15~10_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|Mux15~11_combout\,
	combout => \lcd_full|Mux15~12_combout\);

-- Location: LCCOMB_X66_Y38_N10
\lcd_full|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux15~13_combout\ = (\lcd_full|Mux15~8_combout\) # ((\LessThan0~4_combout\ & ((\lcd_full|Mux15~9_combout\) # (\lcd_full|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux15~9_combout\,
	datab => \lcd_full|Mux15~8_combout\,
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux15~12_combout\,
	combout => \lcd_full|Mux15~13_combout\);

-- Location: LCCOMB_X66_Y38_N4
\lcd_full|Selector36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~3_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & \lcd_full|Mux15~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datad => \lcd_full|Mux15~13_combout\,
	combout => \lcd_full|Selector36~3_combout\);

-- Location: LCCOMB_X70_Y39_N0
\lcd_full|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux24~9_combout\ = (!\lcd_full|LCD_DIS_PTR\(1) & \LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux24~9_combout\);

-- Location: LCCOMB_X70_Y40_N22
\giai_ma_soto_ds_donvi|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux22~0_combout\ = (\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[3]~1_combout\ $ (((!\giai_ma_bcd_ds|donvi[2]~0_combout\ & \giai_ma_bcd_ds|donvi[1]~2_combout\))))) # (!\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\) 
-- # ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux22~0_combout\);

-- Location: LCCOMB_X70_Y40_N20
\giai_ma_soto_ds_donvi|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux18~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[3]~1_combout\ & 
-- !\giai_ma_bcd_ds|donvi[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux18~1_combout\);

-- Location: LCCOMB_X70_Y40_N26
\lcd_full|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~0_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\giai_ma_soto_ds_donvi|Add0~2_combout\) # ((\giai_ma_soto_ds_donvi|Mux22~0_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & 
-- ((!\giai_ma_soto_ds_donvi|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux22~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux18~1_combout\,
	combout => \lcd_full|Mux23~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\giai_ma_soto_ds_donvi|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux18~0_combout\ = (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # 
-- (!\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\giai_ma_bcd_ds|donvi[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux18~0_combout\);

-- Location: LCCOMB_X70_Y40_N30
\lcd_full|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~1_combout\ = (\giai_ma_soto_ds_donvi|Add0~2_combout\ & ((\lcd_full|Mux23~0_combout\ & (!\giai_ma_soto_ds_donvi|Mux22~1_combout\)) # (!\lcd_full|Mux23~0_combout\ & ((\giai_ma_soto_ds_donvi|Mux18~0_combout\))))) # 
-- (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & (((\lcd_full|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Mux22~1_combout\,
	datab => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datac => \lcd_full|Mux23~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux18~0_combout\,
	combout => \lcd_full|Mux23~1_combout\);

-- Location: LCCOMB_X66_Y38_N2
\giai_ma_soto_gauy_donvi|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux22~1_combout\ = (\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\giai_ma_bcd_giay|donvi[3]~2_combout\) # ((\giai_ma_bcd_giay|donvi[2]~1_combout\) # (\thoi_gian|giay_reg\(0))))) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & 
-- (\giai_ma_bcd_giay|donvi[3]~2_combout\ $ (((\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\thoi_gian|giay_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Mux22~1_combout\);

-- Location: LCCOMB_X66_Y38_N12
\h2_15[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_15[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((!\giai_ma_soto_gauy_donvi|Mux22~1_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (\giai_ma_soto_gauy_donvi|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Mux22~0_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux22~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \h2_15[1]~1_combout\);

-- Location: LCCOMB_X67_Y41_N4
\h2_12[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_12[1]~3_combout\ = (\LessThan0~4_combout\ & (\giai_ma_bcd_giay|LessThan3~0_combout\ $ (\thoi_gian|giay_reg\(5) $ (\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~4_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \h2_12[1]~3_combout\);

-- Location: LCCOMB_X66_Y41_N14
\giai_ma_soto_gauy_donvi|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux18~1_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & \thoi_gian|giay_reg\(0)))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- (((\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Mux18~1_combout\);

-- Location: LCCOMB_X66_Y41_N8
\giai_ma_soto_gauy_donvi|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux18~0_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (\giai_ma_bcd_giay|donvi[2]~1_combout\ $ (\thoi_gian|giay_reg\(0))))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\giai_ma_bcd_giay|donvi[1]~0_combout\ $ (!\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datab => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \thoi_gian|giay_reg\(0),
	combout => \giai_ma_soto_gauy_donvi|Mux18~0_combout\);

-- Location: LCCOMB_X66_Y41_N12
\h2_14[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_14[1]~0_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~1_combout\ & ((\giai_ma_soto_gauy_donvi|Mux18~0_combout\))) # (!\giai_ma_soto_gauy_donvi|Add0~1_combout\ & (!\giai_ma_soto_gauy_donvi|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux18~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux18~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Add0~1_combout\,
	combout => \h2_14[1]~0_combout\);

-- Location: LCCOMB_X67_Y41_N28
\lcd_full|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~7_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(1))) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|LCD_DIS_PTR\(1) & ((\h2_14[1]~0_combout\))) # (!\lcd_full|LCD_DIS_PTR\(1) & (\h2_12[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \h2_12[1]~3_combout\,
	datad => \h2_14[1]~0_combout\,
	combout => \lcd_full|Mux23~7_combout\);

-- Location: LCCOMB_X66_Y38_N26
\lcd_full|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~8_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux23~7_combout\ & ((\h2_15[1]~1_combout\))) # (!\lcd_full|Mux23~7_combout\ & (\h2_13[1]~2_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & (((\lcd_full|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h2_13[1]~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \h2_15[1]~1_combout\,
	datad => \lcd_full|Mux23~7_combout\,
	combout => \lcd_full|Mux23~8_combout\);

-- Location: LCCOMB_X70_Y38_N14
\giai_ma_soto_ds_chuc|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux14~0_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (!\giai_ma_bcd_ds|chuc[3]~1_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[1]~2_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux14~0_combout\);

-- Location: LCCOMB_X70_Y38_N8
\giai_ma_soto_ds_chuc|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux14~1_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (!\giai_ma_bcd_ds|chuc[0]~3_combout\)))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[1]~2_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux14~1_combout\);

-- Location: LCCOMB_X70_Y38_N22
\h2_0[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[1]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add1~0_combout\ & (\giai_ma_soto_ds_chuc|Mux14~0_combout\)) # (!\giai_ma_soto_ds_chuc|Add1~0_combout\ & ((!\giai_ma_soto_ds_chuc|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_chuc|Mux14~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux14~1_combout\,
	datad => \giai_ma_soto_ds_chuc|Add1~0_combout\,
	combout => \h2_0[1]~2_combout\);

-- Location: LCCOMB_X70_Y38_N26
\giai_ma_soto_ds_chuc|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux18~1_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & \giai_ma_bcd_ds|chuc[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux18~1_combout\);

-- Location: LCCOMB_X70_Y38_N20
\giai_ma_soto_ds_chuc|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux18~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (!\giai_ma_bcd_ds|chuc[0]~3_combout\)) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (!\giai_ma_bcd_ds|chuc[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux18~0_combout\);

-- Location: LCCOMB_X70_Y38_N24
\h2_1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[1]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add0~2_combout\ & ((\giai_ma_soto_ds_chuc|Mux18~0_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~2_combout\ & (!\giai_ma_soto_ds_chuc|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux18~1_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux18~0_combout\,
	combout => \h2_1[1]~2_combout\);

-- Location: LCCOMB_X70_Y38_N4
\lcd_full|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~4_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|LCD_DIS_PTR\(0) & ((\h2_1[1]~2_combout\))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\h2_0[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \h2_0[1]~2_combout\,
	datad => \h2_1[1]~2_combout\,
	combout => \lcd_full|Mux23~4_combout\);

-- Location: LCCOMB_X69_Y40_N8
\giai_ma_soto_ds_chuc|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux22~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\) # ((\giai_ma_bcd_ds|chuc[1]~2_combout\) # (\giai_ma_bcd_ds|chuc[0]~3_combout\)))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- (\giai_ma_bcd_ds|chuc[0]~3_combout\ $ (((!\giai_ma_bcd_ds|chuc[2]~0_combout\ & !\giai_ma_bcd_ds|chuc[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux22~0_combout\);

-- Location: LCCOMB_X69_Y40_N2
\giai_ma_soto_ds_chuc|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux22~1_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (\giai_ma_bcd_ds|chuc[0]~3_combout\)) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[3]~1_combout\) # ((!\giai_ma_bcd_ds|chuc[1]~2_combout\ & !\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux22~1_combout\);

-- Location: LCCOMB_X69_Y40_N4
\h2_2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_2[1]~1_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add0~2_combout\ & ((!\giai_ma_soto_ds_chuc|Mux22~1_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~2_combout\ & (\giai_ma_soto_ds_chuc|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux22~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux22~1_combout\,
	combout => \h2_2[1]~1_combout\);

-- Location: LCCOMB_X70_Y38_N12
\lcd_full|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~5_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux23~4_combout\ & (\h2_3[1]~2_combout\)) # (!\lcd_full|Mux23~4_combout\ & ((\h2_2[1]~1_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h2_3[1]~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|Mux23~4_combout\,
	datad => \h2_2[1]~1_combout\,
	combout => \lcd_full|Mux23~5_combout\);

-- Location: LCCOMB_X70_Y38_N10
\lcd_full|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux23~6_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux23~3_combout\) # ((\lcd_full|LCD_DIS_PTR\(2))))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((!\lcd_full|LCD_DIS_PTR\(2) & \lcd_full|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux23~3_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|Mux23~5_combout\,
	combout => \lcd_full|Mux23~6_combout\);

-- Location: LCCOMB_X70_Y38_N16
\lcd_full|Selector36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~4_combout\ = (\lcd_full|Selector37~2_combout\ & ((\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux23~8_combout\) # (!\lcd_full|Mux23~6_combout\))) # (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \lcd_full|Mux23~8_combout\,
	datad => \lcd_full|Mux23~6_combout\,
	combout => \lcd_full|Selector36~4_combout\);

-- Location: LCCOMB_X70_Y38_N18
\lcd_full|Selector36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~5_combout\ = (\lcd_full|Selector36~4_combout\ & ((\lcd_full|Mux23~6_combout\) # ((\lcd_full|Mux24~9_combout\ & \lcd_full|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux23~6_combout\,
	datab => \lcd_full|Mux24~9_combout\,
	datac => \lcd_full|Mux23~1_combout\,
	datad => \lcd_full|Selector36~4_combout\,
	combout => \lcd_full|Selector36~5_combout\);

-- Location: LCCOMB_X70_Y38_N0
\lcd_full|Selector36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~6_combout\ = (\lcd_full|Selector36~5_combout\) # ((\lcd_full|Selector36~0_combout\ & ((\lcd_full|Selector36~2_combout\) # (\lcd_full|Selector36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector36~0_combout\,
	datab => \lcd_full|Selector36~2_combout\,
	datac => \lcd_full|Selector36~3_combout\,
	datad => \lcd_full|Selector36~5_combout\,
	combout => \lcd_full|Selector36~6_combout\);

-- Location: LCCOMB_X70_Y38_N28
\lcd_full|Selector36~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector36~8_combout\ = (\lcd_full|Selector36~7_combout\) # ((\lcd_full|Selector36~6_combout\) # ((\lcd_full|Selector37~8_combout\ & \lcd_full|LCD_RS_DB\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector36~7_combout\,
	datab => \lcd_full|Selector37~8_combout\,
	datac => \lcd_full|LCD_RS_DB\(1),
	datad => \lcd_full|Selector36~6_combout\,
	combout => \lcd_full|Selector36~8_combout\);

-- Location: FF_X70_Y38_N29
\lcd_full|LCD_RS_DB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector36~8_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(1));

-- Location: LCCOMB_X69_Y44_N30
\lcd_full|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector35~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(3) & (((\lcd_full|LCD_CGRAM_PTR\(5))) # (!\lcd_full|Mux8~2_combout\))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & (((!\lcd_full|Mux8~1_combout\) # (!\lcd_full|LCD_CGRAM_PTR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datab => \lcd_full|Mux8~2_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~1_combout\,
	combout => \lcd_full|Selector35~1_combout\);

-- Location: LCCOMB_X68_Y43_N28
\lcd_full|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector35~2_combout\ = (\lcd_full|Mux2~0_combout\ & ((\lcd_full|Selector37~4_combout\) # ((\lcd_full|Selector35~1_combout\ & \lcd_full|Selector37~6_combout\)))) # (!\lcd_full|Mux2~0_combout\ & (((\lcd_full|Selector35~1_combout\ & 
-- \lcd_full|Selector37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux2~0_combout\,
	datab => \lcd_full|Selector37~4_combout\,
	datac => \lcd_full|Selector35~1_combout\,
	datad => \lcd_full|Selector37~6_combout\,
	combout => \lcd_full|Selector35~2_combout\);

-- Location: LCCOMB_X70_Y43_N12
\lcd_full|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector24~0_combout\ = (\lcd_full|Equal4~4_combout\ & ((\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\) # ((!\lcd_full|Equal6~0_combout\ & \lcd_full|LCD_STATE.LCD_DATA_L1~q\)))) # (!\lcd_full|Equal4~4_combout\ & (((\lcd_full|LCD_STATE.LCD_DATA_L1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datab => \lcd_full|Equal6~0_combout\,
	datac => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector24~0_combout\);

-- Location: FF_X70_Y43_N13
\lcd_full|LCD_STATE.LCD_DATA_L1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector24~0_combout\,
	clrn => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_STATE.LCD_DATA_L1~q\);

-- Location: LCCOMB_X67_Y43_N28
\lcd_full|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector37~1_combout\ = (!\lcd_full|Equal2~3_combout\ & (\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & (!\lcd_full|Equal3~0_combout\ & !\lcd_full|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal2~3_combout\,
	datab => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datac => \lcd_full|Equal3~0_combout\,
	datad => \lcd_full|Equal4~4_combout\,
	combout => \lcd_full|Selector37~1_combout\);

-- Location: LCCOMB_X65_Y39_N28
\giai_ma_soto_gauy_donvi|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux9~1_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\) # (((!\thoi_gian|giay_reg\(0) & \giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux9~1_combout\);

-- Location: LCCOMB_X65_Y39_N14
\giai_ma_soto_gauy_donvi|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux9~0_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\)) # (!\thoi_gian|giay_reg\(0) & 
-- ((\giai_ma_bcd_giay|donvi[1]~0_combout\))))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\thoi_gian|giay_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y39_N16
\giai_ma_soto_gauy_donvi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Add1~0_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\) # (!\thoi_gian|giay_reg\(0))))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & 
-- (\giai_ma_bcd_giay|donvi[2]~1_combout\ & ((\thoi_gian|giay_reg\(0)) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Add1~0_combout\);

-- Location: LCCOMB_X65_Y39_N30
\h1_15[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_15[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add1~0_combout\ & (!\giai_ma_soto_gauy_donvi|Mux9~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add1~0_combout\ & ((\giai_ma_soto_gauy_donvi|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_gauy_donvi|Mux9~1_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux9~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Add1~0_combout\,
	combout => \h1_15[2]~2_combout\);

-- Location: LCCOMB_X67_Y39_N6
\giai_ma_bcd_phut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_bcd_phut|LessThan2~0_combout\ = (\thoi_gian|phut_reg\(5) & ((\thoi_gian|phut_reg\(3)) # (\thoi_gian|phut_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \thoi_gian|phut_reg\(3),
	datac => \thoi_gian|phut_reg\(5),
	datad => \thoi_gian|phut_reg\(4),
	combout => \giai_ma_bcd_phut|LessThan2~0_combout\);

-- Location: LCCOMB_X68_Y39_N30
\giai_ma_soto_ds_donvi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux1~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & ((!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4))))) # 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((!\giai_ma_bcd_ds|donvi[3]~1_combout\ & !\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y39_N12
\giai_ma_soto_ds_donvi|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux1~1_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\) # ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # ((\doc_ds18b20|TEMP\(4) & !\giai_ma_bcd_ds|donvi[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux1~1_combout\);

-- Location: LCCOMB_X68_Y39_N18
\h1_3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_3[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~2_combout\ & ((!\giai_ma_soto_ds_donvi|Mux1~1_combout\))) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & (\giai_ma_soto_ds_donvi|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux1~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux1~1_combout\,
	combout => \h1_3[2]~2_combout\);

-- Location: LCCOMB_X68_Y39_N16
\lcd_full|Mux14~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~21_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3)) # ((\giai_ma_bcd_phut|LessThan2~0_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & ((\h1_3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \giai_ma_bcd_phut|LessThan2~0_combout\,
	datad => \h1_3[2]~2_combout\,
	combout => \lcd_full|Mux14~21_combout\);

-- Location: LCCOMB_X68_Y39_N14
\lcd_full|Mux14~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~22_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux14~21_combout\ & ((\h1_15[2]~2_combout\))) # (!\lcd_full|Mux14~21_combout\ & (\h1_11[2]~4_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((\lcd_full|Mux14~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h1_11[2]~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \h1_15[2]~2_combout\,
	datad => \lcd_full|Mux14~21_combout\,
	combout => \lcd_full|Mux14~22_combout\);

-- Location: LCCOMB_X67_Y41_N18
\lcd_full|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~5_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (\thoi_gian|giay_reg\(5) & (!\LessThan0~2_combout\ & !\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \thoi_gian|giay_reg\(5),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux14~5_combout\);

-- Location: LCCOMB_X66_Y40_N28
\giai_ma_soto_GIAY_CHUC|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Add0~0_combout\ = (\giai_ma_bcd_giay|chuc[0]~0_combout\ & (\thoi_gian|giay_reg\(5) $ ((!\giai_ma_bcd_giay|LessThan3~0_combout\)))) # (!\giai_ma_bcd_giay|chuc[0]~0_combout\ & (\thoi_gian|giay_reg\(5) & ((!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(5),
	datab => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Add0~0_combout\);

-- Location: LCCOMB_X66_Y40_N10
\lcd_full|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~3_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (\giai_ma_soto_GIAY_CHUC|Add0~0_combout\ $ (((!\giai_ma_bcd_giay|chuc[0]~0_combout\ & !\giai_ma_soto_GIAY_CHUC|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Add0~1_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Add0~0_combout\,
	combout => \lcd_full|Mux14~3_combout\);

-- Location: LCCOMB_X66_Y40_N8
\lcd_full|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~7_combout\ = (\LessThan0~4_combout\ & ((\lcd_full|Mux14~6_combout\) # (\lcd_full|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~6_combout\,
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux14~3_combout\,
	combout => \lcd_full|Mux14~7_combout\);

-- Location: LCCOMB_X69_Y41_N14
\giai_ma_soto_ds_chuc|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux9~1_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\) # (((\giai_ma_bcd_ds|chuc[0]~3_combout\ & !\giai_ma_bcd_ds|chuc[1]~2_combout\)) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux9~1_combout\);

-- Location: LCCOMB_X69_Y41_N8
\giai_ma_soto_ds_chuc|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux9~0_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((!\giai_ma_bcd_ds|chuc[1]~2_combout\))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- \giai_ma_bcd_ds|chuc[1]~2_combout\)))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux9~0_combout\);

-- Location: LCCOMB_X69_Y41_N28
\lcd_full|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~4_combout\ = (\lcd_full|Mux14~0_combout\ & ((\giai_ma_soto_ds_chuc|Add1~0_combout\ & (!\giai_ma_soto_ds_chuc|Mux9~1_combout\)) # (!\giai_ma_soto_ds_chuc|Add1~0_combout\ & ((\giai_ma_soto_ds_chuc|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~0_combout\,
	datab => \giai_ma_soto_ds_chuc|Mux9~1_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux9~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Add1~0_combout\,
	combout => \lcd_full|Mux14~4_combout\);

-- Location: LCCOMB_X69_Y41_N30
\lcd_full|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~8_combout\ = (\lcd_full|Mux14~4_combout\) # ((\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux14~5_combout\) # (\lcd_full|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|Mux14~5_combout\,
	datac => \lcd_full|Mux14~7_combout\,
	datad => \lcd_full|Mux14~4_combout\,
	combout => \lcd_full|Mux14~8_combout\);

-- Location: LCCOMB_X70_Y40_N16
\lcd_full|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~11_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & (\giai_ma_bcd_ds|donvi[2]~0_combout\ & !\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Mux14~11_combout\);

-- Location: LCCOMB_X69_Y40_N18
\giai_ma_soto_ds_donvi|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux9~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & !\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux9~0_combout\);

-- Location: LCCOMB_X69_Y39_N30
\giai_ma_soto_ds_donvi|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Add1~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\doc_ds18b20|TEMP\(4)) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & 
-- (\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Add1~0_combout\);

-- Location: LCCOMB_X69_Y40_N22
\lcd_full|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~9_combout\ = (\lcd_full|Mux14~1_combout\ & ((\giai_ma_soto_ds_donvi|Add1~0_combout\ & (!\giai_ma_soto_ds_donvi|Mux9~1_combout\)) # (!\giai_ma_soto_ds_donvi|Add1~0_combout\ & ((\giai_ma_soto_ds_donvi|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Mux9~1_combout\,
	datab => \giai_ma_soto_ds_donvi|Mux9~0_combout\,
	datac => \lcd_full|Mux14~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Add1~0_combout\,
	combout => \lcd_full|Mux14~9_combout\);

-- Location: LCCOMB_X68_Y41_N14
\lcd_full|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~0_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \LessThan0~4_combout\,
	combout => \lcd_full|Mux14~0_combout\);

-- Location: LCCOMB_X69_Y40_N26
\giai_ma_soto_ds_chuc|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux5~1_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((!\giai_ma_bcd_ds|chuc[2]~0_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\)))) # 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\) # (\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (\giai_ma_bcd_ds|chuc[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux5~1_combout\);

-- Location: LCCOMB_X69_Y40_N16
\giai_ma_soto_ds_chuc|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux5~0_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (!\giai_ma_bcd_ds|chuc[2]~0_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & 
-- (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y40_N24
\lcd_full|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~10_combout\ = (\lcd_full|Mux14~0_combout\ & ((\giai_ma_soto_ds_chuc|Add0~0_combout\ & ((\giai_ma_soto_ds_chuc|Mux5~0_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~0_combout\ & (\giai_ma_soto_ds_chuc|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_chuc|Add0~0_combout\,
	datab => \lcd_full|Mux14~0_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux5~1_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux5~0_combout\,
	combout => \lcd_full|Mux14~10_combout\);

-- Location: LCCOMB_X69_Y40_N10
\lcd_full|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~13_combout\ = (\lcd_full|Mux14~12_combout\) # ((\lcd_full|Mux14~11_combout\) # ((\lcd_full|Mux14~9_combout\) # (\lcd_full|Mux14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux14~12_combout\,
	datab => \lcd_full|Mux14~11_combout\,
	datac => \lcd_full|Mux14~9_combout\,
	datad => \lcd_full|Mux14~10_combout\,
	combout => \lcd_full|Mux14~13_combout\);

-- Location: LCCOMB_X67_Y42_N2
\giai_ma_soto_GIAY_CHUC|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux9~0_combout\ = (!\LessThan0~2_combout\ & (\thoi_gian|giay_reg\(5) & ((!\giai_ma_bcd_giay|chuc[0]~0_combout\) # (!\giai_ma_bcd_giay|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux9~0_combout\);

-- Location: LCCOMB_X67_Y42_N16
\giai_ma_soto_GIAY_CHUC|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\ = (!\LessThan0~2_combout\ & (\thoi_gian|giay_reg\(5) & (\giai_ma_bcd_giay|LessThan3~0_combout\ $ (!\giai_ma_bcd_giay|chuc[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\);

-- Location: LCCOMB_X67_Y42_N18
\h1_12[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_12[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & (\giai_ma_soto_GIAY_CHUC|Mux9~0_combout\)) # (!\giai_ma_soto_GIAY_CHUC|Add1~1_combout\ & ((\giai_ma_soto_GIAY_CHUC|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_GIAY_CHUC|Mux9~0_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Add1~1_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\,
	combout => \h1_12[2]~2_combout\);

-- Location: LCCOMB_X68_Y41_N8
\giai_ma_soto_ds_donvi|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Add0~0_combout\ = \giai_ma_bcd_ds|donvi[2]~0_combout\ $ (((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (\doc_ds18b20|TEMP\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	combout => \giai_ma_soto_ds_donvi|Add0~0_combout\);

-- Location: LCCOMB_X68_Y41_N26
\giai_ma_soto_ds_donvi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux5~0_combout\ = (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\ $ (\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\))) # (!\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[3]~1_combout\ & 
-- (!\giai_ma_bcd_ds|donvi[2]~0_combout\)) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((!\giai_ma_bcd_ds|donvi[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y41_N12
\giai_ma_soto_ds_donvi|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux5~1_combout\ = (\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (!\doc_ds18b20|TEMP\(4) & 
-- (\giai_ma_bcd_ds|donvi[2]~0_combout\ $ (!\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux5~1_combout\);

-- Location: LCCOMB_X68_Y41_N30
\h1_4[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_4[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add0~0_combout\ & (\giai_ma_soto_ds_donvi|Mux5~0_combout\)) # (!\giai_ma_soto_ds_donvi|Add0~0_combout\ & ((\giai_ma_soto_ds_donvi|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_donvi|Add0~0_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux5~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux5~1_combout\,
	combout => \h1_4[2]~2_combout\);

-- Location: LCCOMB_X68_Y39_N0
\lcd_full|Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~14_combout\ = (\giai_ma_bcd_phut|hex_bcd~2_combout\ & (((\giai_ma_bcd_phut|hex_bcd~1_combout\ & !\thoi_gian|phut_reg\(1))))) # (!\giai_ma_bcd_phut|hex_bcd~2_combout\ & ((\thoi_gian|phut_reg\(1)) # ((!\giai_ma_bcd_phut|hex_bcd~0_combout\ & 
-- !\giai_ma_bcd_phut|hex_bcd~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_phut|hex_bcd~0_combout\,
	datab => \giai_ma_bcd_phut|hex_bcd~2_combout\,
	datac => \giai_ma_bcd_phut|hex_bcd~1_combout\,
	datad => \thoi_gian|phut_reg\(1),
	combout => \lcd_full|Mux14~14_combout\);

-- Location: LCCOMB_X67_Y38_N4
\lcd_full|Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~16_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\)) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((!\giai_ma_soto_ds_chuc|Add0~2_combout\))))) # 
-- (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (((\giai_ma_soto_ds_chuc|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	combout => \lcd_full|Mux14~16_combout\);

-- Location: LCCOMB_X67_Y38_N2
\lcd_full|Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~15_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ $ (((!\giai_ma_soto_ds_chuc|Add0~2_combout\ & !\giai_ma_bcd_ds|chuc[1]~2_combout\)))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \lcd_full|Mux14~15_combout\);

-- Location: LCCOMB_X67_Y38_N6
\lcd_full|Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~17_combout\ = (\LessThan0~4_combout\ & (((\lcd_full|Mux14~16_combout\ & \lcd_full|Mux14~15_combout\)))) # (!\LessThan0~4_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \lcd_full|Mux14~16_combout\,
	datad => \lcd_full|Mux14~15_combout\,
	combout => \lcd_full|Mux14~17_combout\);

-- Location: LCCOMB_X68_Y40_N18
\lcd_full|Mux14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~18_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|LCD_DIS_PTR\(3))) # (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|Mux14~14_combout\)) # (!\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux14~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux14~14_combout\,
	datad => \lcd_full|Mux14~17_combout\,
	combout => \lcd_full|Mux14~18_combout\);

-- Location: LCCOMB_X68_Y40_N20
\lcd_full|Mux14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~19_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux14~18_combout\ & (\h1_12[2]~2_combout\)) # (!\lcd_full|Mux14~18_combout\ & ((\h1_4[2]~2_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(2) & (((\lcd_full|Mux14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \h1_12[2]~2_combout\,
	datac => \h1_4[2]~2_combout\,
	datad => \lcd_full|Mux14~18_combout\,
	combout => \lcd_full|Mux14~19_combout\);

-- Location: LCCOMB_X68_Y40_N2
\lcd_full|Mux14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~20_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|Mux14~13_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux14~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|Mux14~13_combout\,
	datad => \lcd_full|Mux14~19_combout\,
	combout => \lcd_full|Mux14~20_combout\);

-- Location: LCCOMB_X68_Y40_N4
\lcd_full|Mux14~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux14~23_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux14~20_combout\ & (\lcd_full|Mux14~22_combout\)) # (!\lcd_full|Mux14~20_combout\ & ((\lcd_full|Mux14~8_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(1) & 
-- (((\lcd_full|Mux14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|Mux14~22_combout\,
	datac => \lcd_full|Mux14~8_combout\,
	datad => \lcd_full|Mux14~20_combout\,
	combout => \lcd_full|Mux14~23_combout\);

-- Location: LCCOMB_X65_Y42_N8
\giai_ma_soto_gauy_donvi|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux13~0_combout\ = (\giai_ma_bcd_giay|donvi[3]~2_combout\ & (((!\giai_ma_bcd_giay|donvi[2]~1_combout\)) # (!\thoi_gian|giay_reg\(0)))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\giai_ma_bcd_giay|donvi[1]~0_combout\ & 
-- (!\thoi_gian|giay_reg\(0))) # (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\giai_ma_bcd_giay|donvi[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux13~0_combout\);

-- Location: LCCOMB_X65_Y42_N10
\giai_ma_soto_gauy_donvi|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux13~1_combout\ = \giai_ma_bcd_giay|donvi[1]~0_combout\ $ (((\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & \giai_ma_bcd_giay|donvi[2]~1_combout\)) # (!\thoi_gian|giay_reg\(0) & 
-- (\giai_ma_bcd_giay|donvi[3]~2_combout\ & !\giai_ma_bcd_giay|donvi[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux13~1_combout\);

-- Location: LCCOMB_X65_Y42_N20
\h2_13[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_13[2]~3_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add1~1_combout\ & (\giai_ma_soto_gauy_donvi|Mux13~0_combout\)) # (!\giai_ma_soto_gauy_donvi|Add1~1_combout\ & ((!\giai_ma_soto_gauy_donvi|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Add1~1_combout\,
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_gauy_donvi|Mux13~0_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux13~1_combout\,
	combout => \h2_13[2]~3_combout\);

-- Location: LCCOMB_X65_Y39_N4
\giai_ma_soto_gauy_donvi|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Add0~2_combout\ = \thoi_gian|giay_reg\(0) $ (\thoi_gian|giay_reg\(1) $ (\giai_ma_bcd_giay|chuc[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datac => \thoi_gian|giay_reg\(1),
	datad => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Add0~2_combout\);

-- Location: LCCOMB_X65_Y39_N10
\giai_ma_soto_gauy_donvi|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux21~0_combout\ = (\thoi_gian|giay_reg\(0) & ((\giai_ma_bcd_giay|donvi[2]~1_combout\) # ((\giai_ma_bcd_giay|donvi[3]~2_combout\ & \giai_ma_bcd_giay|donvi[1]~0_combout\)))) # (!\thoi_gian|giay_reg\(0) & 
-- (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & (\giai_ma_bcd_giay|donvi[2]~1_combout\ & !\giai_ma_bcd_giay|donvi[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datad => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux21~0_combout\);

-- Location: LCCOMB_X65_Y39_N0
\h2_15[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_15[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_gauy_donvi|Add0~2_combout\ & (!\giai_ma_soto_gauy_donvi|Mux21~1_combout\)) # (!\giai_ma_soto_gauy_donvi|Add0~2_combout\ & ((\giai_ma_soto_gauy_donvi|Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Mux21~1_combout\,
	datab => \giai_ma_soto_gauy_donvi|Add0~2_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux21~0_combout\,
	combout => \h2_15[2]~2_combout\);

-- Location: LCCOMB_X65_Y40_N24
\lcd_full|Mux22~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~12_combout\ = (\lcd_full|Mux22~11_combout\ & (((\h2_15[2]~2_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0)))) # (!\lcd_full|Mux22~11_combout\ & (\lcd_full|LCD_DIS_PTR\(0) & (\h2_13[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux22~11_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \h2_13[2]~3_combout\,
	datad => \h2_15[2]~2_combout\,
	combout => \lcd_full|Mux22~12_combout\);

-- Location: LCCOMB_X68_Y40_N14
\giai_ma_soto_ds_donvi|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux21~0_combout\ = (\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) & ((\giai_ma_bcd_ds|donvi[2]~0_combout\) # (\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & 
-- (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\doc_ds18b20|TEMP\(4)) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux21~0_combout\);

-- Location: LCCOMB_X68_Y40_N24
\giai_ma_soto_ds_donvi|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux21~1_combout\ = (\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\giai_ma_bcd_ds|donvi[1]~2_combout\ $ (\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & 
-- ((\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux21~1_combout\);

-- Location: LCCOMB_X68_Y40_N22
\lcd_full|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~5_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\giai_ma_soto_ds_donvi|Add0~1_combout\ & ((!\giai_ma_soto_ds_donvi|Mux21~1_combout\))) # (!\giai_ma_soto_ds_donvi|Add0~1_combout\ & (\giai_ma_soto_ds_donvi|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \giai_ma_soto_ds_donvi|Add0~1_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux21~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux21~1_combout\,
	combout => \lcd_full|Mux22~5_combout\);

-- Location: LCCOMB_X68_Y40_N30
\giai_ma_soto_ds_donvi|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux17~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4))) # 
-- (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (!\doc_ds18b20|TEMP\(4) & \giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux17~0_combout\);

-- Location: LCCOMB_X68_Y40_N0
\lcd_full|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~4_combout\ = (!\lcd_full|LCD_DIS_PTR\(0) & (\giai_ma_soto_ds_donvi|Mux17~0_combout\ & !\giai_ma_soto_ds_donvi|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datac => \giai_ma_soto_ds_donvi|Mux17~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	combout => \lcd_full|Mux22~4_combout\);

-- Location: LCCOMB_X68_Y40_N8
\lcd_full|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~7_combout\ = (\lcd_full|Mux24~9_combout\ & ((\lcd_full|Mux22~6_combout\) # ((\lcd_full|Mux22~5_combout\) # (\lcd_full|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux22~6_combout\,
	datab => \lcd_full|Mux24~9_combout\,
	datac => \lcd_full|Mux22~5_combout\,
	datad => \lcd_full|Mux22~4_combout\,
	combout => \lcd_full|Mux22~7_combout\);

-- Location: LCCOMB_X68_Y42_N22
\giai_ma_soto_ds_chuc|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux21~0_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((!\giai_ma_bcd_ds|chuc[0]~3_combout\) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\)))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & 
-- (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\) # (\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux21~0_combout\);

-- Location: LCCOMB_X69_Y42_N18
\giai_ma_soto_ds_chuc|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux21~1_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (((\giai_ma_bcd_ds|chuc[3]~1_combout\ & \giai_ma_bcd_ds|chuc[1]~2_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- (\giai_ma_bcd_ds|chuc[3]~1_combout\ $ (!\giai_ma_bcd_ds|chuc[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux21~1_combout\);

-- Location: LCCOMB_X68_Y42_N8
\h2_2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_2[2]~2_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add0~1_combout\ & ((!\giai_ma_soto_ds_chuc|Mux21~1_combout\))) # (!\giai_ma_soto_ds_chuc|Add0~1_combout\ & (\giai_ma_soto_ds_chuc|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_chuc|Add0~1_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux21~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux21~1_combout\,
	combout => \h2_2[2]~2_combout\);

-- Location: LCCOMB_X68_Y42_N0
\giai_ma_soto_ds_donvi|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Add1~1_combout\ = \doc_ds18b20|TEMP\(4) $ (\giai_ma_bcd_ds|donvi[2]~0_combout\ $ (\giai_ma_bcd_ds|donvi[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	combout => \giai_ma_soto_ds_donvi|Add1~1_combout\);

-- Location: LCCOMB_X68_Y42_N14
\giai_ma_soto_ds_donvi|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux13~0_combout\ = (\giai_ma_bcd_ds|donvi[3]~1_combout\ & (((!\doc_ds18b20|TEMP\(4)) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\)))) # (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\ & 
-- ((!\doc_ds18b20|TEMP\(4)))) # (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\giai_ma_bcd_ds|donvi[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux13~0_combout\);

-- Location: LCCOMB_X68_Y42_N18
\giai_ma_soto_ds_donvi|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux13~1_combout\ = \giai_ma_bcd_ds|donvi[1]~2_combout\ $ (((\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\doc_ds18b20|TEMP\(4) & !\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\doc_ds18b20|TEMP\(4) & 
-- \giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux13~1_combout\);

-- Location: LCCOMB_X68_Y42_N4
\h2_3[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_3[2]~3_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_donvi|Add1~1_combout\ & (\giai_ma_soto_ds_donvi|Mux13~0_combout\)) # (!\giai_ma_soto_ds_donvi|Add1~1_combout\ & ((!\giai_ma_soto_ds_donvi|Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_donvi|Add1~1_combout\,
	datac => \giai_ma_soto_ds_donvi|Mux13~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux13~1_combout\,
	combout => \h2_3[2]~3_combout\);

-- Location: LCCOMB_X68_Y42_N20
\h2_0[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[2]~3_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\))) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- ((\giai_ma_bcd_ds|chuc[0]~3_combout\))))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \h2_0[2]~3_combout\);

-- Location: LCCOMB_X68_Y42_N30
\h2_0[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[2]~4_combout\ = (\LessThan0~4_combout\ & \h2_0[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~4_combout\,
	datad => \h2_0[2]~3_combout\,
	combout => \h2_0[2]~4_combout\);

-- Location: LCCOMB_X68_Y42_N26
\giai_ma_soto_ds_chuc|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux17~0_combout\ = (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & \giai_ma_bcd_ds|chuc[0]~3_combout\)) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & 
-- (\giai_ma_bcd_ds|chuc[1]~2_combout\ & !\giai_ma_bcd_ds|chuc[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux17~0_combout\);

-- Location: LCCOMB_X68_Y42_N12
\giai_ma_soto_ds_chuc|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_chuc|Mux17~1_combout\ = (\giai_ma_bcd_ds|chuc[2]~0_combout\ & (((\giai_ma_bcd_ds|chuc[3]~1_combout\)))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[1]~2_combout\ & (\giai_ma_bcd_ds|chuc[3]~1_combout\ & 
-- \giai_ma_bcd_ds|chuc[0]~3_combout\)) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((!\giai_ma_bcd_ds|chuc[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datab => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \giai_ma_soto_ds_chuc|Mux17~1_combout\);

-- Location: LCCOMB_X68_Y42_N10
\h2_1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[2]~3_combout\ = (\LessThan0~4_combout\ & ((\giai_ma_soto_ds_chuc|Add0~2_combout\ & (\giai_ma_soto_ds_chuc|Mux17~0_combout\)) # (!\giai_ma_soto_ds_chuc|Add0~2_combout\ & ((\giai_ma_soto_ds_chuc|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datac => \giai_ma_soto_ds_chuc|Mux17~0_combout\,
	datad => \giai_ma_soto_ds_chuc|Mux17~1_combout\,
	combout => \h2_1[2]~3_combout\);

-- Location: LCCOMB_X68_Y42_N24
\lcd_full|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~8_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|LCD_DIS_PTR\(1)) # ((\h2_1[2]~3_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & (!\lcd_full|LCD_DIS_PTR\(1) & (\h2_0[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \h2_0[2]~4_combout\,
	datad => \h2_1[2]~3_combout\,
	combout => \lcd_full|Mux22~8_combout\);

-- Location: LCCOMB_X68_Y42_N2
\lcd_full|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~9_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux22~8_combout\ & ((\h2_3[2]~3_combout\))) # (!\lcd_full|Mux22~8_combout\ & (\h2_2[2]~2_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \h2_2[2]~2_combout\,
	datac => \h2_3[2]~3_combout\,
	datad => \lcd_full|Mux22~8_combout\,
	combout => \lcd_full|Mux22~9_combout\);

-- Location: LCCOMB_X68_Y40_N10
\lcd_full|Mux22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~10_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3)) # ((\lcd_full|Mux22~7_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux22~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux22~7_combout\,
	datad => \lcd_full|Mux22~9_combout\,
	combout => \lcd_full|Mux22~10_combout\);

-- Location: LCCOMB_X68_Y40_N12
\lcd_full|Mux22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux22~13_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux22~10_combout\ & ((\lcd_full|Mux22~12_combout\))) # (!\lcd_full|Mux22~10_combout\ & (\lcd_full|Mux22~3_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(3) & 
-- (((\lcd_full|Mux22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux22~3_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux22~12_combout\,
	datad => \lcd_full|Mux22~10_combout\,
	combout => \lcd_full|Mux22~13_combout\);

-- Location: LCCOMB_X68_Y40_N6
\lcd_full|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector35~0_combout\ = (\lcd_full|Selector37~2_combout\ & ((\lcd_full|Mux22~13_combout\) # ((\lcd_full|Selector37~1_combout\ & \lcd_full|Mux14~23_combout\)))) # (!\lcd_full|Selector37~2_combout\ & (\lcd_full|Selector37~1_combout\ & 
-- (\lcd_full|Mux14~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~2_combout\,
	datab => \lcd_full|Selector37~1_combout\,
	datac => \lcd_full|Mux14~23_combout\,
	datad => \lcd_full|Mux22~13_combout\,
	combout => \lcd_full|Selector35~0_combout\);

-- Location: LCCOMB_X68_Y40_N28
\lcd_full|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector35~3_combout\ = (\lcd_full|Selector35~2_combout\) # ((\lcd_full|Selector35~0_combout\) # ((\lcd_full|Selector37~8_combout\ & \lcd_full|LCD_RS_DB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~8_combout\,
	datab => \lcd_full|Selector35~2_combout\,
	datac => \lcd_full|LCD_RS_DB\(2),
	datad => \lcd_full|Selector35~0_combout\,
	combout => \lcd_full|Selector35~3_combout\);

-- Location: FF_X68_Y40_N29
\lcd_full|LCD_RS_DB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector35~3_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(2));

-- Location: LCCOMB_X69_Y42_N28
\lcd_full|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~1_combout\ = (!\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & ((\giai_ma_bcd_giay|donvi[3]~2_combout\) # (!\lcd_full|LCD_DIS_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(2),
	datac => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datad => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	combout => \lcd_full|Selector34~1_combout\);

-- Location: LCCOMB_X69_Y42_N22
\lcd_full|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~2_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (((\giai_ma_bcd_ds|donvi[3]~1_combout\) # (\lcd_full|LCD_DIS_PTR\(3))))) # (!\lcd_full|LCD_DIS_PTR\(0) & (\giai_ma_bcd_ds|chuc[3]~1_combout\ & ((!\lcd_full|LCD_DIS_PTR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	datad => \lcd_full|LCD_DIS_PTR\(3),
	combout => \lcd_full|Selector34~2_combout\);

-- Location: LCCOMB_X69_Y42_N16
\lcd_full|Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~3_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Selector34~2_combout\ & (\LessThan0~4_combout\ & \lcd_full|LCD_DIS_PTR\(1))) # (!\lcd_full|Selector34~2_combout\ & ((!\lcd_full|LCD_DIS_PTR\(1)))))) # (!\lcd_full|LCD_DIS_PTR\(3) & 
-- (\lcd_full|Selector34~2_combout\ & ((\LessThan0~4_combout\) # (\lcd_full|LCD_DIS_PTR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \LessThan0~4_combout\,
	datac => \lcd_full|Selector34~2_combout\,
	datad => \lcd_full|LCD_DIS_PTR\(1),
	combout => \lcd_full|Selector34~3_combout\);

-- Location: LCCOMB_X69_Y42_N10
\lcd_full|Selector34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~4_combout\ = (\lcd_full|Selector34~1_combout\ & ((\lcd_full|Selector34~2_combout\ & ((!\lcd_full|Selector34~3_combout\))) # (!\lcd_full|Selector34~2_combout\ & (\lcd_full|Mux13~0_combout\ & \lcd_full|Selector34~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux13~0_combout\,
	datab => \lcd_full|Selector34~1_combout\,
	datac => \lcd_full|Selector34~2_combout\,
	datad => \lcd_full|Selector34~3_combout\,
	combout => \lcd_full|Selector34~4_combout\);

-- Location: LCCOMB_X69_Y42_N0
\lcd_full|Selector34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~5_combout\ = (!\lcd_full|Equal4~4_combout\ & ((\lcd_full|Selector34~4_combout\) # ((\lcd_full|Mux5~3_combout\ & \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux5~3_combout\,
	datab => \lcd_full|Equal4~4_combout\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datad => \lcd_full|Selector34~4_combout\,
	combout => \lcd_full|Selector34~5_combout\);

-- Location: LCCOMB_X68_Y43_N6
\lcd_full|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux2~0_combout\ = \lcd_full|LCD_CMD_PTR\(0) $ (\lcd_full|LCD_CMD_PTR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|LCD_CMD_PTR\(1),
	combout => \lcd_full|Mux2~0_combout\);

-- Location: LCCOMB_X68_Y43_N2
\lcd_full|Selector34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~6_combout\ = (\lcd_full|Selector34~5_combout\) # ((!\lcd_full|LCD_CMD_PTR\(2) & (\lcd_full|Selector28~5_combout\ & \lcd_full|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(2),
	datab => \lcd_full|Selector28~5_combout\,
	datac => \lcd_full|Selector34~5_combout\,
	datad => \lcd_full|Mux2~0_combout\,
	combout => \lcd_full|Selector34~6_combout\);

-- Location: LCCOMB_X68_Y43_N4
\lcd_full|Selector34~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~9_combout\ = (\lcd_full|Selector33~0_combout\ & ((\lcd_full|LCD_RS_DB\(3)) # ((\lcd_full|Selector34~0_combout\ & \lcd_full|Selector34~6_combout\)))) # (!\lcd_full|Selector33~0_combout\ & (\lcd_full|Selector34~0_combout\ & 
-- ((\lcd_full|Selector34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector33~0_combout\,
	datab => \lcd_full|Selector34~0_combout\,
	datac => \lcd_full|LCD_RS_DB\(3),
	datad => \lcd_full|Selector34~6_combout\,
	combout => \lcd_full|Selector34~9_combout\);

-- Location: FF_X68_Y43_N5
\lcd_full|LCD_RS_DB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector34~9_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(3));

-- Location: LCCOMB_X67_Y41_N24
\lcd_full|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~1_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(2)))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((!\lcd_full|LCD_DIS_PTR\(2) & !\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \LessThan0~4_combout\,
	combout => \lcd_full|Selector33~1_combout\);

-- Location: LCCOMB_X67_Y41_N10
\lcd_full|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~2_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & (!\lcd_full|Mux24~6_combout\ & (!\lcd_full|LCD_DIS_PTR\(2)))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((\lcd_full|Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(3),
	datab => \lcd_full|Mux24~6_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(2),
	datad => \lcd_full|Selector33~1_combout\,
	combout => \lcd_full|Selector33~2_combout\);

-- Location: LCCOMB_X69_Y44_N4
\lcd_full|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux4~2_combout\ = (!\lcd_full|LCD_CGRAM_PTR\(1) & (!\lcd_full|LCD_CGRAM_PTR\(4) & !\lcd_full|LCD_CGRAM_PTR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	combout => \lcd_full|Mux4~2_combout\);

-- Location: LCCOMB_X69_Y44_N16
\lcd_full|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux4~0_combout\ = (\lcd_full|LCD_CGRAM_PTR\(2) & (\lcd_full|LCD_CGRAM_PTR\(1) $ ((\lcd_full|LCD_CGRAM_PTR\(4))))) # (!\lcd_full|LCD_CGRAM_PTR\(2) & (\lcd_full|LCD_CGRAM_PTR\(1) & (\lcd_full|LCD_CGRAM_PTR\(4) & \lcd_full|LCD_CGRAM_PTR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(1),
	datab => \lcd_full|LCD_CGRAM_PTR\(4),
	datac => \lcd_full|LCD_CGRAM_PTR\(2),
	datad => \lcd_full|LCD_CGRAM_PTR\(0),
	combout => \lcd_full|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y44_N18
\lcd_full|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux4~1_combout\ = (\lcd_full|LCD_CGRAM_PTR\(3) & (((\lcd_full|LCD_CGRAM_PTR\(5)) # (!\lcd_full|Mux8~2_combout\)))) # (!\lcd_full|LCD_CGRAM_PTR\(3) & (!\lcd_full|Mux4~0_combout\ & (\lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datab => \lcd_full|Mux4~0_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux8~2_combout\,
	combout => \lcd_full|Mux4~1_combout\);

-- Location: LCCOMB_X69_Y44_N22
\lcd_full|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux4~3_combout\ = (\lcd_full|Mux4~1_combout\) # ((!\lcd_full|LCD_CGRAM_PTR\(3) & (!\lcd_full|Mux4~2_combout\ & !\lcd_full|LCD_CGRAM_PTR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CGRAM_PTR\(3),
	datab => \lcd_full|Mux4~2_combout\,
	datac => \lcd_full|LCD_CGRAM_PTR\(5),
	datad => \lcd_full|Mux4~1_combout\,
	combout => \lcd_full|Mux4~3_combout\);

-- Location: LCCOMB_X68_Y43_N14
\lcd_full|Selector33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~3_combout\ = (\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & ((\lcd_full|Selector33~2_combout\) # ((\lcd_full|Mux4~3_combout\ & \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\)))) # (!\lcd_full|LCD_STATE.LCD_DATA_L1~q\ & (((\lcd_full|Mux4~3_combout\ & 
-- \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	datab => \lcd_full|Selector33~2_combout\,
	datac => \lcd_full|Mux4~3_combout\,
	datad => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	combout => \lcd_full|Selector33~3_combout\);

-- Location: LCCOMB_X68_Y43_N12
\lcd_full|Selector32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~2_combout\ = (!\lcd_full|LCD_CMD_PTR\(2) & (\lcd_full|LCD_CMD_PTR\(0) & !\lcd_full|LCD_CMD_PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_CMD_PTR\(2),
	datac => \lcd_full|LCD_CMD_PTR\(0),
	datad => \lcd_full|LCD_CMD_PTR\(1),
	combout => \lcd_full|Selector32~2_combout\);

-- Location: LCCOMB_X68_Y43_N24
\lcd_full|Selector33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~4_combout\ = (\lcd_full|Equal4~4_combout\ & (((\lcd_full|Selector28~5_combout\ & \lcd_full|Selector32~2_combout\)))) # (!\lcd_full|Equal4~4_combout\ & ((\lcd_full|Selector33~3_combout\) # ((\lcd_full|Selector28~5_combout\ & 
-- \lcd_full|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Equal4~4_combout\,
	datab => \lcd_full|Selector33~3_combout\,
	datac => \lcd_full|Selector28~5_combout\,
	datad => \lcd_full|Selector32~2_combout\,
	combout => \lcd_full|Selector33~4_combout\);

-- Location: LCCOMB_X67_Y43_N4
\lcd_full|Selector34~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~8_combout\ = (\lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\) # (\lcd_full|LCD_STATE.LCD_DATA_L1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_STATE.LCD_CGRAM_DATA~q\,
	datac => \lcd_full|LCD_STATE.LCD_DATA_L1~q\,
	combout => \lcd_full|Selector34~8_combout\);

-- Location: LCCOMB_X66_Y43_N28
\lcd_full|Selector34~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector34~7_combout\ = (\lcd_full|LCD_STATE.LCD_DATA_L2~q\) # ((\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\) # ((\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\) # (\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_STATE.LCD_DATA_L2~q\,
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector34~7_combout\);

-- Location: LCCOMB_X67_Y43_N14
\lcd_full|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~0_combout\ = ((!\lcd_full|Selector37~0_combout\ & ((\lcd_full|Selector34~8_combout\) # (\lcd_full|Selector34~7_combout\)))) # (!\lcd_full|Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector37~0_combout\,
	datab => \lcd_full|Selector34~8_combout\,
	datac => \lcd_full|Selector29~0_combout\,
	datad => \lcd_full|Selector34~7_combout\,
	combout => \lcd_full|Selector33~0_combout\);

-- Location: LCCOMB_X68_Y43_N30
\lcd_full|Selector33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector33~5_combout\ = (\lcd_full|Selector34~0_combout\ & ((\lcd_full|Selector33~4_combout\) # ((\lcd_full|LCD_RS_DB\(4) & \lcd_full|Selector33~0_combout\)))) # (!\lcd_full|Selector34~0_combout\ & (((\lcd_full|LCD_RS_DB\(4) & 
-- \lcd_full|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector34~0_combout\,
	datab => \lcd_full|Selector33~4_combout\,
	datac => \lcd_full|LCD_RS_DB\(4),
	datad => \lcd_full|Selector33~0_combout\,
	combout => \lcd_full|Selector33~5_combout\);

-- Location: FF_X68_Y43_N31
\lcd_full|LCD_RS_DB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector33~5_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(4));

-- Location: LCCOMB_X65_Y42_N0
\giai_ma_soto_gauy_donvi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux0~0_combout\ = (\thoi_gian|giay_reg\(0)) # ((\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((!\giai_ma_bcd_giay|donvi[2]~1_combout\))) # (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & ((\giai_ma_bcd_giay|donvi[2]~1_combout\) # 
-- (!\giai_ma_bcd_giay|donvi[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y42_N14
\h1_13[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_13[5]~0_combout\ = ((!\giai_ma_soto_gauy_donvi|Add0~0_combout\ & !\giai_ma_soto_gauy_donvi|Mux0~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_soto_gauy_donvi|Add0~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux0~0_combout\,
	combout => \h1_13[5]~0_combout\);

-- Location: LCCOMB_X65_Y42_N28
\giai_ma_soto_gauy_donvi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux4~0_combout\ = (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & ((\thoi_gian|giay_reg\(0) & (\giai_ma_bcd_giay|donvi[3]~2_combout\ $ (!\giai_ma_bcd_giay|donvi[2]~1_combout\))) # (!\thoi_gian|giay_reg\(0) & 
-- (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & \giai_ma_bcd_giay|donvi[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y42_N22
\h1_14[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_14[5]~0_combout\ = ((!\giai_ma_soto_gauy_donvi|Add0~0_combout\ & \giai_ma_soto_gauy_donvi|Mux4~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_soto_gauy_donvi|Add0~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux4~0_combout\,
	combout => \h1_14[5]~0_combout\);

-- Location: LCCOMB_X67_Y42_N4
\giai_ma_soto_GIAY_CHUC|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Add1~2_combout\ = \giai_ma_bcd_giay|LessThan3~0_combout\ $ (\thoi_gian|giay_reg\(5) $ (\giai_ma_bcd_giay|chuc[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Add1~2_combout\);

-- Location: LCCOMB_X67_Y42_N26
\giai_ma_soto_GIAY_CHUC|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_GIAY_CHUC|Mux8~0_combout\ = (\LessThan0~2_combout\ & (((!\giai_ma_bcd_giay|chuc[0]~0_combout\)))) # (!\LessThan0~2_combout\ & ((\thoi_gian|giay_reg\(5) & (!\giai_ma_bcd_giay|LessThan3~0_combout\ & \giai_ma_bcd_giay|chuc[0]~0_combout\)) # 
-- (!\thoi_gian|giay_reg\(5) & ((!\giai_ma_bcd_giay|chuc[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|LessThan3~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \thoi_gian|giay_reg\(5),
	datad => \giai_ma_bcd_giay|chuc[0]~0_combout\,
	combout => \giai_ma_soto_GIAY_CHUC|Mux8~0_combout\);

-- Location: LCCOMB_X67_Y42_N24
\h1_12[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_12[5]~3_combout\ = ((\giai_ma_soto_GIAY_CHUC|Add1~2_combout\ & \giai_ma_soto_GIAY_CHUC|Mux8~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_soto_GIAY_CHUC|Add1~2_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Mux8~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \h1_12[5]~3_combout\);

-- Location: LCCOMB_X65_Y42_N4
\lcd_full|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~10_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(1))) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|LCD_DIS_PTR\(1) & (\h1_14[5]~0_combout\)) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\h1_12[5]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \h1_14[5]~0_combout\,
	datad => \h1_12[5]~3_combout\,
	combout => \lcd_full|Mux11~10_combout\);

-- Location: LCCOMB_X65_Y42_N2
\giai_ma_soto_gauy_donvi|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Mux8~0_combout\ = (\giai_ma_bcd_giay|donvi[2]~1_combout\ & (!\giai_ma_bcd_giay|donvi[1]~0_combout\ & (\thoi_gian|giay_reg\(0) $ (!\giai_ma_bcd_giay|donvi[3]~2_combout\)))) # (!\giai_ma_bcd_giay|donvi[2]~1_combout\ & 
-- (\thoi_gian|giay_reg\(0) & (!\giai_ma_bcd_giay|donvi[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \giai_ma_bcd_giay|donvi[1]~0_combout\,
	datad => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	combout => \giai_ma_soto_gauy_donvi|Mux8~0_combout\);

-- Location: LCCOMB_X65_Y42_N12
\h1_15[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_15[5]~3_combout\ = ((!\giai_ma_soto_gauy_donvi|Add1~1_combout\ & \giai_ma_soto_gauy_donvi|Mux8~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_gauy_donvi|Add1~1_combout\,
	datac => \LessThan0~4_combout\,
	datad => \giai_ma_soto_gauy_donvi|Mux8~0_combout\,
	combout => \h1_15[5]~3_combout\);

-- Location: LCCOMB_X65_Y42_N26
\lcd_full|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~11_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & ((\lcd_full|Mux11~10_combout\ & ((\h1_15[5]~3_combout\))) # (!\lcd_full|Mux11~10_combout\ & (\h1_13[5]~0_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & (((\lcd_full|Mux11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \h1_13[5]~0_combout\,
	datac => \lcd_full|Mux11~10_combout\,
	datad => \h1_15[5]~3_combout\,
	combout => \lcd_full|Mux11~11_combout\);

-- Location: LCCOMB_X69_Y40_N0
\h1_2[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_2[5]~0_combout\ = (\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((!\giai_ma_bcd_ds|chuc[2]~0_combout\) # (!\giai_ma_bcd_ds|chuc[3]~1_combout\))) # (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\) # 
-- (\giai_ma_bcd_ds|chuc[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	combout => \h1_2[5]~0_combout\);

-- Location: LCCOMB_X69_Y40_N6
\h1_2[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_2[5]~1_combout\ = ((!\giai_ma_bcd_ds|chuc[0]~3_combout\ & !\h1_2[5]~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \LessThan0~4_combout\,
	datad => \h1_2[5]~0_combout\,
	combout => \h1_2[5]~1_combout\);

-- Location: LCCOMB_X68_Y41_N0
\giai_ma_soto_ds_donvi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux0~0_combout\ = (\doc_ds18b20|TEMP\(4)) # ((\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((!\giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\giai_ma_bcd_ds|donvi[3]~1_combout\) # 
-- (!\giai_ma_bcd_ds|donvi[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datab => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux0~0_combout\);

-- Location: LCCOMB_X68_Y41_N2
\h1_3[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \h1_3[5]~3_combout\ = ((!\giai_ma_soto_ds_donvi|Add0~0_combout\ & !\giai_ma_soto_ds_donvi|Mux0~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_donvi|Add0~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux0~0_combout\,
	combout => \h1_3[5]~3_combout\);

-- Location: LCCOMB_X68_Y38_N28
\lcd_full|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~5_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & ((\giai_ma_bcd_ds|chuc[3]~1_combout\))) # (!\giai_ma_bcd_ds|chuc[2]~0_combout\ & (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & 
-- !\giai_ma_bcd_ds|chuc[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datac => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datad => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	combout => \lcd_full|Mux11~5_combout\);

-- Location: LCCOMB_X67_Y40_N6
\lcd_full|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~6_combout\ = (\giai_ma_soto_ds_chuc|Add0~0_combout\ & ((\lcd_full|Mux11~4_combout\ & (\lcd_full|LCD_DIS_PTR\(0) & !\lcd_full|Mux11~5_combout\)) # (!\lcd_full|Mux11~4_combout\ & (!\lcd_full|LCD_DIS_PTR\(0) & \lcd_full|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux11~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|Mux11~5_combout\,
	datad => \giai_ma_soto_ds_chuc|Add0~0_combout\,
	combout => \lcd_full|Mux11~6_combout\);

-- Location: LCCOMB_X67_Y40_N20
\lcd_full|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~7_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux11~6_combout\) # (!\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux11~6_combout\,
	combout => \lcd_full|Mux11~7_combout\);

-- Location: LCCOMB_X67_Y40_N30
\lcd_full|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~8_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux11~7_combout\ & ((\h1_3[5]~3_combout\))) # (!\lcd_full|Mux11~7_combout\ & (\h1_2[5]~1_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \h1_2[5]~1_combout\,
	datac => \h1_3[5]~3_combout\,
	datad => \lcd_full|Mux11~7_combout\,
	combout => \lcd_full|Mux11~8_combout\);

-- Location: LCCOMB_X68_Y41_N4
\lcd_full|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~2_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & (\doc_ds18b20|TEMP\(4) $ (!\giai_ma_bcd_ds|donvi[3]~1_combout\)))) # (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (((\doc_ds18b20|TEMP\(4) & 
-- !\giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \lcd_full|Mux11~2_combout\);

-- Location: LCCOMB_X68_Y41_N6
\lcd_full|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~3_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (((\giai_ma_soto_ds_donvi|Add1~1_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # ((\giai_ma_soto_ds_donvi|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \giai_ma_soto_ds_donvi|Add0~0_combout\,
	datad => \giai_ma_soto_ds_donvi|Add1~1_combout\,
	combout => \lcd_full|Mux11~3_combout\);

-- Location: LCCOMB_X68_Y41_N16
\lcd_full|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~13_combout\ = (\lcd_full|LCD_DIS_PTR\(1)) # (((\lcd_full|Mux11~2_combout\ & !\lcd_full|Mux11~3_combout\)) # (!\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \LessThan0~4_combout\,
	datac => \lcd_full|Mux11~2_combout\,
	datad => \lcd_full|Mux11~3_combout\,
	combout => \lcd_full|Mux11~13_combout\);

-- Location: LCCOMB_X67_Y40_N12
\lcd_full|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~9_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3)) # ((\lcd_full|Mux11~13_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(2) & (!\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|Mux11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux11~8_combout\,
	datad => \lcd_full|Mux11~13_combout\,
	combout => \lcd_full|Mux11~9_combout\);

-- Location: LCCOMB_X67_Y40_N14
\lcd_full|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux11~12_combout\ = (\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux11~9_combout\ & ((\lcd_full|Mux11~11_combout\))) # (!\lcd_full|Mux11~9_combout\ & (!\lcd_full|Mux24~6_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(3) & (((\lcd_full|Mux11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux24~6_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux11~11_combout\,
	datad => \lcd_full|Mux11~9_combout\,
	combout => \lcd_full|Mux11~12_combout\);

-- Location: LCCOMB_X65_Y39_N26
\lcd_full|Mux19~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~17_combout\ = (!\giai_ma_bcd_giay|donvi[3]~2_combout\ & (\thoi_gian|giay_reg\(0) $ (\thoi_gian|giay_reg\(1) $ (\giai_ma_bcd_giay|chuc[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|donvi[3]~2_combout\,
	datac => \thoi_gian|giay_reg\(1),
	datad => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	combout => \lcd_full|Mux19~17_combout\);

-- Location: LCCOMB_X66_Y42_N4
\giai_ma_soto_gauy_donvi|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_gauy_donvi|Add1~1_combout\ = \thoi_gian|giay_reg\(0) $ (\giai_ma_bcd_giay|hex_bcd~2_combout\ $ (((\giai_ma_bcd_giay|chuc[0]~1_combout\ & \thoi_gian|giay_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \thoi_gian|giay_reg\(0),
	datab => \giai_ma_bcd_giay|chuc[0]~1_combout\,
	datac => \thoi_gian|giay_reg\(1),
	datad => \giai_ma_bcd_giay|hex_bcd~2_combout\,
	combout => \giai_ma_soto_gauy_donvi|Add1~1_combout\);

-- Location: LCCOMB_X65_Y42_N6
\lcd_full|Mux19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~13_combout\ = (\lcd_full|LCD_DIS_PTR\(0) & (!\lcd_full|LCD_DIS_PTR\(1) & !\giai_ma_soto_gauy_donvi|Add1~1_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & (\lcd_full|LCD_DIS_PTR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datac => \lcd_full|LCD_DIS_PTR\(1),
	datad => \giai_ma_soto_gauy_donvi|Add1~1_combout\,
	combout => \lcd_full|Mux19~13_combout\);

-- Location: LCCOMB_X66_Y40_N20
\lcd_full|Mux19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~14_combout\ = ((\giai_ma_bcd_giay|donvi[2]~1_combout\ & (\lcd_full|Mux19~17_combout\ & \lcd_full|Mux19~13_combout\))) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_giay|donvi[2]~1_combout\,
	datab => \lcd_full|Mux19~17_combout\,
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux19~13_combout\,
	combout => \lcd_full|Mux19~14_combout\);

-- Location: LCCOMB_X69_Y39_N26
\giai_ma_soto_ds_donvi|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux16~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & ((\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[1]~2_combout\ & !\giai_ma_bcd_ds|donvi[3]~1_combout\)) # (!\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[1]~2_combout\ & 
-- \giai_ma_bcd_ds|donvi[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux16~0_combout\);

-- Location: LCCOMB_X69_Y39_N4
\lcd_full|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~5_combout\ = (\doc_ds18b20|TEMP\(4) & (!\giai_ma_bcd_ds|donvi[2]~0_combout\ & (\lcd_full|LCD_DIS_PTR\(0) & \giai_ma_bcd_ds|donvi[3]~1_combout\))) # (!\doc_ds18b20|TEMP\(4) & (\giai_ma_bcd_ds|donvi[2]~0_combout\ & 
-- (!\lcd_full|LCD_DIS_PTR\(0) & !\giai_ma_bcd_ds|donvi[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(4),
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \lcd_full|LCD_DIS_PTR\(0),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \lcd_full|Mux19~5_combout\);

-- Location: LCCOMB_X69_Y39_N10
\lcd_full|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~6_combout\ = (\giai_ma_soto_ds_donvi|Add0~2_combout\ & (\lcd_full|LCD_DIS_PTR\(0))) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & (\lcd_full|Mux19~5_combout\ & ((\giai_ma_bcd_ds|donvi[1]~2_combout\) # (!\lcd_full|LCD_DIS_PTR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datac => \lcd_full|Mux19~5_combout\,
	datad => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	combout => \lcd_full|Mux19~6_combout\);

-- Location: LCCOMB_X69_Y39_N28
\lcd_full|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~7_combout\ = (\giai_ma_soto_ds_donvi|Add0~2_combout\ & (\giai_ma_soto_ds_donvi|Mux16~0_combout\ & (\doc_ds18b20|TEMP\(4) $ (\lcd_full|Mux19~6_combout\)))) # (!\giai_ma_soto_ds_donvi|Add0~2_combout\ & (((\lcd_full|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_soto_ds_donvi|Add0~2_combout\,
	datab => \doc_ds18b20|TEMP\(4),
	datac => \giai_ma_soto_ds_donvi|Mux16~0_combout\,
	datad => \lcd_full|Mux19~6_combout\,
	combout => \lcd_full|Mux19~7_combout\);

-- Location: LCCOMB_X68_Y39_N6
\lcd_full|Mux19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~16_combout\ = (\lcd_full|LCD_DIS_PTR\(1)) # ((\lcd_full|Mux19~7_combout\) # (!\LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_full|LCD_DIS_PTR\(1),
	datac => \LessThan0~4_combout\,
	datad => \lcd_full|Mux19~7_combout\,
	combout => \lcd_full|Mux19~16_combout\);

-- Location: LCCOMB_X67_Y42_N20
\lcd_full|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~8_combout\ = ((!\lcd_full|LCD_DIS_PTR\(0) & (\giai_ma_soto_GIAY_CHUC|Add1~2_combout\ & \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\))) # (!\lcd_full|Mux24~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(0),
	datab => \lcd_full|Mux24~6_combout\,
	datac => \giai_ma_soto_GIAY_CHUC|Add1~2_combout\,
	datad => \giai_ma_soto_GIAY_CHUC|Mux9~1_combout\,
	combout => \lcd_full|Mux19~8_combout\);

-- Location: LCCOMB_X67_Y41_N12
\lcd_full|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~9_combout\ = (\lcd_full|Mux19~8_combout\) # ((\lcd_full|Mux19~4_combout\ & \lcd_full|LCD_DIS_PTR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Mux19~4_combout\,
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datad => \lcd_full|Mux19~8_combout\,
	combout => \lcd_full|Mux19~9_combout\);

-- Location: LCCOMB_X68_Y38_N24
\h2_1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[5]~4_combout\ = \giai_ma_bcd_ds|hex_bcd~6_combout\ $ (((\giai_ma_bcd_ds|hex_bcd~7_combout\ & ((\doc_ds18b20|TEMP\(5)) # (!\giai_ma_bcd_ds|hex_bcd~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doc_ds18b20|TEMP\(5),
	datab => \giai_ma_bcd_ds|hex_bcd~8_combout\,
	datac => \giai_ma_bcd_ds|hex_bcd~6_combout\,
	datad => \giai_ma_bcd_ds|hex_bcd~7_combout\,
	combout => \h2_1[5]~4_combout\);

-- Location: LCCOMB_X67_Y40_N4
\h2_1[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[5]~5_combout\ = (\giai_ma_bcd_ds|chuc[0]~3_combout\ & (((\giai_ma_soto_ds_chuc|Add0~2_combout\) # (\h2_1[5]~4_combout\)))) # (!\giai_ma_bcd_ds|chuc[0]~3_combout\ & (!\giai_ma_bcd_ds|chuc[1]~2_combout\ & ((\giai_ma_soto_ds_chuc|Add0~2_combout\) # 
-- (\h2_1[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_soto_ds_chuc|Add0~2_combout\,
	datad => \h2_1[5]~4_combout\,
	combout => \h2_1[5]~5_combout\);

-- Location: LCCOMB_X67_Y40_N26
\h2_1[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_1[5]~6_combout\ = ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & !\h2_1[5]~5_combout\))) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datac => \h2_1[5]~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \h2_1[5]~6_combout\);

-- Location: LCCOMB_X67_Y40_N28
\h2_0[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[5]~5_combout\ = (!\giai_ma_bcd_ds|chuc[3]~1_combout\ & (\giai_ma_bcd_ds|chuc[1]~2_combout\ $ (\giai_ma_bcd_ds|chuc[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \giai_ma_bcd_ds|chuc[1]~2_combout\,
	datac => \giai_ma_bcd_ds|chuc[3]~1_combout\,
	datad => \giai_ma_bcd_ds|chuc[0]~3_combout\,
	combout => \h2_0[5]~5_combout\);

-- Location: LCCOMB_X67_Y40_N18
\h2_0[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_0[5]~6_combout\ = ((\giai_ma_bcd_ds|chuc[2]~0_combout\ & \h2_0[5]~5_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|chuc[2]~0_combout\,
	datab => \LessThan0~4_combout\,
	datad => \h2_0[5]~5_combout\,
	combout => \h2_0[5]~6_combout\);

-- Location: LCCOMB_X67_Y40_N8
\lcd_full|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~10_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & (\lcd_full|LCD_DIS_PTR\(0))) # (!\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|LCD_DIS_PTR\(0) & (\h2_1[5]~6_combout\)) # (!\lcd_full|LCD_DIS_PTR\(0) & ((\h2_0[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \lcd_full|LCD_DIS_PTR\(0),
	datac => \h2_1[5]~6_combout\,
	datad => \h2_0[5]~6_combout\,
	combout => \lcd_full|Mux19~10_combout\);

-- Location: LCCOMB_X68_Y42_N16
\giai_ma_soto_ds_donvi|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \giai_ma_soto_ds_donvi|Mux12~0_combout\ = (\giai_ma_bcd_ds|donvi[2]~0_combout\ & (!\giai_ma_bcd_ds|donvi[3]~1_combout\ & (\giai_ma_bcd_ds|donvi[1]~2_combout\ $ (\doc_ds18b20|TEMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giai_ma_bcd_ds|donvi[1]~2_combout\,
	datab => \giai_ma_bcd_ds|donvi[2]~0_combout\,
	datac => \doc_ds18b20|TEMP\(4),
	datad => \giai_ma_bcd_ds|donvi[3]~1_combout\,
	combout => \giai_ma_soto_ds_donvi|Mux12~0_combout\);

-- Location: LCCOMB_X68_Y42_N6
\h2_3[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \h2_3[5]~4_combout\ = ((!\giai_ma_soto_ds_donvi|Add1~1_combout\ & \giai_ma_soto_ds_donvi|Mux12~0_combout\)) # (!\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datac => \giai_ma_soto_ds_donvi|Add1~1_combout\,
	datad => \giai_ma_soto_ds_donvi|Mux12~0_combout\,
	combout => \h2_3[5]~4_combout\);

-- Location: LCCOMB_X67_Y40_N10
\lcd_full|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~11_combout\ = (\lcd_full|LCD_DIS_PTR\(1) & ((\lcd_full|Mux19~10_combout\ & ((\h2_3[5]~4_combout\))) # (!\lcd_full|Mux19~10_combout\ & (!\LessThan0~4_combout\)))) # (!\lcd_full|LCD_DIS_PTR\(1) & (((\lcd_full|Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(1),
	datab => \LessThan0~4_combout\,
	datac => \lcd_full|Mux19~10_combout\,
	datad => \h2_3[5]~4_combout\,
	combout => \lcd_full|Mux19~11_combout\);

-- Location: LCCOMB_X67_Y40_N16
\lcd_full|Mux19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~12_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & (\lcd_full|LCD_DIS_PTR\(3))) # (!\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|LCD_DIS_PTR\(3) & (\lcd_full|Mux19~9_combout\)) # (!\lcd_full|LCD_DIS_PTR\(3) & ((\lcd_full|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|LCD_DIS_PTR\(3),
	datac => \lcd_full|Mux19~9_combout\,
	datad => \lcd_full|Mux19~11_combout\,
	combout => \lcd_full|Mux19~12_combout\);

-- Location: LCCOMB_X67_Y40_N2
\lcd_full|Mux19~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Mux19~15_combout\ = (\lcd_full|LCD_DIS_PTR\(2) & ((\lcd_full|Mux19~12_combout\ & (\lcd_full|Mux19~14_combout\)) # (!\lcd_full|Mux19~12_combout\ & ((\lcd_full|Mux19~16_combout\))))) # (!\lcd_full|LCD_DIS_PTR\(2) & 
-- (((\lcd_full|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|LCD_DIS_PTR\(2),
	datab => \lcd_full|Mux19~14_combout\,
	datac => \lcd_full|Mux19~16_combout\,
	datad => \lcd_full|Mux19~12_combout\,
	combout => \lcd_full|Mux19~15_combout\);

-- Location: LCCOMB_X67_Y40_N24
\lcd_full|Selector32~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~5_combout\ = (\lcd_full|Selector32~4_combout\ & ((\lcd_full|LCD_RS_DB\(5)) # ((\lcd_full|Selector37~2_combout\ & \lcd_full|Mux19~15_combout\)))) # (!\lcd_full|Selector32~4_combout\ & (\lcd_full|Selector37~2_combout\ & 
-- ((\lcd_full|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector32~4_combout\,
	datab => \lcd_full|Selector37~2_combout\,
	datac => \lcd_full|LCD_RS_DB\(5),
	datad => \lcd_full|Mux19~15_combout\,
	combout => \lcd_full|Selector32~5_combout\);

-- Location: LCCOMB_X67_Y40_N0
\lcd_full|Selector32~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector32~6_combout\ = (\lcd_full|Selector32~7_combout\) # ((\lcd_full|Selector32~5_combout\) # ((\lcd_full|Selector37~1_combout\ & \lcd_full|Mux11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector32~7_combout\,
	datab => \lcd_full|Selector37~1_combout\,
	datac => \lcd_full|Mux11~12_combout\,
	datad => \lcd_full|Selector32~5_combout\,
	combout => \lcd_full|Selector32~6_combout\);

-- Location: FF_X67_Y40_N1
\lcd_full|LCD_RS_DB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector32~6_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(5));

-- Location: LCCOMB_X66_Y43_N20
\lcd_full|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector31~0_combout\ = (!\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\ & !\lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datad => \lcd_full|LCD_STATE.LCD_ADDRESS_L2~q\,
	combout => \lcd_full|Selector31~0_combout\);

-- Location: LCCOMB_X66_Y43_N18
\lcd_full|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector31~2_combout\ = ((!\lcd_full|Selector37~0_combout\ & ((\lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\) # (!\lcd_full|Selector28~0_combout\)))) # (!\lcd_full|Selector31~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|LCD_STATE.LCD_ADDRESS_L1~q\,
	datac => \lcd_full|Selector37~0_combout\,
	datad => \lcd_full|Selector31~0_combout\,
	combout => \lcd_full|Selector31~2_combout\);

-- Location: LCCOMB_X66_Y43_N6
\lcd_full|Selector31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector31~3_combout\ = (\lcd_full|Selector31~1_combout\) # ((\lcd_full|LCD_RS_DB\(6) & ((\lcd_full|Selector31~2_combout\) # (!\lcd_full|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector31~1_combout\,
	datab => \lcd_full|Selector29~0_combout\,
	datac => \lcd_full|LCD_RS_DB\(6),
	datad => \lcd_full|Selector31~2_combout\,
	combout => \lcd_full|Selector31~3_combout\);

-- Location: FF_X66_Y43_N7
\lcd_full|LCD_RS_DB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector31~3_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(6));

-- Location: LCCOMB_X66_Y43_N2
\lcd_full|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector30~1_combout\ = ((!\lcd_full|Selector37~0_combout\ & ((\lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\) # (!\lcd_full|Selector28~0_combout\)))) # (!\lcd_full|Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector28~0_combout\,
	datab => \lcd_full|Selector37~0_combout\,
	datac => \lcd_full|LCD_STATE.LCD_CGRAM_ADDRESS~q\,
	datad => \lcd_full|Selector29~0_combout\,
	combout => \lcd_full|Selector30~1_combout\);

-- Location: LCCOMB_X66_Y43_N8
\lcd_full|Selector30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_full|Selector30~2_combout\ = (\lcd_full|Selector30~0_combout\ & ((\lcd_full|Selector37~0_combout\) # ((\lcd_full|LCD_RS_DB\(7))))) # (!\lcd_full|Selector30~0_combout\ & (((\lcd_full|LCD_RS_DB\(7) & \lcd_full|Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_full|Selector30~0_combout\,
	datab => \lcd_full|Selector37~0_combout\,
	datac => \lcd_full|LCD_RS_DB\(7),
	datad => \lcd_full|Selector30~1_combout\,
	combout => \lcd_full|Selector30~2_combout\);

-- Location: FF_X66_Y43_N9
\lcd_full|LCD_RS_DB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ckht~inputclkctrl_outclk\,
	d => \lcd_full|Selector30~2_combout\,
	ena => \btn_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_full|LCD_RS_DB\(7));

-- Location: IOIBUF_X115_Y42_N15
\btn_n[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n(2),
	o => \btn_n[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\btn_n[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn_n(3),
	o => \btn_n[3]~input_o\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(8) <= \led[8]~output_o\;

ww_led(9) <= \led[9]~output_o\;

ww_led(10) <= \led[10]~output_o\;

ww_led(11) <= \led[11]~output_o\;

ww_led(12) <= \led[12]~output_o\;

ww_led(13) <= \led[13]~output_o\;

ww_led(14) <= \led[14]~output_o\;

ww_led(15) <= \led[15]~output_o\;

ww_led_oe(0) <= \led_oe[0]~output_o\;

ww_led_oe(1) <= \led_oe[1]~output_o\;

ww_led_oe(2) <= \led_oe[2]~output_o\;

ww_led_oe(3) <= \led_oe[3]~output_o\;

ww_led_oe(4) <= \led_oe[4]~output_o\;

ww_led_oe(5) <= \led_oe[5]~output_o\;

ww_led_oe(6) <= \led_oe[6]~output_o\;

ww_led_oe(7) <= \led_oe[7]~output_o\;

ww_led_oe(8) <= \led_oe[8]~output_o\;

ww_lcd_blon <= \lcd_blon~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_wr <= \lcd_wr~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_sseg7(0) <= \sseg7[0]~output_o\;

ww_sseg7(1) <= \sseg7[1]~output_o\;

ww_sseg7(2) <= \sseg7[2]~output_o\;

ww_sseg7(3) <= \sseg7[3]~output_o\;

ww_sseg7(4) <= \sseg7[4]~output_o\;

ww_sseg7(5) <= \sseg7[5]~output_o\;

ww_sseg7(6) <= \sseg7[6]~output_o\;

ww_sseg6(0) <= \sseg6[0]~output_o\;

ww_sseg6(1) <= \sseg6[1]~output_o\;

ww_sseg6(2) <= \sseg6[2]~output_o\;

ww_sseg6(3) <= \sseg6[3]~output_o\;

ww_sseg6(4) <= \sseg6[4]~output_o\;

ww_sseg6(5) <= \sseg6[5]~output_o\;

ww_sseg6(6) <= \sseg6[6]~output_o\;

ww_sseg1(0) <= \sseg1[0]~output_o\;

ww_sseg1(1) <= \sseg1[1]~output_o\;

ww_sseg1(2) <= \sseg1[2]~output_o\;

ww_sseg1(3) <= \sseg1[3]~output_o\;

ww_sseg1(4) <= \sseg1[4]~output_o\;

ww_sseg1(5) <= \sseg1[5]~output_o\;

ww_sseg1(6) <= \sseg1[6]~output_o\;

ww_sseg2(0) <= \sseg2[0]~output_o\;

ww_sseg2(1) <= \sseg2[1]~output_o\;

ww_sseg2(2) <= \sseg2[2]~output_o\;

ww_sseg2(3) <= \sseg2[3]~output_o\;

ww_sseg2(4) <= \sseg2[4]~output_o\;

ww_sseg2(5) <= \sseg2[5]~output_o\;

ww_sseg2(6) <= \sseg2[6]~output_o\;

ww_sseg0(0) <= \sseg0[0]~output_o\;

ww_sseg0(1) <= \sseg0[1]~output_o\;

ww_sseg0(2) <= \sseg0[2]~output_o\;

ww_sseg0(3) <= \sseg0[3]~output_o\;

ww_sseg0(4) <= \sseg0[4]~output_o\;

ww_sseg0(5) <= \sseg0[5]~output_o\;

ww_sseg0(6) <= \sseg0[6]~output_o\;

ds18b20 <= \ds18b20~output_o\;
END structure;


