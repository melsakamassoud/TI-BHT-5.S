library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_gen is
    port (
        aud_xck : in  std_logic; -- 18,432 MHz Audio-Takt
        rst : in  std_logic; -- System rst
        keys : in  std_logic_vector(3 downto 0); -- Taster (KEY3 bis KEY0, Low-Aktiv)
        leds : out std_logic_vector(3 downto 0); -- Rote/Gr�ne LEDs f�r die Tasten
        audio_out : out std_logic_vector(31 downto 0); -- 32-Bit Ausgang (16-Bit Links + 16-Bit Rechts)
		   square_sig : out std_logic
	  );
end square_gen;

architecture behavioral of square_gen is
    constant AMP_HIGH : std_logic_vector(15 downto 0) := x"7FFF"; -- +32767 (Max. pos. Ausschlag)
    constant AMP_LOW  : std_logic_vector(15 downto 0) := x"8000"; -- -32768 (Max. neg. Ausschlag)
    constant AMP_ZERO : std_logic_vector(15 downto 0) := x"0000"; -- Stille
	 
    signal max_count_square : integer range 0 to 4608000 := 0; -- Note C6 (1046,5 Hz)
    signal tone_cnt_square : integer range 0 to 4608000 := 0;
    signal s_square_sig : std_logic := '0';
    signal square_sample : std_logic_vector(15 downto 0);
begin

-- asynchronous process
    process(keys)
    begin
        if keys(0) = '0' then
            max_count_square <= 4403; -- C7
        elsif keys(1) = '0' then
            max_count_square <= 5878; -- G6
        elsif keys(2) = '0' then
            max_count_square <= 6990; -- E6
        elsif keys(3) = '0' then
            max_count_square <= 4608000; -- C6
		  else
            max_count_square <= 0; -- Keine Taste gedr�ckt -> Stille
        end if;
    end process;

    ------------------------------------------ Rechteck Signal Generator
    process(rst, aud_xck)
    begin
        -- Reset
        if rst = '1' then
            tone_cnt_square <= 0;
            s_square_sig <= '0';
		  elsif rising_edge(aud_xck) then

			if max_count_square = 0 then
				tone_cnt_square <= 0;
				s_square_sig <= '0';
		
			elsif tone_cnt_square = max_count_square - 1 then
				tone_cnt_square <= 0;
				s_square_sig <= not s_square_sig;
		
			else
				tone_cnt_square <= tone_cnt_square + 1;
			end if;

end if;
    end process;

    square_sample <= AMP_HIGH when (max_count_square /= 0 and s_square_sig = '1') else
                     AMP_LOW  when (max_count_square /= 0 and s_square_sig = '0') else
                     AMP_ZERO;

	 square_sig <= s_square_sig;
    audio_out <= square_sample & square_sample; -- Links + Rechts gleich
end behavioral;