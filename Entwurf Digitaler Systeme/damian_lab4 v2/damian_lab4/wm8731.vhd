library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity wm8731 is
port (
    clk         : in  std_logic; -- Takteingang (18,432 MHz)
    reset       : in  std_logic; 
    din         : in  std_logic_vector(31 downto 0); -- 16 Bit Links + 16 Bit Rechts
    i2c_sdat    : out std_logic; 
    i2c_sclk    : out std_logic; 
    aud_xck     : out std_logic; -- WM8731 Referenztakt
    aud_bclk    : out std_logic; -- Audio Bit Clock
    aud_dacdat  : out std_logic; -- DAC Daten
    aud_daclrck : out std_logic; -- Links / Rechts Impuls
    i2c_wrdcnt  : out std_logic_vector(3 downto 0)
);
end wm8731;

architecture behavioral of wm8731 is
    constant i2c_adr  : std_logic_vector(6 downto 0) := "0011010"; 
    constant arraysize: integer := 7;
    type rom is array (0 to arraysize) of std_logic_vector(15 downto 0);

    constant i2c_data : rom := (
        "0001111000000000", -- R15 Reset Chip
        "0000100000010000", -- R4  DAC Sel
        "0000101000000000", -- R5  DAC Mute off
        "0000110001100111", -- R6  DAC on, out on
        "0000111000000011", -- R7  Slave, DSP Modus, 16 Bit
        "0001000000000010", -- R8  Normal Modus, 384fs (18,432 Mhz -> fs = 48 kHz)
        "0001001000000000", -- R9  Deaktiviere Audio
        "0001001000000001"  -- R9  Aktiviere Audio
    );

    signal s_din        : std_logic_vector(31 downto 0); 
    signal s_lrswitch   : integer range 0 to 383; -- Korrigiert: Exakt 384 Takte pro Audio-Sample

    signal i2c_clkdiv   : std_logic_vector(5 downto 0);
    signal i2c_clk      : std_logic; 
    signal i2c_seq      : integer range 0 to 2;
    signal i2c_bitcnt   : integer range 0 to 31; 
    signal i2c_wordcnt  : integer range 0 to 8; 

begin

    -- WM8731 I2C Taktteiler (500 kHz)
    process(reset, clk)
    begin
        if (reset = '1') then
            i2c_clk    <= '1';
            i2c_clkdiv <= (others=>'0');
        elsif rising_edge(clk) then
            i2c_clkdiv <= std_logic_vector(unsigned(i2c_clkdiv)+1);
            if i2c_clkdiv = "010010" then 
                i2c_clk    <= not (i2c_clk);
                i2c_clkdiv <= "000000";
            end if;
        end if;
    end process;

    -- I2C Konfigurations-Zustandsautomat
    process(reset, i2c_clk)
    begin
        if (reset = '1') then
            i2c_sdat    <= '0';    
            i2c_sclk    <= '0';    
            i2c_seq     <= 0;
            i2c_bitcnt  <= 0;
            i2c_wordcnt <= 0;    
        elsif rising_edge(i2c_clk) then 
            if i2c_wordcnt = 8 then
                i2c_sclk <= '0';
                i2c_sdat <= 'Z';
            else
                if i2c_seq = 0 then
                    i2c_seq <= 1;
                    i2c_sclk <= '0';
                    if i2c_bitcnt = 31 then
                        i2c_wordcnt <= i2c_wordcnt + 1;
                        i2c_bitcnt  <= 0;
                    else 
                        i2c_bitcnt  <= i2c_bitcnt + 1;
                    end if;            
                elsif i2c_seq = 1 then
                    i2c_seq  <= 2;
                    i2c_sclk <= '1';
                elsif i2c_seq = 2 then
                    i2c_seq  <= 0;
                    i2c_sclk <= '0';
                end if;

                case i2c_bitcnt is
                    when 0      => i2c_sdat <= '1';
                    when 1      => i2c_sdat <= '0'; -- Start
                    when 2      => i2c_sdat <= i2c_adr(6);
                    when 3      => i2c_sdat <= i2c_adr(5);
                    when 4      => i2c_sdat <= i2c_adr(4);
                    when 5      => i2c_sdat <= i2c_adr(3);
                    when 6      => i2c_sdat <= i2c_adr(2);
                    when 7      => i2c_sdat <= i2c_adr(1);
                    when 8      => i2c_sdat <= i2c_adr(0);
                    when 9      => i2c_sdat <= '0'; -- Write
                    when 10     => i2c_sdat <= 'Z'; -- ACK
                    when 11     => i2c_sdat <= i2c_data(i2c_wordcnt)(15); 
                    when 12     => i2c_sdat <= i2c_data(i2c_wordcnt)(14); 
                    when 13     => i2c_sdat <= i2c_data(i2c_wordcnt)(13);
                    when 14     => i2c_sdat <= i2c_data(i2c_wordcnt)(12);
                    when 15     => i2c_sdat <= i2c_data(i2c_wordcnt)(11);
                    when 16     => i2c_sdat <= i2c_data(i2c_wordcnt)(10);
                    when 17     => i2c_sdat <= i2c_data(i2c_wordcnt)(9);
                    when 18     => i2c_sdat <= i2c_data(i2c_wordcnt)(8);
                    when 19     => i2c_sdat <= 'Z'; -- ACK
                    when 20     => i2c_sdat <= i2c_data(i2c_wordcnt)(7);
                    when 21     => i2c_sdat <= i2c_data(i2c_wordcnt)(6);
                    when 22     => i2c_sdat <= i2c_data(i2c_wordcnt)(5);
                    when 23     => i2c_sdat <= i2c_data(i2c_wordcnt)(4);
                    when 24     => i2c_sdat <= i2c_data(i2c_wordcnt)(3);
                    when 25     => i2c_sdat <= i2c_data(i2c_wordcnt)(2);
                    when 26     => i2c_sdat <= i2c_data(i2c_wordcnt)(1);
                    when 27     => i2c_sdat <= i2c_data(i2c_wordcnt)(0);
                    when 28     => i2c_sdat <= 'Z'; -- ACK
                    when 29     => i2c_sdat <= '0'; -- Stop-Vorbereitung
                    when others => i2c_sdat <= '1'; -- Stop
                end case;
            end if;
        end if;
    end process;

    -- WM8731 Audiointerface (DSP Mode A)
    -- Korrigierte Schiebelogik: Lädt Daten sauber bei 383 und schiftet nur die ersten 32 Takte!
    process(reset, clk)
    begin
        if (reset = '1') then
            s_lrswitch  <= 0;
            aud_daclrck <= '0';
            s_din       <= (others=>'0');
        elsif rising_edge(clk) then
            if s_lrswitch = 383 then
                aud_daclrck <= '1';        -- Start-Impuls für DSP Mode A
                s_din       <= din;        -- Frische Audiodaten parallel laden
                s_lrswitch  <= 0;
            else
                aud_daclrck <= '0';
                s_lrswitch  <= s_lrswitch + 1;
                
                -- Nur in den ersten 32 Takten der Periode schiften, um Daten auszugeben
                if s_lrswitch < 32 then
                    s_din <= s_din(30 downto 0) & '0';
                end if;
            end if;
        end if;
    end process;

    i2c_wrdcnt <= std_logic_vector(to_unsigned(i2c_wordcnt, 4));
    
    aud_xck    <= clk; 
    aud_bclk   <= not clk;        -- Invertiert für DSP Mode A Datenversatz
    aud_dacdat <= s_din(31);      -- Höchstwertiges Bit seriell ausgeben

end behavioral;