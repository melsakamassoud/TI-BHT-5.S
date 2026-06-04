library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity my_dds is
port (
        clk       : in  std_logic;
        rst     : in  std_logic;
        audio_out : out std_logic_vector(15 downto 0) -- 16Bit für WM8731
);
end;

architecture behavioral of my_dds is
    
    signal global_cnt : integer range 0 to 29 := 0;

    signal rom_index  : integer range 0 to 7 := 0;

    type quarter_lut is array (0 to 7) of integer range 0 to 32767; -- 32767 (Max. pos. Ausschlag) siehe aufgabe 1 bzw square_wave_generator
    constant sinus_quarter : quarter_lut := ( -- 1/4 POS linux signal
        0, 6553, 12779, 18348, 23592, 27524, 30145, 32759 -- MAX um 8 reduziert wegen übersteuern
    );

    signal s_out : integer range -32768 to 32767 := 0;

begin

    -- global_cnt
    process(rst, clk)
    begin
    if (rst = '1') then
            global_cnt <= 0;
            rom_index  <= 0;
            s_out      <= 0;
    
    elsif rising_edge(clk) then
        if (global_cnt >= 29) then -- max wert erreicht?
            global_cnt <= 0;
        else
            global_cnt <= global_cnt +1;
        end if;

        
        -- Symetrielogik 
        -- 1. quadrant
        -- 0 bis 7
        if (global_cnt < 8) then
            rom_index <= global_cnt;
            s_out <= sinus_quarter(rom_index);
        
        -- Q2
        -- 8 bis 14
        elsif (global_cnt < 15) then
            rom_index <= 14 - global_cnt; -- Rückwerts lesen
            -- 14 - 8 = 6
            -- ....
            -- 14 - 12 = 2 
            -- 14 - 13 = 1
            -- 14 - 14 = 0
            s_out <= sinus_quarter(rom_index); -- 

        -- Q3
        -- 15 bis 22
        elsif (global_cnt < 23) then
            rom_index <= global_cnt -15; -- vorwärts zählen
            -- 15 -15 = 0
            -- 16 -15 = 1
            s_out <= -sinus_quarter(rom_index); -- negativ


        -- Q4
        -- 23 bis 29
        else
            rom_index <= 29 - global_cnt; --rückwerts
            -- 29 - 23 = 6
            s_out <= - sinus_quarter(rom_index); -- negativ
        end if;
    end if;
    end process;

    audio_out <= std_logic_vector(to_signed(s_out, audio_out'LENGTH));

end behavioral;


