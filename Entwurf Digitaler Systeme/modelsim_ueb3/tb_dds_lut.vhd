library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_dds_lut is
generic(
addr_width : integer := 10;
data_width : integer := 10
);
end tb_dds_lut;

architecture arch of tb_dds_lut is

signal addrin : std_logic_vector(addr_width-1 downto 0);
signal dataout : std_logic_vector(data_width-1 downto 0);

constant addr_max : integer := 2**addr_width-1;

begin

dds_lut : entity work.dds_lut(arch)
generic map(
addr_width => addr_width,
data_width => data_width
)
port map(
addrin => addrin,
dataout => dataout
);

process
	begin
	for i in 0 to addr_max loop
		addrin <= std_logic_vector(to_unsigned(i, addr_width));
		wait for 10ns;
	end loop;

	wait;
end process;

end arch;
