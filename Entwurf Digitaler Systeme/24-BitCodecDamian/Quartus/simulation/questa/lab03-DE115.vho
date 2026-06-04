-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "06/03/2026 12:44:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	square_wave_wm8731_top IS
    PORT (
	clock_50_top : IN std_logic;
	keys_top : IN std_logic_vector(3 DOWNTO 0);
	rst_top : IN std_logic;
	leds_top : BUFFER std_logic_vector(3 DOWNTO 0);
	i2c_sdat_top : BUFFER std_logic;
	i2c_sclk_top : BUFFER std_logic;
	aud_xck_top : BUFFER std_logic;
	aud_bclk_top : BUFFER std_logic;
	aud_dacdat_top : BUFFER std_logic;
	aud_daclrck_top : BUFFER std_logic
	);
END square_wave_wm8731_top;

-- Design Ports Information
-- leds_top[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_top[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_top[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_top[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sdat_top	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sclk_top	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_xck_top	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_bclk_top	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_dacdat_top	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_daclrck_top	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys_top[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys_top[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys_top[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys_top[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_top	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50_top	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF square_wave_wm8731_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50_top : std_logic;
SIGNAL ww_keys_top : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst_top : std_logic;
SIGNAL ww_leds_top : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i2c_sdat_top : std_logic;
SIGNAL ww_i2c_sclk_top : std_logic;
SIGNAL ww_aud_xck_top : std_logic;
SIGNAL ww_aud_bclk_top : std_logic;
SIGNAL ww_aud_dacdat_top : std_logic;
SIGNAL ww_aud_daclrck_top : std_logic;
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \wm8731_inst|i2c_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clock_50_top~input_o\ : std_logic;
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731_inst|Add0~1\ : std_logic;
SIGNAL \wm8731_inst|Add0~2_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~3\ : std_logic;
SIGNAL \wm8731_inst|Add0~4_combout\ : std_logic;
SIGNAL \rst_top~input_o\ : std_logic;
SIGNAL \wm8731_inst|Add0~5\ : std_logic;
SIGNAL \wm8731_inst|Add0~6_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~7\ : std_logic;
SIGNAL \wm8731_inst|Add0~8_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_clkdiv~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~9\ : std_logic;
SIGNAL \wm8731_inst|Add0~10_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal0~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_clkdiv~1_combout\ : std_logic;
SIGNAL \wm8731_inst|Add0~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_clkdiv~2_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_clk~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_clk~q\ : std_logic;
SIGNAL \wm8731_inst|i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[0]~6_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_seq~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[3]~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[3]~1_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[0]~5_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[1]~4_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[2]~6_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[2]~2_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_wordcnt[3]~3_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal1~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_seq[1]~feeder_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[4]~5_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[0]~7\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[1]~8_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[1]~9\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[2]~10_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[2]~11\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[3]~12_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[3]~13\ : std_logic;
SIGNAL \wm8731_inst|i2c_bitcnt[4]~14_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~1_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~2_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~4_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~7_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~5_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~6_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~8_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~3_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~10_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~11_combout\ : std_logic;
SIGNAL \wm8731_inst|Mux8~9_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_sdat~reg0_q\ : std_logic;
SIGNAL \wm8731_inst|i2c_sdat~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_sdat~1_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_sdat~en_q\ : std_logic;
SIGNAL \keys_top[0]~input_o\ : std_logic;
SIGNAL \keys_top[1]~input_o\ : std_logic;
SIGNAL \square_wave_generator_inst|leds[1]~0_combout\ : std_logic;
SIGNAL \keys_top[2]~input_o\ : std_logic;
SIGNAL \square_wave_generator_inst|leds[2]~1_combout\ : std_logic;
SIGNAL \keys_top[3]~input_o\ : std_logic;
SIGNAL \square_wave_generator_inst|leds[3]~2_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_sclk~0_combout\ : std_logic;
SIGNAL \wm8731_inst|i2c_sclk~q\ : std_logic;
SIGNAL \square_wave_generator_inst|Equal0~0_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[0]~14_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Equal0~1_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|leds[2]~3_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|max_count~0_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|leds~4_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|leds~5_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|leds~6_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~1\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~3\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~5\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~7\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~9\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~11\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~13\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~15\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~17\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~19\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~21\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~23\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~25\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~27\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~28_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[9]~42_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[0]~15\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[1]~16_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[1]~17\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[2]~18_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[2]~19\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[3]~20_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[3]~21\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[4]~22_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[4]~23\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[5]~24_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[5]~25\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[6]~26_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[6]~27\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[7]~28_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[7]~29\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[8]~30_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[8]~31\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[9]~32_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[9]~33\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[10]~34_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[10]~35\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[11]~36_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[11]~37\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[12]~38_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[12]~39\ : std_logic;
SIGNAL \square_wave_generator_inst|tone_cnt[13]~40_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~26_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~24_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~22_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~20_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~18_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~16_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~14_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~12_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~10_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~8_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~6_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~4_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~2_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|Add0~0_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~15_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~17_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~19_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~21_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~23_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~25_cout\ : std_logic;
SIGNAL \square_wave_generator_inst|LessThan0~26_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|square_sig~0_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|square_sig~q\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[0]~12_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal6~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal6~1_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal6~2_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[11]~28_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[0]~13\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[1]~14_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[1]~15\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[2]~16_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[2]~17\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[3]~18_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[3]~19\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[4]~20_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[4]~21\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[5]~22_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[5]~23\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[6]~24_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[6]~25\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[7]~26_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[7]~27\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[8]~29_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[8]~30\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[9]~31_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[9]~32\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[10]~33_combout\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[10]~34\ : std_logic;
SIGNAL \wm8731_inst|s_lrswitch[11]~35_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal7~0_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal7~2_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal7~1_combout\ : std_logic;
SIGNAL \wm8731_inst|Equal7~3_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~31_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~30_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~29_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~28_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~27_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~26_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~25_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~24_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~23_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~22_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~21_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~20_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~19_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~18_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~17_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~16_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~15_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~14_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~13_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~12_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~11_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~10_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~9_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~8_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~7_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~6_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~5_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~4_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~3_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~2_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~1_combout\ : std_logic;
SIGNAL \wm8731_inst|s_din~0_combout\ : std_logic;
SIGNAL \wm8731_inst|aud_daclrck~0_combout\ : std_logic;
SIGNAL \wm8731_inst|aud_daclrck~q\ : std_logic;
SIGNAL \wm8731_inst|i2c_clkdiv\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \wm8731_inst|i2c_wordcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \wm8731_inst|i2c_seq\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \wm8731_inst|s_lrswitch\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \wm8731_inst|i2c_bitcnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \square_wave_generator_inst|tone_cnt\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \wm8731_inst|s_din\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst_top~input_o\ : std_logic;
SIGNAL \ALT_INV_keys_top[0]~input_o\ : std_logic;
SIGNAL \wm8731_inst|ALT_INV_i2c_sdat~en_q\ : std_logic;
SIGNAL \square_wave_generator_inst|ALT_INV_leds[3]~2_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|ALT_INV_leds[2]~1_combout\ : std_logic;
SIGNAL \square_wave_generator_inst|ALT_INV_leds[1]~0_combout\ : std_logic;

BEGIN

ww_clock_50_top <= clock_50_top;
ww_keys_top <= keys_top;
ww_rst_top <= rst_top;
leds_top <= ww_leds_top;
i2c_sdat_top <= ww_i2c_sdat_top;
i2c_sclk_top <= ww_i2c_sclk_top;
aud_xck_top <= ww_aud_xck_top;
aud_bclk_top <= ww_aud_bclk_top;
aud_dacdat_top <= ww_aud_dacdat_top;
aud_daclrck_top <= ww_aud_daclrck_top;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50_top~input_o\);

\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0) <= \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(0);
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1) <= \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(1);
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(2) <= \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(2);
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(3) <= \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(3);
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(4) <= \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(4);

\wm8731_inst|i2c_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wm8731_inst|i2c_clk~q\);

\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0));
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\ <= NOT \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\;
\wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\ <= NOT \wm8731_inst|i2c_clk~clkctrl_outclk\;
\ALT_INV_rst_top~input_o\ <= NOT \rst_top~input_o\;
\ALT_INV_keys_top[0]~input_o\ <= NOT \keys_top[0]~input_o\;
\wm8731_inst|ALT_INV_i2c_sdat~en_q\ <= NOT \wm8731_inst|i2c_sdat~en_q\;
\square_wave_generator_inst|ALT_INV_leds[3]~2_combout\ <= NOT \square_wave_generator_inst|leds[3]~2_combout\;
\square_wave_generator_inst|ALT_INV_leds[2]~1_combout\ <= NOT \square_wave_generator_inst|leds[2]~1_combout\;
\square_wave_generator_inst|ALT_INV_leds[1]~0_combout\ <= NOT \square_wave_generator_inst|leds[1]~0_combout\;

-- Location: IOOBUF_X18_Y73_N23
\i2c_sdat_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731_inst|i2c_sdat~reg0_q\,
	oe => \wm8731_inst|ALT_INV_i2c_sdat~en_q\,
	devoe => ww_devoe,
	o => ww_i2c_sdat_top);

-- Location: IOOBUF_X69_Y73_N16
\leds_top[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_keys_top[0]~input_o\,
	devoe => ww_devoe,
	o => ww_leds_top(0));

-- Location: IOOBUF_X94_Y73_N2
\leds_top[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \square_wave_generator_inst|ALT_INV_leds[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_leds_top(1));

-- Location: IOOBUF_X94_Y73_N9
\leds_top[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \square_wave_generator_inst|ALT_INV_leds[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_leds_top(2));

-- Location: IOOBUF_X107_Y73_N16
\leds_top[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \square_wave_generator_inst|ALT_INV_leds[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_leds_top(3));

-- Location: IOOBUF_X29_Y73_N9
\i2c_sclk_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731_inst|i2c_sclk~q\,
	devoe => ww_devoe,
	o => ww_i2c_sclk_top);

-- Location: IOOBUF_X0_Y61_N23
\aud_xck_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_aud_xck_top);

-- Location: IOOBUF_X0_Y60_N16
\aud_bclk_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_aud_bclk_top);

-- Location: IOOBUF_X0_Y68_N9
\aud_dacdat_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731_inst|s_din\(31),
	devoe => ww_devoe,
	o => ww_aud_dacdat_top);

-- Location: IOOBUF_X0_Y66_N16
\aud_daclrck_top~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731_inst|aud_daclrck~q\,
	devoe => ww_devoe,
	o => ww_aud_daclrck_top);

-- Location: IOIBUF_X0_Y36_N15
\clock_50_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50_top,
	o => \clock_50_top~input_o\);

-- Location: PLL_1
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 15,
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
	clk0_divide_by => 217,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 80,
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
	m => 80,
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
	vco_phase_shift_step => 218,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	inclk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N12
\wm8731_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~0_combout\ = \wm8731_inst|i2c_clkdiv\(0) $ (VCC)
-- \wm8731_inst|Add0~1\ = CARRY(\wm8731_inst|i2c_clkdiv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(0),
	datad => VCC,
	combout => \wm8731_inst|Add0~0_combout\,
	cout => \wm8731_inst|Add0~1\);

-- Location: LCCOMB_X114_Y37_N14
\wm8731_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~2_combout\ = (\wm8731_inst|i2c_clkdiv\(1) & (!\wm8731_inst|Add0~1\)) # (!\wm8731_inst|i2c_clkdiv\(1) & ((\wm8731_inst|Add0~1\) # (GND)))
-- \wm8731_inst|Add0~3\ = CARRY((!\wm8731_inst|Add0~1\) # (!\wm8731_inst|i2c_clkdiv\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(1),
	datad => VCC,
	cin => \wm8731_inst|Add0~1\,
	combout => \wm8731_inst|Add0~2_combout\,
	cout => \wm8731_inst|Add0~3\);

-- Location: LCCOMB_X114_Y37_N16
\wm8731_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~4_combout\ = (\wm8731_inst|i2c_clkdiv\(2) & (\wm8731_inst|Add0~3\ $ (GND))) # (!\wm8731_inst|i2c_clkdiv\(2) & (!\wm8731_inst|Add0~3\ & VCC))
-- \wm8731_inst|Add0~5\ = CARRY((\wm8731_inst|i2c_clkdiv\(2) & !\wm8731_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_clkdiv\(2),
	datad => VCC,
	cin => \wm8731_inst|Add0~3\,
	combout => \wm8731_inst|Add0~4_combout\,
	cout => \wm8731_inst|Add0~5\);

-- Location: IOIBUF_X115_Y17_N1
\rst_top~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_top,
	o => \rst_top~input_o\);

-- Location: FF_X114_Y37_N17
\wm8731_inst|i2c_clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|Add0~4_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(2));

-- Location: LCCOMB_X114_Y37_N18
\wm8731_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~6_combout\ = (\wm8731_inst|i2c_clkdiv\(3) & (!\wm8731_inst|Add0~5\)) # (!\wm8731_inst|i2c_clkdiv\(3) & ((\wm8731_inst|Add0~5\) # (GND)))
-- \wm8731_inst|Add0~7\ = CARRY((!\wm8731_inst|Add0~5\) # (!\wm8731_inst|i2c_clkdiv\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_clkdiv\(3),
	datad => VCC,
	cin => \wm8731_inst|Add0~5\,
	combout => \wm8731_inst|Add0~6_combout\,
	cout => \wm8731_inst|Add0~7\);

-- Location: FF_X114_Y37_N19
\wm8731_inst|i2c_clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|Add0~6_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(3));

-- Location: LCCOMB_X114_Y37_N20
\wm8731_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~8_combout\ = (\wm8731_inst|i2c_clkdiv\(4) & (\wm8731_inst|Add0~7\ $ (GND))) # (!\wm8731_inst|i2c_clkdiv\(4) & (!\wm8731_inst|Add0~7\ & VCC))
-- \wm8731_inst|Add0~9\ = CARRY((\wm8731_inst|i2c_clkdiv\(4) & !\wm8731_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(4),
	datad => VCC,
	cin => \wm8731_inst|Add0~7\,
	combout => \wm8731_inst|Add0~8_combout\,
	cout => \wm8731_inst|Add0~9\);

-- Location: LCCOMB_X114_Y37_N6
\wm8731_inst|i2c_clkdiv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_clkdiv~0_combout\ = (\wm8731_inst|Add0~8_combout\ & ((\wm8731_inst|i2c_clkdiv\(0)) # ((!\wm8731_inst|Equal0~0_combout\) # (!\wm8731_inst|i2c_clkdiv\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(0),
	datab => \wm8731_inst|Add0~8_combout\,
	datac => \wm8731_inst|i2c_clkdiv\(1),
	datad => \wm8731_inst|Equal0~0_combout\,
	combout => \wm8731_inst|i2c_clkdiv~0_combout\);

-- Location: FF_X114_Y37_N7
\wm8731_inst|i2c_clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|i2c_clkdiv~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(4));

-- Location: LCCOMB_X114_Y37_N22
\wm8731_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Add0~10_combout\ = \wm8731_inst|i2c_clkdiv\(5) $ (\wm8731_inst|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(5),
	cin => \wm8731_inst|Add0~9\,
	combout => \wm8731_inst|Add0~10_combout\);

-- Location: FF_X114_Y37_N23
\wm8731_inst|i2c_clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|Add0~10_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(5));

-- Location: LCCOMB_X114_Y37_N2
\wm8731_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal0~0_combout\ = (\wm8731_inst|i2c_clkdiv\(4) & (!\wm8731_inst|i2c_clkdiv\(3) & (!\wm8731_inst|i2c_clkdiv\(5) & !\wm8731_inst|i2c_clkdiv\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(4),
	datab => \wm8731_inst|i2c_clkdiv\(3),
	datac => \wm8731_inst|i2c_clkdiv\(5),
	datad => \wm8731_inst|i2c_clkdiv\(2),
	combout => \wm8731_inst|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\wm8731_inst|i2c_clkdiv~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_clkdiv~1_combout\ = (\wm8731_inst|Add0~2_combout\ & ((\wm8731_inst|i2c_clkdiv\(0)) # ((!\wm8731_inst|Equal0~0_combout\) # (!\wm8731_inst|i2c_clkdiv\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(0),
	datab => \wm8731_inst|Add0~2_combout\,
	datac => \wm8731_inst|i2c_clkdiv\(1),
	datad => \wm8731_inst|Equal0~0_combout\,
	combout => \wm8731_inst|i2c_clkdiv~1_combout\);

-- Location: FF_X114_Y37_N9
\wm8731_inst|i2c_clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|i2c_clkdiv~1_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(1));

-- Location: LCCOMB_X114_Y37_N10
\wm8731_inst|i2c_clkdiv~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_clkdiv~2_combout\ = (\wm8731_inst|Add0~0_combout\ & (((\wm8731_inst|i2c_clkdiv\(0)) # (!\wm8731_inst|Equal0~0_combout\)) # (!\wm8731_inst|i2c_clkdiv\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(1),
	datab => \wm8731_inst|Add0~0_combout\,
	datac => \wm8731_inst|i2c_clkdiv\(0),
	datad => \wm8731_inst|Equal0~0_combout\,
	combout => \wm8731_inst|i2c_clkdiv~2_combout\);

-- Location: FF_X114_Y37_N11
\wm8731_inst|i2c_clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|i2c_clkdiv~2_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clkdiv\(0));

-- Location: LCCOMB_X114_Y37_N4
\wm8731_inst|i2c_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_clk~0_combout\ = \wm8731_inst|i2c_clk~q\ $ (((!\wm8731_inst|i2c_clkdiv\(0) & (\wm8731_inst|Equal0~0_combout\ & \wm8731_inst|i2c_clkdiv\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_clkdiv\(0),
	datab => \wm8731_inst|Equal0~0_combout\,
	datac => \wm8731_inst|i2c_clk~q\,
	datad => \wm8731_inst|i2c_clkdiv\(1),
	combout => \wm8731_inst|i2c_clk~0_combout\);

-- Location: FF_X114_Y37_N5
\wm8731_inst|i2c_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|i2c_clk~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_clk~q\);

-- Location: CLKCTRL_G6
\wm8731_inst|i2c_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wm8731_inst|i2c_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wm8731_inst|i2c_clk~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y68_N10
\wm8731_inst|i2c_bitcnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[0]~6_combout\ = \wm8731_inst|i2c_bitcnt\(0) $ (VCC)
-- \wm8731_inst|i2c_bitcnt[0]~7\ = CARRY(\wm8731_inst|i2c_bitcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_bitcnt\(0),
	datad => VCC,
	combout => \wm8731_inst|i2c_bitcnt[0]~6_combout\,
	cout => \wm8731_inst|i2c_bitcnt[0]~7\);

-- Location: LCCOMB_X59_Y68_N8
\wm8731_inst|i2c_seq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_seq~0_combout\ = \wm8731_inst|i2c_seq\(0) $ (!\wm8731_inst|i2c_seq\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|i2c_seq\(0),
	datad => \wm8731_inst|i2c_seq\(1),
	combout => \wm8731_inst|i2c_seq~0_combout\);

-- Location: LCCOMB_X59_Y68_N22
\wm8731_inst|i2c_wordcnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[3]~0_combout\ = (\wm8731_inst|i2c_bitcnt\(2) & (\wm8731_inst|i2c_bitcnt\(1) & \wm8731_inst|i2c_bitcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_bitcnt\(2),
	datac => \wm8731_inst|i2c_bitcnt\(1),
	datad => \wm8731_inst|i2c_bitcnt\(3),
	combout => \wm8731_inst|i2c_wordcnt[3]~0_combout\);

-- Location: LCCOMB_X59_Y68_N2
\wm8731_inst|i2c_wordcnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[3]~1_combout\ = (\wm8731_inst|i2c_wordcnt[3]~0_combout\ & (\wm8731_inst|i2c_bitcnt\(4) & (\wm8731_inst|i2c_bitcnt\(0) & \wm8731_inst|i2c_bitcnt[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt[3]~0_combout\,
	datab => \wm8731_inst|i2c_bitcnt\(4),
	datac => \wm8731_inst|i2c_bitcnt\(0),
	datad => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	combout => \wm8731_inst|i2c_wordcnt[3]~1_combout\);

-- Location: LCCOMB_X60_Y68_N26
\wm8731_inst|i2c_wordcnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[0]~5_combout\ = \wm8731_inst|i2c_wordcnt\(0) $ (\wm8731_inst|i2c_wordcnt[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|i2c_wordcnt\(0),
	datad => \wm8731_inst|i2c_wordcnt[3]~1_combout\,
	combout => \wm8731_inst|i2c_wordcnt[0]~5_combout\);

-- Location: FF_X60_Y68_N27
\wm8731_inst|i2c_wordcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_wordcnt[0]~5_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_wordcnt\(0));

-- Location: LCCOMB_X59_Y68_N6
\wm8731_inst|i2c_wordcnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[1]~4_combout\ = \wm8731_inst|i2c_wordcnt\(1) $ (((\wm8731_inst|i2c_wordcnt\(0) & \wm8731_inst|i2c_wordcnt[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_wordcnt\(0),
	datac => \wm8731_inst|i2c_wordcnt\(1),
	datad => \wm8731_inst|i2c_wordcnt[3]~1_combout\,
	combout => \wm8731_inst|i2c_wordcnt[1]~4_combout\);

-- Location: FF_X59_Y68_N7
\wm8731_inst|i2c_wordcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_wordcnt[1]~4_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_wordcnt\(1));

-- Location: LCCOMB_X59_Y68_N24
\wm8731_inst|i2c_wordcnt[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[2]~6_combout\ = \wm8731_inst|i2c_wordcnt\(2) $ (((\wm8731_inst|i2c_wordcnt[3]~1_combout\ & (\wm8731_inst|i2c_wordcnt\(0) & \wm8731_inst|i2c_wordcnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt[3]~1_combout\,
	datab => \wm8731_inst|i2c_wordcnt\(0),
	datac => \wm8731_inst|i2c_wordcnt\(2),
	datad => \wm8731_inst|i2c_wordcnt\(1),
	combout => \wm8731_inst|i2c_wordcnt[2]~6_combout\);

-- Location: FF_X59_Y68_N25
\wm8731_inst|i2c_wordcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_wordcnt[2]~6_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_wordcnt\(2));

-- Location: LCCOMB_X59_Y68_N12
\wm8731_inst|i2c_wordcnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[2]~2_combout\ = (\wm8731_inst|i2c_wordcnt\(1) & \wm8731_inst|i2c_wordcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(1),
	datad => \wm8731_inst|i2c_wordcnt\(0),
	combout => \wm8731_inst|i2c_wordcnt[2]~2_combout\);

-- Location: LCCOMB_X59_Y68_N4
\wm8731_inst|i2c_wordcnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_wordcnt[3]~3_combout\ = \wm8731_inst|i2c_wordcnt\(3) $ (((\wm8731_inst|i2c_wordcnt[3]~1_combout\ & (\wm8731_inst|i2c_wordcnt\(2) & \wm8731_inst|i2c_wordcnt[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt[3]~1_combout\,
	datab => \wm8731_inst|i2c_wordcnt\(2),
	datac => \wm8731_inst|i2c_wordcnt\(3),
	datad => \wm8731_inst|i2c_wordcnt[2]~2_combout\,
	combout => \wm8731_inst|i2c_wordcnt[3]~3_combout\);

-- Location: FF_X59_Y68_N5
\wm8731_inst|i2c_wordcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_wordcnt[3]~3_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_wordcnt\(3));

-- Location: LCCOMB_X59_Y68_N30
\wm8731_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal1~0_combout\ = (\wm8731_inst|i2c_wordcnt\(1)) # ((\wm8731_inst|i2c_wordcnt\(2)) # ((\wm8731_inst|i2c_wordcnt\(0)) # (!\wm8731_inst|i2c_wordcnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(1),
	datab => \wm8731_inst|i2c_wordcnt\(2),
	datac => \wm8731_inst|i2c_wordcnt\(3),
	datad => \wm8731_inst|i2c_wordcnt\(0),
	combout => \wm8731_inst|Equal1~0_combout\);

-- Location: FF_X59_Y68_N9
\wm8731_inst|i2c_seq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_seq~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_seq\(0));

-- Location: LCCOMB_X59_Y68_N10
\wm8731_inst|i2c_seq[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_seq[1]~feeder_combout\ = \wm8731_inst|i2c_seq\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731_inst|i2c_seq\(0),
	combout => \wm8731_inst|i2c_seq[1]~feeder_combout\);

-- Location: FF_X59_Y68_N11
\wm8731_inst|i2c_seq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_seq[1]~feeder_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_seq\(1));

-- Location: LCCOMB_X59_Y68_N0
\wm8731_inst|i2c_bitcnt[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[4]~5_combout\ = (!\wm8731_inst|i2c_seq\(1) & (!\wm8731_inst|i2c_seq\(0) & \wm8731_inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_seq\(1),
	datac => \wm8731_inst|i2c_seq\(0),
	datad => \wm8731_inst|Equal1~0_combout\,
	combout => \wm8731_inst|i2c_bitcnt[4]~5_combout\);

-- Location: FF_X60_Y68_N11
\wm8731_inst|i2c_bitcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_bitcnt[0]~6_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_bitcnt\(0));

-- Location: LCCOMB_X60_Y68_N12
\wm8731_inst|i2c_bitcnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[1]~8_combout\ = (\wm8731_inst|i2c_bitcnt\(1) & (!\wm8731_inst|i2c_bitcnt[0]~7\)) # (!\wm8731_inst|i2c_bitcnt\(1) & ((\wm8731_inst|i2c_bitcnt[0]~7\) # (GND)))
-- \wm8731_inst|i2c_bitcnt[1]~9\ = CARRY((!\wm8731_inst|i2c_bitcnt[0]~7\) # (!\wm8731_inst|i2c_bitcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_bitcnt\(1),
	datad => VCC,
	cin => \wm8731_inst|i2c_bitcnt[0]~7\,
	combout => \wm8731_inst|i2c_bitcnt[1]~8_combout\,
	cout => \wm8731_inst|i2c_bitcnt[1]~9\);

-- Location: FF_X60_Y68_N13
\wm8731_inst|i2c_bitcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_bitcnt[1]~8_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_bitcnt\(1));

-- Location: LCCOMB_X60_Y68_N14
\wm8731_inst|i2c_bitcnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[2]~10_combout\ = (\wm8731_inst|i2c_bitcnt\(2) & (\wm8731_inst|i2c_bitcnt[1]~9\ $ (GND))) # (!\wm8731_inst|i2c_bitcnt\(2) & (!\wm8731_inst|i2c_bitcnt[1]~9\ & VCC))
-- \wm8731_inst|i2c_bitcnt[2]~11\ = CARRY((\wm8731_inst|i2c_bitcnt\(2) & !\wm8731_inst|i2c_bitcnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_bitcnt\(2),
	datad => VCC,
	cin => \wm8731_inst|i2c_bitcnt[1]~9\,
	combout => \wm8731_inst|i2c_bitcnt[2]~10_combout\,
	cout => \wm8731_inst|i2c_bitcnt[2]~11\);

-- Location: FF_X60_Y68_N15
\wm8731_inst|i2c_bitcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_bitcnt[2]~10_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_bitcnt\(2));

-- Location: LCCOMB_X60_Y68_N16
\wm8731_inst|i2c_bitcnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[3]~12_combout\ = (\wm8731_inst|i2c_bitcnt\(3) & (!\wm8731_inst|i2c_bitcnt[2]~11\)) # (!\wm8731_inst|i2c_bitcnt\(3) & ((\wm8731_inst|i2c_bitcnt[2]~11\) # (GND)))
-- \wm8731_inst|i2c_bitcnt[3]~13\ = CARRY((!\wm8731_inst|i2c_bitcnt[2]~11\) # (!\wm8731_inst|i2c_bitcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|i2c_bitcnt\(3),
	datad => VCC,
	cin => \wm8731_inst|i2c_bitcnt[2]~11\,
	combout => \wm8731_inst|i2c_bitcnt[3]~12_combout\,
	cout => \wm8731_inst|i2c_bitcnt[3]~13\);

-- Location: FF_X60_Y68_N17
\wm8731_inst|i2c_bitcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_bitcnt[3]~12_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_bitcnt\(3));

-- Location: LCCOMB_X60_Y68_N18
\wm8731_inst|i2c_bitcnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_bitcnt[4]~14_combout\ = \wm8731_inst|i2c_bitcnt\(4) $ (!\wm8731_inst|i2c_bitcnt[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(4),
	cin => \wm8731_inst|i2c_bitcnt[3]~13\,
	combout => \wm8731_inst|i2c_bitcnt[4]~14_combout\);

-- Location: FF_X60_Y68_N19
\wm8731_inst|i2c_bitcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_bitcnt[4]~14_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_bitcnt\(4));

-- Location: LCCOMB_X60_Y68_N20
\wm8731_inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~0_combout\ = (!\wm8731_inst|i2c_bitcnt\(3) & ((\wm8731_inst|i2c_bitcnt\(0) & ((\wm8731_inst|i2c_bitcnt\(2)))) # (!\wm8731_inst|i2c_bitcnt\(0) & (!\wm8731_inst|i2c_bitcnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(1),
	datab => \wm8731_inst|i2c_bitcnt\(2),
	datac => \wm8731_inst|i2c_bitcnt\(0),
	datad => \wm8731_inst|i2c_bitcnt\(3),
	combout => \wm8731_inst|Mux8~0_combout\);

-- Location: LCCOMB_X59_Y68_N16
\wm8731_inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~1_combout\ = (\wm8731_inst|i2c_wordcnt\(2) & (\wm8731_inst|i2c_bitcnt\(0) $ (((\wm8731_inst|i2c_wordcnt\(1)) # (\wm8731_inst|i2c_wordcnt\(0)))))) # (!\wm8731_inst|i2c_wordcnt\(2) & ((\wm8731_inst|i2c_bitcnt\(0)) # 
-- ((!\wm8731_inst|i2c_wordcnt\(1) & !\wm8731_inst|i2c_wordcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(1),
	datab => \wm8731_inst|i2c_wordcnt\(2),
	datac => \wm8731_inst|i2c_bitcnt\(0),
	datad => \wm8731_inst|i2c_wordcnt\(0),
	combout => \wm8731_inst|Mux8~1_combout\);

-- Location: LCCOMB_X59_Y68_N28
\wm8731_inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~2_combout\ = (!\wm8731_inst|i2c_bitcnt\(4) & ((\wm8731_inst|Mux8~0_combout\) # ((\wm8731_inst|i2c_wordcnt[3]~0_combout\ & \wm8731_inst|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|Mux8~0_combout\,
	datab => \wm8731_inst|i2c_bitcnt\(4),
	datac => \wm8731_inst|i2c_wordcnt[3]~0_combout\,
	datad => \wm8731_inst|Mux8~1_combout\,
	combout => \wm8731_inst|Mux8~2_combout\);

-- Location: LCCOMB_X60_Y68_N28
\wm8731_inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~4_combout\ = (\wm8731_inst|i2c_wordcnt\(0) & (\wm8731_inst|i2c_wordcnt\(1) & !\wm8731_inst|i2c_wordcnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(0),
	datac => \wm8731_inst|i2c_wordcnt\(1),
	datad => \wm8731_inst|i2c_wordcnt\(2),
	combout => \wm8731_inst|Mux8~4_combout\);

-- Location: LCCOMB_X60_Y68_N24
\wm8731_inst|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~7_combout\ = (\wm8731_inst|i2c_bitcnt\(1) & ((\wm8731_inst|i2c_bitcnt\(2)) # (\wm8731_inst|i2c_wordcnt\(2)))) # (!\wm8731_inst|i2c_bitcnt\(1) & (!\wm8731_inst|i2c_bitcnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(1),
	datac => \wm8731_inst|i2c_bitcnt\(2),
	datad => \wm8731_inst|i2c_wordcnt\(2),
	combout => \wm8731_inst|Mux8~7_combout\);

-- Location: LCCOMB_X60_Y68_N8
\wm8731_inst|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~5_combout\ = (\wm8731_inst|i2c_bitcnt\(3) & (\wm8731_inst|i2c_wordcnt\(1) $ (((!\wm8731_inst|i2c_bitcnt\(0)) # (!\wm8731_inst|i2c_wordcnt\(0)))))) # (!\wm8731_inst|i2c_bitcnt\(3) & ((\wm8731_inst|i2c_wordcnt\(1) & 
-- ((\wm8731_inst|i2c_bitcnt\(0)))) # (!\wm8731_inst|i2c_wordcnt\(1) & (!\wm8731_inst|i2c_wordcnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(0),
	datab => \wm8731_inst|i2c_bitcnt\(3),
	datac => \wm8731_inst|i2c_wordcnt\(1),
	datad => \wm8731_inst|i2c_bitcnt\(0),
	combout => \wm8731_inst|Mux8~5_combout\);

-- Location: LCCOMB_X60_Y68_N6
\wm8731_inst|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~6_combout\ = (\wm8731_inst|Mux8~5_combout\ & (\wm8731_inst|i2c_bitcnt\(3) $ (((!\wm8731_inst|i2c_bitcnt\(1) & !\wm8731_inst|Mux8~4_combout\))))) # (!\wm8731_inst|Mux8~5_combout\ & (\wm8731_inst|Mux8~4_combout\ & 
-- (\wm8731_inst|i2c_bitcnt\(1) $ (!\wm8731_inst|i2c_bitcnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(1),
	datab => \wm8731_inst|i2c_bitcnt\(3),
	datac => \wm8731_inst|Mux8~5_combout\,
	datad => \wm8731_inst|Mux8~4_combout\,
	combout => \wm8731_inst|Mux8~6_combout\);

-- Location: LCCOMB_X60_Y68_N30
\wm8731_inst|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~8_combout\ = (\wm8731_inst|i2c_bitcnt\(2) & (((\wm8731_inst|Mux8~7_combout\)))) # (!\wm8731_inst|i2c_bitcnt\(2) & (\wm8731_inst|Mux8~6_combout\ & ((\wm8731_inst|Mux8~4_combout\) # (\wm8731_inst|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|Mux8~4_combout\,
	datab => \wm8731_inst|i2c_bitcnt\(2),
	datac => \wm8731_inst|Mux8~7_combout\,
	datad => \wm8731_inst|Mux8~6_combout\,
	combout => \wm8731_inst|Mux8~8_combout\);

-- Location: LCCOMB_X60_Y68_N22
\wm8731_inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~3_combout\ = (\wm8731_inst|i2c_wordcnt\(0) & !\wm8731_inst|i2c_wordcnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|i2c_wordcnt\(0),
	datad => \wm8731_inst|i2c_wordcnt\(2),
	combout => \wm8731_inst|Mux8~3_combout\);

-- Location: LCCOMB_X60_Y68_N0
\wm8731_inst|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~10_combout\ = (\wm8731_inst|Mux8~3_combout\ & ((\wm8731_inst|i2c_wordcnt\(1) & (\wm8731_inst|i2c_bitcnt\(0) $ (\wm8731_inst|Mux8~8_combout\))) # (!\wm8731_inst|i2c_wordcnt\(1) & (\wm8731_inst|i2c_bitcnt\(0) & 
-- \wm8731_inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_wordcnt\(1),
	datab => \wm8731_inst|i2c_bitcnt\(0),
	datac => \wm8731_inst|Mux8~8_combout\,
	datad => \wm8731_inst|Mux8~3_combout\,
	combout => \wm8731_inst|Mux8~10_combout\);

-- Location: LCCOMB_X60_Y68_N2
\wm8731_inst|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~11_combout\ = (\wm8731_inst|i2c_bitcnt\(3) & (((\wm8731_inst|Mux8~8_combout\)))) # (!\wm8731_inst|i2c_bitcnt\(3) & ((\wm8731_inst|i2c_bitcnt\(2) & ((\wm8731_inst|Mux8~10_combout\))) # (!\wm8731_inst|i2c_bitcnt\(2) & 
-- (\wm8731_inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(3),
	datab => \wm8731_inst|i2c_bitcnt\(2),
	datac => \wm8731_inst|Mux8~8_combout\,
	datad => \wm8731_inst|Mux8~10_combout\,
	combout => \wm8731_inst|Mux8~11_combout\);

-- Location: LCCOMB_X60_Y68_N4
\wm8731_inst|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Mux8~9_combout\ = (\wm8731_inst|Mux8~2_combout\) # ((\wm8731_inst|i2c_bitcnt\(4) & \wm8731_inst|Mux8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(4),
	datab => \wm8731_inst|Mux8~2_combout\,
	datad => \wm8731_inst|Mux8~11_combout\,
	combout => \wm8731_inst|Mux8~9_combout\);

-- Location: FF_X60_Y68_N5
\wm8731_inst|i2c_sdat~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|Mux8~9_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_sdat~reg0_q\);

-- Location: LCCOMB_X59_Y68_N26
\wm8731_inst|i2c_sdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_sdat~0_combout\ = (\wm8731_inst|i2c_bitcnt\(3) & (!\wm8731_inst|i2c_bitcnt\(0) & (\wm8731_inst|i2c_bitcnt\(2) $ (!\wm8731_inst|i2c_bitcnt\(4))))) # (!\wm8731_inst|i2c_bitcnt\(3) & (\wm8731_inst|i2c_bitcnt\(0) & 
-- (!\wm8731_inst|i2c_bitcnt\(2) & \wm8731_inst|i2c_bitcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|i2c_bitcnt\(3),
	datab => \wm8731_inst|i2c_bitcnt\(0),
	datac => \wm8731_inst|i2c_bitcnt\(2),
	datad => \wm8731_inst|i2c_bitcnt\(4),
	combout => \wm8731_inst|i2c_sdat~0_combout\);

-- Location: LCCOMB_X59_Y68_N14
\wm8731_inst|i2c_sdat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_sdat~1_combout\ = ((\wm8731_inst|i2c_sdat~0_combout\ & (\wm8731_inst|i2c_bitcnt\(1) $ (\wm8731_inst|i2c_bitcnt\(2))))) # (!\wm8731_inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|Equal1~0_combout\,
	datab => \wm8731_inst|i2c_bitcnt\(1),
	datac => \wm8731_inst|i2c_bitcnt\(2),
	datad => \wm8731_inst|i2c_sdat~0_combout\,
	combout => \wm8731_inst|i2c_sdat~1_combout\);

-- Location: FF_X59_Y68_N15
\wm8731_inst|i2c_sdat~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_sdat~1_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_sdat~en_q\);

-- Location: IOIBUF_X115_Y40_N8
\keys_top[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys_top(0),
	o => \keys_top[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\keys_top[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys_top(1),
	o => \keys_top[1]~input_o\);

-- Location: LCCOMB_X109_Y43_N4
\square_wave_generator_inst|leds[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds[1]~0_combout\ = (\keys_top[1]~input_o\) # (!\keys_top[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[0]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds[1]~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\keys_top[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys_top(2),
	o => \keys_top[2]~input_o\);

-- Location: LCCOMB_X109_Y43_N22
\square_wave_generator_inst|leds[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds[2]~1_combout\ = ((\keys_top[2]~input_o\) # (!\keys_top[1]~input_o\)) # (!\keys_top[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[0]~input_o\,
	datac => \keys_top[2]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds[2]~1_combout\);

-- Location: IOIBUF_X115_Y35_N22
\keys_top[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys_top(3),
	o => \keys_top[3]~input_o\);

-- Location: LCCOMB_X109_Y43_N28
\square_wave_generator_inst|leds[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds[3]~2_combout\ = (\keys_top[3]~input_o\) # (((!\keys_top[1]~input_o\) # (!\keys_top[2]~input_o\)) # (!\keys_top[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[3]~input_o\,
	datab => \keys_top[0]~input_o\,
	datac => \keys_top[2]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds[3]~2_combout\);

-- Location: LCCOMB_X59_Y68_N20
\wm8731_inst|i2c_sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|i2c_sclk~0_combout\ = (\wm8731_inst|Equal1~0_combout\ & (\wm8731_inst|i2c_seq\(0) & ((\wm8731_inst|i2c_sclk~q\) # (!\wm8731_inst|i2c_seq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|Equal1~0_combout\,
	datab => \wm8731_inst|i2c_seq\(1),
	datac => \wm8731_inst|i2c_sclk~q\,
	datad => \wm8731_inst|i2c_seq\(0),
	combout => \wm8731_inst|i2c_sclk~0_combout\);

-- Location: FF_X59_Y68_N21
\wm8731_inst|i2c_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731_inst|i2c_sclk~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|i2c_sclk~q\);

-- Location: LCCOMB_X109_Y43_N18
\square_wave_generator_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Equal0~0_combout\ = (\keys_top[3]~input_o\ & (\keys_top[0]~input_o\ & (\keys_top[2]~input_o\ & \keys_top[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[3]~input_o\,
	datab => \keys_top[0]~input_o\,
	datac => \keys_top[2]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y43_N4
\square_wave_generator_inst|tone_cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[0]~14_combout\ = \square_wave_generator_inst|tone_cnt\(0) $ (VCC)
-- \square_wave_generator_inst|tone_cnt[0]~15\ = CARRY(\square_wave_generator_inst|tone_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(0),
	datad => VCC,
	combout => \square_wave_generator_inst|tone_cnt[0]~14_combout\,
	cout => \square_wave_generator_inst|tone_cnt[0]~15\);

-- Location: LCCOMB_X110_Y43_N0
\square_wave_generator_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Equal0~1_combout\ = (\keys_top[1]~input_o\ & (\keys_top[0]~input_o\ & \keys_top[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[1]~input_o\,
	datab => \keys_top[0]~input_o\,
	datac => \keys_top[2]~input_o\,
	combout => \square_wave_generator_inst|Equal0~1_combout\);

-- Location: LCCOMB_X109_Y43_N16
\square_wave_generator_inst|leds[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds[2]~3_combout\ = (\keys_top[0]~input_o\ & \keys_top[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[0]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds[2]~3_combout\);

-- Location: LCCOMB_X109_Y43_N10
\square_wave_generator_inst|max_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|max_count~0_combout\ = ((!\keys_top[1]~input_o\) # (!\keys_top[3]~input_o\)) # (!\keys_top[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[2]~input_o\,
	datac => \keys_top[3]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|max_count~0_combout\);

-- Location: LCCOMB_X109_Y43_N12
\square_wave_generator_inst|leds~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds~4_combout\ = (\keys_top[2]~input_o\) # (!\keys_top[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keys_top[2]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds~4_combout\);

-- Location: LCCOMB_X109_Y43_N6
\square_wave_generator_inst|leds~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds~5_combout\ = (\keys_top[3]~input_o\) # (!\keys_top[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[2]~input_o\,
	datac => \keys_top[3]~input_o\,
	combout => \square_wave_generator_inst|leds~5_combout\);

-- Location: LCCOMB_X109_Y43_N8
\square_wave_generator_inst|leds~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|leds~6_combout\ = ((\keys_top[3]~input_o\) # (!\keys_top[1]~input_o\)) # (!\keys_top[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys_top[2]~input_o\,
	datac => \keys_top[3]~input_o\,
	datad => \keys_top[1]~input_o\,
	combout => \square_wave_generator_inst|leds~6_combout\);

-- Location: LCCOMB_X110_Y43_N2
\square_wave_generator_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~0_combout\ = (((!\keys_top[0]~input_o\) # (!\square_wave_generator_inst|leds~6_combout\)))
-- \square_wave_generator_inst|Add0~1\ = CARRY((!\keys_top[0]~input_o\) # (!\square_wave_generator_inst|leds~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds~6_combout\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	combout => \square_wave_generator_inst|Add0~0_combout\,
	cout => \square_wave_generator_inst|Add0~1\);

-- Location: LCCOMB_X110_Y43_N4
\square_wave_generator_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~2_combout\ = (\square_wave_generator_inst|Add0~1\ & (((!\keys_top[3]~input_o\) # (!\square_wave_generator_inst|Equal0~1_combout\)))) # (!\square_wave_generator_inst|Add0~1\ & (\square_wave_generator_inst|Equal0~1_combout\ 
-- & (\keys_top[3]~input_o\)))
-- \square_wave_generator_inst|Add0~3\ = CARRY((\square_wave_generator_inst|Equal0~1_combout\ & (\keys_top[3]~input_o\ & !\square_wave_generator_inst|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~1_combout\,
	datab => \keys_top[3]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~1\,
	combout => \square_wave_generator_inst|Add0~2_combout\,
	cout => \square_wave_generator_inst|Add0~3\);

-- Location: LCCOMB_X110_Y43_N6
\square_wave_generator_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~4_combout\ = (\square_wave_generator_inst|Add0~3\ & ((((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\))))) # (!\square_wave_generator_inst|Add0~3\ & 
-- (((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\)) # (GND)))
-- \square_wave_generator_inst|Add0~5\ = CARRY(((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\)) # (!\square_wave_generator_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|max_count~0_combout\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~3\,
	combout => \square_wave_generator_inst|Add0~4_combout\,
	cout => \square_wave_generator_inst|Add0~5\);

-- Location: LCCOMB_X110_Y43_N8
\square_wave_generator_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~6_combout\ = (\square_wave_generator_inst|leds[2]~3_combout\ & ((\keys_top[2]~input_o\ & (!\square_wave_generator_inst|Add0~5\)) # (!\keys_top[2]~input_o\ & (\square_wave_generator_inst|Add0~5\ & VCC)))) # 
-- (!\square_wave_generator_inst|leds[2]~3_combout\ & (((!\square_wave_generator_inst|Add0~5\))))
-- \square_wave_generator_inst|Add0~7\ = CARRY((!\square_wave_generator_inst|Add0~5\ & ((\keys_top[2]~input_o\) # (!\square_wave_generator_inst|leds[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds[2]~3_combout\,
	datab => \keys_top[2]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~5\,
	combout => \square_wave_generator_inst|Add0~6_combout\,
	cout => \square_wave_generator_inst|Add0~7\);

-- Location: LCCOMB_X110_Y43_N10
\square_wave_generator_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~8_combout\ = (\square_wave_generator_inst|Add0~7\ & ((((!\keys_top[0]~input_o\) # (!\keys_top[1]~input_o\))))) # (!\square_wave_generator_inst|Add0~7\ & (((GND) # (!\keys_top[0]~input_o\)) # (!\keys_top[1]~input_o\)))
-- \square_wave_generator_inst|Add0~9\ = CARRY(((!\square_wave_generator_inst|Add0~7\) # (!\keys_top[0]~input_o\)) # (!\keys_top[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[1]~input_o\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~7\,
	combout => \square_wave_generator_inst|Add0~8_combout\,
	cout => \square_wave_generator_inst|Add0~9\);

-- Location: LCCOMB_X110_Y43_N12
\square_wave_generator_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~10_combout\ = (\square_wave_generator_inst|Add0~9\ & (((!\square_wave_generator_inst|leds~5_combout\) # (!\square_wave_generator_inst|leds[2]~3_combout\)))) # (!\square_wave_generator_inst|Add0~9\ & 
-- (\square_wave_generator_inst|leds[2]~3_combout\ & (\square_wave_generator_inst|leds~5_combout\)))
-- \square_wave_generator_inst|Add0~11\ = CARRY((\square_wave_generator_inst|leds[2]~3_combout\ & (\square_wave_generator_inst|leds~5_combout\ & !\square_wave_generator_inst|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds[2]~3_combout\,
	datab => \square_wave_generator_inst|leds~5_combout\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~9\,
	combout => \square_wave_generator_inst|Add0~10_combout\,
	cout => \square_wave_generator_inst|Add0~11\);

-- Location: LCCOMB_X110_Y43_N14
\square_wave_generator_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~12_combout\ = (\square_wave_generator_inst|Add0~11\ & ((((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\))))) # (!\square_wave_generator_inst|Add0~11\ & 
-- (((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\)) # (GND)))
-- \square_wave_generator_inst|Add0~13\ = CARRY(((\square_wave_generator_inst|max_count~0_combout\ & \keys_top[0]~input_o\)) # (!\square_wave_generator_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|max_count~0_combout\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~11\,
	combout => \square_wave_generator_inst|Add0~12_combout\,
	cout => \square_wave_generator_inst|Add0~13\);

-- Location: LCCOMB_X110_Y43_N16
\square_wave_generator_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~14_combout\ = (\keys_top[1]~input_o\ & (((!\square_wave_generator_inst|Add0~13\)))) # (!\keys_top[1]~input_o\ & ((\keys_top[0]~input_o\ & (\square_wave_generator_inst|Add0~13\ & VCC)) # (!\keys_top[0]~input_o\ & 
-- (!\square_wave_generator_inst|Add0~13\))))
-- \square_wave_generator_inst|Add0~15\ = CARRY((!\square_wave_generator_inst|Add0~13\ & ((\keys_top[1]~input_o\) # (!\keys_top[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[1]~input_o\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~13\,
	combout => \square_wave_generator_inst|Add0~14_combout\,
	cout => \square_wave_generator_inst|Add0~15\);

-- Location: LCCOMB_X110_Y43_N18
\square_wave_generator_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~16_combout\ = (\square_wave_generator_inst|Add0~15\ & ((((!\keys_top[0]~input_o\) # (!\square_wave_generator_inst|leds~4_combout\))))) # (!\square_wave_generator_inst|Add0~15\ & (((GND) # (!\keys_top[0]~input_o\)) # 
-- (!\square_wave_generator_inst|leds~4_combout\)))
-- \square_wave_generator_inst|Add0~17\ = CARRY(((!\square_wave_generator_inst|Add0~15\) # (!\keys_top[0]~input_o\)) # (!\square_wave_generator_inst|leds~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds~4_combout\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~15\,
	combout => \square_wave_generator_inst|Add0~16_combout\,
	cout => \square_wave_generator_inst|Add0~17\);

-- Location: LCCOMB_X110_Y43_N20
\square_wave_generator_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~18_combout\ = (\square_wave_generator_inst|max_count~0_combout\ & ((\keys_top[0]~input_o\ & (\square_wave_generator_inst|Add0~17\ & VCC)) # (!\keys_top[0]~input_o\ & (!\square_wave_generator_inst|Add0~17\)))) # 
-- (!\square_wave_generator_inst|max_count~0_combout\ & (((!\square_wave_generator_inst|Add0~17\))))
-- \square_wave_generator_inst|Add0~19\ = CARRY((!\square_wave_generator_inst|Add0~17\ & ((!\keys_top[0]~input_o\) # (!\square_wave_generator_inst|max_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|max_count~0_combout\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~17\,
	combout => \square_wave_generator_inst|Add0~18_combout\,
	cout => \square_wave_generator_inst|Add0~19\);

-- Location: LCCOMB_X110_Y43_N22
\square_wave_generator_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~20_combout\ = (\square_wave_generator_inst|Add0~19\ & ((((!\keys_top[1]~input_o\ & \keys_top[0]~input_o\))))) # (!\square_wave_generator_inst|Add0~19\ & (((!\keys_top[1]~input_o\ & \keys_top[0]~input_o\)) # (GND)))
-- \square_wave_generator_inst|Add0~21\ = CARRY(((!\keys_top[1]~input_o\ & \keys_top[0]~input_o\)) # (!\square_wave_generator_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[1]~input_o\,
	datab => \keys_top[0]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~19\,
	combout => \square_wave_generator_inst|Add0~20_combout\,
	cout => \square_wave_generator_inst|Add0~21\);

-- Location: LCCOMB_X110_Y43_N24
\square_wave_generator_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~22_combout\ = (\square_wave_generator_inst|leds[2]~3_combout\ & ((\keys_top[2]~input_o\ & (!\square_wave_generator_inst|Add0~21\)) # (!\keys_top[2]~input_o\ & (\square_wave_generator_inst|Add0~21\ & VCC)))) # 
-- (!\square_wave_generator_inst|leds[2]~3_combout\ & (((!\square_wave_generator_inst|Add0~21\))))
-- \square_wave_generator_inst|Add0~23\ = CARRY((!\square_wave_generator_inst|Add0~21\ & ((\keys_top[2]~input_o\) # (!\square_wave_generator_inst|leds[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds[2]~3_combout\,
	datab => \keys_top[2]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~21\,
	combout => \square_wave_generator_inst|Add0~22_combout\,
	cout => \square_wave_generator_inst|Add0~23\);

-- Location: LCCOMB_X110_Y43_N26
\square_wave_generator_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~24_combout\ = (\square_wave_generator_inst|Add0~23\ & ((((!\keys_top[2]~input_o\) # (!\square_wave_generator_inst|leds[2]~3_combout\))))) # (!\square_wave_generator_inst|Add0~23\ & (((GND) # (!\keys_top[2]~input_o\)) # 
-- (!\square_wave_generator_inst|leds[2]~3_combout\)))
-- \square_wave_generator_inst|Add0~25\ = CARRY(((!\square_wave_generator_inst|Add0~23\) # (!\keys_top[2]~input_o\)) # (!\square_wave_generator_inst|leds[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|leds[2]~3_combout\,
	datab => \keys_top[2]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~23\,
	combout => \square_wave_generator_inst|Add0~24_combout\,
	cout => \square_wave_generator_inst|Add0~25\);

-- Location: LCCOMB_X110_Y43_N28
\square_wave_generator_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~26_combout\ = (\square_wave_generator_inst|Equal0~1_combout\ & ((\keys_top[3]~input_o\ & (!\square_wave_generator_inst|Add0~25\)) # (!\keys_top[3]~input_o\ & (\square_wave_generator_inst|Add0~25\ & VCC)))) # 
-- (!\square_wave_generator_inst|Equal0~1_combout\ & (((!\square_wave_generator_inst|Add0~25\))))
-- \square_wave_generator_inst|Add0~27\ = CARRY((!\square_wave_generator_inst|Add0~25\ & ((\keys_top[3]~input_o\) # (!\square_wave_generator_inst|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~1_combout\,
	datab => \keys_top[3]~input_o\,
	datad => VCC,
	cin => \square_wave_generator_inst|Add0~25\,
	combout => \square_wave_generator_inst|Add0~26_combout\,
	cout => \square_wave_generator_inst|Add0~27\);

-- Location: LCCOMB_X110_Y43_N30
\square_wave_generator_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|Add0~28_combout\ = \square_wave_generator_inst|Add0~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \square_wave_generator_inst|Add0~27\,
	combout => \square_wave_generator_inst|Add0~28_combout\);

-- Location: LCCOMB_X112_Y43_N2
\square_wave_generator_inst|tone_cnt[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[9]~42_combout\ = (\square_wave_generator_inst|Equal0~0_combout\) # ((\square_wave_generator_inst|Add0~28_combout\) # (!\square_wave_generator_inst|LessThan0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datac => \square_wave_generator_inst|LessThan0~26_combout\,
	datad => \square_wave_generator_inst|Add0~28_combout\,
	combout => \square_wave_generator_inst|tone_cnt[9]~42_combout\);

-- Location: FF_X112_Y43_N5
\square_wave_generator_inst|tone_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[0]~14_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(0));

-- Location: LCCOMB_X112_Y43_N6
\square_wave_generator_inst|tone_cnt[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[1]~16_combout\ = (\square_wave_generator_inst|tone_cnt\(1) & (!\square_wave_generator_inst|tone_cnt[0]~15\)) # (!\square_wave_generator_inst|tone_cnt\(1) & ((\square_wave_generator_inst|tone_cnt[0]~15\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[1]~17\ = CARRY((!\square_wave_generator_inst|tone_cnt[0]~15\) # (!\square_wave_generator_inst|tone_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(1),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[0]~15\,
	combout => \square_wave_generator_inst|tone_cnt[1]~16_combout\,
	cout => \square_wave_generator_inst|tone_cnt[1]~17\);

-- Location: FF_X112_Y43_N7
\square_wave_generator_inst|tone_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[1]~16_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(1));

-- Location: LCCOMB_X112_Y43_N8
\square_wave_generator_inst|tone_cnt[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[2]~18_combout\ = (\square_wave_generator_inst|tone_cnt\(2) & (\square_wave_generator_inst|tone_cnt[1]~17\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(2) & (!\square_wave_generator_inst|tone_cnt[1]~17\ & VCC))
-- \square_wave_generator_inst|tone_cnt[2]~19\ = CARRY((\square_wave_generator_inst|tone_cnt\(2) & !\square_wave_generator_inst|tone_cnt[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(2),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[1]~17\,
	combout => \square_wave_generator_inst|tone_cnt[2]~18_combout\,
	cout => \square_wave_generator_inst|tone_cnt[2]~19\);

-- Location: FF_X112_Y43_N9
\square_wave_generator_inst|tone_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[2]~18_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(2));

-- Location: LCCOMB_X112_Y43_N10
\square_wave_generator_inst|tone_cnt[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[3]~20_combout\ = (\square_wave_generator_inst|tone_cnt\(3) & (!\square_wave_generator_inst|tone_cnt[2]~19\)) # (!\square_wave_generator_inst|tone_cnt\(3) & ((\square_wave_generator_inst|tone_cnt[2]~19\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[3]~21\ = CARRY((!\square_wave_generator_inst|tone_cnt[2]~19\) # (!\square_wave_generator_inst|tone_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(3),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[2]~19\,
	combout => \square_wave_generator_inst|tone_cnt[3]~20_combout\,
	cout => \square_wave_generator_inst|tone_cnt[3]~21\);

-- Location: FF_X112_Y43_N11
\square_wave_generator_inst|tone_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[3]~20_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(3));

-- Location: LCCOMB_X112_Y43_N12
\square_wave_generator_inst|tone_cnt[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[4]~22_combout\ = (\square_wave_generator_inst|tone_cnt\(4) & (\square_wave_generator_inst|tone_cnt[3]~21\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(4) & (!\square_wave_generator_inst|tone_cnt[3]~21\ & VCC))
-- \square_wave_generator_inst|tone_cnt[4]~23\ = CARRY((\square_wave_generator_inst|tone_cnt\(4) & !\square_wave_generator_inst|tone_cnt[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(4),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[3]~21\,
	combout => \square_wave_generator_inst|tone_cnt[4]~22_combout\,
	cout => \square_wave_generator_inst|tone_cnt[4]~23\);

-- Location: FF_X112_Y43_N13
\square_wave_generator_inst|tone_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[4]~22_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(4));

-- Location: LCCOMB_X112_Y43_N14
\square_wave_generator_inst|tone_cnt[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[5]~24_combout\ = (\square_wave_generator_inst|tone_cnt\(5) & (!\square_wave_generator_inst|tone_cnt[4]~23\)) # (!\square_wave_generator_inst|tone_cnt\(5) & ((\square_wave_generator_inst|tone_cnt[4]~23\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[5]~25\ = CARRY((!\square_wave_generator_inst|tone_cnt[4]~23\) # (!\square_wave_generator_inst|tone_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(5),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[4]~23\,
	combout => \square_wave_generator_inst|tone_cnt[5]~24_combout\,
	cout => \square_wave_generator_inst|tone_cnt[5]~25\);

-- Location: FF_X112_Y43_N15
\square_wave_generator_inst|tone_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[5]~24_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(5));

-- Location: LCCOMB_X112_Y43_N16
\square_wave_generator_inst|tone_cnt[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[6]~26_combout\ = (\square_wave_generator_inst|tone_cnt\(6) & (\square_wave_generator_inst|tone_cnt[5]~25\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(6) & (!\square_wave_generator_inst|tone_cnt[5]~25\ & VCC))
-- \square_wave_generator_inst|tone_cnt[6]~27\ = CARRY((\square_wave_generator_inst|tone_cnt\(6) & !\square_wave_generator_inst|tone_cnt[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(6),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[5]~25\,
	combout => \square_wave_generator_inst|tone_cnt[6]~26_combout\,
	cout => \square_wave_generator_inst|tone_cnt[6]~27\);

-- Location: FF_X112_Y43_N17
\square_wave_generator_inst|tone_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[6]~26_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(6));

-- Location: LCCOMB_X112_Y43_N18
\square_wave_generator_inst|tone_cnt[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[7]~28_combout\ = (\square_wave_generator_inst|tone_cnt\(7) & (!\square_wave_generator_inst|tone_cnt[6]~27\)) # (!\square_wave_generator_inst|tone_cnt\(7) & ((\square_wave_generator_inst|tone_cnt[6]~27\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[7]~29\ = CARRY((!\square_wave_generator_inst|tone_cnt[6]~27\) # (!\square_wave_generator_inst|tone_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(7),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[6]~27\,
	combout => \square_wave_generator_inst|tone_cnt[7]~28_combout\,
	cout => \square_wave_generator_inst|tone_cnt[7]~29\);

-- Location: FF_X112_Y43_N19
\square_wave_generator_inst|tone_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[7]~28_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(7));

-- Location: LCCOMB_X112_Y43_N20
\square_wave_generator_inst|tone_cnt[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[8]~30_combout\ = (\square_wave_generator_inst|tone_cnt\(8) & (\square_wave_generator_inst|tone_cnt[7]~29\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(8) & (!\square_wave_generator_inst|tone_cnt[7]~29\ & VCC))
-- \square_wave_generator_inst|tone_cnt[8]~31\ = CARRY((\square_wave_generator_inst|tone_cnt\(8) & !\square_wave_generator_inst|tone_cnt[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(8),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[7]~29\,
	combout => \square_wave_generator_inst|tone_cnt[8]~30_combout\,
	cout => \square_wave_generator_inst|tone_cnt[8]~31\);

-- Location: FF_X112_Y43_N21
\square_wave_generator_inst|tone_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[8]~30_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(8));

-- Location: LCCOMB_X112_Y43_N22
\square_wave_generator_inst|tone_cnt[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[9]~32_combout\ = (\square_wave_generator_inst|tone_cnt\(9) & (!\square_wave_generator_inst|tone_cnt[8]~31\)) # (!\square_wave_generator_inst|tone_cnt\(9) & ((\square_wave_generator_inst|tone_cnt[8]~31\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[9]~33\ = CARRY((!\square_wave_generator_inst|tone_cnt[8]~31\) # (!\square_wave_generator_inst|tone_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(9),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[8]~31\,
	combout => \square_wave_generator_inst|tone_cnt[9]~32_combout\,
	cout => \square_wave_generator_inst|tone_cnt[9]~33\);

-- Location: FF_X112_Y43_N23
\square_wave_generator_inst|tone_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[9]~32_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(9));

-- Location: LCCOMB_X112_Y43_N24
\square_wave_generator_inst|tone_cnt[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[10]~34_combout\ = (\square_wave_generator_inst|tone_cnt\(10) & (\square_wave_generator_inst|tone_cnt[9]~33\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(10) & (!\square_wave_generator_inst|tone_cnt[9]~33\ & 
-- VCC))
-- \square_wave_generator_inst|tone_cnt[10]~35\ = CARRY((\square_wave_generator_inst|tone_cnt\(10) & !\square_wave_generator_inst|tone_cnt[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(10),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[9]~33\,
	combout => \square_wave_generator_inst|tone_cnt[10]~34_combout\,
	cout => \square_wave_generator_inst|tone_cnt[10]~35\);

-- Location: FF_X112_Y43_N25
\square_wave_generator_inst|tone_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[10]~34_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(10));

-- Location: LCCOMB_X112_Y43_N26
\square_wave_generator_inst|tone_cnt[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[11]~36_combout\ = (\square_wave_generator_inst|tone_cnt\(11) & (!\square_wave_generator_inst|tone_cnt[10]~35\)) # (!\square_wave_generator_inst|tone_cnt\(11) & ((\square_wave_generator_inst|tone_cnt[10]~35\) # (GND)))
-- \square_wave_generator_inst|tone_cnt[11]~37\ = CARRY((!\square_wave_generator_inst|tone_cnt[10]~35\) # (!\square_wave_generator_inst|tone_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(11),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[10]~35\,
	combout => \square_wave_generator_inst|tone_cnt[11]~36_combout\,
	cout => \square_wave_generator_inst|tone_cnt[11]~37\);

-- Location: FF_X112_Y43_N27
\square_wave_generator_inst|tone_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[11]~36_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(11));

-- Location: LCCOMB_X112_Y43_N28
\square_wave_generator_inst|tone_cnt[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[12]~38_combout\ = (\square_wave_generator_inst|tone_cnt\(12) & (\square_wave_generator_inst|tone_cnt[11]~37\ $ (GND))) # (!\square_wave_generator_inst|tone_cnt\(12) & (!\square_wave_generator_inst|tone_cnt[11]~37\ & 
-- VCC))
-- \square_wave_generator_inst|tone_cnt[12]~39\ = CARRY((\square_wave_generator_inst|tone_cnt\(12) & !\square_wave_generator_inst|tone_cnt[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \square_wave_generator_inst|tone_cnt\(12),
	datad => VCC,
	cin => \square_wave_generator_inst|tone_cnt[11]~37\,
	combout => \square_wave_generator_inst|tone_cnt[12]~38_combout\,
	cout => \square_wave_generator_inst|tone_cnt[12]~39\);

-- Location: FF_X112_Y43_N29
\square_wave_generator_inst|tone_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[12]~38_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(12));

-- Location: LCCOMB_X112_Y43_N30
\square_wave_generator_inst|tone_cnt[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|tone_cnt[13]~40_combout\ = \square_wave_generator_inst|tone_cnt\(13) $ (\square_wave_generator_inst|tone_cnt[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(13),
	cin => \square_wave_generator_inst|tone_cnt[12]~39\,
	combout => \square_wave_generator_inst|tone_cnt[13]~40_combout\);

-- Location: FF_X112_Y43_N31
\square_wave_generator_inst|tone_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|tone_cnt[13]~40_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sclr => \square_wave_generator_inst|tone_cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|tone_cnt\(13));

-- Location: LCCOMB_X111_Y43_N0
\square_wave_generator_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~1_cout\ = CARRY((!\square_wave_generator_inst|tone_cnt\(0) & \square_wave_generator_inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(0),
	datab => \square_wave_generator_inst|Add0~0_combout\,
	datad => VCC,
	cout => \square_wave_generator_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X111_Y43_N2
\square_wave_generator_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~3_cout\ = CARRY((\square_wave_generator_inst|tone_cnt\(1) & ((!\square_wave_generator_inst|LessThan0~1_cout\) # (!\square_wave_generator_inst|Add0~2_combout\))) # (!\square_wave_generator_inst|tone_cnt\(1) & 
-- (!\square_wave_generator_inst|Add0~2_combout\ & !\square_wave_generator_inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(1),
	datab => \square_wave_generator_inst|Add0~2_combout\,
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~1_cout\,
	cout => \square_wave_generator_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X111_Y43_N4
\square_wave_generator_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~5_cout\ = CARRY((\square_wave_generator_inst|Add0~4_combout\ & ((!\square_wave_generator_inst|LessThan0~3_cout\) # (!\square_wave_generator_inst|tone_cnt\(2)))) # (!\square_wave_generator_inst|Add0~4_combout\ & 
-- (!\square_wave_generator_inst|tone_cnt\(2) & !\square_wave_generator_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~4_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(2),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~3_cout\,
	cout => \square_wave_generator_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X111_Y43_N6
\square_wave_generator_inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~7_cout\ = CARRY((\square_wave_generator_inst|Add0~6_combout\ & (\square_wave_generator_inst|tone_cnt\(3) & !\square_wave_generator_inst|LessThan0~5_cout\)) # (!\square_wave_generator_inst|Add0~6_combout\ & 
-- ((\square_wave_generator_inst|tone_cnt\(3)) # (!\square_wave_generator_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~6_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(3),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~5_cout\,
	cout => \square_wave_generator_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X111_Y43_N8
\square_wave_generator_inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~9_cout\ = CARRY((\square_wave_generator_inst|Add0~8_combout\ & ((!\square_wave_generator_inst|LessThan0~7_cout\) # (!\square_wave_generator_inst|tone_cnt\(4)))) # (!\square_wave_generator_inst|Add0~8_combout\ & 
-- (!\square_wave_generator_inst|tone_cnt\(4) & !\square_wave_generator_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~8_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(4),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~7_cout\,
	cout => \square_wave_generator_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X111_Y43_N10
\square_wave_generator_inst|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~11_cout\ = CARRY((\square_wave_generator_inst|Add0~10_combout\ & (\square_wave_generator_inst|tone_cnt\(5) & !\square_wave_generator_inst|LessThan0~9_cout\)) # (!\square_wave_generator_inst|Add0~10_combout\ & 
-- ((\square_wave_generator_inst|tone_cnt\(5)) # (!\square_wave_generator_inst|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~10_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(5),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~9_cout\,
	cout => \square_wave_generator_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X111_Y43_N12
\square_wave_generator_inst|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~13_cout\ = CARRY((\square_wave_generator_inst|Add0~12_combout\ & ((!\square_wave_generator_inst|LessThan0~11_cout\) # (!\square_wave_generator_inst|tone_cnt\(6)))) # (!\square_wave_generator_inst|Add0~12_combout\ & 
-- (!\square_wave_generator_inst|tone_cnt\(6) & !\square_wave_generator_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~12_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(6),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~11_cout\,
	cout => \square_wave_generator_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X111_Y43_N14
\square_wave_generator_inst|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~15_cout\ = CARRY((\square_wave_generator_inst|Add0~14_combout\ & (\square_wave_generator_inst|tone_cnt\(7) & !\square_wave_generator_inst|LessThan0~13_cout\)) # (!\square_wave_generator_inst|Add0~14_combout\ & 
-- ((\square_wave_generator_inst|tone_cnt\(7)) # (!\square_wave_generator_inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~14_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(7),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~13_cout\,
	cout => \square_wave_generator_inst|LessThan0~15_cout\);

-- Location: LCCOMB_X111_Y43_N16
\square_wave_generator_inst|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~17_cout\ = CARRY((\square_wave_generator_inst|tone_cnt\(8) & (\square_wave_generator_inst|Add0~16_combout\ & !\square_wave_generator_inst|LessThan0~15_cout\)) # (!\square_wave_generator_inst|tone_cnt\(8) & 
-- ((\square_wave_generator_inst|Add0~16_combout\) # (!\square_wave_generator_inst|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(8),
	datab => \square_wave_generator_inst|Add0~16_combout\,
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~15_cout\,
	cout => \square_wave_generator_inst|LessThan0~17_cout\);

-- Location: LCCOMB_X111_Y43_N18
\square_wave_generator_inst|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~19_cout\ = CARRY((\square_wave_generator_inst|Add0~18_combout\ & (\square_wave_generator_inst|tone_cnt\(9) & !\square_wave_generator_inst|LessThan0~17_cout\)) # (!\square_wave_generator_inst|Add0~18_combout\ & 
-- ((\square_wave_generator_inst|tone_cnt\(9)) # (!\square_wave_generator_inst|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~18_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(9),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~17_cout\,
	cout => \square_wave_generator_inst|LessThan0~19_cout\);

-- Location: LCCOMB_X111_Y43_N20
\square_wave_generator_inst|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~21_cout\ = CARRY((\square_wave_generator_inst|tone_cnt\(10) & (\square_wave_generator_inst|Add0~20_combout\ & !\square_wave_generator_inst|LessThan0~19_cout\)) # (!\square_wave_generator_inst|tone_cnt\(10) & 
-- ((\square_wave_generator_inst|Add0~20_combout\) # (!\square_wave_generator_inst|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(10),
	datab => \square_wave_generator_inst|Add0~20_combout\,
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~19_cout\,
	cout => \square_wave_generator_inst|LessThan0~21_cout\);

-- Location: LCCOMB_X111_Y43_N22
\square_wave_generator_inst|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~23_cout\ = CARRY((\square_wave_generator_inst|Add0~22_combout\ & (\square_wave_generator_inst|tone_cnt\(11) & !\square_wave_generator_inst|LessThan0~21_cout\)) # (!\square_wave_generator_inst|Add0~22_combout\ & 
-- ((\square_wave_generator_inst|tone_cnt\(11)) # (!\square_wave_generator_inst|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~22_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(11),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~21_cout\,
	cout => \square_wave_generator_inst|LessThan0~23_cout\);

-- Location: LCCOMB_X111_Y43_N24
\square_wave_generator_inst|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~25_cout\ = CARRY((\square_wave_generator_inst|Add0~24_combout\ & ((!\square_wave_generator_inst|LessThan0~23_cout\) # (!\square_wave_generator_inst|tone_cnt\(12)))) # (!\square_wave_generator_inst|Add0~24_combout\ & 
-- (!\square_wave_generator_inst|tone_cnt\(12) & !\square_wave_generator_inst|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Add0~24_combout\,
	datab => \square_wave_generator_inst|tone_cnt\(12),
	datad => VCC,
	cin => \square_wave_generator_inst|LessThan0~23_cout\,
	cout => \square_wave_generator_inst|LessThan0~25_cout\);

-- Location: LCCOMB_X111_Y43_N26
\square_wave_generator_inst|LessThan0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|LessThan0~26_combout\ = (\square_wave_generator_inst|tone_cnt\(13) & (\square_wave_generator_inst|Add0~26_combout\ & \square_wave_generator_inst|LessThan0~25_cout\)) # (!\square_wave_generator_inst|tone_cnt\(13) & 
-- ((\square_wave_generator_inst|Add0~26_combout\) # (\square_wave_generator_inst|LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|tone_cnt\(13),
	datab => \square_wave_generator_inst|Add0~26_combout\,
	cin => \square_wave_generator_inst|LessThan0~25_cout\,
	combout => \square_wave_generator_inst|LessThan0~26_combout\);

-- Location: LCCOMB_X112_Y43_N0
\square_wave_generator_inst|square_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \square_wave_generator_inst|square_sig~0_combout\ = (!\square_wave_generator_inst|Equal0~0_combout\ & (\square_wave_generator_inst|square_sig~q\ $ (((\square_wave_generator_inst|Add0~28_combout\) # (!\square_wave_generator_inst|LessThan0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|LessThan0~26_combout\,
	datab => \square_wave_generator_inst|Add0~28_combout\,
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \square_wave_generator_inst|Equal0~0_combout\,
	combout => \square_wave_generator_inst|square_sig~0_combout\);

-- Location: FF_X112_Y43_N1
\square_wave_generator_inst|square_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \square_wave_generator_inst|square_sig~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \square_wave_generator_inst|square_sig~q\);

-- Location: LCCOMB_X113_Y37_N4
\wm8731_inst|s_lrswitch[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[0]~12_combout\ = \wm8731_inst|s_lrswitch\(0) $ (VCC)
-- \wm8731_inst|s_lrswitch[0]~13\ = CARRY(\wm8731_inst|s_lrswitch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(0),
	datad => VCC,
	combout => \wm8731_inst|s_lrswitch[0]~12_combout\,
	cout => \wm8731_inst|s_lrswitch[0]~13\);

-- Location: LCCOMB_X113_Y37_N28
\wm8731_inst|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal6~0_combout\ = (((!\wm8731_inst|s_lrswitch\(1)) # (!\wm8731_inst|s_lrswitch\(0))) # (!\wm8731_inst|s_lrswitch\(2))) # (!\wm8731_inst|s_lrswitch\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(3),
	datab => \wm8731_inst|s_lrswitch\(2),
	datac => \wm8731_inst|s_lrswitch\(0),
	datad => \wm8731_inst|s_lrswitch\(1),
	combout => \wm8731_inst|Equal6~0_combout\);

-- Location: LCCOMB_X114_Y37_N28
\wm8731_inst|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal6~1_combout\ = (((!\wm8731_inst|s_lrswitch\(5)) # (!\wm8731_inst|s_lrswitch\(6))) # (!\wm8731_inst|s_lrswitch\(8))) # (!\wm8731_inst|s_lrswitch\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(4),
	datab => \wm8731_inst|s_lrswitch\(8),
	datac => \wm8731_inst|s_lrswitch\(6),
	datad => \wm8731_inst|s_lrswitch\(5),
	combout => \wm8731_inst|Equal6~1_combout\);

-- Location: LCCOMB_X113_Y37_N2
\wm8731_inst|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal6~2_combout\ = (\wm8731_inst|Equal6~0_combout\) # ((\wm8731_inst|Equal6~1_combout\) # (!\wm8731_inst|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|Equal6~0_combout\,
	datac => \wm8731_inst|Equal7~0_combout\,
	datad => \wm8731_inst|Equal6~1_combout\,
	combout => \wm8731_inst|Equal6~2_combout\);

-- Location: LCCOMB_X114_Y37_N26
\wm8731_inst|s_lrswitch[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[11]~28_combout\ = (\wm8731_inst|Equal7~3_combout\) # ((!\wm8731_inst|Equal6~1_combout\ & (!\wm8731_inst|Equal6~0_combout\ & \wm8731_inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|Equal6~1_combout\,
	datab => \wm8731_inst|Equal6~0_combout\,
	datac => \wm8731_inst|Equal7~3_combout\,
	datad => \wm8731_inst|Equal7~0_combout\,
	combout => \wm8731_inst|s_lrswitch[11]~28_combout\);

-- Location: FF_X113_Y37_N5
\wm8731_inst|s_lrswitch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[0]~12_combout\,
	asdata => \wm8731_inst|Equal6~2_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(0));

-- Location: LCCOMB_X113_Y37_N6
\wm8731_inst|s_lrswitch[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[1]~14_combout\ = (\wm8731_inst|s_lrswitch\(1) & (!\wm8731_inst|s_lrswitch[0]~13\)) # (!\wm8731_inst|s_lrswitch\(1) & ((\wm8731_inst|s_lrswitch[0]~13\) # (GND)))
-- \wm8731_inst|s_lrswitch[1]~15\ = CARRY((!\wm8731_inst|s_lrswitch[0]~13\) # (!\wm8731_inst|s_lrswitch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(1),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[0]~13\,
	combout => \wm8731_inst|s_lrswitch[1]~14_combout\,
	cout => \wm8731_inst|s_lrswitch[1]~15\);

-- Location: LCCOMB_X112_Y37_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X113_Y37_N7
\wm8731_inst|s_lrswitch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[1]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(1));

-- Location: LCCOMB_X113_Y37_N8
\wm8731_inst|s_lrswitch[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[2]~16_combout\ = (\wm8731_inst|s_lrswitch\(2) & (\wm8731_inst|s_lrswitch[1]~15\ $ (GND))) # (!\wm8731_inst|s_lrswitch\(2) & (!\wm8731_inst|s_lrswitch[1]~15\ & VCC))
-- \wm8731_inst|s_lrswitch[2]~17\ = CARRY((\wm8731_inst|s_lrswitch\(2) & !\wm8731_inst|s_lrswitch[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(2),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[1]~15\,
	combout => \wm8731_inst|s_lrswitch[2]~16_combout\,
	cout => \wm8731_inst|s_lrswitch[2]~17\);

-- Location: FF_X113_Y37_N9
\wm8731_inst|s_lrswitch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[2]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(2));

-- Location: LCCOMB_X113_Y37_N10
\wm8731_inst|s_lrswitch[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[3]~18_combout\ = (\wm8731_inst|s_lrswitch\(3) & (!\wm8731_inst|s_lrswitch[2]~17\)) # (!\wm8731_inst|s_lrswitch\(3) & ((\wm8731_inst|s_lrswitch[2]~17\) # (GND)))
-- \wm8731_inst|s_lrswitch[3]~19\ = CARRY((!\wm8731_inst|s_lrswitch[2]~17\) # (!\wm8731_inst|s_lrswitch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(3),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[2]~17\,
	combout => \wm8731_inst|s_lrswitch[3]~18_combout\,
	cout => \wm8731_inst|s_lrswitch[3]~19\);

-- Location: FF_X113_Y37_N11
\wm8731_inst|s_lrswitch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[3]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(3));

-- Location: LCCOMB_X113_Y37_N12
\wm8731_inst|s_lrswitch[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[4]~20_combout\ = (\wm8731_inst|s_lrswitch\(4) & (\wm8731_inst|s_lrswitch[3]~19\ $ (GND))) # (!\wm8731_inst|s_lrswitch\(4) & (!\wm8731_inst|s_lrswitch[3]~19\ & VCC))
-- \wm8731_inst|s_lrswitch[4]~21\ = CARRY((\wm8731_inst|s_lrswitch\(4) & !\wm8731_inst|s_lrswitch[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(4),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[3]~19\,
	combout => \wm8731_inst|s_lrswitch[4]~20_combout\,
	cout => \wm8731_inst|s_lrswitch[4]~21\);

-- Location: FF_X113_Y37_N13
\wm8731_inst|s_lrswitch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[4]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(4));

-- Location: LCCOMB_X113_Y37_N14
\wm8731_inst|s_lrswitch[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[5]~22_combout\ = (\wm8731_inst|s_lrswitch\(5) & (!\wm8731_inst|s_lrswitch[4]~21\)) # (!\wm8731_inst|s_lrswitch\(5) & ((\wm8731_inst|s_lrswitch[4]~21\) # (GND)))
-- \wm8731_inst|s_lrswitch[5]~23\ = CARRY((!\wm8731_inst|s_lrswitch[4]~21\) # (!\wm8731_inst|s_lrswitch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(5),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[4]~21\,
	combout => \wm8731_inst|s_lrswitch[5]~22_combout\,
	cout => \wm8731_inst|s_lrswitch[5]~23\);

-- Location: FF_X113_Y37_N15
\wm8731_inst|s_lrswitch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[5]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(5));

-- Location: LCCOMB_X113_Y37_N16
\wm8731_inst|s_lrswitch[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[6]~24_combout\ = (\wm8731_inst|s_lrswitch\(6) & (\wm8731_inst|s_lrswitch[5]~23\ $ (GND))) # (!\wm8731_inst|s_lrswitch\(6) & (!\wm8731_inst|s_lrswitch[5]~23\ & VCC))
-- \wm8731_inst|s_lrswitch[6]~25\ = CARRY((\wm8731_inst|s_lrswitch\(6) & !\wm8731_inst|s_lrswitch[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(6),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[5]~23\,
	combout => \wm8731_inst|s_lrswitch[6]~24_combout\,
	cout => \wm8731_inst|s_lrswitch[6]~25\);

-- Location: FF_X113_Y37_N17
\wm8731_inst|s_lrswitch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[6]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(6));

-- Location: LCCOMB_X113_Y37_N18
\wm8731_inst|s_lrswitch[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[7]~26_combout\ = (\wm8731_inst|s_lrswitch\(7) & (!\wm8731_inst|s_lrswitch[6]~25\)) # (!\wm8731_inst|s_lrswitch\(7) & ((\wm8731_inst|s_lrswitch[6]~25\) # (GND)))
-- \wm8731_inst|s_lrswitch[7]~27\ = CARRY((!\wm8731_inst|s_lrswitch[6]~25\) # (!\wm8731_inst|s_lrswitch\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(7),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[6]~25\,
	combout => \wm8731_inst|s_lrswitch[7]~26_combout\,
	cout => \wm8731_inst|s_lrswitch[7]~27\);

-- Location: FF_X113_Y37_N19
\wm8731_inst|s_lrswitch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[7]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(7));

-- Location: LCCOMB_X113_Y37_N20
\wm8731_inst|s_lrswitch[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[8]~29_combout\ = (\wm8731_inst|s_lrswitch\(8) & (\wm8731_inst|s_lrswitch[7]~27\ $ (GND))) # (!\wm8731_inst|s_lrswitch\(8) & (!\wm8731_inst|s_lrswitch[7]~27\ & VCC))
-- \wm8731_inst|s_lrswitch[8]~30\ = CARRY((\wm8731_inst|s_lrswitch\(8) & !\wm8731_inst|s_lrswitch[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(8),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[7]~27\,
	combout => \wm8731_inst|s_lrswitch[8]~29_combout\,
	cout => \wm8731_inst|s_lrswitch[8]~30\);

-- Location: FF_X113_Y37_N21
\wm8731_inst|s_lrswitch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[8]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(8));

-- Location: LCCOMB_X113_Y37_N22
\wm8731_inst|s_lrswitch[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[9]~31_combout\ = (\wm8731_inst|s_lrswitch\(9) & (!\wm8731_inst|s_lrswitch[8]~30\)) # (!\wm8731_inst|s_lrswitch\(9) & ((\wm8731_inst|s_lrswitch[8]~30\) # (GND)))
-- \wm8731_inst|s_lrswitch[9]~32\ = CARRY((!\wm8731_inst|s_lrswitch[8]~30\) # (!\wm8731_inst|s_lrswitch\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(9),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[8]~30\,
	combout => \wm8731_inst|s_lrswitch[9]~31_combout\,
	cout => \wm8731_inst|s_lrswitch[9]~32\);

-- Location: FF_X113_Y37_N23
\wm8731_inst|s_lrswitch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[9]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(9));

-- Location: LCCOMB_X113_Y37_N24
\wm8731_inst|s_lrswitch[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[10]~33_combout\ = (\wm8731_inst|s_lrswitch\(10) & (\wm8731_inst|s_lrswitch[9]~32\ $ (GND))) # (!\wm8731_inst|s_lrswitch\(10) & (!\wm8731_inst|s_lrswitch[9]~32\ & VCC))
-- \wm8731_inst|s_lrswitch[10]~34\ = CARRY((\wm8731_inst|s_lrswitch\(10) & !\wm8731_inst|s_lrswitch[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|s_lrswitch\(10),
	datad => VCC,
	cin => \wm8731_inst|s_lrswitch[9]~32\,
	combout => \wm8731_inst|s_lrswitch[10]~33_combout\,
	cout => \wm8731_inst|s_lrswitch[10]~34\);

-- Location: FF_X113_Y37_N25
\wm8731_inst|s_lrswitch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[10]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(10));

-- Location: LCCOMB_X113_Y37_N26
\wm8731_inst|s_lrswitch[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_lrswitch[11]~35_combout\ = \wm8731_inst|s_lrswitch\(11) $ (\wm8731_inst|s_lrswitch[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(11),
	cin => \wm8731_inst|s_lrswitch[10]~34\,
	combout => \wm8731_inst|s_lrswitch[11]~35_combout\);

-- Location: FF_X113_Y37_N27
\wm8731_inst|s_lrswitch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_lrswitch[11]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	sload => \wm8731_inst|s_lrswitch[11]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_lrswitch\(11));

-- Location: LCCOMB_X113_Y37_N30
\wm8731_inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal7~0_combout\ = (!\wm8731_inst|s_lrswitch\(11) & (!\wm8731_inst|s_lrswitch\(7) & (!\wm8731_inst|s_lrswitch\(9) & !\wm8731_inst|s_lrswitch\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(11),
	datab => \wm8731_inst|s_lrswitch\(7),
	datac => \wm8731_inst|s_lrswitch\(9),
	datad => \wm8731_inst|s_lrswitch\(10),
	combout => \wm8731_inst|Equal7~0_combout\);

-- Location: LCCOMB_X114_Y37_N30
\wm8731_inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal7~2_combout\ = (!\wm8731_inst|s_lrswitch\(4) & (!\wm8731_inst|s_lrswitch\(8) & (!\wm8731_inst|s_lrswitch\(6) & !\wm8731_inst|s_lrswitch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(4),
	datab => \wm8731_inst|s_lrswitch\(8),
	datac => \wm8731_inst|s_lrswitch\(6),
	datad => \wm8731_inst|s_lrswitch\(5),
	combout => \wm8731_inst|Equal7~2_combout\);

-- Location: LCCOMB_X114_Y37_N0
\wm8731_inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal7~1_combout\ = (!\wm8731_inst|s_lrswitch\(3) & (!\wm8731_inst|s_lrswitch\(1) & (!\wm8731_inst|s_lrswitch\(0) & !\wm8731_inst|s_lrswitch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_lrswitch\(3),
	datab => \wm8731_inst|s_lrswitch\(1),
	datac => \wm8731_inst|s_lrswitch\(0),
	datad => \wm8731_inst|s_lrswitch\(2),
	combout => \wm8731_inst|Equal7~1_combout\);

-- Location: LCCOMB_X114_Y37_N24
\wm8731_inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|Equal7~3_combout\ = (\wm8731_inst|Equal7~0_combout\ & (\wm8731_inst|Equal7~2_combout\ & \wm8731_inst|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731_inst|Equal7~0_combout\,
	datac => \wm8731_inst|Equal7~2_combout\,
	datad => \wm8731_inst|Equal7~1_combout\,
	combout => \wm8731_inst|Equal7~3_combout\);

-- Location: LCCOMB_X110_Y40_N6
\wm8731_inst|s_din~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~31_combout\ = (\square_wave_generator_inst|square_sig~q\ & (\wm8731_inst|Equal7~3_combout\ & ((!\square_wave_generator_inst|Equal0~1_combout\) # (!\keys_top[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys_top[3]~input_o\,
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~1_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~31_combout\);

-- Location: FF_X110_Y40_N7
\wm8731_inst|s_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~31_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(0));

-- Location: LCCOMB_X110_Y40_N28
\wm8731_inst|s_din~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~30_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(0),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~30_combout\);

-- Location: FF_X110_Y40_N29
\wm8731_inst|s_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~30_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(1));

-- Location: LCCOMB_X110_Y40_N14
\wm8731_inst|s_din~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~29_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(1),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~29_combout\);

-- Location: FF_X110_Y40_N15
\wm8731_inst|s_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~29_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(2));

-- Location: LCCOMB_X111_Y40_N10
\wm8731_inst|s_din~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~28_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(2),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~28_combout\);

-- Location: FF_X111_Y40_N11
\wm8731_inst|s_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~28_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(3));

-- Location: LCCOMB_X111_Y40_N12
\wm8731_inst|s_din~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~27_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(3),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~27_combout\);

-- Location: FF_X111_Y40_N13
\wm8731_inst|s_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~27_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(4));

-- Location: LCCOMB_X111_Y40_N6
\wm8731_inst|s_din~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~26_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(4),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~26_combout\);

-- Location: FF_X111_Y40_N7
\wm8731_inst|s_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~26_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(5));

-- Location: LCCOMB_X111_Y40_N0
\wm8731_inst|s_din~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~25_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(5),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~25_combout\);

-- Location: FF_X111_Y40_N1
\wm8731_inst|s_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~25_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(6));

-- Location: LCCOMB_X111_Y40_N22
\wm8731_inst|s_din~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~24_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(6),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~24_combout\);

-- Location: FF_X111_Y40_N23
\wm8731_inst|s_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~24_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(7));

-- Location: LCCOMB_X111_Y40_N20
\wm8731_inst|s_din~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~23_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(7),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~23_combout\);

-- Location: FF_X111_Y40_N21
\wm8731_inst|s_din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~23_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(8));

-- Location: LCCOMB_X111_Y40_N26
\wm8731_inst|s_din~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~22_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(8),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~22_combout\);

-- Location: FF_X111_Y40_N27
\wm8731_inst|s_din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~22_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(9));

-- Location: LCCOMB_X111_Y40_N4
\wm8731_inst|s_din~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~21_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(9),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~21_combout\);

-- Location: FF_X111_Y40_N5
\wm8731_inst|s_din[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~21_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(10));

-- Location: LCCOMB_X111_Y40_N18
\wm8731_inst|s_din~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~20_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(10),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~20_combout\);

-- Location: FF_X111_Y40_N19
\wm8731_inst|s_din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~20_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(11));

-- Location: LCCOMB_X111_Y40_N16
\wm8731_inst|s_din~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~19_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(11),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~19_combout\);

-- Location: FF_X111_Y40_N17
\wm8731_inst|s_din[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~19_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(12));

-- Location: LCCOMB_X111_Y40_N2
\wm8731_inst|s_din~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~18_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(12),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~18_combout\);

-- Location: FF_X111_Y40_N3
\wm8731_inst|s_din[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~18_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(13));

-- Location: LCCOMB_X111_Y40_N8
\wm8731_inst|s_din~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~17_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(13),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~17_combout\);

-- Location: FF_X111_Y40_N9
\wm8731_inst|s_din[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~17_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(14));

-- Location: LCCOMB_X111_Y40_N14
\wm8731_inst|s_din~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~16_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((!\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(14),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~16_combout\);

-- Location: FF_X111_Y40_N15
\wm8731_inst|s_din[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~16_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(15));

-- Location: LCCOMB_X111_Y40_N28
\wm8731_inst|s_din~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~15_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(15),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~15_combout\);

-- Location: FF_X111_Y40_N29
\wm8731_inst|s_din[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~15_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(16));

-- Location: LCCOMB_X111_Y40_N30
\wm8731_inst|s_din~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~14_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(16),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~14_combout\);

-- Location: FF_X111_Y40_N31
\wm8731_inst|s_din[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~14_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(17));

-- Location: LCCOMB_X111_Y40_N24
\wm8731_inst|s_din~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~13_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & (\square_wave_generator_inst|square_sig~q\))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \wm8731_inst|s_din\(17),
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~13_combout\);

-- Location: FF_X111_Y40_N25
\wm8731_inst|s_din[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~13_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(18));

-- Location: LCCOMB_X110_Y40_N8
\wm8731_inst|s_din~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~12_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(18),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~12_combout\);

-- Location: FF_X110_Y40_N9
\wm8731_inst|s_din[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~12_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(19));

-- Location: LCCOMB_X110_Y40_N2
\wm8731_inst|s_din~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~11_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(19),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~11_combout\);

-- Location: FF_X110_Y40_N3
\wm8731_inst|s_din[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~11_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(20));

-- Location: LCCOMB_X110_Y40_N4
\wm8731_inst|s_din~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~10_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(20),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~10_combout\);

-- Location: FF_X110_Y40_N5
\wm8731_inst|s_din[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~10_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(21));

-- Location: LCCOMB_X110_Y40_N26
\wm8731_inst|s_din~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~9_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(21),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~9_combout\);

-- Location: FF_X110_Y40_N27
\wm8731_inst|s_din[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~9_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(22));

-- Location: LCCOMB_X110_Y40_N12
\wm8731_inst|s_din~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~8_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(22),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~8_combout\);

-- Location: FF_X110_Y40_N13
\wm8731_inst|s_din[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~8_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(23));

-- Location: LCCOMB_X110_Y40_N18
\wm8731_inst|s_din~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~7_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(23),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~7_combout\);

-- Location: FF_X110_Y40_N19
\wm8731_inst|s_din[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~7_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(24));

-- Location: LCCOMB_X110_Y40_N0
\wm8731_inst|s_din~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~6_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(24),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~6_combout\);

-- Location: FF_X110_Y40_N1
\wm8731_inst|s_din[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~6_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(25));

-- Location: LCCOMB_X110_Y40_N30
\wm8731_inst|s_din~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~5_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(25),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~5_combout\);

-- Location: FF_X110_Y40_N31
\wm8731_inst|s_din[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~5_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(26));

-- Location: LCCOMB_X110_Y40_N20
\wm8731_inst|s_din~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~4_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(26),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~4_combout\);

-- Location: FF_X110_Y40_N21
\wm8731_inst|s_din[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~4_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(27));

-- Location: LCCOMB_X110_Y40_N10
\wm8731_inst|s_din~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~3_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(27),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~3_combout\);

-- Location: FF_X110_Y40_N11
\wm8731_inst|s_din[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~3_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(28));

-- Location: LCCOMB_X110_Y40_N16
\wm8731_inst|s_din~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~2_combout\ = (\wm8731_inst|Equal7~3_combout\ & (((\square_wave_generator_inst|square_sig~q\ & !\square_wave_generator_inst|Equal0~0_combout\)))) # (!\wm8731_inst|Equal7~3_combout\ & (\wm8731_inst|s_din\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731_inst|s_din\(28),
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \square_wave_generator_inst|Equal0~0_combout\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~2_combout\);

-- Location: FF_X110_Y40_N17
\wm8731_inst|s_din[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~2_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(29));

-- Location: LCCOMB_X110_Y40_N22
\wm8731_inst|s_din~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~1_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & ((\square_wave_generator_inst|square_sig~q\)))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \wm8731_inst|s_din\(29),
	datac => \square_wave_generator_inst|square_sig~q\,
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~1_combout\);

-- Location: FF_X110_Y40_N23
\wm8731_inst|s_din[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~1_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(30));

-- Location: LCCOMB_X110_Y40_N24
\wm8731_inst|s_din~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|s_din~0_combout\ = (\wm8731_inst|Equal7~3_combout\ & (!\square_wave_generator_inst|Equal0~0_combout\ & (!\square_wave_generator_inst|square_sig~q\))) # (!\wm8731_inst|Equal7~3_combout\ & (((\wm8731_inst|s_din\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \square_wave_generator_inst|Equal0~0_combout\,
	datab => \square_wave_generator_inst|square_sig~q\,
	datac => \wm8731_inst|s_din\(30),
	datad => \wm8731_inst|Equal7~3_combout\,
	combout => \wm8731_inst|s_din~0_combout\);

-- Location: FF_X110_Y40_N25
\wm8731_inst|s_din[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|s_din~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	ena => \wm8731_inst|Equal6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|s_din\(31));

-- Location: LCCOMB_X113_Y37_N0
\wm8731_inst|aud_daclrck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731_inst|aud_daclrck~0_combout\ = !\wm8731_inst|Equal6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wm8731_inst|Equal6~2_combout\,
	combout => \wm8731_inst|aud_daclrck~0_combout\);

-- Location: FF_X113_Y37_N1
\wm8731_inst|aud_daclrck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL_WM8731_inst|audio_pll_0|audio_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \wm8731_inst|aud_daclrck~0_combout\,
	clrn => \ALT_INV_rst_top~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731_inst|aud_daclrck~q\);
END structure;


