

LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- TODO: nur genutzte Libraries
--USE ieee.std_logic_1164.std_logic_vector;

entity comparator_gt_param is
    generic (
        w : INTEGER := 4  -- Breite / whith , 4=default. Kann in der generic map in der �berfunktion festgelegt werden
    );
    port (

        a : IN STD_LOGIC_VECTOR(w-1 downto 0); -- Variable BitBreite
        b : IN STD_LOGIC_VECTOR(w-1 downto 0); -- bsp: w=4 -> b0 b1 b2 b3

        y : OUT STD_LOGIC
        
    );
end entity;




architecture RTL of comparator_gt_param is
begin


    process(a, b)
        variable temp_eq : std_logic_vector(w-1 downto 0);
        variable temp_gt : std_logic_vector(w-1 downto 0);
    begin

        -- beim MSB starten
        temp_gt(w-1) := a(w-1) AND (NOT b(w-1));
        temp_eq(w-1) := not (a(w-1) xor b(w-1));
		  
        for i in w-2 downto 0 loop
            temp_eq(i) := temp_eq(i+1) AND (NOT ((a(i)) XOR (b(i))));
            temp_gt(i) := temp_gt(i+1) OR (temp_eq(i+1) AND (a(i) AND (NOT (b(i)) )));
        end loop;

        y <= temp_gt(0);
    end process;



    
--    result <= 
--           gt_comp_4bit(3) OR
--           (eq_comp_4bit(3) AND gt_comp_4bit(2)) OR
--           (eq_comp_4bit(3) AND eq_comp_4bit(2) AND gt_comp_4bit(1)) OR
--           (eq_comp_4bit(3) AND eq_comp_4bit(2) AND eq_comp_4bit(1) AND gt_comp_4bit(0));

            

end architecture RTL;