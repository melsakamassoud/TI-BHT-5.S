library ieee;
use ieee.std_logic_1164.all;

entity tb_wm8731 is
end tb_wm8731;

architecture behav of tb_wm8731 is

signal clk : std_logic := '0'; -- Takteingang (entsprechend 18,432 MHz fuer WM8731)
signal reset : std_logic := '1'; -- Audiodaten: 16 Bit linker Kanal + 16 Bit rechter Kanal (dds rechtecksignal)
signal din : std_logic_vector(31 downto 0) := (others => '1');
signal i2c_sdat : std_logic; -- I2C serieller Datenkanal	
signal i2c_sclk : std_logic; -- I2C serielle Clock
signal aud_xck : std_logic; -- WM8731 Referenztakt (siehe Register 8 Programmierung)
signal aud_bclk : std_logic; -- Audio Bit Clock
signal aud_dacdat : std_logic; -- DAC Daten
signal aud_daclrck : std_logic; -- Links / Rechts
signal i2c_wrdcnt : std_logic_vector(3 downto 0);

begin

clk_process : process
	begin
	while true loop
		clk <= '0';
		wait for 27.1265 ns;
		clk <= '1';
		wait for 27.1265 ns;
		reset <= '0';
	end loop;
end process;

codec_inst : entity work.wm8731(behavioral)
	port map (
	  clk => clk,
	  reset => reset,
	  din => din,
	  i2c_sdat => i2c_sdat,
	  i2c_sclk => i2c_sclk,
	  i2c_wrdcnt => i2c_wrdcnt,
	  aud_xck => aud_xck,
	  aud_bclk => aud_bclk,
	  aud_dacdat => aud_dacdat,
	  aud_daclrck => aud_daclrck
	);

stop_process : process
begin
    wait for 1800 us;
    report "Simulation finished" severity failure;
end process;

end behav;