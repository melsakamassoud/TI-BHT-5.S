library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


package dds_pkg is

	 -- array of integers with supplyable (<>) range with natural indices
	 type integer_array_t is array (natural range <>) of integer;

    function make_quarter_sine_lut(
        addr_bits : positive;
        data_bits : positive
    ) return integer_array_t;
end package;

package body dds_pkg is

    function make_quarter_sine_lut(
		-- for 10 there will 256 lut entries
        addr_bits : positive;
		-- for 10 there will 512 different values
        data_bits : positive
    ) return integer_array_t is

		  -- for a quarter sinewave subtract to from the exponent
        constant LUT_SIZE : integer := 2**addr_bits;
        -- max positive/negative amp
		  constant AMP      : real := real(2**(data_bits-1)-1);
		  -- lut as array of integers
        variable lut : integer_array_t(0 to LUT_SIZE-1);

    begin

        for i in lut'range loop
            lut(i) :=
                integer(
						-- round to the nearest whole number
                    round(
                        AMP *
                        sin(
								real(i) * math_pi / 
								(2.0 * real(LUT_SIZE))
								)
                    )
                );
        end loop;

        return lut;

    end function;

end package body;