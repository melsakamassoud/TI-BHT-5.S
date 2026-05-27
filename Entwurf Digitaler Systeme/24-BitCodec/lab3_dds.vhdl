library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

-- Rechnung
-- delta_phase = FTW
-- N = Phasenakkumulatorbreite
-- Frequency tuning word
-- f_out = FTW * f_clk /(2^N)
-- FTW = f_out * 2^N / f_clk
-- für Töne mit f_max = 2093,0 Hz gilt f_out = 2093 Hz
-- 
--
--
--
entity dds is
port (clk, reset : in std_logic;
	  dout : out std_logic_vector(7 downto 0)
	  );
end dds;

architecture behavioral of dds is
-- 31 addressierbare Werte (5 bit Phasenakkumulator)
signal s_index : integer range 0 to 30; 
-- Quantisierung des gespeicherten Signals (8 bit)
signal s_dout : integer range -128 to 127;

-- 30 * 8(bit; 256 Stützstellen; 30 dateneingaenge) = 7680 bit
type lookuptable is array (0 to 29) of integer range -128 to 127;

-- ROM zum Speichern der Sinus-Abtatswerte
signal sinus : lookuptable := (0,20,39,56,72,84,92,96,96,92,84,72,56,39,20,
0,-20,-39,-56,-72,-84,-92,-96,-96,-92,-84,-72,-56,-39,-20);

begin

	process(clk)
	begin
		if (reset = '1') then
			s_dout <= 0;
		elsif (clk'event and clk='1') then 
			s_dout <= sinus(s_index);
			s_index <= s_index+ 1;
			if(s_index = 29) then
				s_index <= 0;
			end if;
		end if;
	end process;

	dout <= std_logic_vector(to_unsigned(s_dout, dout'LENGTH));

end behavioral;