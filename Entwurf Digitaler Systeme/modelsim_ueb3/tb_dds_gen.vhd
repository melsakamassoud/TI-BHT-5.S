library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_dds_gen is
generic(
addr_width : integer RANGE 6 TO 12 := 10;
-- ein Bit mehr für das Vorzeichen
data_width : integer := 11
);
end tb_dds_gen;

architecture arch of tb_dds_gen is

signal dataout : std_logic_vector(data_width-1 downto 0);
signal clk : std_logic;
signal reset : std_logic;
signal einstellwert_input : std_logic_vector(7 downto 0) := "00000001";

begin

dds_gen : entity work.dds_gen(arch)
generic map(
addr_width => addr_width,
data_width => data_width
)
port map(
clk => clk,
reset => '0',
einstellwert_input => einstellwert_input,
data_a => dataout
);

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

end arch;
