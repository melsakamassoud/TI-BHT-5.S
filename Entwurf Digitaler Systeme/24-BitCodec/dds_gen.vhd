library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- macht addressen
ENTITY dds_gen IS
GENERIC(
addr_width : integer RANGE 6 TO 12 := 10;
-- ein Bit mehr für das Vorzeichen
data_width : integer := 11
);
PORT(
clk, reset : IN std_logic;
einstellwert_input : in std_logic_vector(7 downto 0);
data_a : OUT std_logic_vector(data_width-1 DOWNTO 0));
END dds_gen;
ARCHITECTURE arch OF dds_gen IS

signal akkumulator : integer range 0 to 2**addr_width-1;
signal einstellwert: integer range 0 to 255;
signal dds_data: std_logic_vector(data_width-1 downto 0);

BEGIN
-- Einstellwert setzen
einstellwert <= to_integer(unsigned(einstellwert_input));

process(clk, reset)
    begin
        if reset = '1' then
            akkumulator <= 0;
        elsif rising_edge(clk) then
            akkumulator <= (akkumulator + einstellwert) mod (2**addr_width);
        end if;
end process;

u1: entity work.dds(arch)
GENERIC MAP(
addr_width => addr_width, 
data_width => data_width
)
PORT MAP(
addrin => std_logic_vector(to_unsigned(akkumulator, addr_width)), 
dataout => dds_data
);

data_a <= dds_data;

end arch;