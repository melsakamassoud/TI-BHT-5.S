library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wm8731_tb is
-- Eine Testbench hat nach außen hin keine Pins (leere Entity)
end wm8731_tb;

architecture sim of wm8731_tb is

    -- Komponentendeklaration des Prüflings (UUT)
    component wm8731 is
        port (
            clk           : in  std_logic;
            reset         : in  std_logic;
            din           : in  std_logic_vector(31 downto 0);
            i2c_sdat      : out std_logic;
            i2c_sclk      : out std_logic;
            aud_xck       : out std_logic;
            aud_bclk      : out std_logic;
            aud_dacdat    : out std_logic;
            aud_daclrck   : out std_logic;
            -- Debug-Schnittstelle zum Herausschreiben der internen Signale
            debug_bitcnt  : out integer range 0 to 31;
            debug_wordcnt : out integer range 0 to 7;
            debug_clk     : out std_logic;
            debug_clkdiv  : out std_logic_vector(5 downto 0);
            debug_seq     : out integer range 0 to 2
        );
    end component;

    -- Notwendige Steuerbits für die Testbench
    signal clk_tb      : std_logic := '0';
    signal reset       : std_logic := '1'; -- Direkt als "reset" benannt wie gewünscht
    
    -- EXAKT DEINE GEWÜNSCHTEN SIGNALE IM WAVE-FENSTER
    signal i2c_sdat    : std_logic;
    signal i2c_sclk    : std_logic;
    signal i2c_clkdiv  : std_logic_vector(5 downto 0);
    signal i2c_clk     : std_logic;
    signal i2c_seq     : integer range 0 to 2;
    signal i2c_bitcnt  : integer range 0 to 31;
    signal i2c_wordcnt : integer range 0 to 7;

begin

    -- Minimale Instanziierung: Audio-Ausgänge bleiben unbeschaltet (open)
    uut: wm8731
        port map (
            clk           => clk_tb,
            reset         => reset,
            din           => (others => '0'), -- Audio-Eingang wird nicht benötigt
            i2c_sdat      => i2c_sdat,
            i2c_sclk      => i2c_sclk,
            
            -- Unwichtige Signale bleiben offen
            aud_xck       => open,
            aud_bclk      => open,
            aud_dacdat    => open,
            aud_daclrck   => open,
            
            -- Zuordnung der Debug-Signale auf deine Variablen
            debug_bitcnt  => i2c_bitcnt,
            debug_wordcnt => i2c_wordcnt,
            debug_clk     => i2c_clk,
            debug_clkdiv  => i2c_clkdiv,
            debug_seq     => i2c_seq
        );

    -- Standard-Taktgenerator (50 MHz / 20 ns Periode)
    clk_process : process
    begin
        clk_tb <= '0'; wait for 10 ns;
        clk_tb <= '1'; wait for 10 ns;
    end process;

    -- Stimulus-Prozess
    stimulus: process
    begin
        -- Start im Reset-Zustand
        reset <= '1'; wait for 100 ns;
        
        -- Reset lösen -> State-Machine startet
        reset <= '0'; wait for 600 us;
        
        -- Simulation beenden
        assert false report "Simulation erfolgreich abgeschlossen!" severity failure;
        wait;
    end process;

end sim;