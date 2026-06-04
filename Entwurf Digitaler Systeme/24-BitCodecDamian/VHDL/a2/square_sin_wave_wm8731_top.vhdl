library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity square_sin_wave_wm8731_top is
    port (
        clock_50_top : in std_logic;
        keys_top : in std_logic_vector(3 downto 0);
        rst_top : in std_logic;

        sw_mode_top : in  std_logic;

        leds_top : out std_logic_vector(3 downto 0);

        -- f�r wm8731
        i2c_sdat_top : out std_logic; -- I2C serieller Datenkanal	
	  i2c_sclk_top : out std_logic; -- I2C serielle Clock
	  aud_xck_top : out std_logic; -- WM8731 Referenztakt (siehe Register 8 Programmierung)
	  aud_bclk_top : out std_logic; -- Audio Bit Clock
	  aud_dacdat_top : out std_logic; -- DAC Daten
	  aud_daclrck_top : out std_logic -- Links / Rechts
    );
end;

architecture structural of square_sin_wave_wm8731_top is

    -- Komponentendeklaration

    -- IP Generierte PLL audio clock
    component PLL_WM8731_IP is
        port (
            ref_clk_clk  : in  std_logic := '0'; -- 50 MHz in
            ref_reset_reset     : in  std_logic := '0';
            audio_clk_clk : out std_logic -- 18,432 MHz Ausgang
        );
    end component;

    component wm8731 is 
        port (clk, reset : in std_logic; -- Takteingang (entsprechend 18,432 MHz fuer WM8731)
        	  din : in std_logic_vector(31 downto 0); -- Audiodaten: 16 Bit linker Kanal + 16 Bit rechter Kanal
        	  i2c_sdat : out std_logic; -- I2C serieller Datenkanal	
        	  i2c_sclk : out std_logic; -- I2C serielle Clock
        	  aud_xck : out std_logic; -- WM8731 Referenztakt (siehe Register 8 Programmierung)
        	  aud_bclk : out std_logic; -- Audio Bit Clock
        	  aud_dacdat : out std_logic; -- DAC Daten
        	  aud_daclrck : out std_logic -- Links / Rechts
        );
    end component;

    component square_sin_gen is
        port (
            aud_xck : in  std_logic; -- 18,432 MHz Audio-Takt
            rst : in std_logic; -- System-rst
            keys : in std_logic_vector(3 downto 0); -- Taster (KEY3 bis KEY0, Low-Aktiv)
            sw_mode : in std_logic; -- 0 rechteck, 1 sinus

            leds : out std_logic_vector(3 downto 0); -- Rote/Gr�ne LEDs f�r die Tasten
            audio_out : out std_logic_vector(31 downto 0) -- 32-Bit Ausgang (16-Bit Links + 16-Bit Rechts)
        );
    end component;

    -- interne signale
    signal clk_WM8731_i : STD_LOGIC;
    signal audio_data_i : STD_LOGIC_VECTOR(31 downto 0);
    signal rst_i : STD_LOGIC;
    
begin

    rst_i <= rst_top;
    
    -- Takt erzeugen
    PLL_WM8731_inst: PLL_WM8731_IP
     port map(
        ref_clk_clk => clock_50_top,
        ref_reset_reset => rst_i,
        audio_clk_clk => clk_WM8731_i
    );
    -- an phy ausgang
    aud_xck_top <= clk_WM8731_i;

    -- ton erzeugen
    square_sin_gen_inst: square_sin_gen
     port map(
        aud_xck => clk_WM8731_i,
        rst => rst_i,
        keys => keys_top,
        leds => leds_top,
        audio_out => audio_data_i,
        sw_mode => sw_mode_top
    );

    wm8731_inst: wm8731
     port map(
        clk => clk_WM8731_i,
        reset => rst_i,
        din => audio_data_i,
        i2c_sdat => i2c_sdat_top,
        i2c_sclk => i2c_sclk_top,
        aud_xck => aud_xck_top,
        aud_bclk => aud_bclk_top,
        aud_dacdat => aud_dacdat_top, 
        aud_daclrck => aud_daclrck_top
    );


end architecture;
