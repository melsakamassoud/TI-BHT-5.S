ENTITY dds IS
GENERIC(addr_width : integer := 8;
data_width : integer := 9);
PORT (addrin : IN std_logic_vector(addr_width-1 DOWNTO 0);
dataout : OUT std_logic_vector(data_width-1 DOWNTO 0));
END dds;
ARCHITECTURE arch OF dds IS
-- Komponente dds_lut einbinden
-- Signale und Konstanten definieren
BEGIN
-- Komponente dds_lut instanziieren
-- mit Signalen LUT-Adresse pruefen und Steuersignal zum Auslesen setzen
PROCESS(sel, dataout_lut)
BEGIN
dataout <= (OTHERS => ’0’); -- Defaultwert fuer den Fall "100", "110", "111"
CASE sel IS
WHEN "101" => dataout <= (OTHERS => ’1’); -- dataout fuer 90 Grad
dataout(data_width-1) <= ’0’;
WHEN "111" => -- ............................. dataout fuer 270 Grad
WHEN "000"|"001" => dataout <= ’0’ & dataout_lut; -- pos. Werte aus LUT
WHEN "010"|"011" => dataout <= -- ................. neg. Werte aus LUT
WHEN OTHERS => NULL;
END CASE;
END PROCESS;
END;