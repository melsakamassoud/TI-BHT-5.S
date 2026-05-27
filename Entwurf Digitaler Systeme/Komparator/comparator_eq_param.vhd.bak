LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- TODO: nur genutzte Libraries
--USE ieee.std_logic_1164.std_logic_vector;

entity comparator_eq_param is
    generic (
        w : INTEGER := 4  -- Breite / whith , 4=default. Kann in der generic map in der überfunktion festgelegt werden
    );
    port (
        --w : IN INTEGER -- BS
        --a : IN STD_LOGIC_VECTOR((w-1 downto 0)); -- Die doppelklammern haben result undeclared gemacht ???????????ß
        --b : IN STD_LOGIC_VECTOR((w-1 downto 0)); 
        a : IN STD_LOGIC_VECTOR(w-1 downto 0); -- Variable BitBreite
        b : IN STD_LOGIC_VECTOR(w-1 downto 0); -- bsp: w=4 -> b0 b1 b2 b3

        y : OUT STD_LOGIC
        
    );
end entity;



architecture RTL of comparator_eq_param is
    signal eq_comp : std_logic_vector(w-1 downto 0) ;
begin

    -- bitweiser vergleich
    process(a, b)
    begin
    -- Termin 2 Seite 25
    for i in 0 to w-1 loop
        eq_comp(i) <= not (a(i) xor b(i));
    end loop;
    end process;

    -- sind alle eq_comp(i) == 1 ?
    process(eq_comp)
        variable temp : std_logic := '1';
    begin 
	temp := '1';
        for i in 0 to w-1 loop -- generate besser name, da: parallele struktur erzeugt wird
            temp := temp and eq_comp(i);

            -- dumme idee...
            -- bisschen schneller aus schleife raus
        --    if temp = '0' then
        --        exit;
        --    end if;

        end loop;
            y <= temp;
    end process;


end architecture RTL;

