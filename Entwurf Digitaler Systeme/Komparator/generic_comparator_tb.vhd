LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity tb_comparator is
end tb_comparator;

architecture testing of tb_comparator is
	
    component comparator_eq_param
        generic (
            w : INTEGER := 4
        );
        port (
            a, b   : in  std_logic_vector(w-1 downto 0);
            y  : out std_logic
        );
    end component;

	constant w_tb : integer := 4;
	constant w_tb2 : integer := 16;

    -- Signals
    signal a, b   : std_logic_vector(w_tb-1 downto 0);
    signal y : std_logic;
begin
    DUT: comparator_eq_param
        generic map (
            w => w_tb
        )
        port map (
            a => a,
            b => b,
	    y => y
        );

--stimuli: process
--    begin
--	for i in 0 to w-1 loop
--				
--	end loop
--        -- Testfall 1: Werte sind gleich
--        a <= std_logic_vector(to_unsigned(10, w_tb));
--        b <= std_logic_vector(to_unsigned(10, w_tb));
--        wait for 20 ns;
--
--        -- Testfall 2: A größer als B
--        a <= std_logic_vector(to_unsigned(15, w_tb));
--        b <= std_logic_vector(to_unsigned(5, w_tb));
--        wait for 20 ns;
--
--        -- Testfall 3: A kleiner als B
--        a <= std_logic_vector(to_unsigned(3, w_tb));
--        b <= std_logic_vector(to_unsigned(7, w_tb));
--        wait for 20 ns;
--
--        -- Testfall 4: Grenzwerte (0 und Max)
--        a <= (others => '0');
--        b <= (others => '1');
--        wait for 20 ns;
--
--        report "Simulation beendet" severity note;
--        wait; -- Prozess hier anhalten
--    end process;

stimuli: process
    constant max_val : integer := (2**w_tb) - 1;
begin
    -- i zählt von 0 bis max_val
    -- j zählt gleichzeitig von max_val bis 0
    for i in 0 to max_val loop
        
        -- Berechnung für j: Wenn i 0 ist, soll j max_val sein.
        -- Wenn i 1 ist, soll j max_val-1 sein, usw.
        -- Das entspricht: j = max_val - i
        
        a <= std_logic_vector(to_unsigned(i, w_tb));
        b <= std_logic_vector(to_unsigned(max_val - i -1, w_tb));
        
        wait for 10 ns;
        
    end loop;
    wait; 
end process;

end architecture testing;