library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_dds_tb is
-- Eine Testbench hat nach außen hin keine Pins (leere Entity)
end my_dds_tb;

architecture sim of my_dds_tb is

    -- 1. Komponentendeklaration des DDS-Prüflings (UUT)
    component my_dds is
        port (
            clk       : in  std_logic;
            rst       : in  std_logic;
            audio_out : out std_logic_vector(15 downto 0)
        );
    end component;

    -- 2. Interne Testbench-Signale
    signal clk_tb    : std_logic := '0';
    signal rst       : std_logic := '1'; -- Direkt so benannt wie im Modul
    signal audio_out : std_logic_vector(15 downto 0);

    -- Standard-Taktkonstante (50 MHz / 20 ns Periode)
    constant CLK_PERIOD : time := 20 ns;

begin

    -- 3. Instanziierung des Prüflings
    uut: my_dds
        port map (
            clk       => clk_tb,
            rst       => rst,
            audio_out => audio_out
        );

    -- 4. Taktgenerator-Prozess (50 MHz)
    clk_process : process
    begin
        clk_tb <= '0'; wait for CLK_PERIOD / 2;
        clk_tb <= '1'; wait for CLK_PERIOD / 2;
    end process;

    -- 5. Stimulus-Prozess
    stimulus : process
    begin
        -- Start im Reset-Zustand
        rst <= '1';
        wait for CLK_PERIOD * 5; 
        
        -- Reset lösen -> DDS startet den Sinuslauf
        rst <= '0';
        
        -- Wir simulieren für 10 Mikrosekunden.
        -- Eine volle Sinusperiode braucht 30 Takte (30 * 20ns = 600ns).
        -- In 10 us sehen wir also ca. 16 komplette, saubere Sinuswellen.
        wait for 10 us;
        
        -- Simulation im ModelSim beenden
        assert false report "DDS-Simulation erfolgreich abgeschlossen!" severity failure;
        wait;
    end process;

end sim;

