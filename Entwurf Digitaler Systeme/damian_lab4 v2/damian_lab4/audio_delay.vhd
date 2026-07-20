library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity audio_delay is
    Port (
        clk         : in  STD_LOGIC;                    -- Haupttakt des Systems
        reset       : in  STD_LOGIC;                    -- Synchroner Reset
        sample_strobe : in  STD_LOGIC;                  -- Pulsiert hoch für genau 1 Taktzyklus pro Audio-Sample (48 kHz)
        switch_echo : in  STD_LOGIC;                    -- Schalter zur Aktivierung des Effekts
        led_echo    : out STD_LOGIC;                    -- Status-LED für den Effekt
        audio_in    : in  STD_LOGIC_VECTOR(15 downto 0); -- 16-Bit Eingang vom dds
        audio_out   : out STD_LOGIC_VECTOR(15 downto 0)  -- 16-Bit Ausgang zum Codec
    );
end audio_delay;

architecture Behavioral of audio_delay is

	 constant BUFFER_SIZE : natural := 24000;
	 constant RAM_SIZE    : natural := 32768;
	 
	 signal write_ptr : unsigned(14 downto 0) := (others => '0');
	 signal read_ptr : unsigned(14 downto 0);
    
	 signal sign_in        : signed(15 downto 0);
    signal delayed_audio  : signed(15 downto 0) := (others => '0');
    signal mixed_audio    : signed(15 downto 0);

    -- RAM signals
    signal ram_q    : std_logic_vector(15 downto 0);
    signal ram_data : std_logic_vector(15 downto 0);
    signal ram_wren : std_logic := '0';

begin



    ------------------------------------------------------------------
    -- M9K RAM
    ------------------------------------------------------------------
	 delay_ram : entity work.ram_2port
	 port map(
		 clock     => clk,
		 data      => ram_data,
		 wraddress => std_logic_vector(write_ptr),
		 rdaddress => std_logic_vector(read_ptr),
		 wren      => ram_wren,
		 q         => ram_q
	 );


    process(clk)
    begin

        if rising_edge(clk) then

            ram_wren <= '0';

            if reset='1' then

                write_ptr <= (others => '0');
                delayed_audio <= (others => '0');

            elsif sample_strobe='1' then

					 delayed_audio <= signed(ram_q);
				 
					 ram_data <= std_logic_vector(shift_right(sign_in,1));
					 ram_wren <= '1';
                
                if write_ptr = 32767 then
                    write_ptr <= (others => '0');
                else
                    write_ptr <= write_ptr + 1;
						  read_ptr <= to_unsigned((to_integer(write_ptr) + RAM_SIZE - BUFFER_SIZE) mod RAM_SIZE, 15);
                end if;

            end if;

        end if;

    end process;

	 sign_in <= signed(audio_in);
    led_echo <= switch_echo;
	 
	 -- audio mit delay
    mixed_audio <= shift_right(sign_in,1) + shift_right(delayed_audio,1);

	 -- asynchroner switch
    audio_out <= std_logic_vector(mixed_audio) when switch_echo='1' else audio_in;

end Behavioral;