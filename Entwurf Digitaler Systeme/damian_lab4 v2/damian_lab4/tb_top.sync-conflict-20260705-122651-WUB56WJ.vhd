library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_top is
end entity tb_top;

architecture arch of tb_top is

    --------------------------------------------------------------------
    -- DUT Signals
    --------------------------------------------------------------------
    signal clk               : std_logic := '0';
    signal reset             : std_logic := '1';

    signal switch_echo       : std_logic := '0';
    signal led_echo          : std_logic;

    signal i2c_sdat          : std_logic;
    signal i2c_sclk          : std_logic;
    signal aud_xck           : std_logic;
    signal aud_bclk          : std_logic;
    signal aud_dacdat        : std_logic;
    signal aud_daclrck       : std_logic;

    signal i2c_wrdcnt        : std_logic_vector(3 downto 0);
    signal einstellwert_input: std_logic_vector(7 downto 0) := x"20";
    signal keys              : std_logic_vector(3 downto 0) := "0000";
    signal dataout           : std_logic_vector(15 downto 0);

    --------------------------------------------------------------------
    -- Clock period
    --------------------------------------------------------------------
    --constant CLK_PERIOD : time := 20 ns; -- 50 MHz
    constant CLK_PERIOD : time := 2 ns;

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    dut : entity work.top
    port map(
        clk                 => clk,
        reset               => reset,
        switch_echo         => switch_echo,
        led_echo            => led_echo,
        i2c_sdat            => i2c_sdat,
        i2c_sclk            => i2c_sclk,
        aud_xck             => aud_xck,
        aud_bclk            => aud_bclk,
        aud_dacdat          => aud_dacdat,
        aud_daclrck         => aud_daclrck,
        i2c_wrdcnt          => i2c_wrdcnt,
        keys                => keys,
        einstellwert_input  => einstellwert_input,
        dataout             => dataout
    );

    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Stimulus
    --------------------------------------------------------------------
    stim_proc : process
    begin

        -- Hold reset
        reset <= '1';
        switch_echo <= '0';

        wait for 1 us;

        reset <= '0';

        -- Let DDS run
            wait for 1000 ms;

            -- Press C6
            keys <= "0001";
            wait for 500 ms;

            -- Press E6
            keys <= "0010";
            wait for 500 ms;

            -- Press G6
            keys <= "0100";
            wait for 500 ms;

            -- Press C7
            keys <= "1000";
            wait for 500 ms;

            -- Release keys
            keys <= "0000";

        -- Enable echo
        switch_echo <= '1';

        wait for 1000 ms;

        -- Disable echo
        switch_echo <= '0';

        wait for 1000 ms;

        report "Simulation finished." severity note;
        assert false report "End of simulation - stopping TB." severity failure;

    end process;

end architecture;