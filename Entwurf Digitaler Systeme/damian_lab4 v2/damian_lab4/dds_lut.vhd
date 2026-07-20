library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.dds_pkg.all;

ENTITY dds_lut IS
GENERIC(
addr_width : integer RANGE 4 TO 10 := 8;
data_width : integer := 10);
PORT (
addrin : IN std_logic_vector(addr_width-1 DOWNTO 0);
dataout : OUT std_logic_vector(data_width-1 DOWNTO 0)
);
END dds_lut;


ARCHITECTURE arch OF dds_lut IS

SIGNAL x : integer RANGE 0 TO 2**addr_width-1;
SIGNAL y : integer RANGE 0 TO 2**data_width-1;

-- type lookuptable is array (0 to 2**addrin'length-1) of integer range -2**(dataout'length-1) to 2**(dataout'length-1)-1;
signal sine : integer_array_t(0 to 2**addr_width-1) := make_quarter_sine_lut(addr_width, data_width);

BEGIN

x <= to_integer(unsigned(addrin));
y <= sine(x);
dataout <= std_logic_vector(to_unsigned(y, dataout'length));

END arch;