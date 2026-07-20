-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/06/2026 16:18:08"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	switch_echo : IN std_logic;
	audio_sel : IN std_logic;
	led_echo : OUT std_logic;
	led_audio_sel : OUT std_logic;
	led_keys : OUT std_logic_vector(3 DOWNTO 0);
	led_key_signal : OUT std_logic;
	i2c_sdat : OUT std_logic;
	i2c_sclk : OUT std_logic;
	aud_xck : OUT std_logic;
	aud_bclk : OUT std_logic;
	aud_dacdat : OUT std_logic;
	aud_daclrck : OUT std_logic;
	keys : IN std_logic_vector(3 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- led_echo	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_audio_sel	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_keys[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_keys[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_keys[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_keys[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_key_signal	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sdat	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2c_sclk	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_xck	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_bclk	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_dacdat	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aud_daclrck	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_echo	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- audio_sel	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_switch_echo : std_logic;
SIGNAL ww_audio_sel : std_logic;
SIGNAL ww_led_echo : std_logic;
SIGNAL ww_led_audio_sel : std_logic;
SIGNAL ww_led_keys : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_key_signal : std_logic;
SIGNAL ww_i2c_sdat : std_logic;
SIGNAL ww_i2c_sclk : std_logic;
SIGNAL ww_aud_xck : std_logic;
SIGNAL ww_aud_bclk : std_logic;
SIGNAL ww_aud_dacdat : std_logic;
SIGNAL ww_aud_daclrck : std_logic;
SIGNAL ww_keys : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_18MHz|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \wm8731|i2c_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk_18MHz|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731|Add0~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_clkdiv~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \wm8731|Add0~1\ : std_logic;
SIGNAL \wm8731|Add0~2_combout\ : std_logic;
SIGNAL \wm8731|i2c_clkdiv~1_combout\ : std_logic;
SIGNAL \wm8731|Add0~3\ : std_logic;
SIGNAL \wm8731|Add0~4_combout\ : std_logic;
SIGNAL \wm8731|Add0~5\ : std_logic;
SIGNAL \wm8731|Add0~6_combout\ : std_logic;
SIGNAL \wm8731|Add0~7\ : std_logic;
SIGNAL \wm8731|Add0~8_combout\ : std_logic;
SIGNAL \wm8731|i2c_clkdiv~0_combout\ : std_logic;
SIGNAL \wm8731|Add0~9\ : std_logic;
SIGNAL \wm8731|Add0~10_combout\ : std_logic;
SIGNAL \wm8731|Equal0~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_clk~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_clk~q\ : std_logic;
SIGNAL \wm8731|i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[0]~6_combout\ : std_logic;
SIGNAL \wm8731|i2c_seq~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[3]~3_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[0]~7_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[0]~8_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[1]~5_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[1]~6_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[2]~9_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[2]~10_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[3]~11_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[3]~2_combout\ : std_logic;
SIGNAL \wm8731|i2c_wordcnt[3]~4_combout\ : std_logic;
SIGNAL \wm8731|Equal1~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[4]~5_combout\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[0]~7\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[1]~8_combout\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[1]~9\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[2]~10_combout\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[2]~11\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[3]~12_combout\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[3]~13\ : std_logic;
SIGNAL \wm8731|i2c_bitcnt[4]~14_combout\ : std_logic;
SIGNAL \wm8731|Mux8~3_combout\ : std_logic;
SIGNAL \wm8731|Mux8~2_combout\ : std_logic;
SIGNAL \wm8731|Mux8~4_combout\ : std_logic;
SIGNAL \wm8731|Mux8~5_combout\ : std_logic;
SIGNAL \wm8731|Mux8~6_combout\ : std_logic;
SIGNAL \wm8731|Mux8~9_combout\ : std_logic;
SIGNAL \wm8731|Mux8~13_combout\ : std_logic;
SIGNAL \wm8731|Mux8~7_combout\ : std_logic;
SIGNAL \wm8731|Mux8~10_combout\ : std_logic;
SIGNAL \wm8731|Mux8~8_combout\ : std_logic;
SIGNAL \wm8731|Mux8~11_combout\ : std_logic;
SIGNAL \wm8731|Mux8~12_combout\ : std_logic;
SIGNAL \wm8731|i2c_sdat~reg0_q\ : std_logic;
SIGNAL \wm8731|i2c_sdat~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_sdat~1_combout\ : std_logic;
SIGNAL \wm8731|i2c_sdat~en_q\ : std_logic;
SIGNAL \switch_echo~input_o\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \rect_gen|Equal1~1_combout\ : std_logic;
SIGNAL \rect_gen|max_count_square[14]~2_combout\ : std_logic;
SIGNAL \rect_gen|max_count_square[1]~0_combout\ : std_logic;
SIGNAL \rect_gen|Equal1~0_combout\ : std_logic;
SIGNAL \rect_gen|max_count_square~1_combout\ : std_logic;
SIGNAL \rect_gen|Add0~1_cout\ : std_logic;
SIGNAL \rect_gen|Add0~3\ : std_logic;
SIGNAL \rect_gen|Add0~5\ : std_logic;
SIGNAL \rect_gen|Add0~7\ : std_logic;
SIGNAL \rect_gen|Add0~9\ : std_logic;
SIGNAL \rect_gen|Add0~11\ : std_logic;
SIGNAL \rect_gen|Add0~13\ : std_logic;
SIGNAL \rect_gen|Add0~15\ : std_logic;
SIGNAL \rect_gen|Add0~17\ : std_logic;
SIGNAL \rect_gen|Add0~19\ : std_logic;
SIGNAL \rect_gen|Add0~21\ : std_logic;
SIGNAL \rect_gen|Add0~23\ : std_logic;
SIGNAL \rect_gen|Add0~25\ : std_logic;
SIGNAL \rect_gen|Add0~27\ : std_logic;
SIGNAL \rect_gen|Add0~29\ : std_logic;
SIGNAL \rect_gen|Add0~31\ : std_logic;
SIGNAL \rect_gen|Add0~33\ : std_logic;
SIGNAL \rect_gen|Add0~35\ : std_logic;
SIGNAL \rect_gen|Add0~37\ : std_logic;
SIGNAL \rect_gen|Add0~38_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[0]~23_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[21]~27_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[0]~24\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[1]~25_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[1]~26\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[2]~28_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[2]~29\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[3]~30_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[3]~31\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[4]~32_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[4]~33\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[5]~34_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[5]~35\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[6]~36_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[6]~37\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[7]~38_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[7]~39\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[8]~40_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[8]~41\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[9]~42_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[9]~43\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[10]~44_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[10]~45\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[11]~46_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[11]~47\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[12]~48_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[12]~49\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[13]~50_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[13]~51\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[14]~52_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[14]~53\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[15]~54_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[15]~55\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[16]~56_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[16]~57\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[17]~58_combout\ : std_logic;
SIGNAL \rect_gen|Add0~32_combout\ : std_logic;
SIGNAL \rect_gen|Add0~34_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~10_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[17]~59\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[18]~60_combout\ : std_logic;
SIGNAL \rect_gen|Add0~36_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~11_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[18]~61\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[19]~62_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~12_combout\ : std_logic;
SIGNAL \rect_gen|Add0~30_combout\ : std_logic;
SIGNAL \rect_gen|Add0~28_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~8_combout\ : std_logic;
SIGNAL \rect_gen|Add0~20_combout\ : std_logic;
SIGNAL \rect_gen|Add0~22_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~6_combout\ : std_logic;
SIGNAL \rect_gen|Add0~24_combout\ : std_logic;
SIGNAL \rect_gen|Add0~26_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~7_combout\ : std_logic;
SIGNAL \rect_gen|Add0~18_combout\ : std_logic;
SIGNAL \rect_gen|Add0~16_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~5_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~9_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[19]~63\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[20]~64_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[20]~65\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[21]~66_combout\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[21]~67\ : std_logic;
SIGNAL \rect_gen|tone_cnt_square[22]~68_combout\ : std_logic;
SIGNAL \rect_gen|Add0~39\ : std_logic;
SIGNAL \rect_gen|Add0~40_combout\ : std_logic;
SIGNAL \rect_gen|Add0~41\ : std_logic;
SIGNAL \rect_gen|Add0~42_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~13_combout\ : std_logic;
SIGNAL \rect_gen|Add0~43\ : std_logic;
SIGNAL \rect_gen|Add0~45\ : std_logic;
SIGNAL \rect_gen|Add0~46_combout\ : std_logic;
SIGNAL \rect_gen|Add0~44_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~14_combout\ : std_logic;
SIGNAL \rect_gen|Add0~14_combout\ : std_logic;
SIGNAL \rect_gen|Add0~12_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~3_combout\ : std_logic;
SIGNAL \rect_gen|Add0~6_combout\ : std_logic;
SIGNAL \rect_gen|Add0~4_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~1_combout\ : std_logic;
SIGNAL \rect_gen|Add0~10_combout\ : std_logic;
SIGNAL \rect_gen|Add0~8_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~2_combout\ : std_logic;
SIGNAL \rect_gen|Add0~2_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~0_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rect_gen|Equal0~15_combout\ : std_logic;
SIGNAL \rect_gen|s_square_sig~0_combout\ : std_logic;
SIGNAL \rect_gen|s_square_sig~q\ : std_logic;
SIGNAL \wm8731|i2c_sclk~0_combout\ : std_logic;
SIGNAL \wm8731|i2c_sclk~q\ : std_logic;
SIGNAL \einstellwert_internal[6]~0_combout\ : std_logic;
SIGNAL \einstellwert_internal[5]~1_combout\ : std_logic;
SIGNAL \einstellwert_internal[4]~2_combout\ : std_logic;
SIGNAL \einstellwert_internal[3]~3_combout\ : std_logic;
SIGNAL \einstellwert_internal[1]~4_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[0]~20_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[0]~21\ : std_logic;
SIGNAL \dds_gen|akkumulator[1]~22_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[1]~23\ : std_logic;
SIGNAL \dds_gen|akkumulator[2]~24_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[2]~25\ : std_logic;
SIGNAL \dds_gen|akkumulator[3]~26_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[3]~27\ : std_logic;
SIGNAL \dds_gen|akkumulator[4]~28_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[4]~29\ : std_logic;
SIGNAL \dds_gen|akkumulator[5]~30_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[5]~31\ : std_logic;
SIGNAL \dds_gen|akkumulator[6]~32_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[6]~33\ : std_logic;
SIGNAL \dds_gen|akkumulator[7]~34_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[7]~35\ : std_logic;
SIGNAL \dds_gen|akkumulator[8]~36_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[8]~37\ : std_logic;
SIGNAL \dds_gen|akkumulator[9]~38_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[9]~39\ : std_logic;
SIGNAL \dds_gen|akkumulator[10]~40_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[10]~41\ : std_logic;
SIGNAL \dds_gen|akkumulator[11]~42_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[11]~43\ : std_logic;
SIGNAL \dds_gen|akkumulator[12]~44_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[12]~45\ : std_logic;
SIGNAL \dds_gen|akkumulator[13]~46_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[13]~47\ : std_logic;
SIGNAL \dds_gen|akkumulator[14]~48_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[14]~49\ : std_logic;
SIGNAL \dds_gen|akkumulator[15]~50_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[15]~51\ : std_logic;
SIGNAL \dds_gen|akkumulator[16]~52_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[16]~53\ : std_logic;
SIGNAL \dds_gen|akkumulator[17]~54_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[17]~55\ : std_logic;
SIGNAL \dds_gen|akkumulator[18]~56_combout\ : std_logic;
SIGNAL \dds_gen|akkumulator[18]~57\ : std_logic;
SIGNAL \dds_gen|akkumulator[19]~58_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[5]~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[6]~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[7]~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[4]~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[3]~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[2]~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[1]~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux1~38_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux0~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux1~41_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux1~42_combout\ : std_logic;
SIGNAL \dds_gen|u1|addrin_lut[0]~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux1~39_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux1~40_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux2~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux3~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~30_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~32_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~31_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~33_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~34_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~35_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~40_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~41_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~42_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~39_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~43_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~49_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~36_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~37_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~38_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~44_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~45_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~46_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~47_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux4~48_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux5~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux6~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux7~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux8~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux9~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux10~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux11~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux12~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~7_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~8_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~6_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~10_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~11_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~12_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~16_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~18_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~2_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~3_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~4_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~20_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~22_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~24_combout\ : std_logic;
SIGNAL \dds_gen|u1|dds_lut|Mux13~25_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~0_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~2\ : std_logic;
SIGNAL \dds_gen|u1|Add0~4\ : std_logic;
SIGNAL \dds_gen|u1|Add0~6\ : std_logic;
SIGNAL \dds_gen|u1|Add0~8\ : std_logic;
SIGNAL \dds_gen|u1|Add0~10\ : std_logic;
SIGNAL \dds_gen|u1|Add0~12\ : std_logic;
SIGNAL \dds_gen|u1|Add0~14\ : std_logic;
SIGNAL \dds_gen|u1|Add0~16\ : std_logic;
SIGNAL \dds_gen|u1|Add0~18\ : std_logic;
SIGNAL \dds_gen|u1|Add0~20\ : std_logic;
SIGNAL \dds_gen|u1|Add0~22\ : std_logic;
SIGNAL \dds_gen|u1|Add0~24\ : std_logic;
SIGNAL \dds_gen|u1|Add0~26\ : std_logic;
SIGNAL \dds_gen|u1|Add0~28\ : std_logic;
SIGNAL \dds_gen|u1|Add0~30\ : std_logic;
SIGNAL \dds_gen|u1|Add0~31_combout\ : std_logic;
SIGNAL \delay|write_ptr[0]~15_combout\ : std_logic;
SIGNAL \delay|Equal0~3_combout\ : std_logic;
SIGNAL \delay|Equal0~2_combout\ : std_logic;
SIGNAL \delay|Equal0~1_combout\ : std_logic;
SIGNAL \delay|Equal0~0_combout\ : std_logic;
SIGNAL \delay|Equal0~4_combout\ : std_logic;
SIGNAL \delay|write_ptr[9]~43_combout\ : std_logic;
SIGNAL \wm8731|Add3~0_combout\ : std_logic;
SIGNAL \wm8731|Add3~1\ : std_logic;
SIGNAL \wm8731|Add3~2_combout\ : std_logic;
SIGNAL \wm8731|Add3~3\ : std_logic;
SIGNAL \wm8731|Add3~4_combout\ : std_logic;
SIGNAL \wm8731|Add3~5\ : std_logic;
SIGNAL \wm8731|Add3~6_combout\ : std_logic;
SIGNAL \wm8731|Add3~7\ : std_logic;
SIGNAL \wm8731|Add3~8_combout\ : std_logic;
SIGNAL \wm8731|Equal6~1_combout\ : std_logic;
SIGNAL \wm8731|Add3~9\ : std_logic;
SIGNAL \wm8731|Add3~10_combout\ : std_logic;
SIGNAL \wm8731|Add3~11\ : std_logic;
SIGNAL \wm8731|Add3~12_combout\ : std_logic;
SIGNAL \wm8731|Add3~13\ : std_logic;
SIGNAL \wm8731|Add3~14_combout\ : std_logic;
SIGNAL \wm8731|s_lrswitch~1_combout\ : std_logic;
SIGNAL \wm8731|Add3~15\ : std_logic;
SIGNAL \wm8731|Add3~16_combout\ : std_logic;
SIGNAL \wm8731|s_lrswitch~0_combout\ : std_logic;
SIGNAL \wm8731|Equal6~0_combout\ : std_logic;
SIGNAL \wm8731|Equal6~2_combout\ : std_logic;
SIGNAL \wm8731|aud_daclrck~q\ : std_logic;
SIGNAL \delay|delayed_audio[12]~0_combout\ : std_logic;
SIGNAL \delay|write_ptr[0]~16\ : std_logic;
SIGNAL \delay|write_ptr[1]~17_combout\ : std_logic;
SIGNAL \delay|write_ptr[1]~18\ : std_logic;
SIGNAL \delay|write_ptr[2]~19_combout\ : std_logic;
SIGNAL \delay|write_ptr[2]~20\ : std_logic;
SIGNAL \delay|write_ptr[3]~21_combout\ : std_logic;
SIGNAL \delay|write_ptr[3]~22\ : std_logic;
SIGNAL \delay|write_ptr[4]~23_combout\ : std_logic;
SIGNAL \delay|write_ptr[4]~24\ : std_logic;
SIGNAL \delay|write_ptr[5]~25_combout\ : std_logic;
SIGNAL \delay|write_ptr[5]~26\ : std_logic;
SIGNAL \delay|write_ptr[6]~27_combout\ : std_logic;
SIGNAL \delay|write_ptr[6]~28\ : std_logic;
SIGNAL \delay|write_ptr[7]~29_combout\ : std_logic;
SIGNAL \delay|write_ptr[7]~30\ : std_logic;
SIGNAL \delay|write_ptr[8]~31_combout\ : std_logic;
SIGNAL \delay|write_ptr[8]~32\ : std_logic;
SIGNAL \delay|write_ptr[9]~33_combout\ : std_logic;
SIGNAL \delay|write_ptr[9]~34\ : std_logic;
SIGNAL \delay|write_ptr[10]~35_combout\ : std_logic;
SIGNAL \delay|write_ptr[10]~36\ : std_logic;
SIGNAL \delay|write_ptr[11]~37_combout\ : std_logic;
SIGNAL \delay|write_ptr[11]~38\ : std_logic;
SIGNAL \delay|write_ptr[12]~39_combout\ : std_logic;
SIGNAL \delay|write_ptr[12]~40\ : std_logic;
SIGNAL \delay|write_ptr[13]~41_combout\ : std_logic;
SIGNAL \delay|write_ptr[13]~42\ : std_logic;
SIGNAL \delay|write_ptr[14]~44_combout\ : std_logic;
SIGNAL \delay|ram_data[14]~0_combout\ : std_logic;
SIGNAL \delay|ram_wren~q\ : std_logic;
SIGNAL \delay|read_ptr[0]~8_combout\ : std_logic;
SIGNAL \delay|read_ptr[1]~feeder_combout\ : std_logic;
SIGNAL \delay|read_ptr[4]~feeder_combout\ : std_logic;
SIGNAL \delay|read_ptr[5]~feeder_combout\ : std_logic;
SIGNAL \delay|read_ptr[6]~25_combout\ : std_logic;
SIGNAL \delay|read_ptr[7]~9_combout\ : std_logic;
SIGNAL \delay|read_ptr[7]~10\ : std_logic;
SIGNAL \delay|read_ptr[8]~11_combout\ : std_logic;
SIGNAL \delay|read_ptr[8]~12\ : std_logic;
SIGNAL \delay|read_ptr[9]~13_combout\ : std_logic;
SIGNAL \delay|read_ptr[9]~14\ : std_logic;
SIGNAL \delay|read_ptr[10]~15_combout\ : std_logic;
SIGNAL \delay|read_ptr[10]~16\ : std_logic;
SIGNAL \delay|read_ptr[11]~17_combout\ : std_logic;
SIGNAL \delay|read_ptr[11]~18\ : std_logic;
SIGNAL \delay|read_ptr[12]~19_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63~portbdataout\ : std_logic;
SIGNAL \delay|read_ptr[12]~20\ : std_logic;
SIGNAL \delay|read_ptr[13]~21_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47~portbdataout\ : std_logic;
SIGNAL \delay|read_ptr[13]~22\ : std_logic;
SIGNAL \delay|read_ptr[14]~23_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]~feeder_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~1_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~29_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~3_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~5_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~27_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~25_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~7_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~9_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~21_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~11_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~13_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~17_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~15_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~17_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~15_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~13_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~19_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~11_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~21_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~9_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~23_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~7_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~25_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~27_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~5_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\ : std_logic;
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~29_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~3_combout\ : std_logic;
SIGNAL \delay|mixed_audio[0]~1\ : std_logic;
SIGNAL \delay|mixed_audio[1]~3\ : std_logic;
SIGNAL \delay|mixed_audio[2]~5\ : std_logic;
SIGNAL \delay|mixed_audio[3]~7\ : std_logic;
SIGNAL \delay|mixed_audio[4]~9\ : std_logic;
SIGNAL \delay|mixed_audio[5]~11\ : std_logic;
SIGNAL \delay|mixed_audio[6]~13\ : std_logic;
SIGNAL \delay|mixed_audio[7]~15\ : std_logic;
SIGNAL \delay|mixed_audio[8]~17\ : std_logic;
SIGNAL \delay|mixed_audio[9]~19\ : std_logic;
SIGNAL \delay|mixed_audio[10]~21\ : std_logic;
SIGNAL \delay|mixed_audio[11]~23\ : std_logic;
SIGNAL \delay|mixed_audio[12]~25\ : std_logic;
SIGNAL \delay|mixed_audio[13]~27\ : std_logic;
SIGNAL \delay|mixed_audio[14]~29\ : std_logic;
SIGNAL \delay|mixed_audio[15]~30_combout\ : std_logic;
SIGNAL \delay|Add2~0_combout\ : std_logic;
SIGNAL \audio_sel~input_o\ : std_logic;
SIGNAL \data_lr[31]~0_combout\ : std_logic;
SIGNAL \wm8731|s_din[31]~0_combout\ : std_logic;
SIGNAL \wm8731|s_din[30]~17_combout\ : std_logic;
SIGNAL \delay|mixed_audio[14]~28_combout\ : std_logic;
SIGNAL \wm8731|s_din[30]~1_combout\ : std_logic;
SIGNAL \wm8731|s_din[30]~feeder_combout\ : std_logic;
SIGNAL \delay|mixed_audio[13]~26_combout\ : std_logic;
SIGNAL \delay|Add2~1_combout\ : std_logic;
SIGNAL \wm8731|s_din[29]~2_combout\ : std_logic;
SIGNAL \delay|mixed_audio[12]~24_combout\ : std_logic;
SIGNAL \delay|Add2~2_combout\ : std_logic;
SIGNAL \wm8731|s_din[28]~3_combout\ : std_logic;
SIGNAL \delay|mixed_audio[11]~22_combout\ : std_logic;
SIGNAL \delay|Add2~3_combout\ : std_logic;
SIGNAL \wm8731|s_din[27]~4_combout\ : std_logic;
SIGNAL \delay|mixed_audio[10]~20_combout\ : std_logic;
SIGNAL \delay|Add2~4_combout\ : std_logic;
SIGNAL \wm8731|s_din[26]~5_combout\ : std_logic;
SIGNAL \delay|mixed_audio[9]~18_combout\ : std_logic;
SIGNAL \delay|Add2~5_combout\ : std_logic;
SIGNAL \wm8731|s_din[25]~6_combout\ : std_logic;
SIGNAL \delay|mixed_audio[8]~16_combout\ : std_logic;
SIGNAL \delay|Add2~6_combout\ : std_logic;
SIGNAL \wm8731|s_din[24]~7_combout\ : std_logic;
SIGNAL \delay|mixed_audio[7]~14_combout\ : std_logic;
SIGNAL \delay|Add2~7_combout\ : std_logic;
SIGNAL \wm8731|s_din[23]~8_combout\ : std_logic;
SIGNAL \delay|mixed_audio[6]~12_combout\ : std_logic;
SIGNAL \delay|Add2~8_combout\ : std_logic;
SIGNAL \wm8731|s_din[22]~9_combout\ : std_logic;
SIGNAL \delay|mixed_audio[5]~10_combout\ : std_logic;
SIGNAL \delay|Add2~9_combout\ : std_logic;
SIGNAL \wm8731|s_din[21]~10_combout\ : std_logic;
SIGNAL \delay|mixed_audio[4]~8_combout\ : std_logic;
SIGNAL \delay|Add2~10_combout\ : std_logic;
SIGNAL \wm8731|s_din[20]~11_combout\ : std_logic;
SIGNAL \delay|mixed_audio[3]~6_combout\ : std_logic;
SIGNAL \delay|Add2~11_combout\ : std_logic;
SIGNAL \wm8731|s_din[19]~12_combout\ : std_logic;
SIGNAL \delay|mixed_audio[2]~4_combout\ : std_logic;
SIGNAL \delay|Add2~12_combout\ : std_logic;
SIGNAL \wm8731|s_din[18]~13_combout\ : std_logic;
SIGNAL \delay|mixed_audio[1]~2_combout\ : std_logic;
SIGNAL \delay|Add2~13_combout\ : std_logic;
SIGNAL \wm8731|s_din[17]~14_combout\ : std_logic;
SIGNAL \dds_gen|u1|Add0~1_combout\ : std_logic;
SIGNAL \delay|mixed_audio[0]~0_combout\ : std_logic;
SIGNAL \delay|Add2~14_combout\ : std_logic;
SIGNAL \wm8731|s_din[16]~15_combout\ : std_logic;
SIGNAL \wm8731|LessThan0~0_combout\ : std_logic;
SIGNAL \wm8731|s_din~34_combout\ : std_logic;
SIGNAL \wm8731|s_din~33_combout\ : std_logic;
SIGNAL \wm8731|s_din[28]~16_combout\ : std_logic;
SIGNAL \wm8731|s_din~32_combout\ : std_logic;
SIGNAL \wm8731|s_din~31_combout\ : std_logic;
SIGNAL \wm8731|s_din~30_combout\ : std_logic;
SIGNAL \wm8731|s_din~29_combout\ : std_logic;
SIGNAL \wm8731|s_din~28_combout\ : std_logic;
SIGNAL \wm8731|s_din~27_combout\ : std_logic;
SIGNAL \wm8731|s_din~26_combout\ : std_logic;
SIGNAL \wm8731|s_din~25_combout\ : std_logic;
SIGNAL \wm8731|s_din~24_combout\ : std_logic;
SIGNAL \wm8731|s_din~23_combout\ : std_logic;
SIGNAL \wm8731|s_din~22_combout\ : std_logic;
SIGNAL \wm8731|s_din~21_combout\ : std_logic;
SIGNAL \wm8731|s_din~20_combout\ : std_logic;
SIGNAL \wm8731|s_din~18_combout\ : std_logic;
SIGNAL \wm8731|s_din~19_combout\ : std_logic;
SIGNAL \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \delay|delayed_audio\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \wm8731|i2c_seq\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \delay|ram_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \wm8731|s_din\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rect_gen|tone_cnt_square\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \wm8731|s_lrswitch\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \delay|read_ptr\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \dds_gen|akkumulator\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \wm8731|i2c_bitcnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \delay|write_ptr\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \wm8731|i2c_wordcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \wm8731|i2c_clkdiv\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rect_gen|audio_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk_18MHz|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_keys[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_keys[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_keys[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_keys[0]~input_o\ : std_logic;
SIGNAL \wm8731|ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \wm8731|ALT_INV_i2c_sdat~en_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_switch_echo <= switch_echo;
ww_audio_sel <= audio_sel;
led_echo <= ww_led_echo;
led_audio_sel <= ww_led_audio_sel;
led_keys <= ww_led_keys;
led_key_signal <= ww_led_key_signal;
i2c_sdat <= ww_i2c_sdat;
i2c_sclk <= ww_i2c_sclk;
aud_xck <= ww_aud_xck;
aud_bclk <= ww_aud_bclk;
aud_dacdat <= ww_aud_dacdat;
aud_daclrck <= ww_aud_daclrck;
ww_keys <= keys;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_18MHz|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\(4);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \delay|ram_data\(14);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \delay|ram_data\(13);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \delay|ram_data\(13);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \delay|ram_data\(13);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \delay|ram_data\(13);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \delay|ram_data\(12);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \delay|ram_data\(12);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \delay|ram_data\(12);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \delay|ram_data\(12);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \delay|ram_data\(11);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \delay|ram_data\(11);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \delay|ram_data\(11);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \delay|ram_data\(11);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \delay|ram_data\(10);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \delay|ram_data\(10);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \delay|ram_data\(10);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \delay|ram_data\(10);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \delay|ram_data\(9);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \delay|ram_data\(9);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \delay|ram_data\(9);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \delay|ram_data\(9);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \delay|ram_data\(8);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \delay|ram_data\(8);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \delay|ram_data\(8);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \delay|ram_data\(8);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \delay|ram_data\(7);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \delay|ram_data\(7);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \delay|ram_data\(7);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \delay|ram_data\(7);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \delay|ram_data\(6);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \delay|ram_data\(6);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \delay|ram_data\(6);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \delay|ram_data\(6);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \delay|ram_data\(5);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \delay|ram_data\(5);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \delay|ram_data\(5);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \delay|ram_data\(5);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \delay|ram_data\(4);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \delay|ram_data\(4);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \delay|ram_data\(4);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \delay|ram_data\(4);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \delay|ram_data\(3);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \delay|ram_data\(3);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \delay|ram_data\(3);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \delay|ram_data\(3);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \delay|ram_data\(2);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \delay|ram_data\(2);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \delay|ram_data\(2);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \delay|ram_data\(2);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \delay|ram_data\(1);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \delay|ram_data\(1);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \delay|ram_data\(1);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \delay|ram_data\(1);

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\delay|write_ptr\(12) & \delay|write_ptr\(11) & \delay|write_ptr\(10) & \delay|write_ptr\(9) & \delay|write_ptr\(8) & \delay|write_ptr\(7) & 
\delay|write_ptr\(6) & \delay|write_ptr\(5) & \delay|write_ptr\(4) & \delay|write_ptr\(3) & \delay|write_ptr\(2) & \delay|write_ptr\(1) & \delay|write_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBADDR_bus\ <= (\delay|read_ptr\(12) & \delay|read_ptr\(11) & \delay|read_ptr\(10) & \delay|read_ptr\(9) & \delay|read_ptr\(8) & \delay|read_ptr\(7) & \delay|read_ptr\(6) & 
\delay|read_ptr\(5) & \delay|read_ptr\(4) & \delay|read_ptr\(3) & \delay|read_ptr\(2) & \delay|read_ptr\(1) & \delay|read_ptr\(0));

\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49~portbdataout\ <= \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBDATAOUT_bus\(0);

\wm8731|i2c_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \wm8731|i2c_clk~q\);

\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk\(0));
\clk_18MHz|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\wm8731|ALT_INV_i2c_clk~clkctrl_outclk\ <= NOT \wm8731|i2c_clk~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_keys[3]~input_o\ <= NOT \keys[3]~input_o\;
\ALT_INV_keys[2]~input_o\ <= NOT \keys[2]~input_o\;
\ALT_INV_keys[1]~input_o\ <= NOT \keys[1]~input_o\;
\ALT_INV_keys[0]~input_o\ <= NOT \keys[0]~input_o\;
\wm8731|ALT_INV_Equal6~2_combout\ <= NOT \wm8731|Equal6~2_combout\;
\wm8731|ALT_INV_i2c_sdat~en_q\ <= NOT \wm8731|i2c_sdat~en_q\;

-- Location: IOOBUF_X18_Y73_N23
\i2c_sdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731|i2c_sdat~reg0_q\,
	oe => \wm8731|ALT_INV_i2c_sdat~en_q\,
	devoe => ww_devoe,
	o => ww_i2c_sdat);

-- Location: IOOBUF_X69_Y73_N16
\led_echo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_echo~input_o\,
	devoe => ww_devoe,
	o => ww_led_echo);

-- Location: IOOBUF_X65_Y73_N9
\led_audio_sel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_audio_sel);

-- Location: IOOBUF_X107_Y73_N9
\led_keys[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_keys[0]~input_o\,
	devoe => ww_devoe,
	o => ww_led_keys(0));

-- Location: IOOBUF_X111_Y73_N9
\led_keys[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_keys[1]~input_o\,
	devoe => ww_devoe,
	o => ww_led_keys(1));

-- Location: IOOBUF_X83_Y73_N2
\led_keys[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_keys[2]~input_o\,
	devoe => ww_devoe,
	o => ww_led_keys(2));

-- Location: IOOBUF_X85_Y73_N23
\led_keys[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_keys[3]~input_o\,
	devoe => ww_devoe,
	o => ww_led_keys(3));

-- Location: IOOBUF_X74_Y73_N23
\led_key_signal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rect_gen|s_square_sig~q\,
	devoe => ww_devoe,
	o => ww_led_key_signal);

-- Location: IOOBUF_X29_Y73_N9
\i2c_sclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731|i2c_sclk~q\,
	devoe => ww_devoe,
	o => ww_i2c_sclk);

-- Location: IOOBUF_X0_Y61_N23
\aud_xck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_aud_xck);

-- Location: IOOBUF_X0_Y60_N16
\aud_bclk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_18MHz|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_aud_bclk);

-- Location: IOOBUF_X0_Y68_N2
\aud_dacdat~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731|s_din\(31),
	devoe => ww_devoe,
	o => ww_aud_dacdat);

-- Location: IOOBUF_X0_Y66_N16
\aud_daclrck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wm8731|aud_daclrck~q\,
	devoe => ww_devoe,
	o => ww_aud_daclrck);

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

-- Location: PLL_1
\clk_18MHz|altpll_component|auto_generated|pll1\ : cycloneive_pll
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
	areset => GND,
	fbin => \clk_18MHz|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clk_18MHz|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \clk_18MHz|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clk_18MHz|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X102_Y37_N20
\wm8731|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~0_combout\ = \wm8731|i2c_clkdiv\(0) $ (VCC)
-- \wm8731|Add0~1\ = CARRY(\wm8731|i2c_clkdiv\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(0),
	datad => VCC,
	combout => \wm8731|Add0~0_combout\,
	cout => \wm8731|Add0~1\);

-- Location: LCCOMB_X102_Y37_N6
\wm8731|i2c_clkdiv~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_clkdiv~2_combout\ = (\wm8731|Add0~0_combout\ & (((\wm8731|i2c_clkdiv\(0)) # (!\wm8731|Equal0~0_combout\)) # (!\wm8731|i2c_clkdiv\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(1),
	datab => \wm8731|Equal0~0_combout\,
	datac => \wm8731|i2c_clkdiv\(0),
	datad => \wm8731|Add0~0_combout\,
	combout => \wm8731|i2c_clkdiv~2_combout\);

-- Location: IOIBUF_X115_Y63_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X102_Y37_N7
\wm8731|i2c_clkdiv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|i2c_clkdiv~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(0));

-- Location: LCCOMB_X102_Y37_N22
\wm8731|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~2_combout\ = (\wm8731|i2c_clkdiv\(1) & (!\wm8731|Add0~1\)) # (!\wm8731|i2c_clkdiv\(1) & ((\wm8731|Add0~1\) # (GND)))
-- \wm8731|Add0~3\ = CARRY((!\wm8731|Add0~1\) # (!\wm8731|i2c_clkdiv\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(1),
	datad => VCC,
	cin => \wm8731|Add0~1\,
	combout => \wm8731|Add0~2_combout\,
	cout => \wm8731|Add0~3\);

-- Location: LCCOMB_X102_Y37_N12
\wm8731|i2c_clkdiv~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_clkdiv~1_combout\ = (\wm8731|Add0~2_combout\ & (((\wm8731|i2c_clkdiv\(0)) # (!\wm8731|i2c_clkdiv\(1))) # (!\wm8731|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Add0~2_combout\,
	datab => \wm8731|Equal0~0_combout\,
	datac => \wm8731|i2c_clkdiv\(1),
	datad => \wm8731|i2c_clkdiv\(0),
	combout => \wm8731|i2c_clkdiv~1_combout\);

-- Location: FF_X102_Y37_N13
\wm8731|i2c_clkdiv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|i2c_clkdiv~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(1));

-- Location: LCCOMB_X102_Y37_N24
\wm8731|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~4_combout\ = (\wm8731|i2c_clkdiv\(2) & (\wm8731|Add0~3\ $ (GND))) # (!\wm8731|i2c_clkdiv\(2) & (!\wm8731|Add0~3\ & VCC))
-- \wm8731|Add0~5\ = CARRY((\wm8731|i2c_clkdiv\(2) & !\wm8731|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_clkdiv\(2),
	datad => VCC,
	cin => \wm8731|Add0~3\,
	combout => \wm8731|Add0~4_combout\,
	cout => \wm8731|Add0~5\);

-- Location: FF_X102_Y37_N25
\wm8731|i2c_clkdiv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(2));

-- Location: LCCOMB_X102_Y37_N26
\wm8731|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~6_combout\ = (\wm8731|i2c_clkdiv\(3) & (!\wm8731|Add0~5\)) # (!\wm8731|i2c_clkdiv\(3) & ((\wm8731|Add0~5\) # (GND)))
-- \wm8731|Add0~7\ = CARRY((!\wm8731|Add0~5\) # (!\wm8731|i2c_clkdiv\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(3),
	datad => VCC,
	cin => \wm8731|Add0~5\,
	combout => \wm8731|Add0~6_combout\,
	cout => \wm8731|Add0~7\);

-- Location: FF_X102_Y37_N27
\wm8731|i2c_clkdiv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(3));

-- Location: LCCOMB_X102_Y37_N28
\wm8731|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~8_combout\ = (\wm8731|i2c_clkdiv\(4) & (\wm8731|Add0~7\ $ (GND))) # (!\wm8731|i2c_clkdiv\(4) & (!\wm8731|Add0~7\ & VCC))
-- \wm8731|Add0~9\ = CARRY((\wm8731|i2c_clkdiv\(4) & !\wm8731|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_clkdiv\(4),
	datad => VCC,
	cin => \wm8731|Add0~7\,
	combout => \wm8731|Add0~8_combout\,
	cout => \wm8731|Add0~9\);

-- Location: LCCOMB_X102_Y37_N16
\wm8731|i2c_clkdiv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_clkdiv~0_combout\ = (\wm8731|Add0~8_combout\ & (((\wm8731|i2c_clkdiv\(0)) # (!\wm8731|Equal0~0_combout\)) # (!\wm8731|i2c_clkdiv\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(1),
	datab => \wm8731|Add0~8_combout\,
	datac => \wm8731|Equal0~0_combout\,
	datad => \wm8731|i2c_clkdiv\(0),
	combout => \wm8731|i2c_clkdiv~0_combout\);

-- Location: FF_X102_Y37_N17
\wm8731|i2c_clkdiv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|i2c_clkdiv~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(4));

-- Location: LCCOMB_X102_Y37_N30
\wm8731|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add0~10_combout\ = \wm8731|i2c_clkdiv\(5) $ (\wm8731|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(5),
	cin => \wm8731|Add0~9\,
	combout => \wm8731|Add0~10_combout\);

-- Location: FF_X102_Y37_N31
\wm8731|i2c_clkdiv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clkdiv\(5));

-- Location: LCCOMB_X102_Y37_N14
\wm8731|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Equal0~0_combout\ = (!\wm8731|i2c_clkdiv\(5) & (!\wm8731|i2c_clkdiv\(2) & (!\wm8731|i2c_clkdiv\(3) & \wm8731|i2c_clkdiv\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_clkdiv\(5),
	datab => \wm8731|i2c_clkdiv\(2),
	datac => \wm8731|i2c_clkdiv\(3),
	datad => \wm8731|i2c_clkdiv\(4),
	combout => \wm8731|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y37_N2
\wm8731|i2c_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_clk~0_combout\ = \wm8731|i2c_clk~q\ $ (((\wm8731|Equal0~0_combout\ & (\wm8731|i2c_clkdiv\(1) & !\wm8731|i2c_clkdiv\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal0~0_combout\,
	datab => \wm8731|i2c_clkdiv\(1),
	datac => \wm8731|i2c_clk~q\,
	datad => \wm8731|i2c_clkdiv\(0),
	combout => \wm8731|i2c_clk~0_combout\);

-- Location: FF_X114_Y37_N3
\wm8731|i2c_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|i2c_clk~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_clk~q\);

-- Location: CLKCTRL_G7
\wm8731|i2c_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \wm8731|i2c_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \wm8731|i2c_clk~clkctrl_outclk\);

-- Location: LCCOMB_X59_Y39_N0
\wm8731|i2c_bitcnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[0]~6_combout\ = \wm8731|i2c_bitcnt\(0) $ (VCC)
-- \wm8731|i2c_bitcnt[0]~7\ = CARRY(\wm8731|i2c_bitcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(0),
	datad => VCC,
	combout => \wm8731|i2c_bitcnt[0]~6_combout\,
	cout => \wm8731|i2c_bitcnt[0]~7\);

-- Location: LCCOMB_X60_Y39_N4
\wm8731|i2c_seq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_seq~0_combout\ = \wm8731|i2c_seq\(1) $ (!\wm8731|i2c_seq\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_seq\(1),
	datac => \wm8731|i2c_seq\(0),
	combout => \wm8731|i2c_seq~0_combout\);

-- Location: LCCOMB_X60_Y39_N20
\wm8731|i2c_wordcnt[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[3]~3_combout\ = (\wm8731|i2c_bitcnt\(3) & (\wm8731|i2c_bitcnt\(2) & \wm8731|i2c_bitcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(3),
	datab => \wm8731|i2c_bitcnt\(2),
	datad => \wm8731|i2c_bitcnt\(1),
	combout => \wm8731|i2c_wordcnt[3]~3_combout\);

-- Location: LCCOMB_X58_Y39_N24
\wm8731|i2c_wordcnt[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[0]~7_combout\ = (!\wm8731|i2c_bitcnt\(4)) # (!\wm8731|i2c_bitcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(0),
	datac => \wm8731|i2c_bitcnt\(4),
	combout => \wm8731|i2c_wordcnt[0]~7_combout\);

-- Location: LCCOMB_X60_Y39_N0
\wm8731|i2c_wordcnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[0]~8_combout\ = \wm8731|i2c_wordcnt\(0) $ (((\wm8731|i2c_bitcnt[4]~5_combout\ & (\wm8731|i2c_wordcnt[3]~3_combout\ & !\wm8731|i2c_wordcnt[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt[4]~5_combout\,
	datab => \wm8731|i2c_wordcnt[3]~3_combout\,
	datac => \wm8731|i2c_wordcnt\(0),
	datad => \wm8731|i2c_wordcnt[0]~7_combout\,
	combout => \wm8731|i2c_wordcnt[0]~8_combout\);

-- Location: FF_X60_Y39_N1
\wm8731|i2c_wordcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_wordcnt[0]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_wordcnt\(0));

-- Location: LCCOMB_X60_Y39_N24
\wm8731|i2c_wordcnt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[1]~5_combout\ = ((!\wm8731|i2c_bitcnt\(4)) # (!\wm8731|i2c_bitcnt\(0))) # (!\wm8731|i2c_wordcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_wordcnt\(0),
	datac => \wm8731|i2c_bitcnt\(0),
	datad => \wm8731|i2c_bitcnt\(4),
	combout => \wm8731|i2c_wordcnt[1]~5_combout\);

-- Location: LCCOMB_X60_Y39_N26
\wm8731|i2c_wordcnt[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[1]~6_combout\ = \wm8731|i2c_wordcnt\(1) $ (((\wm8731|i2c_bitcnt[4]~5_combout\ & (!\wm8731|i2c_wordcnt[1]~5_combout\ & \wm8731|i2c_wordcnt[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt[4]~5_combout\,
	datab => \wm8731|i2c_wordcnt[1]~5_combout\,
	datac => \wm8731|i2c_wordcnt\(1),
	datad => \wm8731|i2c_wordcnt[3]~3_combout\,
	combout => \wm8731|i2c_wordcnt[1]~6_combout\);

-- Location: FF_X60_Y39_N27
\wm8731|i2c_wordcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_wordcnt[1]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_wordcnt\(1));

-- Location: LCCOMB_X60_Y39_N18
\wm8731|i2c_wordcnt[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[2]~9_combout\ = (((!\wm8731|i2c_bitcnt\(4)) # (!\wm8731|i2c_wordcnt\(1))) # (!\wm8731|i2c_wordcnt\(0))) # (!\wm8731|i2c_bitcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(0),
	datab => \wm8731|i2c_wordcnt\(0),
	datac => \wm8731|i2c_wordcnt\(1),
	datad => \wm8731|i2c_bitcnt\(4),
	combout => \wm8731|i2c_wordcnt[2]~9_combout\);

-- Location: LCCOMB_X60_Y39_N2
\wm8731|i2c_wordcnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[2]~10_combout\ = \wm8731|i2c_wordcnt\(2) $ (((\wm8731|i2c_bitcnt[4]~5_combout\ & (!\wm8731|i2c_wordcnt[2]~9_combout\ & \wm8731|i2c_wordcnt[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt[4]~5_combout\,
	datab => \wm8731|i2c_wordcnt[2]~9_combout\,
	datac => \wm8731|i2c_wordcnt\(2),
	datad => \wm8731|i2c_wordcnt[3]~3_combout\,
	combout => \wm8731|i2c_wordcnt[2]~10_combout\);

-- Location: FF_X60_Y39_N3
\wm8731|i2c_wordcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_wordcnt[2]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_wordcnt\(2));

-- Location: LCCOMB_X60_Y39_N16
\wm8731|i2c_wordcnt[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[3]~11_combout\ = (((!\wm8731|i2c_wordcnt\(2)) # (!\wm8731|i2c_bitcnt\(2))) # (!\wm8731|i2c_bitcnt\(3))) # (!\wm8731|i2c_bitcnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(1),
	datab => \wm8731|i2c_bitcnt\(3),
	datac => \wm8731|i2c_bitcnt\(2),
	datad => \wm8731|i2c_wordcnt\(2),
	combout => \wm8731|i2c_wordcnt[3]~11_combout\);

-- Location: LCCOMB_X60_Y39_N28
\wm8731|i2c_wordcnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[3]~2_combout\ = (((!\wm8731|i2c_wordcnt\(0)) # (!\wm8731|i2c_bitcnt\(0))) # (!\wm8731|i2c_wordcnt\(1))) # (!\wm8731|i2c_bitcnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(4),
	datab => \wm8731|i2c_wordcnt\(1),
	datac => \wm8731|i2c_bitcnt\(0),
	datad => \wm8731|i2c_wordcnt\(0),
	combout => \wm8731|i2c_wordcnt[3]~2_combout\);

-- Location: LCCOMB_X60_Y39_N12
\wm8731|i2c_wordcnt[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_wordcnt[3]~4_combout\ = \wm8731|i2c_wordcnt\(3) $ (((\wm8731|i2c_bitcnt[4]~5_combout\ & (!\wm8731|i2c_wordcnt[3]~11_combout\ & !\wm8731|i2c_wordcnt[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt[4]~5_combout\,
	datab => \wm8731|i2c_wordcnt[3]~11_combout\,
	datac => \wm8731|i2c_wordcnt\(3),
	datad => \wm8731|i2c_wordcnt[3]~2_combout\,
	combout => \wm8731|i2c_wordcnt[3]~4_combout\);

-- Location: FF_X60_Y39_N13
\wm8731|i2c_wordcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_wordcnt[3]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_wordcnt\(3));

-- Location: LCCOMB_X60_Y39_N6
\wm8731|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Equal1~0_combout\ = ((\wm8731|i2c_wordcnt\(2)) # ((\wm8731|i2c_wordcnt\(1)) # (\wm8731|i2c_wordcnt\(0)))) # (!\wm8731|i2c_wordcnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_wordcnt\(3),
	datab => \wm8731|i2c_wordcnt\(2),
	datac => \wm8731|i2c_wordcnt\(1),
	datad => \wm8731|i2c_wordcnt\(0),
	combout => \wm8731|Equal1~0_combout\);

-- Location: FF_X60_Y39_N5
\wm8731|i2c_seq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_seq~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_seq\(0));

-- Location: FF_X60_Y39_N21
\wm8731|i2c_seq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	asdata => \wm8731|i2c_seq\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \wm8731|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_seq\(1));

-- Location: LCCOMB_X60_Y39_N30
\wm8731|i2c_bitcnt[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[4]~5_combout\ = (!\wm8731|i2c_seq\(1) & (!\wm8731|i2c_seq\(0) & \wm8731|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_seq\(1),
	datac => \wm8731|i2c_seq\(0),
	datad => \wm8731|Equal1~0_combout\,
	combout => \wm8731|i2c_bitcnt[4]~5_combout\);

-- Location: FF_X59_Y39_N1
\wm8731|i2c_bitcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_bitcnt[0]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_bitcnt\(0));

-- Location: LCCOMB_X59_Y39_N2
\wm8731|i2c_bitcnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[1]~8_combout\ = (\wm8731|i2c_bitcnt\(1) & (!\wm8731|i2c_bitcnt[0]~7\)) # (!\wm8731|i2c_bitcnt\(1) & ((\wm8731|i2c_bitcnt[0]~7\) # (GND)))
-- \wm8731|i2c_bitcnt[1]~9\ = CARRY((!\wm8731|i2c_bitcnt[0]~7\) # (!\wm8731|i2c_bitcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(1),
	datad => VCC,
	cin => \wm8731|i2c_bitcnt[0]~7\,
	combout => \wm8731|i2c_bitcnt[1]~8_combout\,
	cout => \wm8731|i2c_bitcnt[1]~9\);

-- Location: FF_X59_Y39_N3
\wm8731|i2c_bitcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_bitcnt[1]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_bitcnt\(1));

-- Location: LCCOMB_X59_Y39_N4
\wm8731|i2c_bitcnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[2]~10_combout\ = (\wm8731|i2c_bitcnt\(2) & (\wm8731|i2c_bitcnt[1]~9\ $ (GND))) # (!\wm8731|i2c_bitcnt\(2) & (!\wm8731|i2c_bitcnt[1]~9\ & VCC))
-- \wm8731|i2c_bitcnt[2]~11\ = CARRY((\wm8731|i2c_bitcnt\(2) & !\wm8731|i2c_bitcnt[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(2),
	datad => VCC,
	cin => \wm8731|i2c_bitcnt[1]~9\,
	combout => \wm8731|i2c_bitcnt[2]~10_combout\,
	cout => \wm8731|i2c_bitcnt[2]~11\);

-- Location: FF_X59_Y39_N5
\wm8731|i2c_bitcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_bitcnt[2]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_bitcnt\(2));

-- Location: LCCOMB_X59_Y39_N6
\wm8731|i2c_bitcnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[3]~12_combout\ = (\wm8731|i2c_bitcnt\(3) & (!\wm8731|i2c_bitcnt[2]~11\)) # (!\wm8731|i2c_bitcnt\(3) & ((\wm8731|i2c_bitcnt[2]~11\) # (GND)))
-- \wm8731|i2c_bitcnt[3]~13\ = CARRY((!\wm8731|i2c_bitcnt[2]~11\) # (!\wm8731|i2c_bitcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(3),
	datad => VCC,
	cin => \wm8731|i2c_bitcnt[2]~11\,
	combout => \wm8731|i2c_bitcnt[3]~12_combout\,
	cout => \wm8731|i2c_bitcnt[3]~13\);

-- Location: FF_X59_Y39_N7
\wm8731|i2c_bitcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_bitcnt[3]~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_bitcnt\(3));

-- Location: LCCOMB_X59_Y39_N8
\wm8731|i2c_bitcnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_bitcnt[4]~14_combout\ = \wm8731|i2c_bitcnt\(4) $ (!\wm8731|i2c_bitcnt[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(4),
	cin => \wm8731|i2c_bitcnt[3]~13\,
	combout => \wm8731|i2c_bitcnt[4]~14_combout\);

-- Location: FF_X59_Y39_N9
\wm8731|i2c_bitcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_bitcnt[4]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|i2c_bitcnt[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_bitcnt\(4));

-- Location: LCCOMB_X60_Y39_N10
\wm8731|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~3_combout\ = (\wm8731|i2c_bitcnt\(3) & (((\wm8731|i2c_bitcnt\(2) & \wm8731|i2c_bitcnt\(1))))) # (!\wm8731|i2c_bitcnt\(3) & ((\wm8731|i2c_bitcnt\(0) & (\wm8731|i2c_bitcnt\(2))) # (!\wm8731|i2c_bitcnt\(0) & ((!\wm8731|i2c_bitcnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(0),
	datab => \wm8731|i2c_bitcnt\(3),
	datac => \wm8731|i2c_bitcnt\(2),
	datad => \wm8731|i2c_bitcnt\(1),
	combout => \wm8731|Mux8~3_combout\);

-- Location: LCCOMB_X59_Y39_N28
\wm8731|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~2_combout\ = (\wm8731|i2c_wordcnt\(2) & (\wm8731|i2c_bitcnt\(0) $ (((\wm8731|i2c_wordcnt\(0)) # (\wm8731|i2c_wordcnt\(1)))))) # (!\wm8731|i2c_wordcnt\(2) & ((\wm8731|i2c_bitcnt\(0)) # ((!\wm8731|i2c_wordcnt\(0) & !\wm8731|i2c_wordcnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_wordcnt\(2),
	datab => \wm8731|i2c_bitcnt\(0),
	datac => \wm8731|i2c_wordcnt\(0),
	datad => \wm8731|i2c_wordcnt\(1),
	combout => \wm8731|Mux8~2_combout\);

-- Location: LCCOMB_X59_Y39_N30
\wm8731|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~4_combout\ = (!\wm8731|i2c_bitcnt\(4) & (\wm8731|Mux8~3_combout\ & ((\wm8731|Mux8~2_combout\) # (!\wm8731|i2c_bitcnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(4),
	datab => \wm8731|i2c_bitcnt\(3),
	datac => \wm8731|Mux8~3_combout\,
	datad => \wm8731|Mux8~2_combout\,
	combout => \wm8731|Mux8~4_combout\);

-- Location: LCCOMB_X59_Y39_N16
\wm8731|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~5_combout\ = (\wm8731|i2c_bitcnt\(3) & (\wm8731|i2c_wordcnt\(0) & ((\wm8731|i2c_bitcnt\(0)) # (!\wm8731|i2c_wordcnt\(2))))) # (!\wm8731|i2c_bitcnt\(3) & (\wm8731|i2c_bitcnt\(0) $ (((\wm8731|i2c_wordcnt\(0) & !\wm8731|i2c_wordcnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(3),
	datab => \wm8731|i2c_bitcnt\(0),
	datac => \wm8731|i2c_wordcnt\(0),
	datad => \wm8731|i2c_wordcnt\(2),
	combout => \wm8731|Mux8~5_combout\);

-- Location: LCCOMB_X59_Y39_N26
\wm8731|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~6_combout\ = (\wm8731|i2c_bitcnt\(3) & ((\wm8731|i2c_bitcnt\(2)) # (\wm8731|i2c_wordcnt\(1) $ (!\wm8731|Mux8~5_combout\)))) # (!\wm8731|i2c_bitcnt\(3) & (\wm8731|i2c_bitcnt\(2) & (\wm8731|i2c_wordcnt\(1) $ (!\wm8731|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(3),
	datab => \wm8731|i2c_wordcnt\(1),
	datac => \wm8731|i2c_bitcnt\(2),
	datad => \wm8731|Mux8~5_combout\,
	combout => \wm8731|Mux8~6_combout\);

-- Location: LCCOMB_X59_Y39_N20
\wm8731|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~9_combout\ = (\wm8731|i2c_bitcnt\(3)) # (\wm8731|i2c_bitcnt\(0) $ (\wm8731|i2c_wordcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(3),
	datab => \wm8731|i2c_bitcnt\(0),
	datad => \wm8731|i2c_wordcnt\(1),
	combout => \wm8731|Mux8~9_combout\);

-- Location: LCCOMB_X59_Y39_N22
\wm8731|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~13_combout\ = (\wm8731|i2c_wordcnt\(2)) # ((\wm8731|i2c_bitcnt\(2)) # ((\wm8731|i2c_wordcnt\(0)) # (\wm8731|i2c_wordcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_wordcnt\(2),
	datab => \wm8731|i2c_bitcnt\(2),
	datac => \wm8731|i2c_wordcnt\(0),
	datad => \wm8731|i2c_wordcnt\(1),
	combout => \wm8731|Mux8~13_combout\);

-- Location: LCCOMB_X59_Y39_N12
\wm8731|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~7_combout\ = (!\wm8731|i2c_bitcnt\(2) & ((\wm8731|i2c_wordcnt\(0) & (!\wm8731|i2c_wordcnt\(2) & \wm8731|i2c_wordcnt\(1))) # (!\wm8731|i2c_wordcnt\(0) & ((!\wm8731|i2c_wordcnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_wordcnt\(2),
	datab => \wm8731|i2c_bitcnt\(2),
	datac => \wm8731|i2c_wordcnt\(0),
	datad => \wm8731|i2c_wordcnt\(1),
	combout => \wm8731|Mux8~7_combout\);

-- Location: LCCOMB_X59_Y39_N14
\wm8731|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~10_combout\ = (\wm8731|i2c_bitcnt\(1) & (\wm8731|Mux8~9_combout\ & (\wm8731|Mux8~13_combout\))) # (!\wm8731|i2c_bitcnt\(1) & (((\wm8731|Mux8~7_combout\)) # (!\wm8731|Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(1),
	datab => \wm8731|Mux8~9_combout\,
	datac => \wm8731|Mux8~13_combout\,
	datad => \wm8731|Mux8~7_combout\,
	combout => \wm8731|Mux8~10_combout\);

-- Location: LCCOMB_X59_Y39_N10
\wm8731|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~8_combout\ = (\wm8731|Mux8~6_combout\ & (\wm8731|i2c_wordcnt\(1) & (\wm8731|i2c_bitcnt\(0) & \wm8731|Mux8~7_combout\))) # (!\wm8731|Mux8~6_combout\ & (\wm8731|Mux8~7_combout\ $ (((\wm8731|i2c_wordcnt\(1) & \wm8731|i2c_bitcnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_wordcnt\(1),
	datab => \wm8731|i2c_bitcnt\(0),
	datac => \wm8731|Mux8~6_combout\,
	datad => \wm8731|Mux8~7_combout\,
	combout => \wm8731|Mux8~8_combout\);

-- Location: LCCOMB_X59_Y39_N24
\wm8731|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~11_combout\ = (\wm8731|Mux8~10_combout\ & ((\wm8731|i2c_bitcnt\(1) & (\wm8731|Mux8~6_combout\)) # (!\wm8731|i2c_bitcnt\(1) & ((\wm8731|Mux8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Mux8~6_combout\,
	datab => \wm8731|i2c_bitcnt\(1),
	datac => \wm8731|Mux8~10_combout\,
	datad => \wm8731|Mux8~8_combout\,
	combout => \wm8731|Mux8~11_combout\);

-- Location: LCCOMB_X59_Y39_N18
\wm8731|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Mux8~12_combout\ = (\wm8731|Mux8~4_combout\) # ((\wm8731|i2c_bitcnt\(4) & \wm8731|Mux8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|i2c_bitcnt\(4),
	datac => \wm8731|Mux8~4_combout\,
	datad => \wm8731|Mux8~11_combout\,
	combout => \wm8731|Mux8~12_combout\);

-- Location: FF_X59_Y39_N19
\wm8731|i2c_sdat~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|Mux8~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_sdat~reg0_q\);

-- Location: LCCOMB_X60_Y39_N8
\wm8731|i2c_sdat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_sdat~0_combout\ = (\wm8731|i2c_bitcnt\(0) & (!\wm8731|i2c_bitcnt\(3) & (!\wm8731|i2c_bitcnt\(2) & \wm8731|i2c_bitcnt\(4)))) # (!\wm8731|i2c_bitcnt\(0) & (\wm8731|i2c_bitcnt\(3) & (\wm8731|i2c_bitcnt\(2) $ (!\wm8731|i2c_bitcnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(0),
	datab => \wm8731|i2c_bitcnt\(3),
	datac => \wm8731|i2c_bitcnt\(2),
	datad => \wm8731|i2c_bitcnt\(4),
	combout => \wm8731|i2c_sdat~0_combout\);

-- Location: LCCOMB_X60_Y39_N22
\wm8731|i2c_sdat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_sdat~1_combout\ = ((\wm8731|i2c_sdat~0_combout\ & (\wm8731|i2c_bitcnt\(1) $ (\wm8731|i2c_bitcnt\(2))))) # (!\wm8731|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|i2c_bitcnt\(1),
	datab => \wm8731|i2c_bitcnt\(2),
	datac => \wm8731|i2c_sdat~0_combout\,
	datad => \wm8731|Equal1~0_combout\,
	combout => \wm8731|i2c_sdat~1_combout\);

-- Location: FF_X60_Y39_N23
\wm8731|i2c_sdat~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_sdat~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_sdat~en_q\);

-- Location: IOIBUF_X115_Y13_N1
\switch_echo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_echo,
	o => \switch_echo~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: LCCOMB_X98_Y46_N12
\rect_gen|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal1~1_combout\ = (\keys[3]~input_o\ & (\keys[1]~input_o\ & (\keys[2]~input_o\ & \keys[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \keys[1]~input_o\,
	datac => \keys[2]~input_o\,
	datad => \keys[0]~input_o\,
	combout => \rect_gen|Equal1~1_combout\);

-- Location: LCCOMB_X101_Y46_N2
\rect_gen|max_count_square[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|max_count_square[14]~2_combout\ = (\keys[2]~input_o\ & (\keys[0]~input_o\ & \keys[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datac => \keys[0]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \rect_gen|max_count_square[14]~2_combout\);

-- Location: LCCOMB_X101_Y46_N0
\rect_gen|max_count_square[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|max_count_square[1]~0_combout\ = (\keys[0]~input_o\ & \keys[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keys[0]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \rect_gen|max_count_square[1]~0_combout\);

-- Location: LCCOMB_X98_Y46_N10
\rect_gen|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal1~0_combout\ = (\keys[1]~input_o\ & \keys[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[1]~input_o\,
	datac => \keys[2]~input_o\,
	combout => \rect_gen|Equal1~0_combout\);

-- Location: LCCOMB_X101_Y46_N6
\rect_gen|max_count_square~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|max_count_square~1_combout\ = (\keys[2]~input_o\) # (!\keys[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keys[2]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \rect_gen|max_count_square~1_combout\);

-- Location: LCCOMB_X101_Y46_N8
\rect_gen|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~1_cout\ = CARRY(!\keys[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[0]~input_o\,
	datad => VCC,
	cout => \rect_gen|Add0~1_cout\);

-- Location: LCCOMB_X101_Y46_N10
\rect_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~2_combout\ = (\rect_gen|Add0~1_cout\ & (((!\rect_gen|max_count_square[1]~0_combout\) # (!\keys[2]~input_o\)))) # (!\rect_gen|Add0~1_cout\ & (\keys[2]~input_o\ & (\rect_gen|max_count_square[1]~0_combout\)))
-- \rect_gen|Add0~3\ = CARRY((\keys[2]~input_o\ & (\rect_gen|max_count_square[1]~0_combout\ & !\rect_gen|Add0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \rect_gen|max_count_square[1]~0_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~1_cout\,
	combout => \rect_gen|Add0~2_combout\,
	cout => \rect_gen|Add0~3\);

-- Location: LCCOMB_X101_Y46_N12
\rect_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~4_combout\ = (\rect_gen|Add0~3\ & ((((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\))))) # (!\rect_gen|Add0~3\ & (((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\)) # (GND)))
-- \rect_gen|Add0~5\ = CARRY(((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\)) # (!\rect_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~0_combout\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~3\,
	combout => \rect_gen|Add0~4_combout\,
	cout => \rect_gen|Add0~5\);

-- Location: LCCOMB_X101_Y46_N14
\rect_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~6_combout\ = (\keys[2]~input_o\ & (((!\rect_gen|Add0~5\)))) # (!\keys[2]~input_o\ & ((\rect_gen|max_count_square[1]~0_combout\ & (\rect_gen|Add0~5\ & VCC)) # (!\rect_gen|max_count_square[1]~0_combout\ & (!\rect_gen|Add0~5\))))
-- \rect_gen|Add0~7\ = CARRY((!\rect_gen|Add0~5\ & ((\keys[2]~input_o\) # (!\rect_gen|max_count_square[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \rect_gen|max_count_square[1]~0_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~5\,
	combout => \rect_gen|Add0~6_combout\,
	cout => \rect_gen|Add0~7\);

-- Location: LCCOMB_X101_Y46_N16
\rect_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~8_combout\ = (\rect_gen|Add0~7\ & ((((!\keys[0]~input_o\) # (!\keys[1]~input_o\))))) # (!\rect_gen|Add0~7\ & (((GND) # (!\keys[0]~input_o\)) # (!\keys[1]~input_o\)))
-- \rect_gen|Add0~9\ = CARRY(((!\rect_gen|Add0~7\) # (!\keys[0]~input_o\)) # (!\keys[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[1]~input_o\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~7\,
	combout => \rect_gen|Add0~8_combout\,
	cout => \rect_gen|Add0~9\);

-- Location: LCCOMB_X101_Y46_N18
\rect_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~10_combout\ = (\rect_gen|Add0~9\ & (((!\keys[0]~input_o\) # (!\keys[1]~input_o\)))) # (!\rect_gen|Add0~9\ & (\keys[1]~input_o\ & (\keys[0]~input_o\)))
-- \rect_gen|Add0~11\ = CARRY((\keys[1]~input_o\ & (\keys[0]~input_o\ & !\rect_gen|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[1]~input_o\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~9\,
	combout => \rect_gen|Add0~10_combout\,
	cout => \rect_gen|Add0~11\);

-- Location: LCCOMB_X101_Y46_N20
\rect_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~12_combout\ = (\rect_gen|Add0~11\ & ((((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\))))) # (!\rect_gen|Add0~11\ & (((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\)) # (GND)))
-- \rect_gen|Add0~13\ = CARRY(((!\rect_gen|Equal1~0_combout\ & \keys[0]~input_o\)) # (!\rect_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~0_combout\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~11\,
	combout => \rect_gen|Add0~12_combout\,
	cout => \rect_gen|Add0~13\);

-- Location: LCCOMB_X101_Y46_N22
\rect_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~14_combout\ = (\keys[1]~input_o\ & (((!\rect_gen|Add0~13\)))) # (!\keys[1]~input_o\ & ((\keys[0]~input_o\ & (\rect_gen|Add0~13\ & VCC)) # (!\keys[0]~input_o\ & (!\rect_gen|Add0~13\))))
-- \rect_gen|Add0~15\ = CARRY((!\rect_gen|Add0~13\ & ((\keys[1]~input_o\) # (!\keys[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[1]~input_o\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~13\,
	combout => \rect_gen|Add0~14_combout\,
	cout => \rect_gen|Add0~15\);

-- Location: LCCOMB_X101_Y46_N24
\rect_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~16_combout\ = (\rect_gen|Add0~15\ & ((((!\keys[0]~input_o\) # (!\rect_gen|max_count_square~1_combout\))))) # (!\rect_gen|Add0~15\ & (((GND) # (!\keys[0]~input_o\)) # (!\rect_gen|max_count_square~1_combout\)))
-- \rect_gen|Add0~17\ = CARRY(((!\rect_gen|Add0~15\) # (!\keys[0]~input_o\)) # (!\rect_gen|max_count_square~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|max_count_square~1_combout\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~15\,
	combout => \rect_gen|Add0~16_combout\,
	cout => \rect_gen|Add0~17\);

-- Location: LCCOMB_X101_Y46_N26
\rect_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~18_combout\ = (\rect_gen|Equal1~0_combout\ & (((!\rect_gen|Add0~17\)))) # (!\rect_gen|Equal1~0_combout\ & ((\keys[0]~input_o\ & (\rect_gen|Add0~17\ & VCC)) # (!\keys[0]~input_o\ & (!\rect_gen|Add0~17\))))
-- \rect_gen|Add0~19\ = CARRY((!\rect_gen|Add0~17\ & ((\rect_gen|Equal1~0_combout\) # (!\keys[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~0_combout\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~17\,
	combout => \rect_gen|Add0~18_combout\,
	cout => \rect_gen|Add0~19\);

-- Location: LCCOMB_X101_Y46_N28
\rect_gen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~20_combout\ = (\rect_gen|Add0~19\ & ((((!\keys[1]~input_o\ & \keys[0]~input_o\))))) # (!\rect_gen|Add0~19\ & (((!\keys[1]~input_o\ & \keys[0]~input_o\)) # (GND)))
-- \rect_gen|Add0~21\ = CARRY(((!\keys[1]~input_o\ & \keys[0]~input_o\)) # (!\rect_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[1]~input_o\,
	datab => \keys[0]~input_o\,
	datad => VCC,
	cin => \rect_gen|Add0~19\,
	combout => \rect_gen|Add0~20_combout\,
	cout => \rect_gen|Add0~21\);

-- Location: LCCOMB_X101_Y46_N30
\rect_gen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~22_combout\ = (\keys[2]~input_o\ & (((!\rect_gen|Add0~21\)))) # (!\keys[2]~input_o\ & ((\rect_gen|max_count_square[1]~0_combout\ & (\rect_gen|Add0~21\ & VCC)) # (!\rect_gen|max_count_square[1]~0_combout\ & (!\rect_gen|Add0~21\))))
-- \rect_gen|Add0~23\ = CARRY((!\rect_gen|Add0~21\ & ((\keys[2]~input_o\) # (!\rect_gen|max_count_square[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[2]~input_o\,
	datab => \rect_gen|max_count_square[1]~0_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~21\,
	combout => \rect_gen|Add0~22_combout\,
	cout => \rect_gen|Add0~23\);

-- Location: LCCOMB_X101_Y45_N0
\rect_gen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~24_combout\ = (\rect_gen|Add0~23\ & ((((!\rect_gen|max_count_square[14]~2_combout\) # (!\keys[3]~input_o\))))) # (!\rect_gen|Add0~23\ & (((GND) # (!\rect_gen|max_count_square[14]~2_combout\)) # (!\keys[3]~input_o\)))
-- \rect_gen|Add0~25\ = CARRY(((!\rect_gen|Add0~23\) # (!\rect_gen|max_count_square[14]~2_combout\)) # (!\keys[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \rect_gen|max_count_square[14]~2_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~23\,
	combout => \rect_gen|Add0~24_combout\,
	cout => \rect_gen|Add0~25\);

-- Location: LCCOMB_X101_Y45_N2
\rect_gen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~26_combout\ = !\rect_gen|Add0~25\
-- \rect_gen|Add0~27\ = CARRY(!\rect_gen|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~25\,
	combout => \rect_gen|Add0~26_combout\,
	cout => \rect_gen|Add0~27\);

-- Location: LCCOMB_X101_Y45_N4
\rect_gen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~28_combout\ = (\rect_gen|Add0~27\ & ((((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\))))) # (!\rect_gen|Add0~27\ & (((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (GND)))
-- \rect_gen|Add0~29\ = CARRY(((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (!\rect_gen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \rect_gen|max_count_square[14]~2_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~27\,
	combout => \rect_gen|Add0~28_combout\,
	cout => \rect_gen|Add0~29\);

-- Location: LCCOMB_X101_Y45_N6
\rect_gen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~30_combout\ = !\rect_gen|Add0~29\
-- \rect_gen|Add0~31\ = CARRY(!\rect_gen|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~29\,
	combout => \rect_gen|Add0~30_combout\,
	cout => \rect_gen|Add0~31\);

-- Location: LCCOMB_X101_Y45_N8
\rect_gen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~32_combout\ = \rect_gen|Add0~31\ $ (GND)
-- \rect_gen|Add0~33\ = CARRY(!\rect_gen|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~31\,
	combout => \rect_gen|Add0~32_combout\,
	cout => \rect_gen|Add0~33\);

-- Location: LCCOMB_X101_Y45_N10
\rect_gen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~34_combout\ = (\keys[3]~input_o\ & (((!\rect_gen|Add0~33\)))) # (!\keys[3]~input_o\ & ((\rect_gen|max_count_square[14]~2_combout\ & (\rect_gen|Add0~33\ & VCC)) # (!\rect_gen|max_count_square[14]~2_combout\ & (!\rect_gen|Add0~33\))))
-- \rect_gen|Add0~35\ = CARRY((!\rect_gen|Add0~33\ & ((\keys[3]~input_o\) # (!\rect_gen|max_count_square[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \rect_gen|max_count_square[14]~2_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~33\,
	combout => \rect_gen|Add0~34_combout\,
	cout => \rect_gen|Add0~35\);

-- Location: LCCOMB_X101_Y45_N12
\rect_gen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~36_combout\ = (\rect_gen|Add0~35\ & ((((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\))))) # (!\rect_gen|Add0~35\ & (((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (GND)))
-- \rect_gen|Add0~37\ = CARRY(((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (!\rect_gen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \rect_gen|max_count_square[14]~2_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~35\,
	combout => \rect_gen|Add0~36_combout\,
	cout => \rect_gen|Add0~37\);

-- Location: LCCOMB_X101_Y45_N14
\rect_gen|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~38_combout\ = !\rect_gen|Add0~37\
-- \rect_gen|Add0~39\ = CARRY(!\rect_gen|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~37\,
	combout => \rect_gen|Add0~38_combout\,
	cout => \rect_gen|Add0~39\);

-- Location: LCCOMB_X102_Y46_N10
\rect_gen|tone_cnt_square[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[0]~23_combout\ = \rect_gen|tone_cnt_square\(0) $ (VCC)
-- \rect_gen|tone_cnt_square[0]~24\ = CARRY(\rect_gen|tone_cnt_square\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(0),
	datad => VCC,
	combout => \rect_gen|tone_cnt_square[0]~23_combout\,
	cout => \rect_gen|tone_cnt_square[0]~24\);

-- Location: LCCOMB_X98_Y46_N28
\rect_gen|tone_cnt_square[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[21]~27_combout\ = (\rect_gen|Equal1~1_combout\) # (\rect_gen|Equal0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~1_combout\,
	datad => \rect_gen|Equal0~15_combout\,
	combout => \rect_gen|tone_cnt_square[21]~27_combout\);

-- Location: FF_X102_Y46_N11
\rect_gen|tone_cnt_square[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[0]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(0));

-- Location: LCCOMB_X102_Y46_N12
\rect_gen|tone_cnt_square[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[1]~25_combout\ = (\rect_gen|tone_cnt_square\(1) & (!\rect_gen|tone_cnt_square[0]~24\)) # (!\rect_gen|tone_cnt_square\(1) & ((\rect_gen|tone_cnt_square[0]~24\) # (GND)))
-- \rect_gen|tone_cnt_square[1]~26\ = CARRY((!\rect_gen|tone_cnt_square[0]~24\) # (!\rect_gen|tone_cnt_square\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(1),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[0]~24\,
	combout => \rect_gen|tone_cnt_square[1]~25_combout\,
	cout => \rect_gen|tone_cnt_square[1]~26\);

-- Location: FF_X102_Y46_N13
\rect_gen|tone_cnt_square[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[1]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(1));

-- Location: LCCOMB_X102_Y46_N14
\rect_gen|tone_cnt_square[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[2]~28_combout\ = (\rect_gen|tone_cnt_square\(2) & (\rect_gen|tone_cnt_square[1]~26\ $ (GND))) # (!\rect_gen|tone_cnt_square\(2) & (!\rect_gen|tone_cnt_square[1]~26\ & VCC))
-- \rect_gen|tone_cnt_square[2]~29\ = CARRY((\rect_gen|tone_cnt_square\(2) & !\rect_gen|tone_cnt_square[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(2),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[1]~26\,
	combout => \rect_gen|tone_cnt_square[2]~28_combout\,
	cout => \rect_gen|tone_cnt_square[2]~29\);

-- Location: FF_X102_Y46_N15
\rect_gen|tone_cnt_square[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[2]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(2));

-- Location: LCCOMB_X102_Y46_N16
\rect_gen|tone_cnt_square[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[3]~30_combout\ = (\rect_gen|tone_cnt_square\(3) & (!\rect_gen|tone_cnt_square[2]~29\)) # (!\rect_gen|tone_cnt_square\(3) & ((\rect_gen|tone_cnt_square[2]~29\) # (GND)))
-- \rect_gen|tone_cnt_square[3]~31\ = CARRY((!\rect_gen|tone_cnt_square[2]~29\) # (!\rect_gen|tone_cnt_square\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(3),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[2]~29\,
	combout => \rect_gen|tone_cnt_square[3]~30_combout\,
	cout => \rect_gen|tone_cnt_square[3]~31\);

-- Location: FF_X102_Y46_N17
\rect_gen|tone_cnt_square[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[3]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(3));

-- Location: LCCOMB_X102_Y46_N18
\rect_gen|tone_cnt_square[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[4]~32_combout\ = (\rect_gen|tone_cnt_square\(4) & (\rect_gen|tone_cnt_square[3]~31\ $ (GND))) # (!\rect_gen|tone_cnt_square\(4) & (!\rect_gen|tone_cnt_square[3]~31\ & VCC))
-- \rect_gen|tone_cnt_square[4]~33\ = CARRY((\rect_gen|tone_cnt_square\(4) & !\rect_gen|tone_cnt_square[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(4),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[3]~31\,
	combout => \rect_gen|tone_cnt_square[4]~32_combout\,
	cout => \rect_gen|tone_cnt_square[4]~33\);

-- Location: FF_X102_Y46_N19
\rect_gen|tone_cnt_square[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[4]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(4));

-- Location: LCCOMB_X102_Y46_N20
\rect_gen|tone_cnt_square[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[5]~34_combout\ = (\rect_gen|tone_cnt_square\(5) & (!\rect_gen|tone_cnt_square[4]~33\)) # (!\rect_gen|tone_cnt_square\(5) & ((\rect_gen|tone_cnt_square[4]~33\) # (GND)))
-- \rect_gen|tone_cnt_square[5]~35\ = CARRY((!\rect_gen|tone_cnt_square[4]~33\) # (!\rect_gen|tone_cnt_square\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(5),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[4]~33\,
	combout => \rect_gen|tone_cnt_square[5]~34_combout\,
	cout => \rect_gen|tone_cnt_square[5]~35\);

-- Location: FF_X102_Y46_N21
\rect_gen|tone_cnt_square[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[5]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(5));

-- Location: LCCOMB_X102_Y46_N22
\rect_gen|tone_cnt_square[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[6]~36_combout\ = (\rect_gen|tone_cnt_square\(6) & (\rect_gen|tone_cnt_square[5]~35\ $ (GND))) # (!\rect_gen|tone_cnt_square\(6) & (!\rect_gen|tone_cnt_square[5]~35\ & VCC))
-- \rect_gen|tone_cnt_square[6]~37\ = CARRY((\rect_gen|tone_cnt_square\(6) & !\rect_gen|tone_cnt_square[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(6),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[5]~35\,
	combout => \rect_gen|tone_cnt_square[6]~36_combout\,
	cout => \rect_gen|tone_cnt_square[6]~37\);

-- Location: FF_X102_Y46_N23
\rect_gen|tone_cnt_square[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[6]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(6));

-- Location: LCCOMB_X102_Y46_N24
\rect_gen|tone_cnt_square[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[7]~38_combout\ = (\rect_gen|tone_cnt_square\(7) & (!\rect_gen|tone_cnt_square[6]~37\)) # (!\rect_gen|tone_cnt_square\(7) & ((\rect_gen|tone_cnt_square[6]~37\) # (GND)))
-- \rect_gen|tone_cnt_square[7]~39\ = CARRY((!\rect_gen|tone_cnt_square[6]~37\) # (!\rect_gen|tone_cnt_square\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(7),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[6]~37\,
	combout => \rect_gen|tone_cnt_square[7]~38_combout\,
	cout => \rect_gen|tone_cnt_square[7]~39\);

-- Location: FF_X102_Y46_N25
\rect_gen|tone_cnt_square[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[7]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(7));

-- Location: LCCOMB_X102_Y46_N26
\rect_gen|tone_cnt_square[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[8]~40_combout\ = (\rect_gen|tone_cnt_square\(8) & (\rect_gen|tone_cnt_square[7]~39\ $ (GND))) # (!\rect_gen|tone_cnt_square\(8) & (!\rect_gen|tone_cnt_square[7]~39\ & VCC))
-- \rect_gen|tone_cnt_square[8]~41\ = CARRY((\rect_gen|tone_cnt_square\(8) & !\rect_gen|tone_cnt_square[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(8),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[7]~39\,
	combout => \rect_gen|tone_cnt_square[8]~40_combout\,
	cout => \rect_gen|tone_cnt_square[8]~41\);

-- Location: FF_X102_Y46_N27
\rect_gen|tone_cnt_square[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[8]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(8));

-- Location: LCCOMB_X102_Y46_N28
\rect_gen|tone_cnt_square[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[9]~42_combout\ = (\rect_gen|tone_cnt_square\(9) & (!\rect_gen|tone_cnt_square[8]~41\)) # (!\rect_gen|tone_cnt_square\(9) & ((\rect_gen|tone_cnt_square[8]~41\) # (GND)))
-- \rect_gen|tone_cnt_square[9]~43\ = CARRY((!\rect_gen|tone_cnt_square[8]~41\) # (!\rect_gen|tone_cnt_square\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(9),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[8]~41\,
	combout => \rect_gen|tone_cnt_square[9]~42_combout\,
	cout => \rect_gen|tone_cnt_square[9]~43\);

-- Location: FF_X102_Y46_N29
\rect_gen|tone_cnt_square[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[9]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(9));

-- Location: LCCOMB_X102_Y46_N30
\rect_gen|tone_cnt_square[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[10]~44_combout\ = (\rect_gen|tone_cnt_square\(10) & (\rect_gen|tone_cnt_square[9]~43\ $ (GND))) # (!\rect_gen|tone_cnt_square\(10) & (!\rect_gen|tone_cnt_square[9]~43\ & VCC))
-- \rect_gen|tone_cnt_square[10]~45\ = CARRY((\rect_gen|tone_cnt_square\(10) & !\rect_gen|tone_cnt_square[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(10),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[9]~43\,
	combout => \rect_gen|tone_cnt_square[10]~44_combout\,
	cout => \rect_gen|tone_cnt_square[10]~45\);

-- Location: FF_X102_Y46_N31
\rect_gen|tone_cnt_square[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[10]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(10));

-- Location: LCCOMB_X102_Y45_N0
\rect_gen|tone_cnt_square[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[11]~46_combout\ = (\rect_gen|tone_cnt_square\(11) & (!\rect_gen|tone_cnt_square[10]~45\)) # (!\rect_gen|tone_cnt_square\(11) & ((\rect_gen|tone_cnt_square[10]~45\) # (GND)))
-- \rect_gen|tone_cnt_square[11]~47\ = CARRY((!\rect_gen|tone_cnt_square[10]~45\) # (!\rect_gen|tone_cnt_square\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(11),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[10]~45\,
	combout => \rect_gen|tone_cnt_square[11]~46_combout\,
	cout => \rect_gen|tone_cnt_square[11]~47\);

-- Location: FF_X102_Y45_N1
\rect_gen|tone_cnt_square[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[11]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(11));

-- Location: LCCOMB_X102_Y45_N2
\rect_gen|tone_cnt_square[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[12]~48_combout\ = (\rect_gen|tone_cnt_square\(12) & (\rect_gen|tone_cnt_square[11]~47\ $ (GND))) # (!\rect_gen|tone_cnt_square\(12) & (!\rect_gen|tone_cnt_square[11]~47\ & VCC))
-- \rect_gen|tone_cnt_square[12]~49\ = CARRY((\rect_gen|tone_cnt_square\(12) & !\rect_gen|tone_cnt_square[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(12),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[11]~47\,
	combout => \rect_gen|tone_cnt_square[12]~48_combout\,
	cout => \rect_gen|tone_cnt_square[12]~49\);

-- Location: FF_X102_Y45_N3
\rect_gen|tone_cnt_square[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[12]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(12));

-- Location: LCCOMB_X102_Y45_N4
\rect_gen|tone_cnt_square[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[13]~50_combout\ = (\rect_gen|tone_cnt_square\(13) & (!\rect_gen|tone_cnt_square[12]~49\)) # (!\rect_gen|tone_cnt_square\(13) & ((\rect_gen|tone_cnt_square[12]~49\) # (GND)))
-- \rect_gen|tone_cnt_square[13]~51\ = CARRY((!\rect_gen|tone_cnt_square[12]~49\) # (!\rect_gen|tone_cnt_square\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(13),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[12]~49\,
	combout => \rect_gen|tone_cnt_square[13]~50_combout\,
	cout => \rect_gen|tone_cnt_square[13]~51\);

-- Location: FF_X102_Y45_N5
\rect_gen|tone_cnt_square[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[13]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(13));

-- Location: LCCOMB_X102_Y45_N6
\rect_gen|tone_cnt_square[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[14]~52_combout\ = (\rect_gen|tone_cnt_square\(14) & (\rect_gen|tone_cnt_square[13]~51\ $ (GND))) # (!\rect_gen|tone_cnt_square\(14) & (!\rect_gen|tone_cnt_square[13]~51\ & VCC))
-- \rect_gen|tone_cnt_square[14]~53\ = CARRY((\rect_gen|tone_cnt_square\(14) & !\rect_gen|tone_cnt_square[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(14),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[13]~51\,
	combout => \rect_gen|tone_cnt_square[14]~52_combout\,
	cout => \rect_gen|tone_cnt_square[14]~53\);

-- Location: FF_X102_Y45_N7
\rect_gen|tone_cnt_square[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[14]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(14));

-- Location: LCCOMB_X102_Y45_N8
\rect_gen|tone_cnt_square[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[15]~54_combout\ = (\rect_gen|tone_cnt_square\(15) & (!\rect_gen|tone_cnt_square[14]~53\)) # (!\rect_gen|tone_cnt_square\(15) & ((\rect_gen|tone_cnt_square[14]~53\) # (GND)))
-- \rect_gen|tone_cnt_square[15]~55\ = CARRY((!\rect_gen|tone_cnt_square[14]~53\) # (!\rect_gen|tone_cnt_square\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(15),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[14]~53\,
	combout => \rect_gen|tone_cnt_square[15]~54_combout\,
	cout => \rect_gen|tone_cnt_square[15]~55\);

-- Location: FF_X102_Y45_N9
\rect_gen|tone_cnt_square[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[15]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(15));

-- Location: LCCOMB_X102_Y45_N10
\rect_gen|tone_cnt_square[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[16]~56_combout\ = (\rect_gen|tone_cnt_square\(16) & (\rect_gen|tone_cnt_square[15]~55\ $ (GND))) # (!\rect_gen|tone_cnt_square\(16) & (!\rect_gen|tone_cnt_square[15]~55\ & VCC))
-- \rect_gen|tone_cnt_square[16]~57\ = CARRY((\rect_gen|tone_cnt_square\(16) & !\rect_gen|tone_cnt_square[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(16),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[15]~55\,
	combout => \rect_gen|tone_cnt_square[16]~56_combout\,
	cout => \rect_gen|tone_cnt_square[16]~57\);

-- Location: FF_X102_Y45_N11
\rect_gen|tone_cnt_square[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[16]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(16));

-- Location: LCCOMB_X102_Y45_N12
\rect_gen|tone_cnt_square[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[17]~58_combout\ = (\rect_gen|tone_cnt_square\(17) & (!\rect_gen|tone_cnt_square[16]~57\)) # (!\rect_gen|tone_cnt_square\(17) & ((\rect_gen|tone_cnt_square[16]~57\) # (GND)))
-- \rect_gen|tone_cnt_square[17]~59\ = CARRY((!\rect_gen|tone_cnt_square[16]~57\) # (!\rect_gen|tone_cnt_square\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(17),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[16]~57\,
	combout => \rect_gen|tone_cnt_square[17]~58_combout\,
	cout => \rect_gen|tone_cnt_square[17]~59\);

-- Location: FF_X102_Y45_N13
\rect_gen|tone_cnt_square[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[17]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(17));

-- Location: LCCOMB_X102_Y45_N24
\rect_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~10_combout\ = (\rect_gen|tone_cnt_square\(17) & (\rect_gen|Add0~34_combout\ & (\rect_gen|Add0~32_combout\ $ (!\rect_gen|tone_cnt_square\(16))))) # (!\rect_gen|tone_cnt_square\(17) & (!\rect_gen|Add0~34_combout\ & 
-- (\rect_gen|Add0~32_combout\ $ (!\rect_gen|tone_cnt_square\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(17),
	datab => \rect_gen|Add0~32_combout\,
	datac => \rect_gen|Add0~34_combout\,
	datad => \rect_gen|tone_cnt_square\(16),
	combout => \rect_gen|Equal0~10_combout\);

-- Location: LCCOMB_X102_Y45_N14
\rect_gen|tone_cnt_square[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[18]~60_combout\ = (\rect_gen|tone_cnt_square\(18) & (\rect_gen|tone_cnt_square[17]~59\ $ (GND))) # (!\rect_gen|tone_cnt_square\(18) & (!\rect_gen|tone_cnt_square[17]~59\ & VCC))
-- \rect_gen|tone_cnt_square[18]~61\ = CARRY((\rect_gen|tone_cnt_square\(18) & !\rect_gen|tone_cnt_square[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(18),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[17]~59\,
	combout => \rect_gen|tone_cnt_square[18]~60_combout\,
	cout => \rect_gen|tone_cnt_square[18]~61\);

-- Location: FF_X102_Y45_N15
\rect_gen|tone_cnt_square[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[18]~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(18));

-- Location: LCCOMB_X102_Y45_N26
\rect_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~11_combout\ = \rect_gen|tone_cnt_square\(18) $ (\rect_gen|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rect_gen|tone_cnt_square\(18),
	datad => \rect_gen|Add0~36_combout\,
	combout => \rect_gen|Equal0~11_combout\);

-- Location: LCCOMB_X102_Y45_N16
\rect_gen|tone_cnt_square[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[19]~62_combout\ = (\rect_gen|tone_cnt_square\(19) & (!\rect_gen|tone_cnt_square[18]~61\)) # (!\rect_gen|tone_cnt_square\(19) & ((\rect_gen|tone_cnt_square[18]~61\) # (GND)))
-- \rect_gen|tone_cnt_square[19]~63\ = CARRY((!\rect_gen|tone_cnt_square[18]~61\) # (!\rect_gen|tone_cnt_square\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(19),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[18]~61\,
	combout => \rect_gen|tone_cnt_square[19]~62_combout\,
	cout => \rect_gen|tone_cnt_square[19]~63\);

-- Location: FF_X102_Y45_N17
\rect_gen|tone_cnt_square[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[19]~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(19));

-- Location: LCCOMB_X102_Y45_N28
\rect_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~12_combout\ = (\rect_gen|Equal0~10_combout\ & (!\rect_gen|Equal0~11_combout\ & (\rect_gen|Add0~38_combout\ $ (!\rect_gen|tone_cnt_square\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Add0~38_combout\,
	datab => \rect_gen|Equal0~10_combout\,
	datac => \rect_gen|Equal0~11_combout\,
	datad => \rect_gen|tone_cnt_square\(19),
	combout => \rect_gen|Equal0~12_combout\);

-- Location: LCCOMB_X101_Y45_N30
\rect_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~8_combout\ = (\rect_gen|Add0~30_combout\ & (\rect_gen|tone_cnt_square\(15) & (\rect_gen|Add0~28_combout\ $ (!\rect_gen|tone_cnt_square\(14))))) # (!\rect_gen|Add0~30_combout\ & (!\rect_gen|tone_cnt_square\(15) & 
-- (\rect_gen|Add0~28_combout\ $ (!\rect_gen|tone_cnt_square\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Add0~30_combout\,
	datab => \rect_gen|Add0~28_combout\,
	datac => \rect_gen|tone_cnt_square\(15),
	datad => \rect_gen|tone_cnt_square\(14),
	combout => \rect_gen|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y46_N28
\rect_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~6_combout\ = (\rect_gen|tone_cnt_square\(11) & (\rect_gen|Add0~22_combout\ & (\rect_gen|Add0~20_combout\ $ (!\rect_gen|tone_cnt_square\(10))))) # (!\rect_gen|tone_cnt_square\(11) & (!\rect_gen|Add0~22_combout\ & 
-- (\rect_gen|Add0~20_combout\ $ (!\rect_gen|tone_cnt_square\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(11),
	datab => \rect_gen|Add0~20_combout\,
	datac => \rect_gen|Add0~22_combout\,
	datad => \rect_gen|tone_cnt_square\(10),
	combout => \rect_gen|Equal0~6_combout\);

-- Location: LCCOMB_X101_Y45_N24
\rect_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~7_combout\ = (\rect_gen|tone_cnt_square\(13) & (\rect_gen|Add0~26_combout\ & (\rect_gen|Add0~24_combout\ $ (!\rect_gen|tone_cnt_square\(12))))) # (!\rect_gen|tone_cnt_square\(13) & (!\rect_gen|Add0~26_combout\ & 
-- (\rect_gen|Add0~24_combout\ $ (!\rect_gen|tone_cnt_square\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(13),
	datab => \rect_gen|Add0~24_combout\,
	datac => \rect_gen|Add0~26_combout\,
	datad => \rect_gen|tone_cnt_square\(12),
	combout => \rect_gen|Equal0~7_combout\);

-- Location: LCCOMB_X101_Y46_N4
\rect_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~5_combout\ = (\rect_gen|tone_cnt_square\(9) & (\rect_gen|Add0~18_combout\ & (\rect_gen|tone_cnt_square\(8) $ (!\rect_gen|Add0~16_combout\)))) # (!\rect_gen|tone_cnt_square\(9) & (!\rect_gen|Add0~18_combout\ & 
-- (\rect_gen|tone_cnt_square\(8) $ (!\rect_gen|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(9),
	datab => \rect_gen|tone_cnt_square\(8),
	datac => \rect_gen|Add0~18_combout\,
	datad => \rect_gen|Add0~16_combout\,
	combout => \rect_gen|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y46_N18
\rect_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~9_combout\ = (\rect_gen|Equal0~8_combout\ & (\rect_gen|Equal0~6_combout\ & (\rect_gen|Equal0~7_combout\ & \rect_gen|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal0~8_combout\,
	datab => \rect_gen|Equal0~6_combout\,
	datac => \rect_gen|Equal0~7_combout\,
	datad => \rect_gen|Equal0~5_combout\,
	combout => \rect_gen|Equal0~9_combout\);

-- Location: LCCOMB_X102_Y45_N18
\rect_gen|tone_cnt_square[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[20]~64_combout\ = (\rect_gen|tone_cnt_square\(20) & (\rect_gen|tone_cnt_square[19]~63\ $ (GND))) # (!\rect_gen|tone_cnt_square\(20) & (!\rect_gen|tone_cnt_square[19]~63\ & VCC))
-- \rect_gen|tone_cnt_square[20]~65\ = CARRY((\rect_gen|tone_cnt_square\(20) & !\rect_gen|tone_cnt_square[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(20),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[19]~63\,
	combout => \rect_gen|tone_cnt_square[20]~64_combout\,
	cout => \rect_gen|tone_cnt_square[20]~65\);

-- Location: FF_X102_Y45_N19
\rect_gen|tone_cnt_square[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[20]~64_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(20));

-- Location: LCCOMB_X102_Y45_N20
\rect_gen|tone_cnt_square[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[21]~66_combout\ = (\rect_gen|tone_cnt_square\(21) & (!\rect_gen|tone_cnt_square[20]~65\)) # (!\rect_gen|tone_cnt_square\(21) & ((\rect_gen|tone_cnt_square[20]~65\) # (GND)))
-- \rect_gen|tone_cnt_square[21]~67\ = CARRY((!\rect_gen|tone_cnt_square[20]~65\) # (!\rect_gen|tone_cnt_square\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rect_gen|tone_cnt_square\(21),
	datad => VCC,
	cin => \rect_gen|tone_cnt_square[20]~65\,
	combout => \rect_gen|tone_cnt_square[21]~66_combout\,
	cout => \rect_gen|tone_cnt_square[21]~67\);

-- Location: FF_X102_Y45_N21
\rect_gen|tone_cnt_square[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[21]~66_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(21));

-- Location: LCCOMB_X102_Y45_N22
\rect_gen|tone_cnt_square[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|tone_cnt_square[22]~68_combout\ = \rect_gen|tone_cnt_square\(22) $ (!\rect_gen|tone_cnt_square[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(22),
	cin => \rect_gen|tone_cnt_square[21]~67\,
	combout => \rect_gen|tone_cnt_square[22]~68_combout\);

-- Location: FF_X102_Y45_N23
\rect_gen|tone_cnt_square[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|tone_cnt_square[22]~68_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \rect_gen|tone_cnt_square[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|tone_cnt_square\(22));

-- Location: LCCOMB_X101_Y45_N16
\rect_gen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~40_combout\ = \rect_gen|Add0~39\ $ (GND)
-- \rect_gen|Add0~41\ = CARRY(!\rect_gen|Add0~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~39\,
	combout => \rect_gen|Add0~40_combout\,
	cout => \rect_gen|Add0~41\);

-- Location: LCCOMB_X101_Y45_N18
\rect_gen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~42_combout\ = !\rect_gen|Add0~41\
-- \rect_gen|Add0~43\ = CARRY(!\rect_gen|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \rect_gen|Add0~41\,
	combout => \rect_gen|Add0~42_combout\,
	cout => \rect_gen|Add0~43\);

-- Location: LCCOMB_X101_Y45_N28
\rect_gen|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~13_combout\ = (\rect_gen|tone_cnt_square\(20) & (\rect_gen|Add0~40_combout\ & (\rect_gen|tone_cnt_square\(21) $ (!\rect_gen|Add0~42_combout\)))) # (!\rect_gen|tone_cnt_square\(20) & (!\rect_gen|Add0~40_combout\ & 
-- (\rect_gen|tone_cnt_square\(21) $ (!\rect_gen|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(20),
	datab => \rect_gen|Add0~40_combout\,
	datac => \rect_gen|tone_cnt_square\(21),
	datad => \rect_gen|Add0~42_combout\,
	combout => \rect_gen|Equal0~13_combout\);

-- Location: LCCOMB_X101_Y45_N20
\rect_gen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~44_combout\ = (\rect_gen|Add0~43\ & ((((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\))))) # (!\rect_gen|Add0~43\ & (((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (GND)))
-- \rect_gen|Add0~45\ = CARRY(((!\keys[3]~input_o\ & \rect_gen|max_count_square[14]~2_combout\)) # (!\rect_gen|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keys[3]~input_o\,
	datab => \rect_gen|max_count_square[14]~2_combout\,
	datad => VCC,
	cin => \rect_gen|Add0~43\,
	combout => \rect_gen|Add0~44_combout\,
	cout => \rect_gen|Add0~45\);

-- Location: LCCOMB_X101_Y45_N22
\rect_gen|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Add0~46_combout\ = !\rect_gen|Add0~45\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \rect_gen|Add0~45\,
	combout => \rect_gen|Add0~46_combout\);

-- Location: LCCOMB_X101_Y45_N26
\rect_gen|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~14_combout\ = (\rect_gen|Equal0~13_combout\ & (!\rect_gen|Add0~46_combout\ & (\rect_gen|tone_cnt_square\(22) $ (!\rect_gen|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(22),
	datab => \rect_gen|Equal0~13_combout\,
	datac => \rect_gen|Add0~46_combout\,
	datad => \rect_gen|Add0~44_combout\,
	combout => \rect_gen|Equal0~14_combout\);

-- Location: LCCOMB_X102_Y46_N6
\rect_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~3_combout\ = (\rect_gen|Add0~14_combout\ & (\rect_gen|tone_cnt_square\(7) & (\rect_gen|Add0~12_combout\ $ (!\rect_gen|tone_cnt_square\(6))))) # (!\rect_gen|Add0~14_combout\ & (!\rect_gen|tone_cnt_square\(7) & (\rect_gen|Add0~12_combout\ $ 
-- (!\rect_gen|tone_cnt_square\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Add0~14_combout\,
	datab => \rect_gen|Add0~12_combout\,
	datac => \rect_gen|tone_cnt_square\(6),
	datad => \rect_gen|tone_cnt_square\(7),
	combout => \rect_gen|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y46_N2
\rect_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~1_combout\ = (\rect_gen|Add0~6_combout\ & (\rect_gen|tone_cnt_square\(3) & (\rect_gen|tone_cnt_square\(2) $ (!\rect_gen|Add0~4_combout\)))) # (!\rect_gen|Add0~6_combout\ & (!\rect_gen|tone_cnt_square\(3) & (\rect_gen|tone_cnt_square\(2) $ 
-- (!\rect_gen|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Add0~6_combout\,
	datab => \rect_gen|tone_cnt_square\(3),
	datac => \rect_gen|tone_cnt_square\(2),
	datad => \rect_gen|Add0~4_combout\,
	combout => \rect_gen|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y46_N8
\rect_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~2_combout\ = (\rect_gen|Add0~10_combout\ & (\rect_gen|tone_cnt_square\(5) & (\rect_gen|Add0~8_combout\ $ (!\rect_gen|tone_cnt_square\(4))))) # (!\rect_gen|Add0~10_combout\ & (!\rect_gen|tone_cnt_square\(5) & (\rect_gen|Add0~8_combout\ $ 
-- (!\rect_gen|tone_cnt_square\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Add0~10_combout\,
	datab => \rect_gen|tone_cnt_square\(5),
	datac => \rect_gen|Add0~8_combout\,
	datad => \rect_gen|tone_cnt_square\(4),
	combout => \rect_gen|Equal0~2_combout\);

-- Location: LCCOMB_X102_Y46_N0
\rect_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~0_combout\ = (\rect_gen|tone_cnt_square\(1) & (\rect_gen|Add0~2_combout\ & (\keys[0]~input_o\ $ (!\rect_gen|tone_cnt_square\(0))))) # (!\rect_gen|tone_cnt_square\(1) & (!\rect_gen|Add0~2_combout\ & (\keys[0]~input_o\ $ 
-- (!\rect_gen|tone_cnt_square\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|tone_cnt_square\(1),
	datab => \rect_gen|Add0~2_combout\,
	datac => \keys[0]~input_o\,
	datad => \rect_gen|tone_cnt_square\(0),
	combout => \rect_gen|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y46_N4
\rect_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~4_combout\ = (\rect_gen|Equal0~3_combout\ & (\rect_gen|Equal0~1_combout\ & (\rect_gen|Equal0~2_combout\ & \rect_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal0~3_combout\,
	datab => \rect_gen|Equal0~1_combout\,
	datac => \rect_gen|Equal0~2_combout\,
	datad => \rect_gen|Equal0~0_combout\,
	combout => \rect_gen|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y46_N0
\rect_gen|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|Equal0~15_combout\ = (\rect_gen|Equal0~12_combout\ & (\rect_gen|Equal0~9_combout\ & (\rect_gen|Equal0~14_combout\ & \rect_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal0~12_combout\,
	datab => \rect_gen|Equal0~9_combout\,
	datac => \rect_gen|Equal0~14_combout\,
	datad => \rect_gen|Equal0~4_combout\,
	combout => \rect_gen|Equal0~15_combout\);

-- Location: LCCOMB_X98_Y46_N16
\rect_gen|s_square_sig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|s_square_sig~0_combout\ = (!\rect_gen|Equal1~1_combout\ & (\rect_gen|s_square_sig~q\ $ (\rect_gen|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~1_combout\,
	datac => \rect_gen|s_square_sig~q\,
	datad => \rect_gen|Equal0~15_combout\,
	combout => \rect_gen|s_square_sig~0_combout\);

-- Location: FF_X98_Y46_N17
\rect_gen|s_square_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rect_gen|s_square_sig~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rect_gen|s_square_sig~q\);

-- Location: LCCOMB_X60_Y39_N14
\wm8731|i2c_sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|i2c_sclk~0_combout\ = (\wm8731|Equal1~0_combout\ & (\wm8731|i2c_seq\(0) & ((\wm8731|i2c_sclk~q\) # (!\wm8731|i2c_seq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal1~0_combout\,
	datab => \wm8731|i2c_seq\(0),
	datac => \wm8731|i2c_sclk~q\,
	datad => \wm8731|i2c_seq\(1),
	combout => \wm8731|i2c_sclk~0_combout\);

-- Location: FF_X60_Y39_N15
\wm8731|i2c_sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wm8731|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \wm8731|i2c_sclk~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|i2c_sclk~q\);

-- Location: LCCOMB_X77_Y44_N8
\einstellwert_internal[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \einstellwert_internal[6]~0_combout\ = ((!\keys[1]~input_o\) # (!\keys[3]~input_o\)) # (!\keys[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[2]~input_o\,
	datac => \keys[3]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \einstellwert_internal[6]~0_combout\);

-- Location: LCCOMB_X77_Y44_N2
\einstellwert_internal[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \einstellwert_internal[5]~1_combout\ = (\keys[3]~input_o\ & ((\keys[0]~input_o\) # ((!\keys[1]~input_o\) # (!\keys[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[0]~input_o\,
	datab => \keys[2]~input_o\,
	datac => \keys[3]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \einstellwert_internal[5]~1_combout\);

-- Location: LCCOMB_X77_Y44_N0
\einstellwert_internal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \einstellwert_internal[4]~2_combout\ = (((!\keys[0]~input_o\ & \keys[1]~input_o\)) # (!\keys[3]~input_o\)) # (!\keys[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[0]~input_o\,
	datab => \keys[2]~input_o\,
	datac => \keys[3]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \einstellwert_internal[4]~2_combout\);

-- Location: LCCOMB_X77_Y44_N6
\einstellwert_internal[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \einstellwert_internal[3]~3_combout\ = (\keys[3]~input_o\ & (((!\keys[1]~input_o\) # (!\keys[2]~input_o\)) # (!\keys[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keys[0]~input_o\,
	datab => \keys[2]~input_o\,
	datac => \keys[3]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \einstellwert_internal[3]~3_combout\);

-- Location: LCCOMB_X77_Y44_N4
\einstellwert_internal[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \einstellwert_internal[1]~4_combout\ = (\keys[3]~input_o\ & ((\keys[1]~input_o\) # (!\keys[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keys[2]~input_o\,
	datac => \keys[3]~input_o\,
	datad => \keys[1]~input_o\,
	combout => \einstellwert_internal[1]~4_combout\);

-- Location: LCCOMB_X77_Y44_N12
\dds_gen|akkumulator[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[0]~20_combout\ = (\dds_gen|akkumulator\(0) & (\einstellwert_internal[6]~0_combout\ $ (VCC))) # (!\dds_gen|akkumulator\(0) & (\einstellwert_internal[6]~0_combout\ & VCC))
-- \dds_gen|akkumulator[0]~21\ = CARRY((\dds_gen|akkumulator\(0) & \einstellwert_internal[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(0),
	datab => \einstellwert_internal[6]~0_combout\,
	datad => VCC,
	combout => \dds_gen|akkumulator[0]~20_combout\,
	cout => \dds_gen|akkumulator[0]~21\);

-- Location: FF_X77_Y44_N13
\dds_gen|akkumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[0]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(0));

-- Location: LCCOMB_X77_Y44_N14
\dds_gen|akkumulator[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[1]~22_combout\ = (\einstellwert_internal[1]~4_combout\ & ((\dds_gen|akkumulator\(1) & (!\dds_gen|akkumulator[0]~21\)) # (!\dds_gen|akkumulator\(1) & ((\dds_gen|akkumulator[0]~21\) # (GND))))) # (!\einstellwert_internal[1]~4_combout\ & 
-- ((\dds_gen|akkumulator\(1) & (\dds_gen|akkumulator[0]~21\ & VCC)) # (!\dds_gen|akkumulator\(1) & (!\dds_gen|akkumulator[0]~21\))))
-- \dds_gen|akkumulator[1]~23\ = CARRY((\einstellwert_internal[1]~4_combout\ & ((!\dds_gen|akkumulator[0]~21\) # (!\dds_gen|akkumulator\(1)))) # (!\einstellwert_internal[1]~4_combout\ & (!\dds_gen|akkumulator\(1) & !\dds_gen|akkumulator[0]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \einstellwert_internal[1]~4_combout\,
	datab => \dds_gen|akkumulator\(1),
	datad => VCC,
	cin => \dds_gen|akkumulator[0]~21\,
	combout => \dds_gen|akkumulator[1]~22_combout\,
	cout => \dds_gen|akkumulator[1]~23\);

-- Location: FF_X77_Y44_N15
\dds_gen|akkumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[1]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(1));

-- Location: LCCOMB_X77_Y44_N16
\dds_gen|akkumulator[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[2]~24_combout\ = ((\dds_gen|akkumulator\(2) $ (\einstellwert_internal[5]~1_combout\ $ (\dds_gen|akkumulator[1]~23\)))) # (GND)
-- \dds_gen|akkumulator[2]~25\ = CARRY((\dds_gen|akkumulator\(2) & ((!\dds_gen|akkumulator[1]~23\) # (!\einstellwert_internal[5]~1_combout\))) # (!\dds_gen|akkumulator\(2) & (!\einstellwert_internal[5]~1_combout\ & !\dds_gen|akkumulator[1]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(2),
	datab => \einstellwert_internal[5]~1_combout\,
	datad => VCC,
	cin => \dds_gen|akkumulator[1]~23\,
	combout => \dds_gen|akkumulator[2]~24_combout\,
	cout => \dds_gen|akkumulator[2]~25\);

-- Location: FF_X77_Y44_N17
\dds_gen|akkumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[2]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(2));

-- Location: LCCOMB_X77_Y44_N18
\dds_gen|akkumulator[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[3]~26_combout\ = (\einstellwert_internal[3]~3_combout\ & ((\dds_gen|akkumulator\(3) & (\dds_gen|akkumulator[2]~25\ & VCC)) # (!\dds_gen|akkumulator\(3) & (!\dds_gen|akkumulator[2]~25\)))) # (!\einstellwert_internal[3]~3_combout\ & 
-- ((\dds_gen|akkumulator\(3) & (!\dds_gen|akkumulator[2]~25\)) # (!\dds_gen|akkumulator\(3) & ((\dds_gen|akkumulator[2]~25\) # (GND)))))
-- \dds_gen|akkumulator[3]~27\ = CARRY((\einstellwert_internal[3]~3_combout\ & (!\dds_gen|akkumulator\(3) & !\dds_gen|akkumulator[2]~25\)) # (!\einstellwert_internal[3]~3_combout\ & ((!\dds_gen|akkumulator[2]~25\) # (!\dds_gen|akkumulator\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \einstellwert_internal[3]~3_combout\,
	datab => \dds_gen|akkumulator\(3),
	datad => VCC,
	cin => \dds_gen|akkumulator[2]~25\,
	combout => \dds_gen|akkumulator[3]~26_combout\,
	cout => \dds_gen|akkumulator[3]~27\);

-- Location: FF_X77_Y44_N19
\dds_gen|akkumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[3]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(3));

-- Location: LCCOMB_X77_Y44_N20
\dds_gen|akkumulator[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[4]~28_combout\ = ((\dds_gen|akkumulator\(4) $ (\einstellwert_internal[4]~2_combout\ $ (!\dds_gen|akkumulator[3]~27\)))) # (GND)
-- \dds_gen|akkumulator[4]~29\ = CARRY((\dds_gen|akkumulator\(4) & ((\einstellwert_internal[4]~2_combout\) # (!\dds_gen|akkumulator[3]~27\))) # (!\dds_gen|akkumulator\(4) & (\einstellwert_internal[4]~2_combout\ & !\dds_gen|akkumulator[3]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(4),
	datab => \einstellwert_internal[4]~2_combout\,
	datad => VCC,
	cin => \dds_gen|akkumulator[3]~27\,
	combout => \dds_gen|akkumulator[4]~28_combout\,
	cout => \dds_gen|akkumulator[4]~29\);

-- Location: FF_X77_Y44_N21
\dds_gen|akkumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[4]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(4));

-- Location: LCCOMB_X77_Y44_N22
\dds_gen|akkumulator[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[5]~30_combout\ = (\dds_gen|akkumulator\(5) & ((\einstellwert_internal[5]~1_combout\ & (!\dds_gen|akkumulator[4]~29\)) # (!\einstellwert_internal[5]~1_combout\ & (\dds_gen|akkumulator[4]~29\ & VCC)))) # (!\dds_gen|akkumulator\(5) & 
-- ((\einstellwert_internal[5]~1_combout\ & ((\dds_gen|akkumulator[4]~29\) # (GND))) # (!\einstellwert_internal[5]~1_combout\ & (!\dds_gen|akkumulator[4]~29\))))
-- \dds_gen|akkumulator[5]~31\ = CARRY((\dds_gen|akkumulator\(5) & (\einstellwert_internal[5]~1_combout\ & !\dds_gen|akkumulator[4]~29\)) # (!\dds_gen|akkumulator\(5) & ((\einstellwert_internal[5]~1_combout\) # (!\dds_gen|akkumulator[4]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(5),
	datab => \einstellwert_internal[5]~1_combout\,
	datad => VCC,
	cin => \dds_gen|akkumulator[4]~29\,
	combout => \dds_gen|akkumulator[5]~30_combout\,
	cout => \dds_gen|akkumulator[5]~31\);

-- Location: FF_X77_Y44_N23
\dds_gen|akkumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[5]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(5));

-- Location: LCCOMB_X77_Y44_N24
\dds_gen|akkumulator[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[6]~32_combout\ = ((\dds_gen|akkumulator\(6) $ (\einstellwert_internal[6]~0_combout\ $ (!\dds_gen|akkumulator[5]~31\)))) # (GND)
-- \dds_gen|akkumulator[6]~33\ = CARRY((\dds_gen|akkumulator\(6) & ((\einstellwert_internal[6]~0_combout\) # (!\dds_gen|akkumulator[5]~31\))) # (!\dds_gen|akkumulator\(6) & (\einstellwert_internal[6]~0_combout\ & !\dds_gen|akkumulator[5]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(6),
	datab => \einstellwert_internal[6]~0_combout\,
	datad => VCC,
	cin => \dds_gen|akkumulator[5]~31\,
	combout => \dds_gen|akkumulator[6]~32_combout\,
	cout => \dds_gen|akkumulator[6]~33\);

-- Location: FF_X77_Y44_N25
\dds_gen|akkumulator[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[6]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(6));

-- Location: LCCOMB_X77_Y44_N26
\dds_gen|akkumulator[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[7]~34_combout\ = (\dds_gen|akkumulator\(7) & (!\dds_gen|akkumulator[6]~33\)) # (!\dds_gen|akkumulator\(7) & ((\dds_gen|akkumulator[6]~33\) # (GND)))
-- \dds_gen|akkumulator[7]~35\ = CARRY((!\dds_gen|akkumulator[6]~33\) # (!\dds_gen|akkumulator\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(7),
	datad => VCC,
	cin => \dds_gen|akkumulator[6]~33\,
	combout => \dds_gen|akkumulator[7]~34_combout\,
	cout => \dds_gen|akkumulator[7]~35\);

-- Location: FF_X77_Y44_N27
\dds_gen|akkumulator[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[7]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(7));

-- Location: LCCOMB_X77_Y44_N28
\dds_gen|akkumulator[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[8]~36_combout\ = (\dds_gen|akkumulator\(8) & (\dds_gen|akkumulator[7]~35\ $ (GND))) # (!\dds_gen|akkumulator\(8) & (!\dds_gen|akkumulator[7]~35\ & VCC))
-- \dds_gen|akkumulator[8]~37\ = CARRY((\dds_gen|akkumulator\(8) & !\dds_gen|akkumulator[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(8),
	datad => VCC,
	cin => \dds_gen|akkumulator[7]~35\,
	combout => \dds_gen|akkumulator[8]~36_combout\,
	cout => \dds_gen|akkumulator[8]~37\);

-- Location: FF_X77_Y44_N29
\dds_gen|akkumulator[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[8]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(8));

-- Location: LCCOMB_X77_Y44_N30
\dds_gen|akkumulator[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[9]~38_combout\ = (\dds_gen|akkumulator\(9) & (!\dds_gen|akkumulator[8]~37\)) # (!\dds_gen|akkumulator\(9) & ((\dds_gen|akkumulator[8]~37\) # (GND)))
-- \dds_gen|akkumulator[9]~39\ = CARRY((!\dds_gen|akkumulator[8]~37\) # (!\dds_gen|akkumulator\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(9),
	datad => VCC,
	cin => \dds_gen|akkumulator[8]~37\,
	combout => \dds_gen|akkumulator[9]~38_combout\,
	cout => \dds_gen|akkumulator[9]~39\);

-- Location: FF_X77_Y44_N31
\dds_gen|akkumulator[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[9]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(9));

-- Location: LCCOMB_X77_Y43_N0
\dds_gen|akkumulator[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[10]~40_combout\ = (\dds_gen|akkumulator\(10) & (\dds_gen|akkumulator[9]~39\ $ (GND))) # (!\dds_gen|akkumulator\(10) & (!\dds_gen|akkumulator[9]~39\ & VCC))
-- \dds_gen|akkumulator[10]~41\ = CARRY((\dds_gen|akkumulator\(10) & !\dds_gen|akkumulator[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(10),
	datad => VCC,
	cin => \dds_gen|akkumulator[9]~39\,
	combout => \dds_gen|akkumulator[10]~40_combout\,
	cout => \dds_gen|akkumulator[10]~41\);

-- Location: FF_X77_Y43_N1
\dds_gen|akkumulator[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[10]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(10));

-- Location: LCCOMB_X77_Y43_N2
\dds_gen|akkumulator[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[11]~42_combout\ = (\dds_gen|akkumulator\(11) & (!\dds_gen|akkumulator[10]~41\)) # (!\dds_gen|akkumulator\(11) & ((\dds_gen|akkumulator[10]~41\) # (GND)))
-- \dds_gen|akkumulator[11]~43\ = CARRY((!\dds_gen|akkumulator[10]~41\) # (!\dds_gen|akkumulator\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(11),
	datad => VCC,
	cin => \dds_gen|akkumulator[10]~41\,
	combout => \dds_gen|akkumulator[11]~42_combout\,
	cout => \dds_gen|akkumulator[11]~43\);

-- Location: FF_X77_Y43_N3
\dds_gen|akkumulator[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[11]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(11));

-- Location: LCCOMB_X77_Y43_N4
\dds_gen|akkumulator[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[12]~44_combout\ = (\dds_gen|akkumulator\(12) & (\dds_gen|akkumulator[11]~43\ $ (GND))) # (!\dds_gen|akkumulator\(12) & (!\dds_gen|akkumulator[11]~43\ & VCC))
-- \dds_gen|akkumulator[12]~45\ = CARRY((\dds_gen|akkumulator\(12) & !\dds_gen|akkumulator[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(12),
	datad => VCC,
	cin => \dds_gen|akkumulator[11]~43\,
	combout => \dds_gen|akkumulator[12]~44_combout\,
	cout => \dds_gen|akkumulator[12]~45\);

-- Location: FF_X77_Y43_N5
\dds_gen|akkumulator[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[12]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(12));

-- Location: LCCOMB_X77_Y43_N6
\dds_gen|akkumulator[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[13]~46_combout\ = (\dds_gen|akkumulator\(13) & (!\dds_gen|akkumulator[12]~45\)) # (!\dds_gen|akkumulator\(13) & ((\dds_gen|akkumulator[12]~45\) # (GND)))
-- \dds_gen|akkumulator[13]~47\ = CARRY((!\dds_gen|akkumulator[12]~45\) # (!\dds_gen|akkumulator\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(13),
	datad => VCC,
	cin => \dds_gen|akkumulator[12]~45\,
	combout => \dds_gen|akkumulator[13]~46_combout\,
	cout => \dds_gen|akkumulator[13]~47\);

-- Location: FF_X77_Y43_N7
\dds_gen|akkumulator[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[13]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(13));

-- Location: LCCOMB_X77_Y43_N8
\dds_gen|akkumulator[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[14]~48_combout\ = (\dds_gen|akkumulator\(14) & (\dds_gen|akkumulator[13]~47\ $ (GND))) # (!\dds_gen|akkumulator\(14) & (!\dds_gen|akkumulator[13]~47\ & VCC))
-- \dds_gen|akkumulator[14]~49\ = CARRY((\dds_gen|akkumulator\(14) & !\dds_gen|akkumulator[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(14),
	datad => VCC,
	cin => \dds_gen|akkumulator[13]~47\,
	combout => \dds_gen|akkumulator[14]~48_combout\,
	cout => \dds_gen|akkumulator[14]~49\);

-- Location: FF_X77_Y43_N9
\dds_gen|akkumulator[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[14]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(14));

-- Location: LCCOMB_X77_Y43_N10
\dds_gen|akkumulator[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[15]~50_combout\ = (\dds_gen|akkumulator\(15) & (!\dds_gen|akkumulator[14]~49\)) # (!\dds_gen|akkumulator\(15) & ((\dds_gen|akkumulator[14]~49\) # (GND)))
-- \dds_gen|akkumulator[15]~51\ = CARRY((!\dds_gen|akkumulator[14]~49\) # (!\dds_gen|akkumulator\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(15),
	datad => VCC,
	cin => \dds_gen|akkumulator[14]~49\,
	combout => \dds_gen|akkumulator[15]~50_combout\,
	cout => \dds_gen|akkumulator[15]~51\);

-- Location: FF_X77_Y43_N11
\dds_gen|akkumulator[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[15]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(15));

-- Location: LCCOMB_X77_Y43_N12
\dds_gen|akkumulator[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[16]~52_combout\ = (\dds_gen|akkumulator\(16) & (\dds_gen|akkumulator[15]~51\ $ (GND))) # (!\dds_gen|akkumulator\(16) & (!\dds_gen|akkumulator[15]~51\ & VCC))
-- \dds_gen|akkumulator[16]~53\ = CARRY((\dds_gen|akkumulator\(16) & !\dds_gen|akkumulator[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datad => VCC,
	cin => \dds_gen|akkumulator[15]~51\,
	combout => \dds_gen|akkumulator[16]~52_combout\,
	cout => \dds_gen|akkumulator[16]~53\);

-- Location: FF_X77_Y43_N13
\dds_gen|akkumulator[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[16]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(16));

-- Location: LCCOMB_X77_Y43_N14
\dds_gen|akkumulator[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[17]~54_combout\ = (\dds_gen|akkumulator\(17) & (!\dds_gen|akkumulator[16]~53\)) # (!\dds_gen|akkumulator\(17) & ((\dds_gen|akkumulator[16]~53\) # (GND)))
-- \dds_gen|akkumulator[17]~55\ = CARRY((!\dds_gen|akkumulator[16]~53\) # (!\dds_gen|akkumulator\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(17),
	datad => VCC,
	cin => \dds_gen|akkumulator[16]~53\,
	combout => \dds_gen|akkumulator[17]~54_combout\,
	cout => \dds_gen|akkumulator[17]~55\);

-- Location: FF_X77_Y43_N15
\dds_gen|akkumulator[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[17]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(17));

-- Location: LCCOMB_X77_Y43_N16
\dds_gen|akkumulator[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[18]~56_combout\ = (\dds_gen|akkumulator\(18) & (\dds_gen|akkumulator[17]~55\ $ (GND))) # (!\dds_gen|akkumulator\(18) & (!\dds_gen|akkumulator[17]~55\ & VCC))
-- \dds_gen|akkumulator[18]~57\ = CARRY((\dds_gen|akkumulator\(18) & !\dds_gen|akkumulator[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(18),
	datad => VCC,
	cin => \dds_gen|akkumulator[17]~55\,
	combout => \dds_gen|akkumulator[18]~56_combout\,
	cout => \dds_gen|akkumulator[18]~57\);

-- Location: FF_X77_Y43_N17
\dds_gen|akkumulator[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[18]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(18));

-- Location: LCCOMB_X77_Y43_N18
\dds_gen|akkumulator[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|akkumulator[19]~58_combout\ = \dds_gen|akkumulator\(19) $ (\dds_gen|akkumulator[18]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(19),
	cin => \dds_gen|akkumulator[18]~57\,
	combout => \dds_gen|akkumulator[19]~58_combout\);

-- Location: FF_X77_Y43_N19
\dds_gen|akkumulator[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|akkumulator[19]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dds_gen|akkumulator\(19));

-- Location: LCCOMB_X76_Y43_N24
\dds_gen|u1|addrin_lut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[5]~2_combout\ = \dds_gen|akkumulator\(15) $ (\dds_gen|akkumulator\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(15),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|addrin_lut[5]~2_combout\);

-- Location: LCCOMB_X75_Y42_N24
\dds_gen|u1|addrin_lut[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[6]~1_combout\ = \dds_gen|akkumulator\(16) $ (\dds_gen|akkumulator\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datac => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|addrin_lut[6]~1_combout\);

-- Location: LCCOMB_X77_Y43_N20
\dds_gen|u1|addrin_lut[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[7]~0_combout\ = \dds_gen|akkumulator\(17) $ (\dds_gen|akkumulator\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(17),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|addrin_lut[7]~0_combout\);

-- Location: LCCOMB_X76_Y42_N30
\dds_gen|u1|addrin_lut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[4]~6_combout\ = \dds_gen|akkumulator\(18) $ (\dds_gen|akkumulator\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(14),
	combout => \dds_gen|u1|addrin_lut[4]~6_combout\);

-- Location: LCCOMB_X76_Y42_N16
\dds_gen|u1|addrin_lut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[3]~5_combout\ = \dds_gen|akkumulator\(18) $ (\dds_gen|akkumulator\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|addrin_lut[3]~5_combout\);

-- Location: LCCOMB_X76_Y43_N18
\dds_gen|u1|addrin_lut[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[2]~4_combout\ = \dds_gen|akkumulator\(18) $ (\dds_gen|akkumulator\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(12),
	combout => \dds_gen|u1|addrin_lut[2]~4_combout\);

-- Location: LCCOMB_X77_Y42_N20
\dds_gen|u1|addrin_lut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[1]~3_combout\ = \dds_gen|akkumulator\(18) $ (\dds_gen|akkumulator\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|addrin_lut[1]~3_combout\);

-- Location: LCCOMB_X74_Y42_N20
\dds_gen|u1|dds_lut|Mux1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux1~38_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # ((\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux1~38_combout\);

-- Location: LCCOMB_X75_Y42_N14
\dds_gen|u1|dds_lut|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux0~0_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|dds_lut|Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux1~38_combout\,
	combout => \dds_gen|u1|dds_lut|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y42_N4
\dds_gen|u1|dds_lut|Mux1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux1~41_combout\ = (\dds_gen|akkumulator\(18) & (((!\dds_gen|akkumulator\(16) & \dds_gen|u1|dds_lut|Mux1~38_combout\)) # (!\dds_gen|akkumulator\(15)))) # (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(15)) # 
-- ((\dds_gen|akkumulator\(16) & \dds_gen|u1|dds_lut|Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datab => \dds_gen|u1|dds_lut|Mux1~38_combout\,
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(15),
	combout => \dds_gen|u1|dds_lut|Mux1~41_combout\);

-- Location: LCCOMB_X75_Y42_N22
\dds_gen|u1|dds_lut|Mux1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux1~42_combout\ = (\dds_gen|akkumulator\(13) & (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(12)) # (\dds_gen|akkumulator\(11))))) # (!\dds_gen|akkumulator\(13) & (\dds_gen|akkumulator\(18) & ((!\dds_gen|akkumulator\(11)) # 
-- (!\dds_gen|akkumulator\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(13),
	datab => \dds_gen|akkumulator\(12),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux1~42_combout\);

-- Location: LCCOMB_X77_Y42_N6
\dds_gen|u1|addrin_lut[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|addrin_lut[0]~7_combout\ = \dds_gen|akkumulator\(18) $ (\dds_gen|akkumulator\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|addrin_lut[0]~7_combout\);

-- Location: LCCOMB_X75_Y43_N28
\dds_gen|u1|dds_lut|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~8_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # ((\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~8_combout\);

-- Location: LCCOMB_X75_Y42_N28
\dds_gen|u1|dds_lut|Mux1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux1~39_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\) # ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux3~8_combout\))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux1~42_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~8_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[4]~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux1~39_combout\);

-- Location: LCCOMB_X75_Y42_N18
\dds_gen|u1|dds_lut|Mux1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux1~40_combout\ = (\dds_gen|u1|dds_lut|Mux1~41_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # ((\dds_gen|u1|dds_lut|Mux1~39_combout\ & !\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux1~41_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|dds_lut|Mux1~39_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux1~41_combout\,
	datab => \dds_gen|u1|dds_lut|Mux1~39_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux1~40_combout\);

-- Location: LCCOMB_X76_Y43_N22
\dds_gen|u1|dds_lut|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~7_combout\ = (\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(13)) # (!\dds_gen|akkumulator\(15)))) # (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(15)) # (!\dds_gen|akkumulator\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(15),
	datad => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|dds_lut|Mux2~7_combout\);

-- Location: LCCOMB_X76_Y43_N4
\dds_gen|u1|dds_lut|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~8_combout\ = (\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(15)) # ((!\dds_gen|akkumulator\(13) & !\dds_gen|akkumulator\(11))))) # (!\dds_gen|akkumulator\(18) & (((\dds_gen|akkumulator\(13) & \dds_gen|akkumulator\(11))) # 
-- (!\dds_gen|akkumulator\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(13),
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(15),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux2~8_combout\);

-- Location: LCCOMB_X76_Y43_N26
\dds_gen|u1|dds_lut|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~9_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|dds_lut|Mux2~7_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((!\dds_gen|u1|dds_lut|Mux2~8_combout\ & 
-- !\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux2~7_combout\,
	datab => \dds_gen|u1|dds_lut|Mux2~8_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~9_combout\);

-- Location: LCCOMB_X76_Y43_N20
\dds_gen|u1|dds_lut|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~6_combout\ = (\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(15)) # (!\dds_gen|akkumulator\(13)))) # (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(13)) # (!\dds_gen|akkumulator\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(15),
	datad => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|dds_lut|Mux2~6_combout\);

-- Location: LCCOMB_X76_Y43_N16
\dds_gen|u1|dds_lut|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~10_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~10_combout\);

-- Location: LCCOMB_X76_Y43_N6
\dds_gen|u1|dds_lut|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~11_combout\ = (\dds_gen|u1|dds_lut|Mux2~9_combout\ & (((\dds_gen|u1|dds_lut|Mux2~10_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|dds_lut|Mux2~9_combout\ & (!\dds_gen|u1|dds_lut|Mux2~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux2~9_combout\,
	datab => \dds_gen|u1|dds_lut|Mux2~6_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux2~10_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~11_combout\);

-- Location: LCCOMB_X75_Y43_N4
\dds_gen|u1|dds_lut|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~5_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|dds_lut|Mux3~8_combout\ & 
-- !\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~8_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~5_combout\);

-- Location: LCCOMB_X75_Y43_N10
\dds_gen|u1|dds_lut|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~12_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|dds_lut|Mux2~5_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux2~11_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux2~11_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux2~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~12_combout\);

-- Location: LCCOMB_X76_Y43_N12
\dds_gen|u1|dds_lut|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~9_combout\ = (\dds_gen|akkumulator\(18) & (((!\dds_gen|akkumulator\(12) & !\dds_gen|akkumulator\(11))) # (!\dds_gen|akkumulator\(13)))) # (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(13)) # ((\dds_gen|akkumulator\(12) & 
-- \dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(12),
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(13),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux3~9_combout\);

-- Location: LCCOMB_X76_Y43_N28
\dds_gen|u1|dds_lut|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~15_combout\ = (\dds_gen|akkumulator\(15) & ((\dds_gen|akkumulator\(14)) # ((!\dds_gen|u1|dds_lut|Mux3~9_combout\ & \dds_gen|akkumulator\(18))))) # (!\dds_gen|akkumulator\(15) & (((!\dds_gen|u1|dds_lut|Mux3~9_combout\ & 
-- !\dds_gen|akkumulator\(18))) # (!\dds_gen|akkumulator\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~9_combout\,
	datab => \dds_gen|akkumulator\(15),
	datac => \dds_gen|akkumulator\(14),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux2~15_combout\);

-- Location: LCCOMB_X77_Y43_N30
\dds_gen|u1|dds_lut|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~4_combout\ = (\dds_gen|akkumulator\(18) & (((!\dds_gen|akkumulator\(16) & !\dds_gen|akkumulator\(10))) # (!\dds_gen|akkumulator\(17)))) # (!\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(17)) # ((\dds_gen|akkumulator\(16) & 
-- \dds_gen|akkumulator\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(17),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|dds_lut|Mux2~4_combout\);

-- Location: LCCOMB_X75_Y43_N6
\dds_gen|u1|dds_lut|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~2_combout\ = (\dds_gen|akkumulator\(18) & (!\dds_gen|akkumulator\(12) & (!\dds_gen|akkumulator\(13) & !\dds_gen|akkumulator\(11)))) # (!\dds_gen|akkumulator\(18) & (\dds_gen|akkumulator\(12) & (\dds_gen|akkumulator\(13) & 
-- \dds_gen|akkumulator\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(18),
	datab => \dds_gen|akkumulator\(12),
	datac => \dds_gen|akkumulator\(13),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux5~2_combout\);

-- Location: LCCOMB_X76_Y43_N10
\dds_gen|u1|dds_lut|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~14_combout\ = (\dds_gen|u1|dds_lut|Mux2~4_combout\ & (\dds_gen|u1|dds_lut|Mux5~2_combout\ & (\dds_gen|akkumulator\(15) $ (\dds_gen|akkumulator\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux2~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~2_combout\,
	datac => \dds_gen|akkumulator\(15),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux2~14_combout\);

-- Location: LCCOMB_X75_Y43_N24
\dds_gen|u1|dds_lut|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux2~13_combout\ = (\dds_gen|u1|dds_lut|Mux2~12_combout\) # ((\dds_gen|u1|dds_lut|Mux2~14_combout\) # ((\dds_gen|u1|dds_lut|Mux2~15_combout\ & \dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux2~12_combout\,
	datab => \dds_gen|u1|dds_lut|Mux2~15_combout\,
	datac => \dds_gen|u1|dds_lut|Mux2~14_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux2~13_combout\);

-- Location: LCCOMB_X74_Y43_N24
\dds_gen|u1|dds_lut|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~10_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[2]~4_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\) # ((\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~10_combout\);

-- Location: LCCOMB_X75_Y43_N2
\dds_gen|u1|dds_lut|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~11_combout\ = (\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(13)) # ((\dds_gen|akkumulator\(12) & \dds_gen|akkumulator\(11))))) # (!\dds_gen|akkumulator\(18) & (((!\dds_gen|akkumulator\(12) & !\dds_gen|akkumulator\(11))) # 
-- (!\dds_gen|akkumulator\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(18),
	datab => \dds_gen|akkumulator\(12),
	datac => \dds_gen|akkumulator\(13),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux3~11_combout\);

-- Location: LCCOMB_X75_Y43_N16
\dds_gen|u1|dds_lut|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~12_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|dds_lut|Mux3~10_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((!\dds_gen|u1|dds_lut|Mux3~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~10_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux3~11_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~12_combout\);

-- Location: LCCOMB_X75_Y43_N30
\dds_gen|u1|dds_lut|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~13_combout\ = (\dds_gen|akkumulator\(18) & ((\dds_gen|akkumulator\(12)) # (\dds_gen|akkumulator\(13)))) # (!\dds_gen|akkumulator\(18) & ((!\dds_gen|akkumulator\(13)) # (!\dds_gen|akkumulator\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(18),
	datab => \dds_gen|akkumulator\(12),
	datac => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|dds_lut|Mux3~13_combout\);

-- Location: LCCOMB_X75_Y43_N12
\dds_gen|u1|dds_lut|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~14_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux3~12_combout\ & (!\dds_gen|u1|dds_lut|Mux3~13_combout\)) # (!\dds_gen|u1|dds_lut|Mux3~12_combout\ & ((!\dds_gen|u1|dds_lut|Mux3~9_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|dds_lut|Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~12_combout\,
	datac => \dds_gen|u1|dds_lut|Mux3~13_combout\,
	datad => \dds_gen|u1|dds_lut|Mux3~9_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~14_combout\);

-- Location: LCCOMB_X75_Y43_N22
\dds_gen|u1|dds_lut|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~15_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((!\dds_gen|u1|dds_lut|Mux5~2_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ 
-- ((!\dds_gen|u1|dds_lut|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~8_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~15_combout\);

-- Location: LCCOMB_X74_Y43_N14
\dds_gen|u1|dds_lut|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~16_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\))))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~16_combout\);

-- Location: LCCOMB_X75_Y43_N0
\dds_gen|u1|dds_lut|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~17_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux3~11_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|dds_lut|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~8_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux3~11_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~17_combout\);

-- Location: LCCOMB_X75_Y43_N18
\dds_gen|u1|dds_lut|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~18_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((!\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (((\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~18_combout\);

-- Location: LCCOMB_X75_Y43_N8
\dds_gen|u1|dds_lut|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~19_combout\ = (\dds_gen|u1|dds_lut|Mux3~17_combout\ & (((\dds_gen|u1|dds_lut|Mux3~18_combout\) # (!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|dds_lut|Mux3~17_combout\ & (!\dds_gen|u1|dds_lut|Mux3~16_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~16_combout\,
	datab => \dds_gen|u1|dds_lut|Mux3~17_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux3~18_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~19_combout\);

-- Location: LCCOMB_X75_Y43_N26
\dds_gen|u1|dds_lut|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~20_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux3~15_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux3~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~15_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux3~19_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~20_combout\);

-- Location: LCCOMB_X76_Y43_N30
\dds_gen|u1|dds_lut|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~21_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\) # ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~21_combout\);

-- Location: LCCOMB_X76_Y43_N2
\dds_gen|u1|dds_lut|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~23_combout\ = (\dds_gen|u1|dds_lut|Mux3~21_combout\) # ((\dds_gen|akkumulator\(15) & ((!\dds_gen|akkumulator\(18)) # (!\dds_gen|akkumulator\(14)))) # (!\dds_gen|akkumulator\(15) & ((\dds_gen|akkumulator\(14)) # 
-- (\dds_gen|akkumulator\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~21_combout\,
	datab => \dds_gen|akkumulator\(15),
	datac => \dds_gen|akkumulator\(14),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux3~23_combout\);

-- Location: LCCOMB_X75_Y43_N20
\dds_gen|u1|dds_lut|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux3~22_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux3~20_combout\ & ((\dds_gen|u1|dds_lut|Mux3~23_combout\))) # (!\dds_gen|u1|dds_lut|Mux3~20_combout\ & (\dds_gen|u1|dds_lut|Mux3~14_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~14_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux3~20_combout\,
	datad => \dds_gen|u1|dds_lut|Mux3~23_combout\,
	combout => \dds_gen|u1|dds_lut|Mux3~22_combout\);

-- Location: LCCOMB_X74_Y42_N14
\dds_gen|u1|dds_lut|Mux4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~30_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~30_combout\);

-- Location: LCCOMB_X75_Y42_N10
\dds_gen|u1|dds_lut|Mux4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~32_combout\ = (\dds_gen|akkumulator\(16) & (!\dds_gen|akkumulator\(14) & ((\dds_gen|akkumulator\(18)) # (!\dds_gen|akkumulator\(11))))) # (!\dds_gen|akkumulator\(16) & (\dds_gen|akkumulator\(14) & ((\dds_gen|akkumulator\(11)) # 
-- (!\dds_gen|akkumulator\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datab => \dds_gen|akkumulator\(14),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux4~32_combout\);

-- Location: LCCOMB_X75_Y42_N0
\dds_gen|u1|dds_lut|Mux4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~31_combout\ = (\dds_gen|akkumulator\(16) & ((\dds_gen|akkumulator\(14) $ (!\dds_gen|akkumulator\(11))) # (!\dds_gen|akkumulator\(18)))) # (!\dds_gen|akkumulator\(16) & ((\dds_gen|akkumulator\(18)) # (\dds_gen|akkumulator\(14) $ 
-- (!\dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datab => \dds_gen|akkumulator\(14),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux4~31_combout\);

-- Location: LCCOMB_X75_Y42_N20
\dds_gen|u1|dds_lut|Mux4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~33_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|dds_lut|Mux4~31_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux4~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~32_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~31_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~33_combout\);

-- Location: LCCOMB_X76_Y42_N4
\dds_gen|u1|dds_lut|Mux4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~34_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (((\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~34_combout\);

-- Location: LCCOMB_X75_Y42_N2
\dds_gen|u1|dds_lut|Mux4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~35_combout\ = (\dds_gen|u1|dds_lut|Mux4~33_combout\ & (((\dds_gen|u1|dds_lut|Mux4~34_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|dds_lut|Mux4~33_combout\ & (!\dds_gen|u1|dds_lut|Mux4~30_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~30_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~33_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux4~34_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~35_combout\);

-- Location: LCCOMB_X76_Y42_N6
\dds_gen|u1|dds_lut|Mux4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~40_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|addrin_lut[2]~4_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~40_combout\);

-- Location: LCCOMB_X76_Y42_N24
\dds_gen|u1|dds_lut|Mux4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~41_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux4~40_combout\)) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|dds_lut|Mux4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux4~40_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~41_combout\);

-- Location: LCCOMB_X76_Y42_N26
\dds_gen|u1|dds_lut|Mux4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~42_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\))))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~42_combout\);

-- Location: LCCOMB_X76_Y42_N28
\dds_gen|u1|dds_lut|Mux4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~39_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # ((!\dds_gen|u1|addrin_lut[6]~1_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~39_combout\);

-- Location: LCCOMB_X76_Y42_N12
\dds_gen|u1|dds_lut|Mux4~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~43_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux4~41_combout\ & (\dds_gen|u1|dds_lut|Mux4~42_combout\)) # (!\dds_gen|u1|dds_lut|Mux4~41_combout\ & ((!\dds_gen|u1|dds_lut|Mux4~39_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|dds_lut|Mux4~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~41_combout\,
	datac => \dds_gen|u1|dds_lut|Mux4~42_combout\,
	datad => \dds_gen|u1|dds_lut|Mux4~39_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~43_combout\);

-- Location: LCCOMB_X77_Y42_N30
\dds_gen|u1|dds_lut|Mux4~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~49_combout\ = (\dds_gen|akkumulator\(12) & (((!\dds_gen|akkumulator\(11) & !\dds_gen|akkumulator\(10))) # (!\dds_gen|akkumulator\(18)))) # (!\dds_gen|akkumulator\(12) & ((\dds_gen|akkumulator\(18)) # ((\dds_gen|akkumulator\(11) & 
-- \dds_gen|akkumulator\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(12),
	datab => \dds_gen|akkumulator\(11),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|dds_lut|Mux4~49_combout\);

-- Location: LCCOMB_X76_Y42_N18
\dds_gen|u1|dds_lut|Mux4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~36_combout\ = (\dds_gen|u1|dds_lut|Mux4~49_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux4~49_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~49_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~36_combout\);

-- Location: LCCOMB_X76_Y42_N8
\dds_gen|u1|dds_lut|Mux4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~37_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\) # ((\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~37_combout\);

-- Location: LCCOMB_X76_Y42_N10
\dds_gen|u1|dds_lut|Mux4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~38_combout\ = (\dds_gen|u1|dds_lut|Mux4~36_combout\) # ((!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|dds_lut|Mux4~37_combout\ & !\dds_gen|u1|addrin_lut[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~36_combout\,
	datac => \dds_gen|u1|dds_lut|Mux4~37_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~38_combout\);

-- Location: LCCOMB_X76_Y42_N14
\dds_gen|u1|dds_lut|Mux4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~44_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux4~38_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux4~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~43_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux4~38_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~44_combout\);

-- Location: LCCOMB_X76_Y42_N20
\dds_gen|u1|dds_lut|Mux4~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~45_combout\ = (\dds_gen|akkumulator\(12) & (!\dds_gen|akkumulator\(14) & (!\dds_gen|akkumulator\(18) & !\dds_gen|akkumulator\(13)))) # (!\dds_gen|akkumulator\(12) & (\dds_gen|akkumulator\(14) & (\dds_gen|akkumulator\(18) & 
-- \dds_gen|akkumulator\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(12),
	datab => \dds_gen|akkumulator\(14),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|dds_lut|Mux4~45_combout\);

-- Location: LCCOMB_X76_Y42_N22
\dds_gen|u1|dds_lut|Mux4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~46_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~46_combout\);

-- Location: LCCOMB_X76_Y42_N0
\dds_gen|u1|dds_lut|Mux4~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~47_combout\ = (\dds_gen|u1|dds_lut|Mux4~45_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|dds_lut|Mux4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~45_combout\,
	datac => \dds_gen|u1|dds_lut|Mux4~46_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~47_combout\);

-- Location: LCCOMB_X76_Y42_N2
\dds_gen|u1|dds_lut|Mux4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux4~48_combout\ = (\dds_gen|u1|dds_lut|Mux4~44_combout\ & (((\dds_gen|u1|dds_lut|Mux4~47_combout\) # (!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|dds_lut|Mux4~44_combout\ & (\dds_gen|u1|dds_lut|Mux4~35_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~35_combout\,
	datab => \dds_gen|u1|dds_lut|Mux4~44_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux4~47_combout\,
	combout => \dds_gen|u1|dds_lut|Mux4~48_combout\);

-- Location: LCCOMB_X73_Y41_N12
\dds_gen|u1|dds_lut|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~10_combout\ = (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # ((\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~10_combout\);

-- Location: LCCOMB_X73_Y41_N18
\dds_gen|u1|dds_lut|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~9_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((!\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~9_combout\);

-- Location: LCCOMB_X73_Y41_N0
\dds_gen|u1|dds_lut|Mux5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~23_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\)) # (!\dds_gen|u1|addrin_lut[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~23_combout\);

-- Location: LCCOMB_X73_Y41_N30
\dds_gen|u1|dds_lut|Mux5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~24_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|dds_lut|Mux5~23_combout\ $ (((\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- \dds_gen|u1|addrin_lut[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~23_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~24_combout\);

-- Location: LCCOMB_X73_Y41_N14
\dds_gen|u1|dds_lut|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~11_combout\ = (\dds_gen|u1|dds_lut|Mux5~24_combout\ & ((\dds_gen|u1|dds_lut|Mux5~10_combout\) # ((!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|dds_lut|Mux5~24_combout\ & (((\dds_gen|u1|dds_lut|Mux5~9_combout\ & 
-- \dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~10_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~9_combout\,
	datac => \dds_gen|u1|dds_lut|Mux5~24_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~11_combout\);

-- Location: LCCOMB_X74_Y41_N2
\dds_gen|u1|dds_lut|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~15_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\ & ((!\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~15_combout\);

-- Location: LCCOMB_X73_Y41_N22
\dds_gen|u1|dds_lut|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~13_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[2]~4_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~13_combout\);

-- Location: LCCOMB_X73_Y41_N28
\dds_gen|u1|dds_lut|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~12_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\))))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~12_combout\);

-- Location: LCCOMB_X73_Y41_N8
\dds_gen|u1|dds_lut|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~14_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|dds_lut|Mux5~13_combout\ $ (((\dds_gen|u1|addrin_lut[3]~5_combout\))))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((!\dds_gen|u1|dds_lut|Mux5~12_combout\ & 
-- \dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~13_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~12_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~14_combout\);

-- Location: LCCOMB_X74_Y41_N28
\dds_gen|u1|dds_lut|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~16_combout\ = (\dds_gen|u1|dds_lut|Mux5~14_combout\) # ((!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux5~15_combout\ & !\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~15_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~14_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~16_combout\);

-- Location: LCCOMB_X74_Y41_N30
\dds_gen|u1|dds_lut|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~17_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux5~11_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~11_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~16_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~17_combout\);

-- Location: LCCOMB_X74_Y41_N10
\dds_gen|u1|dds_lut|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~7_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (!\dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- (((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~7_combout\);

-- Location: LCCOMB_X73_Y41_N24
\dds_gen|u1|dds_lut|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~3_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~3_combout\);

-- Location: LCCOMB_X74_Y41_N6
\dds_gen|u1|dds_lut|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~5_combout\ = \dds_gen|u1|addrin_lut[2]~4_combout\ $ (((\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~5_combout\);

-- Location: LCCOMB_X74_Y41_N16
\dds_gen|u1|dds_lut|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~4_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((!\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\))))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~4_combout\);

-- Location: LCCOMB_X74_Y41_N0
\dds_gen|u1|dds_lut|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~6_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux5~4_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|dds_lut|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~5_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~6_combout\);

-- Location: LCCOMB_X74_Y41_N8
\dds_gen|u1|dds_lut|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~8_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux5~6_combout\ & (\dds_gen|u1|dds_lut|Mux5~7_combout\)) # (!\dds_gen|u1|dds_lut|Mux5~6_combout\ & ((\dds_gen|u1|dds_lut|Mux5~3_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~7_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~3_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~8_combout\);

-- Location: LCCOMB_X77_Y43_N24
\dds_gen|u1|dds_lut|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~18_combout\ = (\dds_gen|akkumulator\(18) & (!\dds_gen|akkumulator\(12) & ((\dds_gen|akkumulator\(11)) # (\dds_gen|akkumulator\(10))))) # (!\dds_gen|akkumulator\(18) & (\dds_gen|akkumulator\(12) & ((!\dds_gen|akkumulator\(10)) # 
-- (!\dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(11),
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|akkumulator\(12),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|dds_lut|Mux5~18_combout\);

-- Location: LCCOMB_X76_Y43_N8
\dds_gen|u1|dds_lut|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~19_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\) # ((\dds_gen|u1|dds_lut|Mux5~18_combout\) # ((!\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~18_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~19_combout\);

-- Location: LCCOMB_X76_Y43_N14
\dds_gen|u1|dds_lut|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~20_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|dds_lut|Mux5~19_combout\) # ((\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- \dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~19_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~20_combout\);

-- Location: LCCOMB_X75_Y43_N14
\dds_gen|u1|dds_lut|Mux5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~22_combout\ = (\dds_gen|u1|dds_lut|Mux5~20_combout\) # ((\dds_gen|u1|dds_lut|Mux5~2_combout\ & (\dds_gen|akkumulator\(14) $ (!\dds_gen|akkumulator\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~2_combout\,
	datab => \dds_gen|akkumulator\(14),
	datac => \dds_gen|u1|dds_lut|Mux5~20_combout\,
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux5~22_combout\);

-- Location: LCCOMB_X74_Y41_N20
\dds_gen|u1|dds_lut|Mux5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux5~21_combout\ = (\dds_gen|u1|dds_lut|Mux5~17_combout\ & (((\dds_gen|u1|dds_lut|Mux5~22_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux5~17_combout\ & (\dds_gen|u1|dds_lut|Mux5~8_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~17_combout\,
	datab => \dds_gen|u1|dds_lut|Mux5~8_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux5~22_combout\,
	combout => \dds_gen|u1|dds_lut|Mux5~21_combout\);

-- Location: LCCOMB_X76_Y44_N20
\dds_gen|u1|dds_lut|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~2_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # ((\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\) # ((\dds_gen|u1|addrin_lut[0]~7_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~2_combout\);

-- Location: LCCOMB_X76_Y44_N10
\dds_gen|u1|dds_lut|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~1_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~1_combout\);

-- Location: LCCOMB_X76_Y44_N22
\dds_gen|u1|dds_lut|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~3_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\) # (\dds_gen|u1|dds_lut|Mux6~1_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux6~2_combout\ & 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~2_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~3_combout\);

-- Location: LCCOMB_X76_Y44_N4
\dds_gen|u1|dds_lut|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~4_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ 
-- (\dds_gen|u1|addrin_lut[0]~7_combout\ $ (\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~4_combout\);

-- Location: LCCOMB_X76_Y44_N28
\dds_gen|u1|dds_lut|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~0_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~0_combout\);

-- Location: LCCOMB_X76_Y44_N26
\dds_gen|u1|dds_lut|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~5_combout\ = (\dds_gen|u1|dds_lut|Mux6~3_combout\ & (((!\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|dds_lut|Mux6~4_combout\))) # (!\dds_gen|u1|dds_lut|Mux6~3_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~3_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~4_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~5_combout\);

-- Location: LCCOMB_X76_Y44_N12
\dds_gen|u1|dds_lut|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~20_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\))))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|addrin_lut[1]~3_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~20_combout\);

-- Location: LCCOMB_X76_Y43_N0
\dds_gen|u1|dds_lut|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~19_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # ((!\dds_gen|u1|addrin_lut[3]~5_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~19_combout\);

-- Location: LCCOMB_X76_Y44_N30
\dds_gen|u1|dds_lut|Mux6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~21_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|dds_lut|Mux6~19_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux6~20_combout\ & ((!\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~20_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~19_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~21_combout\);

-- Location: LCCOMB_X76_Y44_N24
\dds_gen|u1|dds_lut|Mux6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~22_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~22_combout\);

-- Location: LCCOMB_X76_Y44_N14
\dds_gen|u1|dds_lut|Mux6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~23_combout\ = (\dds_gen|u1|dds_lut|Mux6~21_combout\) # ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|dds_lut|Mux6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~21_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~22_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~23_combout\);

-- Location: LCCOMB_X77_Y42_N16
\dds_gen|u1|dds_lut|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~8_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # 
-- (!\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~8_combout\);

-- Location: LCCOMB_X77_Y42_N18
\dds_gen|u1|dds_lut|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~7_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (((\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~7_combout\);

-- Location: LCCOMB_X77_Y42_N10
\dds_gen|u1|dds_lut|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~9_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|dds_lut|Mux6~7_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux6~8_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~8_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~9_combout\);

-- Location: LCCOMB_X77_Y42_N4
\dds_gen|u1|dds_lut|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~10_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # ((\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ 
-- (((\dds_gen|u1|addrin_lut[1]~3_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~10_combout\);

-- Location: LCCOMB_X77_Y42_N28
\dds_gen|u1|dds_lut|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~6_combout\ = \dds_gen|akkumulator\(12) $ (((\dds_gen|akkumulator\(11) & (!\dds_gen|akkumulator\(18) & \dds_gen|akkumulator\(10))) # (!\dds_gen|akkumulator\(11) & ((\dds_gen|akkumulator\(10)) # (!\dds_gen|akkumulator\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(12),
	datab => \dds_gen|akkumulator\(11),
	datac => \dds_gen|akkumulator\(18),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|dds_lut|Mux6~6_combout\);

-- Location: LCCOMB_X77_Y42_N22
\dds_gen|u1|dds_lut|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~11_combout\ = (\dds_gen|u1|dds_lut|Mux6~9_combout\ & ((\dds_gen|u1|dds_lut|Mux6~10_combout\) # ((!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|dds_lut|Mux6~9_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- \dds_gen|u1|dds_lut|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~9_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~10_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~11_combout\);

-- Location: LCCOMB_X77_Y42_N12
\dds_gen|u1|dds_lut|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~16_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~16_combout\);

-- Location: LCCOMB_X77_Y42_N26
\dds_gen|u1|dds_lut|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~13_combout\ = \dds_gen|akkumulator\(11) $ (\dds_gen|akkumulator\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(11),
	datad => \dds_gen|akkumulator\(10),
	combout => \dds_gen|u1|dds_lut|Mux6~13_combout\);

-- Location: LCCOMB_X77_Y42_N24
\dds_gen|u1|dds_lut|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~14_combout\ = \dds_gen|u1|addrin_lut[2]~4_combout\ $ (((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~14_combout\);

-- Location: LCCOMB_X77_Y42_N2
\dds_gen|u1|dds_lut|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~15_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux6~13_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~13_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~14_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~15_combout\);

-- Location: LCCOMB_X77_Y42_N0
\dds_gen|u1|dds_lut|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~12_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # 
-- ((!\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~12_combout\);

-- Location: LCCOMB_X77_Y42_N14
\dds_gen|u1|dds_lut|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~17_combout\ = (\dds_gen|u1|dds_lut|Mux6~15_combout\ & ((\dds_gen|u1|dds_lut|Mux6~16_combout\) # ((!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|dds_lut|Mux6~15_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- \dds_gen|u1|dds_lut|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~16_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~15_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~12_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~17_combout\);

-- Location: LCCOMB_X77_Y42_N8
\dds_gen|u1|dds_lut|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~18_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux6~11_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux6~17_combout\ & 
-- !\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~11_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|dds_lut|Mux6~17_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~18_combout\);

-- Location: LCCOMB_X76_Y40_N24
\dds_gen|u1|dds_lut|Mux6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux6~24_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux6~18_combout\ & ((\dds_gen|u1|dds_lut|Mux6~23_combout\))) # (!\dds_gen|u1|dds_lut|Mux6~18_combout\ & (\dds_gen|u1|dds_lut|Mux6~5_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux6~23_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux6~18_combout\,
	combout => \dds_gen|u1|dds_lut|Mux6~24_combout\);

-- Location: LCCOMB_X74_Y42_N22
\dds_gen|u1|dds_lut|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~6_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- \dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~6_combout\);

-- Location: LCCOMB_X74_Y42_N0
\dds_gen|u1|dds_lut|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~2_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # ((!\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~2_combout\);

-- Location: LCCOMB_X74_Y42_N2
\dds_gen|u1|dds_lut|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~3_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~3_combout\);

-- Location: LCCOMB_X77_Y43_N26
\dds_gen|u1|dds_lut|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~4_combout\ = (\dds_gen|akkumulator\(13) & ((\dds_gen|akkumulator\(17) $ (\dds_gen|akkumulator\(18))) # (!\dds_gen|akkumulator\(14)))) # (!\dds_gen|akkumulator\(13) & ((\dds_gen|akkumulator\(14)) # (\dds_gen|akkumulator\(17) $ 
-- (\dds_gen|akkumulator\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(13),
	datab => \dds_gen|akkumulator\(17),
	datac => \dds_gen|akkumulator\(14),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux7~4_combout\);

-- Location: LCCOMB_X74_Y42_N4
\dds_gen|u1|dds_lut|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~5_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|dds_lut|Mux7~3_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((!\dds_gen|u1|dds_lut|Mux7~4_combout\ & 
-- !\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|dds_lut|Mux7~3_combout\,
	datac => \dds_gen|u1|dds_lut|Mux7~4_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~5_combout\);

-- Location: LCCOMB_X74_Y42_N12
\dds_gen|u1|dds_lut|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~7_combout\ = (\dds_gen|u1|dds_lut|Mux7~5_combout\ & ((\dds_gen|u1|dds_lut|Mux7~6_combout\) # ((!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux7~5_combout\ & (((!\dds_gen|u1|dds_lut|Mux7~2_combout\ & 
-- \dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux7~2_combout\,
	datac => \dds_gen|u1|dds_lut|Mux7~5_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~7_combout\);

-- Location: LCCOMB_X75_Y42_N30
\dds_gen|u1|dds_lut|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~20_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- !\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[4]~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~20_combout\);

-- Location: LCCOMB_X75_Y42_N16
\dds_gen|u1|dds_lut|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~21_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ $ 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|addrin_lut[4]~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~21_combout\);

-- Location: LCCOMB_X75_Y42_N6
\dds_gen|u1|dds_lut|Mux7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~22_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux7~21_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|dds_lut|Mux7~20_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~20_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~21_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~22_combout\);

-- Location: LCCOMB_X75_Y42_N8
\dds_gen|u1|dds_lut|Mux7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~23_combout\ = (\dds_gen|u1|dds_lut|Mux7~20_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & \dds_gen|u1|dds_lut|Mux7~21_combout\))) # (!\dds_gen|u1|dds_lut|Mux7~20_combout\ & 
-- (\dds_gen|u1|dds_lut|Mux7~21_combout\ $ (((\dds_gen|u1|addrin_lut[4]~6_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~20_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~21_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~23_combout\);

-- Location: LCCOMB_X75_Y42_N26
\dds_gen|u1|dds_lut|Mux7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~25_combout\ = \dds_gen|u1|dds_lut|Mux7~23_combout\ $ (((\dds_gen|u1|dds_lut|Mux7~22_combout\) # (\dds_gen|akkumulator\(18) $ (!\dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~22_combout\,
	datab => \dds_gen|akkumulator\(18),
	datac => \dds_gen|u1|dds_lut|Mux7~23_combout\,
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux7~25_combout\);

-- Location: LCCOMB_X73_Y42_N10
\dds_gen|u1|dds_lut|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~10_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & ((!\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~10_combout\);

-- Location: LCCOMB_X73_Y42_N16
\dds_gen|u1|dds_lut|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~9_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~9_combout\);

-- Location: LCCOMB_X73_Y42_N4
\dds_gen|u1|dds_lut|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~11_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|dds_lut|Mux7~9_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|dds_lut|Mux7~10_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~10_combout\,
	datab => \dds_gen|u1|dds_lut|Mux7~9_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~11_combout\);

-- Location: LCCOMB_X74_Y42_N26
\dds_gen|u1|dds_lut|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~8_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~8_combout\);

-- Location: LCCOMB_X74_Y42_N28
\dds_gen|u1|dds_lut|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~12_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[6]~1_combout\))))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ & \dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~12_combout\);

-- Location: LCCOMB_X74_Y42_N6
\dds_gen|u1|dds_lut|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~13_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|dds_lut|Mux7~11_combout\ & ((!\dds_gen|u1|dds_lut|Mux7~12_combout\))) # (!\dds_gen|u1|dds_lut|Mux7~11_combout\ & (\dds_gen|u1|dds_lut|Mux7~8_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|dds_lut|Mux7~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux7~11_combout\,
	datac => \dds_gen|u1|dds_lut|Mux7~8_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~12_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~13_combout\);

-- Location: LCCOMB_X75_Y42_N12
\dds_gen|u1|dds_lut|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~17_combout\ = \dds_gen|akkumulator\(14) $ (\dds_gen|akkumulator\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(14),
	datad => \dds_gen|akkumulator\(11),
	combout => \dds_gen|u1|dds_lut|Mux7~17_combout\);

-- Location: LCCOMB_X74_Y40_N6
\dds_gen|u1|dds_lut|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~15_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((!\dds_gen|u1|addrin_lut[3]~5_combout\ & \dds_gen|u1|addrin_lut[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~15_combout\);

-- Location: LCCOMB_X74_Y40_N8
\dds_gen|u1|dds_lut|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~14_combout\ = \dds_gen|u1|addrin_lut[1]~3_combout\ $ (((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|addrin_lut[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~14_combout\);

-- Location: LCCOMB_X74_Y40_N24
\dds_gen|u1|dds_lut|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~16_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|dds_lut|Mux7~14_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|dds_lut|Mux7~15_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~15_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux7~14_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~16_combout\);

-- Location: LCCOMB_X74_Y42_N16
\dds_gen|u1|dds_lut|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~18_combout\ = (\dds_gen|u1|dds_lut|Mux7~16_combout\) # ((!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (\dds_gen|u1|dds_lut|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux7~17_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~16_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~18_combout\);

-- Location: LCCOMB_X74_Y42_N18
\dds_gen|u1|dds_lut|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~19_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux7~13_combout\) # ((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- \dds_gen|u1|dds_lut|Mux7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~13_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~18_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~19_combout\);

-- Location: LCCOMB_X74_Y42_N24
\dds_gen|u1|dds_lut|Mux7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux7~24_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux7~19_combout\ & ((\dds_gen|u1|dds_lut|Mux7~25_combout\))) # (!\dds_gen|u1|dds_lut|Mux7~19_combout\ & (\dds_gen|u1|dds_lut|Mux7~7_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|dds_lut|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux7~7_combout\,
	datab => \dds_gen|u1|dds_lut|Mux7~25_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|dds_lut|Mux7~19_combout\,
	combout => \dds_gen|u1|dds_lut|Mux7~24_combout\);

-- Location: LCCOMB_X76_Y40_N26
\dds_gen|u1|dds_lut|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~4_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\) # ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((!\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~4_combout\);

-- Location: LCCOMB_X76_Y40_N12
\dds_gen|u1|dds_lut|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~1_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~1_combout\);

-- Location: LCCOMB_X76_Y40_N14
\dds_gen|u1|dds_lut|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~2_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((!\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (((\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~2_combout\);

-- Location: LCCOMB_X76_Y40_N20
\dds_gen|u1|dds_lut|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~3_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|dds_lut|Mux8~1_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~1_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~3_combout\);

-- Location: LCCOMB_X76_Y40_N18
\dds_gen|u1|dds_lut|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~0_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~0_combout\);

-- Location: LCCOMB_X76_Y40_N0
\dds_gen|u1|dds_lut|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~5_combout\ = (\dds_gen|u1|dds_lut|Mux8~3_combout\ & ((\dds_gen|u1|dds_lut|Mux8~4_combout\) # ((!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux8~3_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~3_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~5_combout\);

-- Location: LCCOMB_X76_Y40_N10
\dds_gen|u1|dds_lut|Mux8~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~23_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ $ 
-- (((\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~23_combout\);

-- Location: LCCOMB_X76_Y40_N2
\dds_gen|u1|dds_lut|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~19_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\))))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~19_combout\);

-- Location: LCCOMB_X76_Y40_N22
\dds_gen|u1|dds_lut|Mux8~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~21_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~21_combout\);

-- Location: LCCOMB_X76_Y40_N16
\dds_gen|u1|dds_lut|Mux8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~20_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~20_combout\);

-- Location: LCCOMB_X76_Y40_N28
\dds_gen|u1|dds_lut|Mux8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~22_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((!\dds_gen|u1|dds_lut|Mux8~20_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|dds_lut|Mux8~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~21_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~20_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~22_combout\);

-- Location: LCCOMB_X76_Y40_N8
\dds_gen|u1|dds_lut|Mux8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~24_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux8~22_combout\ & (!\dds_gen|u1|dds_lut|Mux8~23_combout\)) # (!\dds_gen|u1|dds_lut|Mux8~22_combout\ & ((\dds_gen|u1|dds_lut|Mux8~19_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~23_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~19_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~22_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~24_combout\);

-- Location: LCCOMB_X77_Y41_N30
\dds_gen|u1|dds_lut|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~14_combout\ = \dds_gen|akkumulator\(16) $ (\dds_gen|akkumulator\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(16),
	datad => \dds_gen|akkumulator\(13),
	combout => \dds_gen|u1|dds_lut|Mux8~14_combout\);

-- Location: LCCOMB_X77_Y41_N24
\dds_gen|u1|dds_lut|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~13_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~13_combout\);

-- Location: LCCOMB_X77_Y41_N12
\dds_gen|u1|dds_lut|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~15_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|dds_lut|Mux8~13_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|dds_lut|Mux8~14_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~14_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~13_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~15_combout\);

-- Location: LCCOMB_X77_Y41_N22
\dds_gen|u1|dds_lut|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~16_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~16_combout\);

-- Location: LCCOMB_X77_Y41_N18
\dds_gen|u1|dds_lut|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~12_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~12_combout\);

-- Location: LCCOMB_X77_Y41_N16
\dds_gen|u1|dds_lut|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~17_combout\ = (\dds_gen|u1|dds_lut|Mux8~15_combout\ & (((\dds_gen|u1|dds_lut|Mux8~16_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|dds_lut|Mux8~15_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- ((!\dds_gen|u1|dds_lut|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~15_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|dds_lut|Mux8~16_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~12_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~17_combout\);

-- Location: LCCOMB_X77_Y41_N6
\dds_gen|u1|dds_lut|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~10_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~10_combout\);

-- Location: LCCOMB_X77_Y41_N2
\dds_gen|u1|dds_lut|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~8_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((!\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ 
-- (((\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~8_combout\);

-- Location: LCCOMB_X77_Y41_N28
\dds_gen|u1|dds_lut|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~7_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- ((\dds_gen|u1|addrin_lut[7]~0_combout\) # ((\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~7_combout\);

-- Location: LCCOMB_X77_Y41_N0
\dds_gen|u1|dds_lut|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~9_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|dds_lut|Mux8~7_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|dds_lut|Mux8~8_combout\ & 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~8_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~9_combout\);

-- Location: LCCOMB_X77_Y43_N28
\dds_gen|u1|dds_lut|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~6_combout\ = (\dds_gen|akkumulator\(15) & (!\dds_gen|akkumulator\(18) & (\dds_gen|akkumulator\(17) $ (!\dds_gen|akkumulator\(11))))) # (!\dds_gen|akkumulator\(15) & (\dds_gen|akkumulator\(18) & (\dds_gen|akkumulator\(17) $ 
-- (!\dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(15),
	datab => \dds_gen|akkumulator\(17),
	datac => \dds_gen|akkumulator\(11),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux8~6_combout\);

-- Location: LCCOMB_X77_Y41_N8
\dds_gen|u1|dds_lut|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~11_combout\ = (\dds_gen|u1|dds_lut|Mux8~9_combout\ & (((!\dds_gen|u1|addrin_lut[6]~1_combout\)) # (!\dds_gen|u1|dds_lut|Mux8~10_combout\))) # (!\dds_gen|u1|dds_lut|Mux8~9_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- \dds_gen|u1|dds_lut|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux8~10_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~9_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~11_combout\);

-- Location: LCCOMB_X77_Y41_N10
\dds_gen|u1|dds_lut|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~18_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux8~11_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|dds_lut|Mux8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~17_combout\,
	datac => \dds_gen|u1|dds_lut|Mux8~11_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~18_combout\);

-- Location: LCCOMB_X76_Y40_N30
\dds_gen|u1|dds_lut|Mux8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux8~25_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux8~18_combout\ & ((\dds_gen|u1|dds_lut|Mux8~24_combout\))) # (!\dds_gen|u1|dds_lut|Mux8~18_combout\ & (\dds_gen|u1|dds_lut|Mux8~5_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux8~5_combout\,
	datac => \dds_gen|u1|dds_lut|Mux8~24_combout\,
	datad => \dds_gen|u1|dds_lut|Mux8~18_combout\,
	combout => \dds_gen|u1|dds_lut|Mux8~25_combout\);

-- Location: LCCOMB_X73_Y43_N24
\dds_gen|u1|dds_lut|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~10_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~10_combout\);

-- Location: LCCOMB_X73_Y43_N10
\dds_gen|u1|dds_lut|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~7_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~7_combout\);

-- Location: LCCOMB_X73_Y43_N28
\dds_gen|u1|dds_lut|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~8_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~8_combout\);

-- Location: LCCOMB_X73_Y43_N14
\dds_gen|u1|dds_lut|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~9_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\)) # (!\dds_gen|u1|dds_lut|Mux9~7_combout\))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (((!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux9~7_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~8_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~9_combout\);

-- Location: LCCOMB_X73_Y43_N0
\dds_gen|u1|dds_lut|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~6_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\))))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ ((\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~6_combout\);

-- Location: LCCOMB_X73_Y43_N22
\dds_gen|u1|dds_lut|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~11_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux9~9_combout\ & (\dds_gen|u1|dds_lut|Mux9~10_combout\)) # (!\dds_gen|u1|dds_lut|Mux9~9_combout\ & ((\dds_gen|u1|dds_lut|Mux9~6_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~10_combout\,
	datac => \dds_gen|u1|dds_lut|Mux9~9_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~11_combout\);

-- Location: LCCOMB_X73_Y43_N26
\dds_gen|u1|dds_lut|Mux9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~16_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~16_combout\);

-- Location: LCCOMB_X74_Y43_N28
\dds_gen|u1|dds_lut|Mux9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~12_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\) # ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (!\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~12_combout\);

-- Location: LCCOMB_X73_Y43_N8
\dds_gen|u1|dds_lut|Mux9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~13_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # ((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~13_combout\);

-- Location: LCCOMB_X73_Y43_N6
\dds_gen|u1|dds_lut|Mux9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~14_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (((\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~14_combout\);

-- Location: LCCOMB_X73_Y43_N12
\dds_gen|u1|dds_lut|Mux9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~15_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|dds_lut|Mux9~13_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux9~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~13_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~14_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~15_combout\);

-- Location: LCCOMB_X73_Y43_N4
\dds_gen|u1|dds_lut|Mux9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~17_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux9~15_combout\ & (!\dds_gen|u1|dds_lut|Mux9~16_combout\)) # (!\dds_gen|u1|dds_lut|Mux9~15_combout\ & ((!\dds_gen|u1|dds_lut|Mux9~12_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux9~16_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~12_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~15_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~17_combout\);

-- Location: LCCOMB_X73_Y41_N10
\dds_gen|u1|dds_lut|Mux9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~18_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[2]~4_combout\ & (\dds_gen|u1|dds_lut|Mux9~11_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|dds_lut|Mux9~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux9~11_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|dds_lut|Mux9~17_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~18_combout\);

-- Location: LCCOMB_X74_Y41_N14
\dds_gen|u1|dds_lut|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~2_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~2_combout\);

-- Location: LCCOMB_X74_Y41_N12
\dds_gen|u1|dds_lut|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~1_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[0]~7_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~1_combout\);

-- Location: LCCOMB_X74_Y41_N24
\dds_gen|u1|dds_lut|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~3_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|dds_lut|Mux9~1_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~2_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~3_combout\);

-- Location: LCCOMB_X74_Y41_N22
\dds_gen|u1|dds_lut|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~4_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # ((\dds_gen|u1|addrin_lut[5]~2_combout\ & \dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~4_combout\);

-- Location: LCCOMB_X74_Y41_N18
\dds_gen|u1|dds_lut|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~0_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((!\dds_gen|u1|addrin_lut[6]~1_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~0_combout\);

-- Location: LCCOMB_X74_Y41_N4
\dds_gen|u1|dds_lut|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~5_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux9~3_combout\ & (\dds_gen|u1|dds_lut|Mux9~4_combout\)) # (!\dds_gen|u1|dds_lut|Mux9~3_combout\ & ((!\dds_gen|u1|dds_lut|Mux9~0_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~3_combout\,
	datac => \dds_gen|u1|dds_lut|Mux9~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~5_combout\);

-- Location: LCCOMB_X73_Y43_N2
\dds_gen|u1|dds_lut|Mux9~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~21_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\)) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~21_combout\);

-- Location: LCCOMB_X73_Y43_N16
\dds_gen|u1|dds_lut|Mux9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~20_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~20_combout\);

-- Location: LCCOMB_X73_Y43_N20
\dds_gen|u1|dds_lut|Mux9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~22_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|dds_lut|Mux9~20_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|dds_lut|Mux9~21_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~21_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~20_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~22_combout\);

-- Location: LCCOMB_X73_Y43_N30
\dds_gen|u1|dds_lut|Mux9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~19_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~19_combout\);

-- Location: LCCOMB_X77_Y43_N22
\dds_gen|u1|dds_lut|Mux9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~23_combout\ = \dds_gen|akkumulator\(18) $ (((\dds_gen|akkumulator\(16) & ((\dds_gen|akkumulator\(17)) # (\dds_gen|akkumulator\(11)))) # (!\dds_gen|akkumulator\(16) & (\dds_gen|akkumulator\(17) & \dds_gen|akkumulator\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(16),
	datab => \dds_gen|akkumulator\(17),
	datac => \dds_gen|akkumulator\(11),
	datad => \dds_gen|akkumulator\(18),
	combout => \dds_gen|u1|dds_lut|Mux9~23_combout\);

-- Location: LCCOMB_X73_Y43_N18
\dds_gen|u1|dds_lut|Mux9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~24_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux9~22_combout\ & ((\dds_gen|u1|dds_lut|Mux9~23_combout\))) # (!\dds_gen|u1|dds_lut|Mux9~22_combout\ & (!\dds_gen|u1|dds_lut|Mux9~19_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|dds_lut|Mux9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~22_combout\,
	datac => \dds_gen|u1|dds_lut|Mux9~19_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~23_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~24_combout\);

-- Location: LCCOMB_X74_Y41_N26
\dds_gen|u1|dds_lut|Mux9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux9~25_combout\ = (\dds_gen|u1|dds_lut|Mux9~18_combout\ & (((\dds_gen|u1|dds_lut|Mux9~24_combout\) # (!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|dds_lut|Mux9~18_combout\ & (\dds_gen|u1|dds_lut|Mux9~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux9~18_combout\,
	datab => \dds_gen|u1|dds_lut|Mux9~5_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux9~24_combout\,
	combout => \dds_gen|u1|dds_lut|Mux9~25_combout\);

-- Location: LCCOMB_X75_Y41_N16
\dds_gen|u1|dds_lut|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~2_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((!\dds_gen|u1|addrin_lut[2]~4_combout\))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~2_combout\);

-- Location: LCCOMB_X75_Y41_N6
\dds_gen|u1|dds_lut|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~1_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\) # ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (!\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~1_combout\);

-- Location: LCCOMB_X75_Y41_N10
\dds_gen|u1|dds_lut|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~3_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[4]~6_combout\) # (!\dds_gen|u1|dds_lut|Mux10~1_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|dds_lut|Mux10~2_combout\ & 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~2_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux10~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~3_combout\);

-- Location: LCCOMB_X75_Y41_N24
\dds_gen|u1|dds_lut|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~4_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~4_combout\);

-- Location: LCCOMB_X75_Y41_N28
\dds_gen|u1|dds_lut|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~0_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (((\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~0_combout\);

-- Location: LCCOMB_X75_Y41_N26
\dds_gen|u1|dds_lut|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~5_combout\ = (\dds_gen|u1|dds_lut|Mux10~3_combout\ & ((\dds_gen|u1|dds_lut|Mux10~4_combout\) # ((!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|dds_lut|Mux10~3_combout\ & (((\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~3_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~4_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux10~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~5_combout\);

-- Location: LCCOMB_X74_Y43_N10
\dds_gen|u1|dds_lut|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~10_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\ & \dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (\dds_gen|u1|addrin_lut[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~10_combout\);

-- Location: LCCOMB_X74_Y43_N20
\dds_gen|u1|dds_lut|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~7_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~7_combout\);

-- Location: LCCOMB_X74_Y43_N18
\dds_gen|u1|dds_lut|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~8_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # ((\dds_gen|u1|addrin_lut[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~8_combout\);

-- Location: LCCOMB_X74_Y43_N8
\dds_gen|u1|dds_lut|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~9_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\)) # (!\dds_gen|u1|dds_lut|Mux10~7_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (((!\dds_gen|u1|dds_lut|Mux10~8_combout\ & 
-- !\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~7_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~8_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~9_combout\);

-- Location: LCCOMB_X74_Y43_N6
\dds_gen|u1|dds_lut|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~6_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~6_combout\);

-- Location: LCCOMB_X74_Y43_N16
\dds_gen|u1|dds_lut|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~11_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|dds_lut|Mux10~9_combout\ & (\dds_gen|u1|dds_lut|Mux10~10_combout\)) # (!\dds_gen|u1|dds_lut|Mux10~9_combout\ & ((\dds_gen|u1|dds_lut|Mux10~6_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|dds_lut|Mux10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~10_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~9_combout\,
	datad => \dds_gen|u1|dds_lut|Mux10~6_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~11_combout\);

-- Location: LCCOMB_X74_Y43_N0
\dds_gen|u1|dds_lut|Mux10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~13_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~13_combout\);

-- Location: LCCOMB_X74_Y43_N22
\dds_gen|u1|dds_lut|Mux10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~14_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[2]~4_combout\ & !\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~14_combout\);

-- Location: LCCOMB_X74_Y43_N12
\dds_gen|u1|dds_lut|Mux10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~15_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|dds_lut|Mux10~13_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|dds_lut|Mux10~14_combout\ & 
-- !\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~13_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~14_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~15_combout\);

-- Location: LCCOMB_X74_Y43_N2
\dds_gen|u1|dds_lut|Mux10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~12_combout\ = \dds_gen|u1|addrin_lut[4]~6_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (((\dds_gen|u1|addrin_lut[2]~4_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~12_combout\);

-- Location: LCCOMB_X74_Y43_N26
\dds_gen|u1|dds_lut|Mux10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~16_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~16_combout\);

-- Location: LCCOMB_X74_Y43_N4
\dds_gen|u1|dds_lut|Mux10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~17_combout\ = (\dds_gen|u1|dds_lut|Mux10~15_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|dds_lut|Mux10~16_combout\)))) # (!\dds_gen|u1|dds_lut|Mux10~15_combout\ & (\dds_gen|u1|dds_lut|Mux10~12_combout\ & 
-- ((\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~15_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~12_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~16_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~17_combout\);

-- Location: LCCOMB_X74_Y43_N30
\dds_gen|u1|dds_lut|Mux10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~18_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|dds_lut|Mux10~11_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux10~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~11_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~17_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~18_combout\);

-- Location: LCCOMB_X75_Y41_N12
\dds_gen|u1|dds_lut|Mux10~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~21_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~21_combout\);

-- Location: LCCOMB_X75_Y41_N2
\dds_gen|u1|dds_lut|Mux10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~20_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[7]~0_combout\)) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~20_combout\);

-- Location: LCCOMB_X75_Y41_N30
\dds_gen|u1|dds_lut|Mux10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~22_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|dds_lut|Mux10~20_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|dds_lut|Mux10~21_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~21_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~20_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~22_combout\);

-- Location: LCCOMB_X75_Y41_N4
\dds_gen|u1|dds_lut|Mux10~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~19_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (!\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~19_combout\);

-- Location: LCCOMB_X75_Y41_N8
\dds_gen|u1|dds_lut|Mux10~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~23_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~23_combout\);

-- Location: LCCOMB_X75_Y41_N18
\dds_gen|u1|dds_lut|Mux10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~24_combout\ = (\dds_gen|u1|dds_lut|Mux10~22_combout\ & (((!\dds_gen|u1|addrin_lut[2]~4_combout\) # (!\dds_gen|u1|dds_lut|Mux10~23_combout\)))) # (!\dds_gen|u1|dds_lut|Mux10~22_combout\ & (!\dds_gen|u1|dds_lut|Mux10~19_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~22_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~19_combout\,
	datac => \dds_gen|u1|dds_lut|Mux10~23_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~24_combout\);

-- Location: LCCOMB_X75_Y41_N20
\dds_gen|u1|dds_lut|Mux10~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux10~25_combout\ = (\dds_gen|u1|dds_lut|Mux10~18_combout\ & (((\dds_gen|u1|dds_lut|Mux10~24_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux10~18_combout\ & (\dds_gen|u1|dds_lut|Mux10~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux10~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux10~18_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux10~24_combout\,
	combout => \dds_gen|u1|dds_lut|Mux10~25_combout\);

-- Location: LCCOMB_X73_Y44_N12
\dds_gen|u1|dds_lut|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~10_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & \dds_gen|u1|addrin_lut[7]~0_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ $ (((\dds_gen|u1|addrin_lut[5]~2_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~10_combout\);

-- Location: LCCOMB_X73_Y44_N24
\dds_gen|u1|dds_lut|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~6_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~6_combout\);

-- Location: LCCOMB_X73_Y44_N6
\dds_gen|u1|dds_lut|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~7_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ $ ((\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~7_combout\);

-- Location: LCCOMB_X73_Y44_N0
\dds_gen|u1|dds_lut|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~8_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~8_combout\);

-- Location: LCCOMB_X73_Y44_N2
\dds_gen|u1|dds_lut|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~9_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[4]~6_combout\)) # (!\dds_gen|u1|dds_lut|Mux11~7_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~7_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux11~8_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~9_combout\);

-- Location: LCCOMB_X73_Y44_N18
\dds_gen|u1|dds_lut|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~11_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux11~9_combout\ & (\dds_gen|u1|dds_lut|Mux11~10_combout\)) # (!\dds_gen|u1|dds_lut|Mux11~9_combout\ & ((\dds_gen|u1|dds_lut|Mux11~6_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~10_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~6_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux11~9_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~11_combout\);

-- Location: LCCOMB_X73_Y44_N20
\dds_gen|u1|dds_lut|Mux11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~16_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~16_combout\);

-- Location: LCCOMB_X73_Y44_N8
\dds_gen|u1|dds_lut|Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~12_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~12_combout\);

-- Location: LCCOMB_X73_Y44_N16
\dds_gen|u1|dds_lut|Mux11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~14_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((!\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~14_combout\);

-- Location: LCCOMB_X73_Y44_N30
\dds_gen|u1|dds_lut|Mux11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~13_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((!\dds_gen|u1|addrin_lut[3]~5_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~13_combout\);

-- Location: LCCOMB_X73_Y44_N10
\dds_gen|u1|dds_lut|Mux11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~15_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux11~13_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~14_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~13_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~15_combout\);

-- Location: LCCOMB_X73_Y44_N26
\dds_gen|u1|dds_lut|Mux11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~17_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|dds_lut|Mux11~15_combout\ & (\dds_gen|u1|dds_lut|Mux11~16_combout\)) # (!\dds_gen|u1|dds_lut|Mux11~15_combout\ & ((!\dds_gen|u1|dds_lut|Mux11~12_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~16_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~12_combout\,
	datad => \dds_gen|u1|dds_lut|Mux11~15_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~17_combout\);

-- Location: LCCOMB_X73_Y44_N4
\dds_gen|u1|dds_lut|Mux11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~18_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|dds_lut|Mux11~11_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux11~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~11_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~17_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~18_combout\);

-- Location: LCCOMB_X74_Y40_N10
\dds_gen|u1|dds_lut|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~0_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[3]~5_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~0_combout\);

-- Location: LCCOMB_X74_Y40_N2
\dds_gen|u1|dds_lut|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~4_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- !\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (((\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~4_combout\);

-- Location: LCCOMB_X74_Y40_N28
\dds_gen|u1|dds_lut|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~1_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\) # ((!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~1_combout\);

-- Location: LCCOMB_X74_Y40_N26
\dds_gen|u1|dds_lut|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~2_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((!\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (!\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~2_combout\);

-- Location: LCCOMB_X74_Y40_N4
\dds_gen|u1|dds_lut|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~3_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\)) # (!\dds_gen|u1|dds_lut|Mux11~1_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|dds_lut|Mux11~2_combout\ & 
-- !\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~2_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~3_combout\);

-- Location: LCCOMB_X74_Y40_N20
\dds_gen|u1|dds_lut|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~5_combout\ = (\dds_gen|u1|dds_lut|Mux11~3_combout\ & (((\dds_gen|u1|dds_lut|Mux11~4_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux11~3_combout\ & (!\dds_gen|u1|dds_lut|Mux11~0_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~0_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~4_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~3_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~5_combout\);

-- Location: LCCOMB_X74_Y40_N0
\dds_gen|u1|dds_lut|Mux11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~20_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~20_combout\);

-- Location: LCCOMB_X74_Y40_N14
\dds_gen|u1|dds_lut|Mux11~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~21_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (((!\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # 
-- ((\dds_gen|u1|addrin_lut[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~21_combout\);

-- Location: LCCOMB_X74_Y40_N12
\dds_gen|u1|dds_lut|Mux11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~22_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (!\dds_gen|u1|dds_lut|Mux11~20_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((!\dds_gen|u1|dds_lut|Mux11~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~20_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~21_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~22_combout\);

-- Location: LCCOMB_X74_Y40_N18
\dds_gen|u1|dds_lut|Mux11~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~23_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[5]~2_combout\)) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[4]~6_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # ((!\dds_gen|u1|addrin_lut[4]~6_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~23_combout\);

-- Location: LCCOMB_X74_Y40_N22
\dds_gen|u1|dds_lut|Mux11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~19_combout\ = (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[4]~6_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- ((\dds_gen|u1|addrin_lut[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~19_combout\);

-- Location: LCCOMB_X74_Y40_N16
\dds_gen|u1|dds_lut|Mux11~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~24_combout\ = (\dds_gen|u1|dds_lut|Mux11~22_combout\ & (((!\dds_gen|u1|addrin_lut[3]~5_combout\)) # (!\dds_gen|u1|dds_lut|Mux11~23_combout\))) # (!\dds_gen|u1|dds_lut|Mux11~22_combout\ & (((\dds_gen|u1|dds_lut|Mux11~19_combout\ & 
-- \dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~22_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~23_combout\,
	datac => \dds_gen|u1|dds_lut|Mux11~19_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~24_combout\);

-- Location: LCCOMB_X74_Y40_N30
\dds_gen|u1|dds_lut|Mux11~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux11~25_combout\ = (\dds_gen|u1|dds_lut|Mux11~18_combout\ & (((\dds_gen|u1|dds_lut|Mux11~24_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|dds_lut|Mux11~18_combout\ & (\dds_gen|u1|dds_lut|Mux11~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux11~18_combout\,
	datab => \dds_gen|u1|dds_lut|Mux11~5_combout\,
	datac => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datad => \dds_gen|u1|dds_lut|Mux11~24_combout\,
	combout => \dds_gen|u1|dds_lut|Mux11~25_combout\);

-- Location: LCCOMB_X75_Y41_N0
\dds_gen|u1|dds_lut|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~16_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (((\dds_gen|u1|addrin_lut[4]~6_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\))))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[4]~6_combout\ & ((!\dds_gen|u1|addrin_lut[0]~7_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~16_combout\);

-- Location: LCCOMB_X75_Y41_N22
\dds_gen|u1|dds_lut|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~12_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ ((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[7]~0_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~12_combout\);

-- Location: LCCOMB_X74_Y42_N10
\dds_gen|u1|dds_lut|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~13_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~13_combout\);

-- Location: LCCOMB_X73_Y44_N14
\dds_gen|u1|dds_lut|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~14_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (((\dds_gen|u1|addrin_lut[1]~3_combout\) # (\dds_gen|u1|addrin_lut[4]~6_combout\))))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~14_combout\);

-- Location: LCCOMB_X74_Y42_N8
\dds_gen|u1|dds_lut|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~15_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|dds_lut|Mux12~13_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (((\dds_gen|u1|dds_lut|Mux12~14_combout\ & 
-- !\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~13_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~14_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[6]~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~15_combout\);

-- Location: LCCOMB_X75_Y41_N14
\dds_gen|u1|dds_lut|Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~17_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|dds_lut|Mux12~15_combout\ & (!\dds_gen|u1|dds_lut|Mux12~16_combout\)) # (!\dds_gen|u1|dds_lut|Mux12~15_combout\ & ((!\dds_gen|u1|dds_lut|Mux12~12_combout\))))) # 
-- (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (((\dds_gen|u1|dds_lut|Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~16_combout\,
	datac => \dds_gen|u1|dds_lut|Mux12~12_combout\,
	datad => \dds_gen|u1|dds_lut|Mux12~15_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~17_combout\);

-- Location: LCCOMB_X76_Y41_N6
\dds_gen|u1|dds_lut|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~8_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (((!\dds_gen|u1|addrin_lut[7]~0_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\))))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~8_combout\);

-- Location: LCCOMB_X76_Y41_N4
\dds_gen|u1|dds_lut|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~7_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (((!\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~7_combout\);

-- Location: LCCOMB_X76_Y41_N12
\dds_gen|u1|dds_lut|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~9_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|dds_lut|Mux12~7_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|dds_lut|Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~8_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~9_combout\);

-- Location: LCCOMB_X76_Y41_N14
\dds_gen|u1|dds_lut|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~6_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\ & !\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~6_combout\);

-- Location: LCCOMB_X76_Y41_N18
\dds_gen|u1|dds_lut|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~10_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\ & ((!\dds_gen|u1|addrin_lut[1]~3_combout\))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\))))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~10_combout\);

-- Location: LCCOMB_X76_Y41_N24
\dds_gen|u1|dds_lut|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~11_combout\ = (\dds_gen|u1|dds_lut|Mux12~9_combout\ & (((!\dds_gen|u1|dds_lut|Mux12~10_combout\) # (!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|dds_lut|Mux12~9_combout\ & (\dds_gen|u1|dds_lut|Mux12~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~9_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~6_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux12~10_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~11_combout\);

-- Location: LCCOMB_X76_Y41_N26
\dds_gen|u1|dds_lut|Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~18_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|dds_lut|Mux12~11_combout\) # (\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux12~17_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~17_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~11_combout\,
	datac => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~18_combout\);

-- Location: LCCOMB_X76_Y41_N10
\dds_gen|u1|dds_lut|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~4_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\ & \dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\) # (\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~4_combout\);

-- Location: LCCOMB_X76_Y41_N16
\dds_gen|u1|dds_lut|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~0_combout\ = (\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (((!\dds_gen|u1|addrin_lut[1]~3_combout\ & \dds_gen|u1|addrin_lut[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~0_combout\);

-- Location: LCCOMB_X77_Y41_N4
\dds_gen|u1|dds_lut|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~1_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (((!\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[6]~1_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & !\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~1_combout\);

-- Location: LCCOMB_X77_Y41_N26
\dds_gen|u1|dds_lut|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~2_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((!\dds_gen|u1|addrin_lut[4]~6_combout\ & \dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[5]~2_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~2_combout\);

-- Location: LCCOMB_X77_Y41_N20
\dds_gen|u1|dds_lut|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~3_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux12~1_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & ((!\dds_gen|u1|dds_lut|Mux12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux12~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~3_combout\);

-- Location: LCCOMB_X76_Y41_N0
\dds_gen|u1|dds_lut|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~5_combout\ = (\dds_gen|u1|dds_lut|Mux12~3_combout\ & (((!\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|dds_lut|Mux12~4_combout\))) # (!\dds_gen|u1|dds_lut|Mux12~3_combout\ & (((!\dds_gen|u1|dds_lut|Mux12~0_combout\ & 
-- \dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~4_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~0_combout\,
	datac => \dds_gen|u1|dds_lut|Mux12~3_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~5_combout\);

-- Location: LCCOMB_X76_Y41_N30
\dds_gen|u1|dds_lut|Mux12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~20_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (((\dds_gen|u1|addrin_lut[6]~1_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~20_combout\);

-- Location: LCCOMB_X76_Y41_N28
\dds_gen|u1|dds_lut|Mux12~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~21_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\) # ((\dds_gen|u1|addrin_lut[6]~1_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~21_combout\);

-- Location: LCCOMB_X76_Y41_N22
\dds_gen|u1|dds_lut|Mux12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~22_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)) # (!\dds_gen|u1|dds_lut|Mux12~20_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (((!\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- \dds_gen|u1|dds_lut|Mux12~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~20_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux12~21_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~22_combout\);

-- Location: LCCOMB_X77_Y41_N14
\dds_gen|u1|dds_lut|Mux12~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~23_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (((!\dds_gen|u1|addrin_lut[6]~1_combout\ & \dds_gen|u1|addrin_lut[0]~7_combout\))))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~23_combout\);

-- Location: LCCOMB_X76_Y41_N20
\dds_gen|u1|dds_lut|Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~19_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[6]~1_combout\ $ (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\ & !\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|addrin_lut[0]~7_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~19_combout\);

-- Location: LCCOMB_X76_Y41_N8
\dds_gen|u1|dds_lut|Mux12~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~24_combout\ = (\dds_gen|u1|dds_lut|Mux12~22_combout\ & ((\dds_gen|u1|dds_lut|Mux12~23_combout\) # ((!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|dds_lut|Mux12~22_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\ & 
-- \dds_gen|u1|dds_lut|Mux12~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~22_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~23_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux12~19_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~24_combout\);

-- Location: LCCOMB_X76_Y41_N2
\dds_gen|u1|dds_lut|Mux12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux12~25_combout\ = (\dds_gen|u1|dds_lut|Mux12~18_combout\ & (((\dds_gen|u1|dds_lut|Mux12~24_combout\) # (!\dds_gen|u1|addrin_lut[2]~4_combout\)))) # (!\dds_gen|u1|dds_lut|Mux12~18_combout\ & (\dds_gen|u1|dds_lut|Mux12~5_combout\ & 
-- ((\dds_gen|u1|addrin_lut[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux12~18_combout\,
	datab => \dds_gen|u1|dds_lut|Mux12~5_combout\,
	datac => \dds_gen|u1|dds_lut|Mux12~24_combout\,
	datad => \dds_gen|u1|addrin_lut[2]~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux12~25_combout\);

-- Location: LCCOMB_X73_Y41_N6
\dds_gen|u1|dds_lut|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~7_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[7]~0_combout\))))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~7_combout\);

-- Location: LCCOMB_X73_Y41_N16
\dds_gen|u1|dds_lut|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~8_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[7]~0_combout\ $ (((!\dds_gen|u1|addrin_lut[0]~7_combout\ & \dds_gen|u1|addrin_lut[4]~6_combout\))))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- ((\dds_gen|u1|addrin_lut[4]~6_combout\) # (\dds_gen|u1|addrin_lut[0]~7_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~8_combout\);

-- Location: LCCOMB_X73_Y41_N26
\dds_gen|u1|dds_lut|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~9_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[1]~3_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|dds_lut|Mux13~7_combout\)) # 
-- (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|dds_lut|Mux13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~7_combout\,
	datab => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datac => \dds_gen|u1|dds_lut|Mux13~8_combout\,
	datad => \dds_gen|u1|addrin_lut[1]~3_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~9_combout\);

-- Location: LCCOMB_X73_Y41_N20
\dds_gen|u1|dds_lut|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~6_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # ((!\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~6_combout\);

-- Location: LCCOMB_X73_Y41_N4
\dds_gen|u1|dds_lut|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~10_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # ((!\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[4]~6_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (!\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~10_combout\);

-- Location: LCCOMB_X73_Y41_N2
\dds_gen|u1|dds_lut|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~11_combout\ = (\dds_gen|u1|dds_lut|Mux13~9_combout\ & (((\dds_gen|u1|dds_lut|Mux13~10_combout\) # (!\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|dds_lut|Mux13~9_combout\ & (!\dds_gen|u1|dds_lut|Mux13~6_combout\ & 
-- ((\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~9_combout\,
	datab => \dds_gen|u1|dds_lut|Mux13~6_combout\,
	datac => \dds_gen|u1|dds_lut|Mux13~10_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~11_combout\);

-- Location: LCCOMB_X76_Y44_N0
\dds_gen|u1|dds_lut|Mux13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~14_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\) # ((!\dds_gen|u1|addrin_lut[0]~7_combout\ & !\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((!\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~14_combout\);

-- Location: LCCOMB_X76_Y44_N2
\dds_gen|u1|dds_lut|Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~13_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\)) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[5]~2_combout\ & ((!\dds_gen|u1|addrin_lut[7]~0_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[5]~2_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\) # (\dds_gen|u1|addrin_lut[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~13_combout\);

-- Location: LCCOMB_X76_Y44_N6
\dds_gen|u1|dds_lut|Mux13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~15_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (((\dds_gen|u1|addrin_lut[4]~6_combout\) # (\dds_gen|u1|dds_lut|Mux13~13_combout\)))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|dds_lut|Mux13~14_combout\ & 
-- (!\dds_gen|u1|addrin_lut[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[3]~5_combout\,
	datab => \dds_gen|u1|dds_lut|Mux13~14_combout\,
	datac => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~13_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~15_combout\);

-- Location: LCCOMB_X76_Y44_N8
\dds_gen|u1|dds_lut|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~12_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|addrin_lut[1]~3_combout\ & ((!\dds_gen|u1|addrin_lut[5]~2_combout\))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- \dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~12_combout\);

-- Location: LCCOMB_X76_Y44_N16
\dds_gen|u1|dds_lut|Mux13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~16_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\) # (!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (\dds_gen|u1|addrin_lut[5]~2_combout\ $ (\dds_gen|u1|addrin_lut[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|addrin_lut[7]~0_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~16_combout\);

-- Location: LCCOMB_X76_Y44_N18
\dds_gen|u1|dds_lut|Mux13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~17_combout\ = (\dds_gen|u1|dds_lut|Mux13~15_combout\ & (((\dds_gen|u1|dds_lut|Mux13~16_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\))) # (!\dds_gen|u1|dds_lut|Mux13~15_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|dds_lut|Mux13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~15_combout\,
	datab => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datac => \dds_gen|u1|dds_lut|Mux13~12_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~16_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~17_combout\);

-- Location: LCCOMB_X73_Y44_N28
\dds_gen|u1|dds_lut|Mux13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~18_combout\ = (\dds_gen|u1|addrin_lut[2]~4_combout\ & ((\dds_gen|u1|addrin_lut[6]~1_combout\) # ((\dds_gen|u1|dds_lut|Mux13~11_combout\)))) # (!\dds_gen|u1|addrin_lut[2]~4_combout\ & (!\dds_gen|u1|addrin_lut[6]~1_combout\ & 
-- ((\dds_gen|u1|dds_lut|Mux13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[2]~4_combout\,
	datab => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datac => \dds_gen|u1|dds_lut|Mux13~11_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~17_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~18_combout\);

-- Location: LCCOMB_X73_Y42_N30
\dds_gen|u1|dds_lut|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~0_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (((!\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((\dds_gen|u1|addrin_lut[4]~6_combout\) # 
-- (\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~0_combout\);

-- Location: LCCOMB_X73_Y42_N26
\dds_gen|u1|dds_lut|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~2_combout\ = (\dds_gen|u1|addrin_lut[5]~2_combout\ & (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((\dds_gen|u1|addrin_lut[4]~6_combout\) # (\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~2_combout\);

-- Location: LCCOMB_X73_Y42_N0
\dds_gen|u1|dds_lut|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~1_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ & ((!\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~1_combout\);

-- Location: LCCOMB_X73_Y42_N20
\dds_gen|u1|dds_lut|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~3_combout\ = (\dds_gen|u1|addrin_lut[0]~7_combout\ & (((\dds_gen|u1|addrin_lut[7]~0_combout\)))) # (!\dds_gen|u1|addrin_lut[0]~7_combout\ & ((\dds_gen|u1|addrin_lut[7]~0_combout\ & ((\dds_gen|u1|dds_lut|Mux13~1_combout\))) # 
-- (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (\dds_gen|u1|dds_lut|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~2_combout\,
	datab => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datac => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~1_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~3_combout\);

-- Location: LCCOMB_X73_Y42_N18
\dds_gen|u1|dds_lut|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~4_combout\ = (\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (((!\dds_gen|u1|addrin_lut[4]~6_combout\ & !\dds_gen|u1|addrin_lut[5]~2_combout\))))) # (!\dds_gen|u1|addrin_lut[3]~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datac => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~4_combout\);

-- Location: LCCOMB_X73_Y42_N8
\dds_gen|u1|dds_lut|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~5_combout\ = (\dds_gen|u1|dds_lut|Mux13~3_combout\ & (((\dds_gen|u1|dds_lut|Mux13~4_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|dds_lut|Mux13~3_combout\ & (\dds_gen|u1|dds_lut|Mux13~0_combout\ & 
-- (\dds_gen|u1|addrin_lut[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~0_combout\,
	datab => \dds_gen|u1|dds_lut|Mux13~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~4_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~5_combout\);

-- Location: LCCOMB_X73_Y42_N22
\dds_gen|u1|dds_lut|Mux13~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~23_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (((!\dds_gen|u1|addrin_lut[3]~5_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\))))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- (!\dds_gen|u1|addrin_lut[3]~5_combout\ & (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (\dds_gen|u1|addrin_lut[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~23_combout\);

-- Location: LCCOMB_X73_Y42_N12
\dds_gen|u1|dds_lut|Mux13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~20_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & (((\dds_gen|u1|addrin_lut[3]~5_combout\) # (!\dds_gen|u1|addrin_lut[0]~7_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- ((!\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & \dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~20_combout\);

-- Location: LCCOMB_X73_Y42_N2
\dds_gen|u1|dds_lut|Mux13~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~21_combout\ = (\dds_gen|u1|addrin_lut[1]~3_combout\ & ((\dds_gen|u1|addrin_lut[0]~7_combout\) # (\dds_gen|u1|addrin_lut[4]~6_combout\ $ (!\dds_gen|u1|addrin_lut[3]~5_combout\)))) # (!\dds_gen|u1|addrin_lut[1]~3_combout\ & 
-- ((\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[0]~7_combout\)) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & ((\dds_gen|u1|addrin_lut[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~21_combout\);

-- Location: LCCOMB_X73_Y42_N28
\dds_gen|u1|dds_lut|Mux13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~22_combout\ = (\dds_gen|u1|addrin_lut[7]~0_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\)) # (!\dds_gen|u1|dds_lut|Mux13~20_combout\))) # (!\dds_gen|u1|addrin_lut[7]~0_combout\ & (((!\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux13~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~20_combout\,
	datab => \dds_gen|u1|addrin_lut[7]~0_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~21_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~22_combout\);

-- Location: LCCOMB_X73_Y42_N6
\dds_gen|u1|dds_lut|Mux13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~19_combout\ = (\dds_gen|u1|addrin_lut[4]~6_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ & (!\dds_gen|u1|addrin_lut[0]~7_combout\ & !\dds_gen|u1|addrin_lut[3]~5_combout\))) # (!\dds_gen|u1|addrin_lut[4]~6_combout\ & 
-- (\dds_gen|u1|addrin_lut[0]~7_combout\ & (\dds_gen|u1|addrin_lut[1]~3_combout\ $ (\dds_gen|u1|addrin_lut[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|addrin_lut[4]~6_combout\,
	datab => \dds_gen|u1|addrin_lut[1]~3_combout\,
	datac => \dds_gen|u1|addrin_lut[0]~7_combout\,
	datad => \dds_gen|u1|addrin_lut[3]~5_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~19_combout\);

-- Location: LCCOMB_X73_Y42_N24
\dds_gen|u1|dds_lut|Mux13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~24_combout\ = (\dds_gen|u1|dds_lut|Mux13~22_combout\ & ((\dds_gen|u1|dds_lut|Mux13~23_combout\) # ((!\dds_gen|u1|addrin_lut[5]~2_combout\)))) # (!\dds_gen|u1|dds_lut|Mux13~22_combout\ & (((\dds_gen|u1|addrin_lut[5]~2_combout\ & 
-- !\dds_gen|u1|dds_lut|Mux13~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~23_combout\,
	datab => \dds_gen|u1|dds_lut|Mux13~22_combout\,
	datac => \dds_gen|u1|addrin_lut[5]~2_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~19_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~24_combout\);

-- Location: LCCOMB_X73_Y42_N14
\dds_gen|u1|dds_lut|Mux13~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|dds_lut|Mux13~25_combout\ = (\dds_gen|u1|dds_lut|Mux13~18_combout\ & (((\dds_gen|u1|dds_lut|Mux13~24_combout\) # (!\dds_gen|u1|addrin_lut[6]~1_combout\)))) # (!\dds_gen|u1|dds_lut|Mux13~18_combout\ & (\dds_gen|u1|dds_lut|Mux13~5_combout\ & 
-- (\dds_gen|u1|addrin_lut[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~18_combout\,
	datab => \dds_gen|u1|dds_lut|Mux13~5_combout\,
	datac => \dds_gen|u1|addrin_lut[6]~1_combout\,
	datad => \dds_gen|u1|dds_lut|Mux13~24_combout\,
	combout => \dds_gen|u1|dds_lut|Mux13~25_combout\);

-- Location: LCCOMB_X74_Y42_N30
\dds_gen|u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~0_combout\ = \dds_gen|u1|dds_lut|Mux13~25_combout\ $ (\dds_gen|akkumulator\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux13~25_combout\,
	datad => \dds_gen|akkumulator\(19),
	combout => \dds_gen|u1|Add0~0_combout\);

-- Location: LCCOMB_X75_Y39_N0
\dds_gen|u1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~1_combout\ = (\dds_gen|akkumulator\(19) & (\dds_gen|u1|Add0~0_combout\ $ (VCC))) # (!\dds_gen|akkumulator\(19) & (\dds_gen|u1|Add0~0_combout\ & VCC))
-- \dds_gen|u1|Add0~2\ = CARRY((\dds_gen|akkumulator\(19) & \dds_gen|u1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|Add0~0_combout\,
	datad => VCC,
	combout => \dds_gen|u1|Add0~1_combout\,
	cout => \dds_gen|u1|Add0~2\);

-- Location: LCCOMB_X75_Y39_N2
\dds_gen|u1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~3_combout\ = (\dds_gen|u1|Add0~2\ & (\dds_gen|akkumulator\(19) $ ((!\dds_gen|u1|dds_lut|Mux12~25_combout\)))) # (!\dds_gen|u1|Add0~2\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux12~25_combout\)) # (GND)))
-- \dds_gen|u1|Add0~4\ = CARRY((\dds_gen|akkumulator\(19) $ (!\dds_gen|u1|dds_lut|Mux12~25_combout\)) # (!\dds_gen|u1|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux12~25_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~2\,
	combout => \dds_gen|u1|Add0~3_combout\,
	cout => \dds_gen|u1|Add0~4\);

-- Location: LCCOMB_X75_Y39_N4
\dds_gen|u1|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~5_combout\ = (\dds_gen|u1|Add0~4\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux11~25_combout\)))) # (!\dds_gen|u1|Add0~4\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux11~25_combout\ $ (VCC))))
-- \dds_gen|u1|Add0~6\ = CARRY((!\dds_gen|u1|Add0~4\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux11~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux11~25_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~4\,
	combout => \dds_gen|u1|Add0~5_combout\,
	cout => \dds_gen|u1|Add0~6\);

-- Location: LCCOMB_X75_Y39_N6
\dds_gen|u1|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~7_combout\ = (\dds_gen|u1|Add0~6\ & (\dds_gen|akkumulator\(19) $ ((!\dds_gen|u1|dds_lut|Mux10~25_combout\)))) # (!\dds_gen|u1|Add0~6\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux10~25_combout\)) # (GND)))
-- \dds_gen|u1|Add0~8\ = CARRY((\dds_gen|akkumulator\(19) $ (!\dds_gen|u1|dds_lut|Mux10~25_combout\)) # (!\dds_gen|u1|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux10~25_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~6\,
	combout => \dds_gen|u1|Add0~7_combout\,
	cout => \dds_gen|u1|Add0~8\);

-- Location: LCCOMB_X75_Y39_N8
\dds_gen|u1|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~9_combout\ = (\dds_gen|u1|Add0~8\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux9~25_combout\)))) # (!\dds_gen|u1|Add0~8\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux9~25_combout\ $ (VCC))))
-- \dds_gen|u1|Add0~10\ = CARRY((!\dds_gen|u1|Add0~8\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux9~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux9~25_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~8\,
	combout => \dds_gen|u1|Add0~9_combout\,
	cout => \dds_gen|u1|Add0~10\);

-- Location: LCCOMB_X75_Y39_N10
\dds_gen|u1|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~11_combout\ = (\dds_gen|u1|Add0~10\ & (\dds_gen|akkumulator\(19) $ ((!\dds_gen|u1|dds_lut|Mux8~25_combout\)))) # (!\dds_gen|u1|Add0~10\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux8~25_combout\)) # (GND)))
-- \dds_gen|u1|Add0~12\ = CARRY((\dds_gen|akkumulator\(19) $ (!\dds_gen|u1|dds_lut|Mux8~25_combout\)) # (!\dds_gen|u1|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux8~25_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~10\,
	combout => \dds_gen|u1|Add0~11_combout\,
	cout => \dds_gen|u1|Add0~12\);

-- Location: LCCOMB_X75_Y39_N12
\dds_gen|u1|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~13_combout\ = (\dds_gen|u1|Add0~12\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux7~24_combout\)))) # (!\dds_gen|u1|Add0~12\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux7~24_combout\ $ (VCC))))
-- \dds_gen|u1|Add0~14\ = CARRY((!\dds_gen|u1|Add0~12\ & (\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux7~24_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~12\,
	combout => \dds_gen|u1|Add0~13_combout\,
	cout => \dds_gen|u1|Add0~14\);

-- Location: LCCOMB_X75_Y39_N14
\dds_gen|u1|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~15_combout\ = (\dds_gen|u1|Add0~14\ & (\dds_gen|u1|dds_lut|Mux6~24_combout\ $ ((!\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~14\ & ((\dds_gen|u1|dds_lut|Mux6~24_combout\ $ (\dds_gen|akkumulator\(19))) # (GND)))
-- \dds_gen|u1|Add0~16\ = CARRY((\dds_gen|u1|dds_lut|Mux6~24_combout\ $ (!\dds_gen|akkumulator\(19))) # (!\dds_gen|u1|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux6~24_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~14\,
	combout => \dds_gen|u1|Add0~15_combout\,
	cout => \dds_gen|u1|Add0~16\);

-- Location: LCCOMB_X75_Y39_N16
\dds_gen|u1|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~17_combout\ = (\dds_gen|u1|Add0~16\ & ((\dds_gen|u1|dds_lut|Mux5~21_combout\ $ (\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~16\ & (\dds_gen|u1|dds_lut|Mux5~21_combout\ $ (\dds_gen|akkumulator\(19) $ (VCC))))
-- \dds_gen|u1|Add0~18\ = CARRY((!\dds_gen|u1|Add0~16\ & (\dds_gen|u1|dds_lut|Mux5~21_combout\ $ (\dds_gen|akkumulator\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux5~21_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~16\,
	combout => \dds_gen|u1|Add0~17_combout\,
	cout => \dds_gen|u1|Add0~18\);

-- Location: LCCOMB_X75_Y39_N18
\dds_gen|u1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~19_combout\ = (\dds_gen|u1|Add0~18\ & (\dds_gen|u1|dds_lut|Mux4~48_combout\ $ ((!\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~18\ & ((\dds_gen|u1|dds_lut|Mux4~48_combout\ $ (\dds_gen|akkumulator\(19))) # (GND)))
-- \dds_gen|u1|Add0~20\ = CARRY((\dds_gen|u1|dds_lut|Mux4~48_combout\ $ (!\dds_gen|akkumulator\(19))) # (!\dds_gen|u1|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux4~48_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~18\,
	combout => \dds_gen|u1|Add0~19_combout\,
	cout => \dds_gen|u1|Add0~20\);

-- Location: LCCOMB_X75_Y39_N20
\dds_gen|u1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~21_combout\ = (\dds_gen|u1|Add0~20\ & ((\dds_gen|u1|dds_lut|Mux3~22_combout\ $ (\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~20\ & (\dds_gen|u1|dds_lut|Mux3~22_combout\ $ (\dds_gen|akkumulator\(19) $ (VCC))))
-- \dds_gen|u1|Add0~22\ = CARRY((!\dds_gen|u1|Add0~20\ & (\dds_gen|u1|dds_lut|Mux3~22_combout\ $ (\dds_gen|akkumulator\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux3~22_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~20\,
	combout => \dds_gen|u1|Add0~21_combout\,
	cout => \dds_gen|u1|Add0~22\);

-- Location: LCCOMB_X75_Y39_N22
\dds_gen|u1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~23_combout\ = (\dds_gen|u1|Add0~22\ & (\dds_gen|akkumulator\(19) $ ((!\dds_gen|u1|dds_lut|Mux2~13_combout\)))) # (!\dds_gen|u1|Add0~22\ & ((\dds_gen|akkumulator\(19) $ (\dds_gen|u1|dds_lut|Mux2~13_combout\)) # (GND)))
-- \dds_gen|u1|Add0~24\ = CARRY((\dds_gen|akkumulator\(19) $ (!\dds_gen|u1|dds_lut|Mux2~13_combout\)) # (!\dds_gen|u1|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|akkumulator\(19),
	datab => \dds_gen|u1|dds_lut|Mux2~13_combout\,
	datad => VCC,
	cin => \dds_gen|u1|Add0~22\,
	combout => \dds_gen|u1|Add0~23_combout\,
	cout => \dds_gen|u1|Add0~24\);

-- Location: LCCOMB_X75_Y39_N24
\dds_gen|u1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~25_combout\ = (\dds_gen|u1|Add0~24\ & ((\dds_gen|u1|dds_lut|Mux1~40_combout\ $ (\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~24\ & (\dds_gen|u1|dds_lut|Mux1~40_combout\ $ (\dds_gen|akkumulator\(19) $ (VCC))))
-- \dds_gen|u1|Add0~26\ = CARRY((!\dds_gen|u1|Add0~24\ & (\dds_gen|u1|dds_lut|Mux1~40_combout\ $ (\dds_gen|akkumulator\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux1~40_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~24\,
	combout => \dds_gen|u1|Add0~25_combout\,
	cout => \dds_gen|u1|Add0~26\);

-- Location: LCCOMB_X75_Y39_N26
\dds_gen|u1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~27_combout\ = (\dds_gen|u1|Add0~26\ & (\dds_gen|u1|dds_lut|Mux0~0_combout\ $ ((!\dds_gen|akkumulator\(19))))) # (!\dds_gen|u1|Add0~26\ & ((\dds_gen|u1|dds_lut|Mux0~0_combout\ $ (\dds_gen|akkumulator\(19))) # (GND)))
-- \dds_gen|u1|Add0~28\ = CARRY((\dds_gen|u1|dds_lut|Mux0~0_combout\ $ (!\dds_gen|akkumulator\(19))) # (!\dds_gen|u1|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|dds_lut|Mux0~0_combout\,
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~26\,
	combout => \dds_gen|u1|Add0~27_combout\,
	cout => \dds_gen|u1|Add0~28\);

-- Location: LCCOMB_X75_Y39_N28
\dds_gen|u1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~29_combout\ = (\dds_gen|akkumulator\(19) & (\dds_gen|u1|Add0~28\ $ (GND))) # (!\dds_gen|akkumulator\(19) & (!\dds_gen|u1|Add0~28\ & VCC))
-- \dds_gen|u1|Add0~30\ = CARRY((\dds_gen|akkumulator\(19) & !\dds_gen|u1|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|akkumulator\(19),
	datad => VCC,
	cin => \dds_gen|u1|Add0~28\,
	combout => \dds_gen|u1|Add0~29_combout\,
	cout => \dds_gen|u1|Add0~30\);

-- Location: LCCOMB_X75_Y39_N30
\dds_gen|u1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dds_gen|u1|Add0~31_combout\ = \dds_gen|u1|Add0~30\ $ (\dds_gen|akkumulator\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dds_gen|akkumulator\(19),
	cin => \dds_gen|u1|Add0~30\,
	combout => \dds_gen|u1|Add0~31_combout\);

-- Location: LCCOMB_X58_Y36_N0
\delay|write_ptr[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[0]~15_combout\ = \delay|write_ptr\(0) $ (VCC)
-- \delay|write_ptr[0]~16\ = CARRY(\delay|write_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(0),
	datad => VCC,
	combout => \delay|write_ptr[0]~15_combout\,
	cout => \delay|write_ptr[0]~16\);

-- Location: LCCOMB_X57_Y36_N26
\delay|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Equal0~3_combout\ = ((!\delay|write_ptr\(11)) # (!\delay|write_ptr\(10))) # (!\delay|write_ptr\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(12),
	datac => \delay|write_ptr\(10),
	datad => \delay|write_ptr\(11),
	combout => \delay|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y36_N0
\delay|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Equal0~2_combout\ = (((!\delay|write_ptr\(9)) # (!\delay|write_ptr\(6))) # (!\delay|write_ptr\(7))) # (!\delay|write_ptr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(8),
	datab => \delay|write_ptr\(7),
	datac => \delay|write_ptr\(6),
	datad => \delay|write_ptr\(9),
	combout => \delay|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y36_N30
\delay|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Equal0~1_combout\ = (((!\delay|write_ptr\(3)) # (!\delay|write_ptr\(4))) # (!\delay|write_ptr\(2))) # (!\delay|write_ptr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(5),
	datab => \delay|write_ptr\(2),
	datac => \delay|write_ptr\(4),
	datad => \delay|write_ptr\(3),
	combout => \delay|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y36_N2
\delay|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Equal0~0_combout\ = (((!\delay|write_ptr\(1)) # (!\delay|write_ptr\(13))) # (!\delay|write_ptr\(14))) # (!\delay|write_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(0),
	datab => \delay|write_ptr\(14),
	datac => \delay|write_ptr\(13),
	datad => \delay|write_ptr\(1),
	combout => \delay|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y36_N8
\delay|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Equal0~4_combout\ = (\delay|Equal0~3_combout\) # ((\delay|Equal0~2_combout\) # ((\delay|Equal0~1_combout\) # (\delay|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Equal0~3_combout\,
	datab => \delay|Equal0~2_combout\,
	datac => \delay|Equal0~1_combout\,
	datad => \delay|Equal0~0_combout\,
	combout => \delay|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y36_N6
\delay|write_ptr[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[9]~43_combout\ = (\reset~input_o\) # (!\delay|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|Equal0~4_combout\,
	datac => \reset~input_o\,
	combout => \delay|write_ptr[9]~43_combout\);

-- Location: LCCOMB_X72_Y42_N6
\wm8731|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~0_combout\ = \wm8731|s_lrswitch\(0) $ (VCC)
-- \wm8731|Add3~1\ = CARRY(\wm8731|s_lrswitch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(0),
	datad => VCC,
	combout => \wm8731|Add3~0_combout\,
	cout => \wm8731|Add3~1\);

-- Location: FF_X72_Y42_N7
\wm8731|s_lrswitch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(0));

-- Location: LCCOMB_X72_Y42_N8
\wm8731|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~2_combout\ = (\wm8731|s_lrswitch\(1) & (!\wm8731|Add3~1\)) # (!\wm8731|s_lrswitch\(1) & ((\wm8731|Add3~1\) # (GND)))
-- \wm8731|Add3~3\ = CARRY((!\wm8731|Add3~1\) # (!\wm8731|s_lrswitch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|s_lrswitch\(1),
	datad => VCC,
	cin => \wm8731|Add3~1\,
	combout => \wm8731|Add3~2_combout\,
	cout => \wm8731|Add3~3\);

-- Location: FF_X72_Y42_N9
\wm8731|s_lrswitch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(1));

-- Location: LCCOMB_X72_Y42_N10
\wm8731|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~4_combout\ = (\wm8731|s_lrswitch\(2) & (\wm8731|Add3~3\ $ (GND))) # (!\wm8731|s_lrswitch\(2) & (!\wm8731|Add3~3\ & VCC))
-- \wm8731|Add3~5\ = CARRY((\wm8731|s_lrswitch\(2) & !\wm8731|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(2),
	datad => VCC,
	cin => \wm8731|Add3~3\,
	combout => \wm8731|Add3~4_combout\,
	cout => \wm8731|Add3~5\);

-- Location: FF_X72_Y42_N11
\wm8731|s_lrswitch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(2));

-- Location: LCCOMB_X72_Y42_N12
\wm8731|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~6_combout\ = (\wm8731|s_lrswitch\(3) & (!\wm8731|Add3~5\)) # (!\wm8731|s_lrswitch\(3) & ((\wm8731|Add3~5\) # (GND)))
-- \wm8731|Add3~7\ = CARRY((!\wm8731|Add3~5\) # (!\wm8731|s_lrswitch\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(3),
	datad => VCC,
	cin => \wm8731|Add3~5\,
	combout => \wm8731|Add3~6_combout\,
	cout => \wm8731|Add3~7\);

-- Location: FF_X72_Y42_N13
\wm8731|s_lrswitch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(3));

-- Location: LCCOMB_X72_Y42_N14
\wm8731|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~8_combout\ = (\wm8731|s_lrswitch\(4) & (\wm8731|Add3~7\ $ (GND))) # (!\wm8731|s_lrswitch\(4) & (!\wm8731|Add3~7\ & VCC))
-- \wm8731|Add3~9\ = CARRY((\wm8731|s_lrswitch\(4) & !\wm8731|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|s_lrswitch\(4),
	datad => VCC,
	cin => \wm8731|Add3~7\,
	combout => \wm8731|Add3~8_combout\,
	cout => \wm8731|Add3~9\);

-- Location: FF_X72_Y42_N15
\wm8731|s_lrswitch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(4));

-- Location: LCCOMB_X72_Y42_N26
\wm8731|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Equal6~1_combout\ = (\wm8731|s_lrswitch\(3) & (\wm8731|s_lrswitch\(4) & (\wm8731|s_lrswitch\(1) & \wm8731|s_lrswitch\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(3),
	datab => \wm8731|s_lrswitch\(4),
	datac => \wm8731|s_lrswitch\(1),
	datad => \wm8731|s_lrswitch\(2),
	combout => \wm8731|Equal6~1_combout\);

-- Location: LCCOMB_X72_Y42_N16
\wm8731|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~10_combout\ = (\wm8731|s_lrswitch\(5) & (!\wm8731|Add3~9\)) # (!\wm8731|s_lrswitch\(5) & ((\wm8731|Add3~9\) # (GND)))
-- \wm8731|Add3~11\ = CARRY((!\wm8731|Add3~9\) # (!\wm8731|s_lrswitch\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|s_lrswitch\(5),
	datad => VCC,
	cin => \wm8731|Add3~9\,
	combout => \wm8731|Add3~10_combout\,
	cout => \wm8731|Add3~11\);

-- Location: FF_X72_Y42_N17
\wm8731|s_lrswitch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(5));

-- Location: LCCOMB_X72_Y42_N18
\wm8731|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~12_combout\ = (\wm8731|s_lrswitch\(6) & (\wm8731|Add3~11\ $ (GND))) # (!\wm8731|s_lrswitch\(6) & (!\wm8731|Add3~11\ & VCC))
-- \wm8731|Add3~13\ = CARRY((\wm8731|s_lrswitch\(6) & !\wm8731|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|s_lrswitch\(6),
	datad => VCC,
	cin => \wm8731|Add3~11\,
	combout => \wm8731|Add3~12_combout\,
	cout => \wm8731|Add3~13\);

-- Location: FF_X72_Y42_N19
\wm8731|s_lrswitch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Add3~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(6));

-- Location: LCCOMB_X72_Y42_N20
\wm8731|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~14_combout\ = (\wm8731|s_lrswitch\(7) & (!\wm8731|Add3~13\)) # (!\wm8731|s_lrswitch\(7) & ((\wm8731|Add3~13\) # (GND)))
-- \wm8731|Add3~15\ = CARRY((!\wm8731|Add3~13\) # (!\wm8731|s_lrswitch\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \wm8731|s_lrswitch\(7),
	datad => VCC,
	cin => \wm8731|Add3~13\,
	combout => \wm8731|Add3~14_combout\,
	cout => \wm8731|Add3~15\);

-- Location: LCCOMB_X72_Y42_N4
\wm8731|s_lrswitch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_lrswitch~1_combout\ = (\wm8731|Add3~14_combout\ & (((!\wm8731|Equal6~1_combout\) # (!\wm8731|Equal6~0_combout\)) # (!\wm8731|s_lrswitch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(0),
	datab => \wm8731|Equal6~0_combout\,
	datac => \wm8731|Equal6~1_combout\,
	datad => \wm8731|Add3~14_combout\,
	combout => \wm8731|s_lrswitch~1_combout\);

-- Location: FF_X72_Y42_N5
\wm8731|s_lrswitch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_lrswitch~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(7));

-- Location: LCCOMB_X72_Y42_N22
\wm8731|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Add3~16_combout\ = \wm8731|s_lrswitch\(8) $ (!\wm8731|Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(8),
	cin => \wm8731|Add3~15\,
	combout => \wm8731|Add3~16_combout\);

-- Location: LCCOMB_X72_Y42_N30
\wm8731|s_lrswitch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_lrswitch~0_combout\ = (\wm8731|Add3~16_combout\ & (((!\wm8731|s_lrswitch\(0)) # (!\wm8731|Equal6~0_combout\)) # (!\wm8731|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~1_combout\,
	datab => \wm8731|Equal6~0_combout\,
	datac => \wm8731|Add3~16_combout\,
	datad => \wm8731|s_lrswitch\(0),
	combout => \wm8731|s_lrswitch~0_combout\);

-- Location: FF_X72_Y42_N31
\wm8731|s_lrswitch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_lrswitch~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_lrswitch\(8));

-- Location: LCCOMB_X72_Y42_N24
\wm8731|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Equal6~0_combout\ = (\wm8731|s_lrswitch\(8) & (\wm8731|s_lrswitch\(6) & (!\wm8731|s_lrswitch\(7) & \wm8731|s_lrswitch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(8),
	datab => \wm8731|s_lrswitch\(6),
	datac => \wm8731|s_lrswitch\(7),
	datad => \wm8731|s_lrswitch\(5),
	combout => \wm8731|Equal6~0_combout\);

-- Location: LCCOMB_X72_Y42_N28
\wm8731|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|Equal6~2_combout\ = (\wm8731|s_lrswitch\(0) & (\wm8731|Equal6~1_combout\ & \wm8731|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(0),
	datac => \wm8731|Equal6~1_combout\,
	datad => \wm8731|Equal6~0_combout\,
	combout => \wm8731|Equal6~2_combout\);

-- Location: FF_X72_Y42_N29
\wm8731|aud_daclrck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|Equal6~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|aud_daclrck~q\);

-- Location: LCCOMB_X58_Y39_N8
\delay|delayed_audio[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delayed_audio[12]~0_combout\ = (\wm8731|aud_daclrck~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|aud_daclrck~q\,
	datad => \reset~input_o\,
	combout => \delay|delayed_audio[12]~0_combout\);

-- Location: FF_X58_Y36_N1
\delay|write_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[0]~15_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(0));

-- Location: LCCOMB_X58_Y36_N2
\delay|write_ptr[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[1]~17_combout\ = (\delay|write_ptr\(1) & (!\delay|write_ptr[0]~16\)) # (!\delay|write_ptr\(1) & ((\delay|write_ptr[0]~16\) # (GND)))
-- \delay|write_ptr[1]~18\ = CARRY((!\delay|write_ptr[0]~16\) # (!\delay|write_ptr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(1),
	datad => VCC,
	cin => \delay|write_ptr[0]~16\,
	combout => \delay|write_ptr[1]~17_combout\,
	cout => \delay|write_ptr[1]~18\);

-- Location: FF_X58_Y36_N3
\delay|write_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[1]~17_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(1));

-- Location: LCCOMB_X58_Y36_N4
\delay|write_ptr[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[2]~19_combout\ = (\delay|write_ptr\(2) & (\delay|write_ptr[1]~18\ $ (GND))) # (!\delay|write_ptr\(2) & (!\delay|write_ptr[1]~18\ & VCC))
-- \delay|write_ptr[2]~20\ = CARRY((\delay|write_ptr\(2) & !\delay|write_ptr[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(2),
	datad => VCC,
	cin => \delay|write_ptr[1]~18\,
	combout => \delay|write_ptr[2]~19_combout\,
	cout => \delay|write_ptr[2]~20\);

-- Location: FF_X58_Y36_N5
\delay|write_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[2]~19_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(2));

-- Location: LCCOMB_X58_Y36_N6
\delay|write_ptr[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[3]~21_combout\ = (\delay|write_ptr\(3) & (!\delay|write_ptr[2]~20\)) # (!\delay|write_ptr\(3) & ((\delay|write_ptr[2]~20\) # (GND)))
-- \delay|write_ptr[3]~22\ = CARRY((!\delay|write_ptr[2]~20\) # (!\delay|write_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(3),
	datad => VCC,
	cin => \delay|write_ptr[2]~20\,
	combout => \delay|write_ptr[3]~21_combout\,
	cout => \delay|write_ptr[3]~22\);

-- Location: FF_X58_Y36_N7
\delay|write_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[3]~21_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(3));

-- Location: LCCOMB_X58_Y36_N8
\delay|write_ptr[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[4]~23_combout\ = (\delay|write_ptr\(4) & (\delay|write_ptr[3]~22\ $ (GND))) # (!\delay|write_ptr\(4) & (!\delay|write_ptr[3]~22\ & VCC))
-- \delay|write_ptr[4]~24\ = CARRY((\delay|write_ptr\(4) & !\delay|write_ptr[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(4),
	datad => VCC,
	cin => \delay|write_ptr[3]~22\,
	combout => \delay|write_ptr[4]~23_combout\,
	cout => \delay|write_ptr[4]~24\);

-- Location: FF_X58_Y36_N9
\delay|write_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[4]~23_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(4));

-- Location: LCCOMB_X58_Y36_N10
\delay|write_ptr[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[5]~25_combout\ = (\delay|write_ptr\(5) & (!\delay|write_ptr[4]~24\)) # (!\delay|write_ptr\(5) & ((\delay|write_ptr[4]~24\) # (GND)))
-- \delay|write_ptr[5]~26\ = CARRY((!\delay|write_ptr[4]~24\) # (!\delay|write_ptr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(5),
	datad => VCC,
	cin => \delay|write_ptr[4]~24\,
	combout => \delay|write_ptr[5]~25_combout\,
	cout => \delay|write_ptr[5]~26\);

-- Location: FF_X58_Y36_N11
\delay|write_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[5]~25_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(5));

-- Location: LCCOMB_X58_Y36_N12
\delay|write_ptr[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[6]~27_combout\ = (\delay|write_ptr\(6) & (\delay|write_ptr[5]~26\ $ (GND))) # (!\delay|write_ptr\(6) & (!\delay|write_ptr[5]~26\ & VCC))
-- \delay|write_ptr[6]~28\ = CARRY((\delay|write_ptr\(6) & !\delay|write_ptr[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(6),
	datad => VCC,
	cin => \delay|write_ptr[5]~26\,
	combout => \delay|write_ptr[6]~27_combout\,
	cout => \delay|write_ptr[6]~28\);

-- Location: FF_X58_Y36_N13
\delay|write_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[6]~27_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(6));

-- Location: LCCOMB_X58_Y36_N14
\delay|write_ptr[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[7]~29_combout\ = (\delay|write_ptr\(7) & (!\delay|write_ptr[6]~28\)) # (!\delay|write_ptr\(7) & ((\delay|write_ptr[6]~28\) # (GND)))
-- \delay|write_ptr[7]~30\ = CARRY((!\delay|write_ptr[6]~28\) # (!\delay|write_ptr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(7),
	datad => VCC,
	cin => \delay|write_ptr[6]~28\,
	combout => \delay|write_ptr[7]~29_combout\,
	cout => \delay|write_ptr[7]~30\);

-- Location: FF_X58_Y36_N15
\delay|write_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[7]~29_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(7));

-- Location: LCCOMB_X58_Y36_N16
\delay|write_ptr[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[8]~31_combout\ = (\delay|write_ptr\(8) & (\delay|write_ptr[7]~30\ $ (GND))) # (!\delay|write_ptr\(8) & (!\delay|write_ptr[7]~30\ & VCC))
-- \delay|write_ptr[8]~32\ = CARRY((\delay|write_ptr\(8) & !\delay|write_ptr[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(8),
	datad => VCC,
	cin => \delay|write_ptr[7]~30\,
	combout => \delay|write_ptr[8]~31_combout\,
	cout => \delay|write_ptr[8]~32\);

-- Location: FF_X58_Y36_N17
\delay|write_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[8]~31_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(8));

-- Location: LCCOMB_X58_Y36_N18
\delay|write_ptr[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[9]~33_combout\ = (\delay|write_ptr\(9) & (!\delay|write_ptr[8]~32\)) # (!\delay|write_ptr\(9) & ((\delay|write_ptr[8]~32\) # (GND)))
-- \delay|write_ptr[9]~34\ = CARRY((!\delay|write_ptr[8]~32\) # (!\delay|write_ptr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(9),
	datad => VCC,
	cin => \delay|write_ptr[8]~32\,
	combout => \delay|write_ptr[9]~33_combout\,
	cout => \delay|write_ptr[9]~34\);

-- Location: FF_X58_Y36_N19
\delay|write_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[9]~33_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(9));

-- Location: LCCOMB_X58_Y36_N20
\delay|write_ptr[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[10]~35_combout\ = (\delay|write_ptr\(10) & (\delay|write_ptr[9]~34\ $ (GND))) # (!\delay|write_ptr\(10) & (!\delay|write_ptr[9]~34\ & VCC))
-- \delay|write_ptr[10]~36\ = CARRY((\delay|write_ptr\(10) & !\delay|write_ptr[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(10),
	datad => VCC,
	cin => \delay|write_ptr[9]~34\,
	combout => \delay|write_ptr[10]~35_combout\,
	cout => \delay|write_ptr[10]~36\);

-- Location: FF_X58_Y36_N21
\delay|write_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[10]~35_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(10));

-- Location: LCCOMB_X58_Y36_N22
\delay|write_ptr[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[11]~37_combout\ = (\delay|write_ptr\(11) & (!\delay|write_ptr[10]~36\)) # (!\delay|write_ptr\(11) & ((\delay|write_ptr[10]~36\) # (GND)))
-- \delay|write_ptr[11]~38\ = CARRY((!\delay|write_ptr[10]~36\) # (!\delay|write_ptr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(11),
	datad => VCC,
	cin => \delay|write_ptr[10]~36\,
	combout => \delay|write_ptr[11]~37_combout\,
	cout => \delay|write_ptr[11]~38\);

-- Location: FF_X58_Y36_N23
\delay|write_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[11]~37_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(11));

-- Location: LCCOMB_X58_Y36_N24
\delay|write_ptr[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[12]~39_combout\ = (\delay|write_ptr\(12) & (\delay|write_ptr[11]~38\ $ (GND))) # (!\delay|write_ptr\(12) & (!\delay|write_ptr[11]~38\ & VCC))
-- \delay|write_ptr[12]~40\ = CARRY((\delay|write_ptr\(12) & !\delay|write_ptr[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(12),
	datad => VCC,
	cin => \delay|write_ptr[11]~38\,
	combout => \delay|write_ptr[12]~39_combout\,
	cout => \delay|write_ptr[12]~40\);

-- Location: FF_X58_Y36_N25
\delay|write_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[12]~39_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(12));

-- Location: LCCOMB_X58_Y36_N26
\delay|write_ptr[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[13]~41_combout\ = (\delay|write_ptr\(13) & (!\delay|write_ptr[12]~40\)) # (!\delay|write_ptr\(13) & ((\delay|write_ptr[12]~40\) # (GND)))
-- \delay|write_ptr[13]~42\ = CARRY((!\delay|write_ptr[12]~40\) # (!\delay|write_ptr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(13),
	datad => VCC,
	cin => \delay|write_ptr[12]~40\,
	combout => \delay|write_ptr[13]~41_combout\,
	cout => \delay|write_ptr[13]~42\);

-- Location: FF_X58_Y36_N27
\delay|write_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[13]~41_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(13));

-- Location: LCCOMB_X58_Y36_N28
\delay|write_ptr[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|write_ptr[14]~44_combout\ = \delay|write_ptr\(14) $ (!\delay|write_ptr[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(14),
	cin => \delay|write_ptr[13]~42\,
	combout => \delay|write_ptr[14]~44_combout\);

-- Location: FF_X58_Y36_N29
\delay|write_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|write_ptr[14]~44_combout\,
	sclr => \delay|write_ptr[9]~43_combout\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|write_ptr\(14));

-- Location: LCCOMB_X58_Y39_N6
\delay|ram_data[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|ram_data[14]~0_combout\ = (\wm8731|aud_daclrck~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|aud_daclrck~q\,
	datad => \reset~input_o\,
	combout => \delay|ram_data[14]~0_combout\);

-- Location: FF_X59_Y36_N13
\delay|ram_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \delay|ram_data[14]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_wren~q\);

-- Location: LCCOMB_X59_Y36_N10
\delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2) = (!\delay|write_ptr\(14) & (\delay|write_ptr\(13) & \delay|ram_wren~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(14),
	datac => \delay|write_ptr\(13),
	datad => \delay|ram_wren~q\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2));

-- Location: FF_X75_Y39_N31
\delay|ram_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~31_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(14));

-- Location: LCCOMB_X58_Y39_N20
\delay|read_ptr[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[0]~8_combout\ = (\wm8731|aud_daclrck~q\ & (\delay|Equal0~4_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|aud_daclrck~q\,
	datac => \delay|Equal0~4_combout\,
	datad => \reset~input_o\,
	combout => \delay|read_ptr[0]~8_combout\);

-- Location: FF_X59_Y36_N9
\delay|read_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \delay|write_ptr\(0),
	sload => VCC,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(0));

-- Location: LCCOMB_X59_Y36_N6
\delay|read_ptr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[1]~feeder_combout\ = \delay|write_ptr\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay|write_ptr\(1),
	combout => \delay|read_ptr[1]~feeder_combout\);

-- Location: FF_X59_Y36_N7
\delay|read_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[1]~feeder_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(1));

-- Location: FF_X57_Y36_N31
\delay|read_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \delay|write_ptr\(2),
	sload => VCC,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(2));

-- Location: FF_X59_Y36_N5
\delay|read_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \delay|write_ptr\(3),
	sload => VCC,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(3));

-- Location: LCCOMB_X59_Y36_N22
\delay|read_ptr[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[4]~feeder_combout\ = \delay|write_ptr\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay|write_ptr\(4),
	combout => \delay|read_ptr[4]~feeder_combout\);

-- Location: FF_X59_Y36_N23
\delay|read_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[4]~feeder_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(4));

-- Location: LCCOMB_X59_Y36_N20
\delay|read_ptr[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[5]~feeder_combout\ = \delay|write_ptr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay|write_ptr\(5),
	combout => \delay|read_ptr[5]~feeder_combout\);

-- Location: FF_X59_Y36_N21
\delay|read_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[5]~feeder_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(5));

-- Location: LCCOMB_X59_Y36_N14
\delay|read_ptr[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[6]~25_combout\ = !\delay|write_ptr\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay|write_ptr\(6),
	combout => \delay|read_ptr[6]~25_combout\);

-- Location: FF_X59_Y36_N15
\delay|read_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[6]~25_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(6));

-- Location: LCCOMB_X57_Y36_N10
\delay|read_ptr[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[7]~9_combout\ = (\delay|write_ptr\(7) & (\delay|write_ptr\(6) $ (VCC))) # (!\delay|write_ptr\(7) & (\delay|write_ptr\(6) & VCC))
-- \delay|read_ptr[7]~10\ = CARRY((\delay|write_ptr\(7) & \delay|write_ptr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(7),
	datab => \delay|write_ptr\(6),
	datad => VCC,
	combout => \delay|read_ptr[7]~9_combout\,
	cout => \delay|read_ptr[7]~10\);

-- Location: FF_X57_Y36_N11
\delay|read_ptr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[7]~9_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(7));

-- Location: LCCOMB_X57_Y36_N12
\delay|read_ptr[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[8]~11_combout\ = (\delay|write_ptr\(8) & (!\delay|read_ptr[7]~10\)) # (!\delay|write_ptr\(8) & ((\delay|read_ptr[7]~10\) # (GND)))
-- \delay|read_ptr[8]~12\ = CARRY((!\delay|read_ptr[7]~10\) # (!\delay|write_ptr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(8),
	datad => VCC,
	cin => \delay|read_ptr[7]~10\,
	combout => \delay|read_ptr[8]~11_combout\,
	cout => \delay|read_ptr[8]~12\);

-- Location: FF_X57_Y36_N13
\delay|read_ptr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[8]~11_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(8));

-- Location: LCCOMB_X57_Y36_N14
\delay|read_ptr[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[9]~13_combout\ = (\delay|write_ptr\(9) & ((GND) # (!\delay|read_ptr[8]~12\))) # (!\delay|write_ptr\(9) & (\delay|read_ptr[8]~12\ $ (GND)))
-- \delay|read_ptr[9]~14\ = CARRY((\delay|write_ptr\(9)) # (!\delay|read_ptr[8]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(9),
	datad => VCC,
	cin => \delay|read_ptr[8]~12\,
	combout => \delay|read_ptr[9]~13_combout\,
	cout => \delay|read_ptr[9]~14\);

-- Location: FF_X57_Y36_N15
\delay|read_ptr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[9]~13_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(9));

-- Location: LCCOMB_X57_Y36_N16
\delay|read_ptr[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[10]~15_combout\ = (\delay|write_ptr\(10) & (!\delay|read_ptr[9]~14\)) # (!\delay|write_ptr\(10) & ((\delay|read_ptr[9]~14\) # (GND)))
-- \delay|read_ptr[10]~16\ = CARRY((!\delay|read_ptr[9]~14\) # (!\delay|write_ptr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(10),
	datad => VCC,
	cin => \delay|read_ptr[9]~14\,
	combout => \delay|read_ptr[10]~15_combout\,
	cout => \delay|read_ptr[10]~16\);

-- Location: FF_X57_Y36_N17
\delay|read_ptr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[10]~15_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(10));

-- Location: LCCOMB_X57_Y36_N18
\delay|read_ptr[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[11]~17_combout\ = (\delay|write_ptr\(11) & (\delay|read_ptr[10]~16\ $ (GND))) # (!\delay|write_ptr\(11) & (!\delay|read_ptr[10]~16\ & VCC))
-- \delay|read_ptr[11]~18\ = CARRY((\delay|write_ptr\(11) & !\delay|read_ptr[10]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(11),
	datad => VCC,
	cin => \delay|read_ptr[10]~16\,
	combout => \delay|read_ptr[11]~17_combout\,
	cout => \delay|read_ptr[11]~18\);

-- Location: FF_X57_Y36_N19
\delay|read_ptr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[11]~17_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(11));

-- Location: LCCOMB_X57_Y36_N20
\delay|read_ptr[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[12]~19_combout\ = (\delay|write_ptr\(12) & (!\delay|read_ptr[11]~18\)) # (!\delay|write_ptr\(12) & ((\delay|read_ptr[11]~18\) # (GND)))
-- \delay|read_ptr[12]~20\ = CARRY((!\delay|read_ptr[11]~18\) # (!\delay|write_ptr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|write_ptr\(12),
	datad => VCC,
	cin => \delay|read_ptr[11]~18\,
	combout => \delay|read_ptr[12]~19_combout\,
	cout => \delay|read_ptr[12]~20\);

-- Location: FF_X57_Y36_N21
\delay|read_ptr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[12]~19_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(12));

-- Location: M9K_X37_Y43_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X59_Y36_N28
\delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2) = (\delay|write_ptr\(14) & (\delay|write_ptr\(13) & \delay|ram_wren~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(14),
	datac => \delay|write_ptr\(13),
	datad => \delay|ram_wren~q\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2));

-- Location: M9K_X51_Y44_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y36_N22
\delay|read_ptr[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[13]~21_combout\ = (\delay|write_ptr\(13) & ((GND) # (!\delay|read_ptr[12]~20\))) # (!\delay|write_ptr\(13) & (\delay|read_ptr[12]~20\ $ (GND)))
-- \delay|read_ptr[13]~22\ = CARRY((\delay|write_ptr\(13)) # (!\delay|read_ptr[12]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(13),
	datad => VCC,
	cin => \delay|read_ptr[12]~20\,
	combout => \delay|read_ptr[13]~21_combout\,
	cout => \delay|read_ptr[13]~22\);

-- Location: FF_X57_Y36_N23
\delay|read_ptr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[13]~21_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(13));

-- Location: FF_X57_Y36_N29
\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \delay|read_ptr\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0));

-- Location: LCCOMB_X59_Y36_N16
\delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2) = (\delay|write_ptr\(14) & (!\delay|write_ptr\(13) & \delay|ram_wren~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(14),
	datac => \delay|write_ptr\(13),
	datad => \delay|ram_wren~q\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2));

-- Location: M9K_X51_Y40_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y36_N24
\delay|read_ptr[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|read_ptr[14]~23_combout\ = \delay|read_ptr[13]~22\ $ (\delay|write_ptr\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \delay|write_ptr\(14),
	cin => \delay|read_ptr[13]~22\,
	combout => \delay|read_ptr[14]~23_combout\);

-- Location: FF_X57_Y36_N25
\delay|read_ptr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|read_ptr[14]~23_combout\,
	ena => \delay|read_ptr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|read_ptr\(14));

-- Location: LCCOMB_X57_Y36_N2
\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]~feeder_combout\ = \delay|read_ptr\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \delay|read_ptr\(14),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]~feeder_combout\);

-- Location: FF_X57_Y36_N3
\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1));

-- Location: LCCOMB_X59_Y36_N26
\delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2) = (!\delay|write_ptr\(14) & (!\delay|write_ptr\(13) & \delay|ram_wren~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|write_ptr\(14),
	datac => \delay|write_ptr\(13),
	datad => \delay|ram_wren~q\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2));

-- Location: M9K_X37_Y39_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N18
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47~portbdataout\) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a47~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a15~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\);

-- Location: LCCOMB_X58_Y39_N0
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~1_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63~portbdataout\))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a31~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a63~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~0_combout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~1_combout\);

-- Location: FF_X58_Y39_N1
\delay|delayed_audio[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[15]~1_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(15));

-- Location: M9K_X37_Y41_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y45_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N26
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a14~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a30~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\);

-- Location: M9K_X64_Y40_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y44_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y38_N0
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~3_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62~portbdataout\))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~2_combout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a46~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a62~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~3_combout\);

-- Location: FF_X65_Y38_N1
\delay|delayed_audio[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[14]~3_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(14));

-- Location: FF_X75_Y39_N29
\delay|ram_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~29_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(13));

-- Location: M9K_X51_Y29_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y31_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y35_N2
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45~portbdataout\) # 
-- (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13~portbdataout\ & 
-- ((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a13~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a45~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\);

-- Location: M9K_X51_Y34_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y32_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N30
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~5_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61~portbdataout\) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29~portbdataout\ & (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~4_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a29~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a61~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~5_combout\);

-- Location: FF_X58_Y39_N31
\delay|delayed_audio[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[13]~5_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(13));

-- Location: FF_X75_Y39_N27
\delay|ram_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~27_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(12));

-- Location: M9K_X78_Y33_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y34_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N12
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12~portbdataout\ & 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a12~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a28~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\);

-- Location: M9K_X78_Y31_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y32_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N24
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~7_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60~portbdataout\)) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~6_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a60~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a44~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~7_combout\);

-- Location: FF_X72_Y35_N25
\delay|delayed_audio[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[12]~7_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(12));

-- Location: FF_X75_Y39_N25
\delay|ram_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~25_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(11));

-- Location: M9K_X51_Y38_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y39_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N28
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0)) # 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11~portbdataout\ & 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a11~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a43~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\);

-- Location: M9K_X51_Y43_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y43_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N4
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~9_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59~portbdataout\)) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27~portbdataout\))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~8_combout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a59~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a27~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~9_combout\);

-- Location: FF_X58_Y39_N5
\delay|delayed_audio[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[11]~9_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(11));

-- Location: FF_X75_Y39_N23
\delay|ram_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~23_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(10));

-- Location: M9K_X64_Y30_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y35_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y42_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y29_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N2
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26~portbdataout\) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a26~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a10~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\);

-- Location: LCCOMB_X72_Y35_N22
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~11_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58~portbdataout\)) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42~portbdataout\))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a58~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a42~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~10_combout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~11_combout\);

-- Location: FF_X72_Y35_N23
\delay|delayed_audio[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[10]~11_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(10));

-- Location: FF_X75_Y39_N21
\delay|ram_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~21_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(9));

-- Location: M9K_X51_Y36_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y37_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N10
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41~portbdataout\) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a41~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a9~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\);

-- Location: M9K_X64_Y41_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y42_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N22
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~13_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57~portbdataout\) # ((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~12_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a57~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a25~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~13_combout\);

-- Location: FF_X58_Y39_N23
\delay|delayed_audio[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[9]~13_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(9));

-- Location: FF_X75_Y39_N19
\delay|ram_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~19_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(8));

-- Location: M9K_X51_Y45_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y41_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N12
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24~portbdataout\) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8~portbdataout\ & 
-- !\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a24~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a8~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\);

-- Location: M9K_X51_Y42_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y39_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X58_Y39_N16
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~15_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56~portbdataout\) # ((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40~portbdataout\ & \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~14_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a56~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a40~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~15_combout\);

-- Location: FF_X58_Y39_N17
\delay|delayed_audio[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[8]~15_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(8));

-- Location: FF_X75_Y39_N17
\delay|ram_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~17_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(7));

-- Location: M9K_X64_Y32_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y34_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y33_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y35_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N20
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39~portbdataout\)) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a39~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a7~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\);

-- Location: LCCOMB_X72_Y35_N4
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~17_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55~portbdataout\)) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23~portbdataout\))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a55~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a23~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~16_combout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~17_combout\);

-- Location: FF_X72_Y35_N5
\delay|delayed_audio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[7]~17_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(7));

-- Location: FF_X75_Y39_N15
\delay|ram_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~15_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(6));

-- Location: M9K_X78_Y28_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y36_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N6
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1)) # 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6~portbdataout\ & 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a6~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a22~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\);

-- Location: M9K_X78_Y29_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y30_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N18
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~19_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54~portbdataout\) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38~portbdataout\ & (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~18_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a38~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a54~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~19_combout\);

-- Location: FF_X72_Y35_N19
\delay|delayed_audio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[6]~19_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(6));

-- Location: FF_X75_Y39_N13
\delay|ram_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~13_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(5));

-- Location: M9K_X64_Y27_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y28_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N16
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37~portbdataout\))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a5~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a37~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\);

-- Location: M9K_X64_Y36_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y31_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N8
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~21_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53~portbdataout\))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~20_combout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a21~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a53~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~21_combout\);

-- Location: FF_X72_Y35_N9
\delay|delayed_audio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[5]~21_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(5));

-- Location: FF_X75_Y39_N11
\delay|ram_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~11_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(4));

-- Location: M9K_X37_Y38_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y40_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y38_N20
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20~portbdataout\))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a4~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a20~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\);

-- Location: M9K_X64_Y38_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y38_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y38_N2
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~23_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52~portbdataout\) # ((!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~22_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a52~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a36~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~23_combout\);

-- Location: FF_X65_Y38_N3
\delay|delayed_audio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[4]~23_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(4));

-- Location: FF_X75_Y39_N9
\delay|ram_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~9_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(3));

-- Location: M9K_X78_Y37_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y39_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N10
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1))))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35~portbdataout\))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a3~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a35~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\);

-- Location: M9K_X78_Y40_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

-- Location: M9K_X78_Y41_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X72_Y35_N26
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~25_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\ & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51~portbdataout\) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19~portbdataout\ & (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~24_combout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a19~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a51~portbdataout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~25_combout\);

-- Location: FF_X72_Y35_N27
\delay|delayed_audio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[3]~25_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(3));

-- Location: FF_X75_Y39_N7
\delay|ram_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~7_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(2));

-- Location: M9K_X51_Y28_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y30_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y27_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y35_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y35_N28
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18~portbdataout\))) # 
-- (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a2~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a18~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\);

-- Location: LCCOMB_X57_Y35_N4
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~27_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50~portbdataout\))) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34~portbdataout\)))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a34~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a50~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datad => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~26_combout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~27_combout\);

-- Location: FF_X57_Y35_N5
\delay|delayed_audio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[2]~27_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(2));

-- Location: FF_X75_Y39_N5
\delay|ram_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \dds_gen|u1|Add0~5_combout\,
	ena => \delay|ram_data[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|ram_data\(1));

-- Location: M9K_X64_Y37_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode572w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y35_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode556w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

-- Location: M9K_X51_Y33_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode564w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33_PORTBDATAOUT_bus\);

-- Location: M9K_X37_Y36_N0
\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_delay:delay|ram_2port:delay_ram|altsyncram:altsyncram_component|altsyncram_tmo3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 32768,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \delay|delay_ram|altsyncram_component|auto_generated|decode2|w_anode543w\(2),
	portbre => VCC,
	clk0 => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X57_Y36_N4
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33~portbdataout\) # 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1) & (((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1~portbdataout\ & 
-- !\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a33~portbdataout\,
	datab => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(1),
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a1~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\);

-- Location: LCCOMB_X58_Y39_N14
\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~29_combout\ = (\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & ((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\ & 
-- (\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49~portbdataout\)) # (!\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\ & 
-- ((\delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17~portbdataout\))))) # (!\delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0) & 
-- (((\delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delay_ram|altsyncram_component|auto_generated|address_reg_b\(0),
	datab => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a49~portbdataout\,
	datac => \delay|delay_ram|altsyncram_component|auto_generated|ram_block1a17~portbdataout\,
	datad => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~28_combout\,
	combout => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~29_combout\);

-- Location: FF_X58_Y39_N15
\delay|delayed_audio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \delay|delay_ram|altsyncram_component|auto_generated|mux3|result_node[1]~29_combout\,
	sclr => \reset~input_o\,
	ena => \delay|delayed_audio[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay|delayed_audio\(1));

-- Location: LCCOMB_X73_Y39_N0
\delay|mixed_audio[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[0]~0_combout\ = (\delay|delayed_audio\(1) & (\dds_gen|u1|Add0~3_combout\ $ (VCC))) # (!\delay|delayed_audio\(1) & (\dds_gen|u1|Add0~3_combout\ & VCC))
-- \delay|mixed_audio[0]~1\ = CARRY((\delay|delayed_audio\(1) & \dds_gen|u1|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(1),
	datab => \dds_gen|u1|Add0~3_combout\,
	datad => VCC,
	combout => \delay|mixed_audio[0]~0_combout\,
	cout => \delay|mixed_audio[0]~1\);

-- Location: LCCOMB_X73_Y39_N2
\delay|mixed_audio[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[1]~2_combout\ = (\delay|delayed_audio\(2) & ((\dds_gen|u1|Add0~5_combout\ & (\delay|mixed_audio[0]~1\ & VCC)) # (!\dds_gen|u1|Add0~5_combout\ & (!\delay|mixed_audio[0]~1\)))) # (!\delay|delayed_audio\(2) & ((\dds_gen|u1|Add0~5_combout\ 
-- & (!\delay|mixed_audio[0]~1\)) # (!\dds_gen|u1|Add0~5_combout\ & ((\delay|mixed_audio[0]~1\) # (GND)))))
-- \delay|mixed_audio[1]~3\ = CARRY((\delay|delayed_audio\(2) & (!\dds_gen|u1|Add0~5_combout\ & !\delay|mixed_audio[0]~1\)) # (!\delay|delayed_audio\(2) & ((!\delay|mixed_audio[0]~1\) # (!\dds_gen|u1|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(2),
	datab => \dds_gen|u1|Add0~5_combout\,
	datad => VCC,
	cin => \delay|mixed_audio[0]~1\,
	combout => \delay|mixed_audio[1]~2_combout\,
	cout => \delay|mixed_audio[1]~3\);

-- Location: LCCOMB_X73_Y39_N4
\delay|mixed_audio[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[2]~4_combout\ = ((\dds_gen|u1|Add0~7_combout\ $ (\delay|delayed_audio\(3) $ (!\delay|mixed_audio[1]~3\)))) # (GND)
-- \delay|mixed_audio[2]~5\ = CARRY((\dds_gen|u1|Add0~7_combout\ & ((\delay|delayed_audio\(3)) # (!\delay|mixed_audio[1]~3\))) # (!\dds_gen|u1|Add0~7_combout\ & (\delay|delayed_audio\(3) & !\delay|mixed_audio[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~7_combout\,
	datab => \delay|delayed_audio\(3),
	datad => VCC,
	cin => \delay|mixed_audio[1]~3\,
	combout => \delay|mixed_audio[2]~4_combout\,
	cout => \delay|mixed_audio[2]~5\);

-- Location: LCCOMB_X73_Y39_N6
\delay|mixed_audio[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[3]~6_combout\ = (\dds_gen|u1|Add0~9_combout\ & ((\delay|delayed_audio\(4) & (\delay|mixed_audio[2]~5\ & VCC)) # (!\delay|delayed_audio\(4) & (!\delay|mixed_audio[2]~5\)))) # (!\dds_gen|u1|Add0~9_combout\ & ((\delay|delayed_audio\(4) & 
-- (!\delay|mixed_audio[2]~5\)) # (!\delay|delayed_audio\(4) & ((\delay|mixed_audio[2]~5\) # (GND)))))
-- \delay|mixed_audio[3]~7\ = CARRY((\dds_gen|u1|Add0~9_combout\ & (!\delay|delayed_audio\(4) & !\delay|mixed_audio[2]~5\)) # (!\dds_gen|u1|Add0~9_combout\ & ((!\delay|mixed_audio[2]~5\) # (!\delay|delayed_audio\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~9_combout\,
	datab => \delay|delayed_audio\(4),
	datad => VCC,
	cin => \delay|mixed_audio[2]~5\,
	combout => \delay|mixed_audio[3]~6_combout\,
	cout => \delay|mixed_audio[3]~7\);

-- Location: LCCOMB_X73_Y39_N8
\delay|mixed_audio[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[4]~8_combout\ = ((\dds_gen|u1|Add0~11_combout\ $ (\delay|delayed_audio\(5) $ (!\delay|mixed_audio[3]~7\)))) # (GND)
-- \delay|mixed_audio[4]~9\ = CARRY((\dds_gen|u1|Add0~11_combout\ & ((\delay|delayed_audio\(5)) # (!\delay|mixed_audio[3]~7\))) # (!\dds_gen|u1|Add0~11_combout\ & (\delay|delayed_audio\(5) & !\delay|mixed_audio[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~11_combout\,
	datab => \delay|delayed_audio\(5),
	datad => VCC,
	cin => \delay|mixed_audio[3]~7\,
	combout => \delay|mixed_audio[4]~8_combout\,
	cout => \delay|mixed_audio[4]~9\);

-- Location: LCCOMB_X73_Y39_N10
\delay|mixed_audio[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[5]~10_combout\ = (\dds_gen|u1|Add0~13_combout\ & ((\delay|delayed_audio\(6) & (\delay|mixed_audio[4]~9\ & VCC)) # (!\delay|delayed_audio\(6) & (!\delay|mixed_audio[4]~9\)))) # (!\dds_gen|u1|Add0~13_combout\ & ((\delay|delayed_audio\(6) 
-- & (!\delay|mixed_audio[4]~9\)) # (!\delay|delayed_audio\(6) & ((\delay|mixed_audio[4]~9\) # (GND)))))
-- \delay|mixed_audio[5]~11\ = CARRY((\dds_gen|u1|Add0~13_combout\ & (!\delay|delayed_audio\(6) & !\delay|mixed_audio[4]~9\)) # (!\dds_gen|u1|Add0~13_combout\ & ((!\delay|mixed_audio[4]~9\) # (!\delay|delayed_audio\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~13_combout\,
	datab => \delay|delayed_audio\(6),
	datad => VCC,
	cin => \delay|mixed_audio[4]~9\,
	combout => \delay|mixed_audio[5]~10_combout\,
	cout => \delay|mixed_audio[5]~11\);

-- Location: LCCOMB_X73_Y39_N12
\delay|mixed_audio[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[6]~12_combout\ = ((\delay|delayed_audio\(7) $ (\dds_gen|u1|Add0~15_combout\ $ (!\delay|mixed_audio[5]~11\)))) # (GND)
-- \delay|mixed_audio[6]~13\ = CARRY((\delay|delayed_audio\(7) & ((\dds_gen|u1|Add0~15_combout\) # (!\delay|mixed_audio[5]~11\))) # (!\delay|delayed_audio\(7) & (\dds_gen|u1|Add0~15_combout\ & !\delay|mixed_audio[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(7),
	datab => \dds_gen|u1|Add0~15_combout\,
	datad => VCC,
	cin => \delay|mixed_audio[5]~11\,
	combout => \delay|mixed_audio[6]~12_combout\,
	cout => \delay|mixed_audio[6]~13\);

-- Location: LCCOMB_X73_Y39_N14
\delay|mixed_audio[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[7]~14_combout\ = (\dds_gen|u1|Add0~17_combout\ & ((\delay|delayed_audio\(8) & (\delay|mixed_audio[6]~13\ & VCC)) # (!\delay|delayed_audio\(8) & (!\delay|mixed_audio[6]~13\)))) # (!\dds_gen|u1|Add0~17_combout\ & 
-- ((\delay|delayed_audio\(8) & (!\delay|mixed_audio[6]~13\)) # (!\delay|delayed_audio\(8) & ((\delay|mixed_audio[6]~13\) # (GND)))))
-- \delay|mixed_audio[7]~15\ = CARRY((\dds_gen|u1|Add0~17_combout\ & (!\delay|delayed_audio\(8) & !\delay|mixed_audio[6]~13\)) # (!\dds_gen|u1|Add0~17_combout\ & ((!\delay|mixed_audio[6]~13\) # (!\delay|delayed_audio\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~17_combout\,
	datab => \delay|delayed_audio\(8),
	datad => VCC,
	cin => \delay|mixed_audio[6]~13\,
	combout => \delay|mixed_audio[7]~14_combout\,
	cout => \delay|mixed_audio[7]~15\);

-- Location: LCCOMB_X73_Y39_N16
\delay|mixed_audio[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[8]~16_combout\ = ((\delay|delayed_audio\(9) $ (\dds_gen|u1|Add0~19_combout\ $ (!\delay|mixed_audio[7]~15\)))) # (GND)
-- \delay|mixed_audio[8]~17\ = CARRY((\delay|delayed_audio\(9) & ((\dds_gen|u1|Add0~19_combout\) # (!\delay|mixed_audio[7]~15\))) # (!\delay|delayed_audio\(9) & (\dds_gen|u1|Add0~19_combout\ & !\delay|mixed_audio[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(9),
	datab => \dds_gen|u1|Add0~19_combout\,
	datad => VCC,
	cin => \delay|mixed_audio[7]~15\,
	combout => \delay|mixed_audio[8]~16_combout\,
	cout => \delay|mixed_audio[8]~17\);

-- Location: LCCOMB_X73_Y39_N18
\delay|mixed_audio[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[9]~18_combout\ = (\dds_gen|u1|Add0~21_combout\ & ((\delay|delayed_audio\(10) & (\delay|mixed_audio[8]~17\ & VCC)) # (!\delay|delayed_audio\(10) & (!\delay|mixed_audio[8]~17\)))) # (!\dds_gen|u1|Add0~21_combout\ & 
-- ((\delay|delayed_audio\(10) & (!\delay|mixed_audio[8]~17\)) # (!\delay|delayed_audio\(10) & ((\delay|mixed_audio[8]~17\) # (GND)))))
-- \delay|mixed_audio[9]~19\ = CARRY((\dds_gen|u1|Add0~21_combout\ & (!\delay|delayed_audio\(10) & !\delay|mixed_audio[8]~17\)) # (!\dds_gen|u1|Add0~21_combout\ & ((!\delay|mixed_audio[8]~17\) # (!\delay|delayed_audio\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~21_combout\,
	datab => \delay|delayed_audio\(10),
	datad => VCC,
	cin => \delay|mixed_audio[8]~17\,
	combout => \delay|mixed_audio[9]~18_combout\,
	cout => \delay|mixed_audio[9]~19\);

-- Location: LCCOMB_X73_Y39_N20
\delay|mixed_audio[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[10]~20_combout\ = ((\delay|delayed_audio\(11) $ (\dds_gen|u1|Add0~23_combout\ $ (!\delay|mixed_audio[9]~19\)))) # (GND)
-- \delay|mixed_audio[10]~21\ = CARRY((\delay|delayed_audio\(11) & ((\dds_gen|u1|Add0~23_combout\) # (!\delay|mixed_audio[9]~19\))) # (!\delay|delayed_audio\(11) & (\dds_gen|u1|Add0~23_combout\ & !\delay|mixed_audio[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(11),
	datab => \dds_gen|u1|Add0~23_combout\,
	datad => VCC,
	cin => \delay|mixed_audio[9]~19\,
	combout => \delay|mixed_audio[10]~20_combout\,
	cout => \delay|mixed_audio[10]~21\);

-- Location: LCCOMB_X73_Y39_N22
\delay|mixed_audio[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[11]~22_combout\ = (\dds_gen|u1|Add0~25_combout\ & ((\delay|delayed_audio\(12) & (\delay|mixed_audio[10]~21\ & VCC)) # (!\delay|delayed_audio\(12) & (!\delay|mixed_audio[10]~21\)))) # (!\dds_gen|u1|Add0~25_combout\ & 
-- ((\delay|delayed_audio\(12) & (!\delay|mixed_audio[10]~21\)) # (!\delay|delayed_audio\(12) & ((\delay|mixed_audio[10]~21\) # (GND)))))
-- \delay|mixed_audio[11]~23\ = CARRY((\dds_gen|u1|Add0~25_combout\ & (!\delay|delayed_audio\(12) & !\delay|mixed_audio[10]~21\)) # (!\dds_gen|u1|Add0~25_combout\ & ((!\delay|mixed_audio[10]~21\) # (!\delay|delayed_audio\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~25_combout\,
	datab => \delay|delayed_audio\(12),
	datad => VCC,
	cin => \delay|mixed_audio[10]~21\,
	combout => \delay|mixed_audio[11]~22_combout\,
	cout => \delay|mixed_audio[11]~23\);

-- Location: LCCOMB_X73_Y39_N24
\delay|mixed_audio[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[12]~24_combout\ = ((\delay|delayed_audio\(13) $ (\dds_gen|u1|Add0~27_combout\ $ (!\delay|mixed_audio[11]~23\)))) # (GND)
-- \delay|mixed_audio[12]~25\ = CARRY((\delay|delayed_audio\(13) & ((\dds_gen|u1|Add0~27_combout\) # (!\delay|mixed_audio[11]~23\))) # (!\delay|delayed_audio\(13) & (\dds_gen|u1|Add0~27_combout\ & !\delay|mixed_audio[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \delay|delayed_audio\(13),
	datab => \dds_gen|u1|Add0~27_combout\,
	datad => VCC,
	cin => \delay|mixed_audio[11]~23\,
	combout => \delay|mixed_audio[12]~24_combout\,
	cout => \delay|mixed_audio[12]~25\);

-- Location: LCCOMB_X73_Y39_N26
\delay|mixed_audio[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[13]~26_combout\ = (\dds_gen|u1|Add0~29_combout\ & ((\delay|delayed_audio\(14) & (\delay|mixed_audio[12]~25\ & VCC)) # (!\delay|delayed_audio\(14) & (!\delay|mixed_audio[12]~25\)))) # (!\dds_gen|u1|Add0~29_combout\ & 
-- ((\delay|delayed_audio\(14) & (!\delay|mixed_audio[12]~25\)) # (!\delay|delayed_audio\(14) & ((\delay|mixed_audio[12]~25\) # (GND)))))
-- \delay|mixed_audio[13]~27\ = CARRY((\dds_gen|u1|Add0~29_combout\ & (!\delay|delayed_audio\(14) & !\delay|mixed_audio[12]~25\)) # (!\dds_gen|u1|Add0~29_combout\ & ((!\delay|mixed_audio[12]~25\) # (!\delay|delayed_audio\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~29_combout\,
	datab => \delay|delayed_audio\(14),
	datad => VCC,
	cin => \delay|mixed_audio[12]~25\,
	combout => \delay|mixed_audio[13]~26_combout\,
	cout => \delay|mixed_audio[13]~27\);

-- Location: LCCOMB_X73_Y39_N28
\delay|mixed_audio[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[14]~28_combout\ = ((\dds_gen|u1|Add0~31_combout\ $ (\delay|delayed_audio\(15) $ (!\delay|mixed_audio[13]~27\)))) # (GND)
-- \delay|mixed_audio[14]~29\ = CARRY((\dds_gen|u1|Add0~31_combout\ & ((\delay|delayed_audio\(15)) # (!\delay|mixed_audio[13]~27\))) # (!\dds_gen|u1|Add0~31_combout\ & (\delay|delayed_audio\(15) & !\delay|mixed_audio[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~31_combout\,
	datab => \delay|delayed_audio\(15),
	datad => VCC,
	cin => \delay|mixed_audio[13]~27\,
	combout => \delay|mixed_audio[14]~28_combout\,
	cout => \delay|mixed_audio[14]~29\);

-- Location: LCCOMB_X73_Y39_N30
\delay|mixed_audio[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|mixed_audio[15]~30_combout\ = \dds_gen|u1|Add0~31_combout\ $ (\delay|mixed_audio[14]~29\ $ (\delay|delayed_audio\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~31_combout\,
	datad => \delay|delayed_audio\(15),
	cin => \delay|mixed_audio[14]~29\,
	combout => \delay|mixed_audio[15]~30_combout\);

-- Location: LCCOMB_X74_Y39_N12
\delay|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~0_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[15]~30_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_echo~input_o\,
	datab => \delay|mixed_audio[15]~30_combout\,
	datac => \dds_gen|u1|Add0~31_combout\,
	combout => \delay|Add2~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\audio_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_audio_sel,
	o => \audio_sel~input_o\);

-- Location: LCCOMB_X98_Y46_N2
\data_lr[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_lr[31]~0_combout\ = (\rect_gen|s_square_sig~q\) # ((\rect_gen|Equal1~0_combout\ & (\keys[3]~input_o\ & \keys[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~0_combout\,
	datab => \rect_gen|s_square_sig~q\,
	datac => \keys[3]~input_o\,
	datad => \keys[0]~input_o\,
	combout => \data_lr[31]~0_combout\);

-- Location: LCCOMB_X74_Y39_N0
\wm8731|s_din[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[31]~0_combout\ = (\audio_sel~input_o\ & (\delay|Add2~0_combout\)) # (!\audio_sel~input_o\ & ((!\data_lr[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~0_combout\,
	datab => \audio_sel~input_o\,
	datad => \data_lr[31]~0_combout\,
	combout => \wm8731|s_din[31]~0_combout\);

-- Location: LCCOMB_X98_Y46_N26
\rect_gen|audio_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rect_gen|audio_out\(0) = (\rect_gen|s_square_sig~q\ & (((!\keys[0]~input_o\) # (!\keys[3]~input_o\)) # (!\rect_gen|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|Equal1~0_combout\,
	datab => \rect_gen|s_square_sig~q\,
	datac => \keys[3]~input_o\,
	datad => \keys[0]~input_o\,
	combout => \rect_gen|audio_out\(0));

-- Location: LCCOMB_X75_Y40_N12
\wm8731|s_din[30]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[30]~17_combout\ = (\audio_sel~input_o\ & ((\switch_echo~input_o\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_sel~input_o\,
	datac => \rect_gen|audio_out\(0),
	datad => \switch_echo~input_o\,
	combout => \wm8731|s_din[30]~17_combout\);

-- Location: LCCOMB_X74_Y39_N2
\wm8731|s_din[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[30]~1_combout\ = (\wm8731|s_din[30]~17_combout\ & ((\delay|mixed_audio[14]~28_combout\) # ((!\audio_sel~input_o\)))) # (!\wm8731|s_din[30]~17_combout\ & (((\audio_sel~input_o\ & \dds_gen|u1|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_din[30]~17_combout\,
	datab => \delay|mixed_audio[14]~28_combout\,
	datac => \audio_sel~input_o\,
	datad => \dds_gen|u1|Add0~29_combout\,
	combout => \wm8731|s_din[30]~1_combout\);

-- Location: LCCOMB_X74_Y39_N4
\wm8731|s_din[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[30]~feeder_combout\ = \wm8731|s_din[30]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \wm8731|s_din[30]~1_combout\,
	combout => \wm8731|s_din[30]~feeder_combout\);

-- Location: LCCOMB_X74_Y39_N20
\delay|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~1_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[13]~26_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_echo~input_o\,
	datac => \delay|mixed_audio[13]~26_combout\,
	datad => \dds_gen|u1|Add0~27_combout\,
	combout => \delay|Add2~1_combout\);

-- Location: LCCOMB_X74_Y39_N26
\wm8731|s_din[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[29]~2_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~1_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \audio_sel~input_o\,
	datad => \delay|Add2~1_combout\,
	combout => \wm8731|s_din[29]~2_combout\);

-- Location: LCCOMB_X74_Y39_N10
\delay|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~2_combout\ = (\switch_echo~input_o\ & ((\delay|mixed_audio[12]~24_combout\))) # (!\switch_echo~input_o\ & (\dds_gen|u1|Add0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~25_combout\,
	datab => \delay|mixed_audio[12]~24_combout\,
	datac => \switch_echo~input_o\,
	combout => \delay|Add2~2_combout\);

-- Location: LCCOMB_X74_Y39_N30
\wm8731|s_din[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[28]~3_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~2_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \audio_sel~input_o\,
	datad => \delay|Add2~2_combout\,
	combout => \wm8731|s_din[28]~3_combout\);

-- Location: LCCOMB_X74_Y39_N18
\delay|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~3_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[11]~22_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|mixed_audio[11]~22_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~23_combout\,
	combout => \delay|Add2~3_combout\);

-- Location: LCCOMB_X74_Y39_N14
\wm8731|s_din[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[27]~4_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~3_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \audio_sel~input_o\,
	datad => \delay|Add2~3_combout\,
	combout => \wm8731|s_din[27]~4_combout\);

-- Location: LCCOMB_X72_Y39_N4
\delay|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~4_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[10]~20_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|mixed_audio[10]~20_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~21_combout\,
	combout => \delay|Add2~4_combout\);

-- Location: LCCOMB_X72_Y39_N22
\wm8731|s_din[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[26]~5_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~4_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \audio_sel~input_o\,
	datad => \delay|Add2~4_combout\,
	combout => \wm8731|s_din[26]~5_combout\);

-- Location: LCCOMB_X72_Y39_N0
\delay|Add2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~5_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[9]~18_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|mixed_audio[9]~18_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~19_combout\,
	combout => \delay|Add2~5_combout\);

-- Location: LCCOMB_X72_Y39_N8
\wm8731|s_din[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[25]~6_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~5_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \delay|Add2~5_combout\,
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[25]~6_combout\);

-- Location: LCCOMB_X72_Y39_N18
\delay|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~6_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[8]~16_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|mixed_audio[8]~16_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~17_combout\,
	combout => \delay|Add2~6_combout\);

-- Location: LCCOMB_X72_Y39_N20
\wm8731|s_din[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[24]~7_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~6_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \delay|Add2~6_combout\,
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[24]~7_combout\);

-- Location: LCCOMB_X72_Y39_N28
\delay|Add2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~7_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[7]~14_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_echo~input_o\,
	datab => \delay|mixed_audio[7]~14_combout\,
	datac => \dds_gen|u1|Add0~15_combout\,
	combout => \delay|Add2~7_combout\);

-- Location: LCCOMB_X72_Y39_N26
\wm8731|s_din[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[23]~8_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~7_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \delay|Add2~7_combout\,
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[23]~8_combout\);

-- Location: LCCOMB_X72_Y39_N2
\delay|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~8_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[6]~12_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|mixed_audio[6]~12_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~13_combout\,
	combout => \delay|Add2~8_combout\);

-- Location: LCCOMB_X72_Y39_N24
\wm8731|s_din[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[22]~9_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~8_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rect_gen|audio_out\(0),
	datab => \delay|Add2~8_combout\,
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[22]~9_combout\);

-- Location: LCCOMB_X72_Y39_N14
\delay|Add2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~9_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[5]~10_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay|mixed_audio[5]~10_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~11_combout\,
	combout => \delay|Add2~9_combout\);

-- Location: LCCOMB_X76_Y39_N6
\wm8731|s_din[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[21]~10_combout\ = (\audio_sel~input_o\ & (\delay|Add2~9_combout\)) # (!\audio_sel~input_o\ & ((\rect_gen|audio_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~9_combout\,
	datab => \rect_gen|audio_out\(0),
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[21]~10_combout\);

-- Location: LCCOMB_X74_Y39_N24
\delay|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~10_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[4]~8_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|mixed_audio[4]~8_combout\,
	datac => \switch_echo~input_o\,
	datad => \dds_gen|u1|Add0~9_combout\,
	combout => \delay|Add2~10_combout\);

-- Location: LCCOMB_X76_Y39_N8
\wm8731|s_din[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[20]~11_combout\ = (\audio_sel~input_o\ & (\delay|Add2~10_combout\)) # (!\audio_sel~input_o\ & ((\rect_gen|audio_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~10_combout\,
	datab => \rect_gen|audio_out\(0),
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[20]~11_combout\);

-- Location: LCCOMB_X76_Y39_N20
\delay|Add2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~11_combout\ = (\switch_echo~input_o\ & ((\delay|mixed_audio[3]~6_combout\))) # (!\switch_echo~input_o\ & (\dds_gen|u1|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dds_gen|u1|Add0~7_combout\,
	datac => \switch_echo~input_o\,
	datad => \delay|mixed_audio[3]~6_combout\,
	combout => \delay|Add2~11_combout\);

-- Location: LCCOMB_X76_Y39_N26
\wm8731|s_din[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[19]~12_combout\ = (\audio_sel~input_o\ & (\delay|Add2~11_combout\)) # (!\audio_sel~input_o\ & ((\rect_gen|audio_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_sel~input_o\,
	datab => \delay|Add2~11_combout\,
	datad => \rect_gen|audio_out\(0),
	combout => \wm8731|s_din[19]~12_combout\);

-- Location: LCCOMB_X76_Y39_N10
\delay|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~12_combout\ = (\switch_echo~input_o\ & (\delay|mixed_audio[2]~4_combout\)) # (!\switch_echo~input_o\ & ((\dds_gen|u1|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_echo~input_o\,
	datab => \delay|mixed_audio[2]~4_combout\,
	datac => \dds_gen|u1|Add0~5_combout\,
	combout => \delay|Add2~12_combout\);

-- Location: LCCOMB_X76_Y39_N4
\wm8731|s_din[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[18]~13_combout\ = (\audio_sel~input_o\ & (\delay|Add2~12_combout\)) # (!\audio_sel~input_o\ & ((\rect_gen|audio_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~12_combout\,
	datab => \rect_gen|audio_out\(0),
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[18]~13_combout\);

-- Location: LCCOMB_X76_Y39_N12
\delay|Add2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~13_combout\ = (\switch_echo~input_o\ & ((\delay|mixed_audio[1]~2_combout\))) # (!\switch_echo~input_o\ & (\dds_gen|u1|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~3_combout\,
	datab => \delay|mixed_audio[1]~2_combout\,
	datac => \switch_echo~input_o\,
	combout => \delay|Add2~13_combout\);

-- Location: LCCOMB_X76_Y39_N30
\wm8731|s_din[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[17]~14_combout\ = (\audio_sel~input_o\ & (\delay|Add2~13_combout\)) # (!\audio_sel~input_o\ & ((\rect_gen|audio_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~13_combout\,
	datab => \rect_gen|audio_out\(0),
	datad => \audio_sel~input_o\,
	combout => \wm8731|s_din[17]~14_combout\);

-- Location: LCCOMB_X76_Y39_N18
\delay|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay|Add2~14_combout\ = (\switch_echo~input_o\ & ((\delay|mixed_audio[0]~0_combout\))) # (!\switch_echo~input_o\ & (\dds_gen|u1|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dds_gen|u1|Add0~1_combout\,
	datac => \switch_echo~input_o\,
	datad => \delay|mixed_audio[0]~0_combout\,
	combout => \delay|Add2~14_combout\);

-- Location: LCCOMB_X76_Y39_N14
\wm8731|s_din[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[16]~15_combout\ = (\audio_sel~input_o\ & ((\delay|Add2~14_combout\))) # (!\audio_sel~input_o\ & (\rect_gen|audio_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_sel~input_o\,
	datab => \rect_gen|audio_out\(0),
	datad => \delay|Add2~14_combout\,
	combout => \wm8731|s_din[16]~15_combout\);

-- Location: LCCOMB_X72_Y42_N0
\wm8731|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|LessThan0~0_combout\ = (\wm8731|s_lrswitch\(8)) # ((\wm8731|s_lrswitch\(6)) # ((\wm8731|s_lrswitch\(7)) # (\wm8731|s_lrswitch\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(8),
	datab => \wm8731|s_lrswitch\(6),
	datac => \wm8731|s_lrswitch\(7),
	datad => \wm8731|s_lrswitch\(5),
	combout => \wm8731|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y39_N16
\wm8731|s_din~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~34_combout\ = (\wm8731|Equal6~2_combout\ & (((\wm8731|s_din[16]~15_combout\)))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|LessThan0~0_combout\ & (\wm8731|s_din\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|LessThan0~0_combout\,
	datac => \wm8731|s_din\(0),
	datad => \wm8731|s_din[16]~15_combout\,
	combout => \wm8731|s_din~34_combout\);

-- Location: FF_X76_Y39_N17
\wm8731|s_din[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(0));

-- Location: LCCOMB_X76_Y39_N0
\wm8731|s_din~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~33_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din[17]~14_combout\))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|s_din\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|s_din\(0),
	datad => \wm8731|s_din[17]~14_combout\,
	combout => \wm8731|s_din~33_combout\);

-- Location: LCCOMB_X72_Y42_N2
\wm8731|s_din[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din[28]~16_combout\ = ((\wm8731|s_lrswitch\(0) & (\wm8731|Equal6~0_combout\ & \wm8731|Equal6~1_combout\))) # (!\wm8731|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_lrswitch\(0),
	datab => \wm8731|Equal6~0_combout\,
	datac => \wm8731|Equal6~1_combout\,
	datad => \wm8731|LessThan0~0_combout\,
	combout => \wm8731|s_din[28]~16_combout\);

-- Location: FF_X76_Y39_N1
\wm8731|s_din[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(1));

-- Location: LCCOMB_X76_Y39_N24
\wm8731|s_din~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~32_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[18]~13_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_din[18]~13_combout\,
	datac => \wm8731|Equal6~2_combout\,
	datad => \wm8731|s_din\(1),
	combout => \wm8731|s_din~32_combout\);

-- Location: FF_X76_Y39_N25
\wm8731|s_din[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(2));

-- Location: LCCOMB_X76_Y39_N28
\wm8731|s_din~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~31_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[19]~12_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|s_din[19]~12_combout\,
	datad => \wm8731|s_din\(2),
	combout => \wm8731|s_din~31_combout\);

-- Location: FF_X76_Y39_N29
\wm8731|s_din[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(3));

-- Location: LCCOMB_X76_Y39_N2
\wm8731|s_din~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~30_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[20]~11_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datac => \wm8731|s_din[20]~11_combout\,
	datad => \wm8731|s_din\(3),
	combout => \wm8731|s_din~30_combout\);

-- Location: FF_X76_Y39_N3
\wm8731|s_din[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(4));

-- Location: LCCOMB_X76_Y39_N22
\wm8731|s_din~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~29_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[21]~10_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_din[21]~10_combout\,
	datac => \wm8731|Equal6~2_combout\,
	datad => \wm8731|s_din\(4),
	combout => \wm8731|s_din~29_combout\);

-- Location: FF_X76_Y39_N23
\wm8731|s_din[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(5));

-- Location: LCCOMB_X72_Y39_N10
\wm8731|s_din~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~28_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[22]~9_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|s_din[22]~9_combout\,
	datad => \wm8731|s_din\(5),
	combout => \wm8731|s_din~28_combout\);

-- Location: FF_X72_Y39_N11
\wm8731|s_din[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(6));

-- Location: LCCOMB_X72_Y39_N30
\wm8731|s_din~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~27_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din[23]~8_combout\))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|s_din\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_din\(6),
	datac => \wm8731|Equal6~2_combout\,
	datad => \wm8731|s_din[23]~8_combout\,
	combout => \wm8731|s_din~27_combout\);

-- Location: FF_X72_Y39_N31
\wm8731|s_din[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(7));

-- Location: LCCOMB_X72_Y39_N16
\wm8731|s_din~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~26_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[24]~7_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|s_din[24]~7_combout\,
	datad => \wm8731|s_din\(7),
	combout => \wm8731|s_din~26_combout\);

-- Location: FF_X72_Y39_N17
\wm8731|s_din[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(8));

-- Location: LCCOMB_X72_Y39_N12
\wm8731|s_din~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~25_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din[25]~6_combout\))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|s_din\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datab => \wm8731|s_din\(8),
	datad => \wm8731|s_din[25]~6_combout\,
	combout => \wm8731|s_din~25_combout\);

-- Location: FF_X72_Y39_N13
\wm8731|s_din[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(9));

-- Location: LCCOMB_X72_Y39_N6
\wm8731|s_din~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~24_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[26]~5_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datac => \wm8731|s_din[26]~5_combout\,
	datad => \wm8731|s_din\(9),
	combout => \wm8731|s_din~24_combout\);

-- Location: FF_X72_Y39_N7
\wm8731|s_din[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(10));

-- Location: LCCOMB_X74_Y39_N16
\wm8731|s_din~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~23_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din[27]~4_combout\))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|s_din\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datac => \wm8731|s_din\(10),
	datad => \wm8731|s_din[27]~4_combout\,
	combout => \wm8731|s_din~23_combout\);

-- Location: FF_X74_Y39_N17
\wm8731|s_din[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(11));

-- Location: LCCOMB_X74_Y39_N6
\wm8731|s_din~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~22_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[28]~3_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datac => \wm8731|s_din[28]~3_combout\,
	datad => \wm8731|s_din\(11),
	combout => \wm8731|s_din~22_combout\);

-- Location: FF_X74_Y39_N7
\wm8731|s_din[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(12));

-- Location: LCCOMB_X74_Y39_N8
\wm8731|s_din~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~21_combout\ = (\wm8731|Equal6~2_combout\ & (\wm8731|s_din[29]~2_combout\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|s_din[29]~2_combout\,
	datac => \wm8731|Equal6~2_combout\,
	datad => \wm8731|s_din\(12),
	combout => \wm8731|s_din~21_combout\);

-- Location: FF_X74_Y39_N9
\wm8731|s_din[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(13));

-- Location: LCCOMB_X74_Y39_N28
\wm8731|s_din~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~20_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din[30]~1_combout\))) # (!\wm8731|Equal6~2_combout\ & (\wm8731|s_din\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wm8731|Equal6~2_combout\,
	datac => \wm8731|s_din\(13),
	datad => \wm8731|s_din[30]~1_combout\,
	combout => \wm8731|s_din~20_combout\);

-- Location: FF_X74_Y39_N29
\wm8731|s_din[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(14));

-- Location: LCCOMB_X75_Y40_N30
\wm8731|s_din~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~18_combout\ = (\wm8731|Equal6~2_combout\ & (\audio_sel~input_o\)) # (!\wm8731|Equal6~2_combout\ & ((\wm8731|s_din\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_sel~input_o\,
	datac => \wm8731|s_din\(14),
	datad => \wm8731|Equal6~2_combout\,
	combout => \wm8731|s_din~18_combout\);

-- Location: LCCOMB_X74_Y39_N22
\wm8731|s_din~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \wm8731|s_din~19_combout\ = (\wm8731|Equal6~2_combout\ & ((\wm8731|s_din~18_combout\ & (\delay|Add2~0_combout\)) # (!\wm8731|s_din~18_combout\ & ((!\data_lr[31]~0_combout\))))) # (!\wm8731|Equal6~2_combout\ & (((\wm8731|s_din~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay|Add2~0_combout\,
	datab => \data_lr[31]~0_combout\,
	datac => \wm8731|Equal6~2_combout\,
	datad => \wm8731|s_din~18_combout\,
	combout => \wm8731|s_din~19_combout\);

-- Location: FF_X74_Y39_N23
\wm8731|s_din[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(15));

-- Location: FF_X76_Y39_N15
\wm8731|s_din[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[16]~15_combout\,
	asdata => \wm8731|s_din\(15),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(16));

-- Location: FF_X76_Y39_N31
\wm8731|s_din[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[17]~14_combout\,
	asdata => \wm8731|s_din\(16),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(17));

-- Location: FF_X76_Y39_N5
\wm8731|s_din[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[18]~13_combout\,
	asdata => \wm8731|s_din\(17),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(18));

-- Location: FF_X76_Y39_N27
\wm8731|s_din[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[19]~12_combout\,
	asdata => \wm8731|s_din\(18),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(19));

-- Location: FF_X76_Y39_N9
\wm8731|s_din[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[20]~11_combout\,
	asdata => \wm8731|s_din\(19),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(20));

-- Location: FF_X76_Y39_N7
\wm8731|s_din[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[21]~10_combout\,
	asdata => \wm8731|s_din\(20),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(21));

-- Location: FF_X72_Y39_N25
\wm8731|s_din[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[22]~9_combout\,
	asdata => \wm8731|s_din\(21),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(22));

-- Location: FF_X72_Y39_N27
\wm8731|s_din[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[23]~8_combout\,
	asdata => \wm8731|s_din\(22),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(23));

-- Location: FF_X72_Y39_N21
\wm8731|s_din[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[24]~7_combout\,
	asdata => \wm8731|s_din\(23),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(24));

-- Location: FF_X72_Y39_N9
\wm8731|s_din[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[25]~6_combout\,
	asdata => \wm8731|s_din\(24),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(25));

-- Location: FF_X72_Y39_N23
\wm8731|s_din[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[26]~5_combout\,
	asdata => \wm8731|s_din\(25),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(26));

-- Location: FF_X74_Y39_N15
\wm8731|s_din[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[27]~4_combout\,
	asdata => \wm8731|s_din\(26),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(27));

-- Location: FF_X74_Y39_N31
\wm8731|s_din[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[28]~3_combout\,
	asdata => \wm8731|s_din\(27),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(28));

-- Location: FF_X74_Y39_N27
\wm8731|s_din[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[29]~2_combout\,
	asdata => \wm8731|s_din\(28),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(29));

-- Location: FF_X74_Y39_N5
\wm8731|s_din[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[30]~feeder_combout\,
	asdata => \wm8731|s_din\(29),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(30));

-- Location: FF_X74_Y39_N1
\wm8731|s_din[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_18MHz|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \wm8731|s_din[31]~0_combout\,
	asdata => \wm8731|s_din\(30),
	clrn => \ALT_INV_reset~input_o\,
	sload => \wm8731|ALT_INV_Equal6~2_combout\,
	ena => \wm8731|s_din[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wm8731|s_din\(31));
END structure;


