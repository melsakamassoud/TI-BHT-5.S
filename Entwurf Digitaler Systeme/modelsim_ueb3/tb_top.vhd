library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top is
end tb_top;

architecture arch of tb_top is

signal clk : std_logic;
signal reset : std_logic := '1';
signal i2c_sdat : std_logic; -- I2C serieller Datenkanal	
signal i2c_sclk : std_logic; -- I2C serielle Clock
signal aud_xck : std_logic; -- WM8731 Referenztakt (siehe Register 8 Programmierung)
signal aud_bclk : std_logic; -- Audio Bit Clock
signal aud_dacdat : std_logic; -- DAC Daten
signal aud_daclrck : std_logic; -- Links / Rechts
signal i2c_wrdcnt : std_logic_vector (3 downto 0);
signal einstellwert_input : std_logic_vector(7 downto 0);
signal dataout : std_logic_vector(15 downto 0);
begin

-- 50MHz Clock
clk_process : process
	begin
	while true loop
		clk <= '0';
		wait for 20.0 ns;
		clk <= '1';
		wait for 20.0 ns;
		reset <= '0';
	end loop;
end process;

top : entity work.top(arch)
port map(
clk => clk, --: in std_logic;
reset => reset, --: in std_logic;
i2c_sdat => i2c_sdat, --: out std_logic; -- I2C serieller Datenkanal	
i2c_sclk => i2c_sclk,--: out std_logic; -- I2C serielle Clock
aud_xck => aud_xck,--: out std_logic; -- WM8731 Referenztakt (siehe Register 8 Programmierung)
aud_bclk => aud_bclk,--: out std_logic; -- Audio Bit Clock
aud_dacdat => aud_dacdat,--: out std_logic; -- DAC Daten
aud_daclrck => aud_daclrck,--: out std_logic; -- Links / Rechts
i2c_wrdcnt => i2c_wrdcnt,--: out std_logic_vector (3 downto 0);
einstellwert_input => einstellwert_input, --: in std_logic_vector(7 downto 0)
dataout => dataout
);

einstellwert_input <= "00000001";
end arch;