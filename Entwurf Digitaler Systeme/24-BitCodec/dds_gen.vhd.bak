ENTITY dds_gen IS
GENERIC(addr_width : integer := 8;
data_width : integer := 9);
PORT(
clk, reset : IN std_logic;
data_a, data_b : OUT std_logic_vector(data_width-1 DOWNTO 0));
END dds_gen;
ARCHITECTURE arch OF dds_gen IS
-- Komponente dds einbinden und Signale definieren
BEGIN
-- Einstellwert setzen
PROCESS(clk, reset)
BEGIN
IF reset = ’1’ THEN
-- Ausgaenge zuruecksetzen
ELSIF (clk’event AND clk=’1’) THEN
addr_a <= addr_a + 1;
akkumulator <= akkumulator + einstellwert;
END IF;
END PROCESS;
-- addr_b berechnen
u1: dds
GENERIC MAP(addr_width => addr_width, data_width => data_width)
PORT MAP(addrin => std_logic_vector(addr_a), dataout => data_a);
u2: dds
GENERIC MAP(addr_width => addr_width, data_width => data_width)
PORT MAP(addrin => std_logic_vector(addr_b), dataout => data_b);