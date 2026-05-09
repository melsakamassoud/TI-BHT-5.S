LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- TODO: nur genutzte Libraries
--USE ieee.std_logic_1164.std_logic_vector;

entity comparator_gt_4bit is
    port (
        a : IN STD_LOGIC_VECTOR(3 downto 0); -- a0 a1 a2 a3
        b : IN STD_LOGIC_VECTOR(3 downto 0);

        result : OUT STD_LOGIC
        
    );
end entity;



architecture RTL of comparator_gt_4bit is
    signal gt_comp_4bit : STD_LOGIC_VECTOR(3 downto 0);
    signal eq_comp_4bit: STD_LOGIC_VECTOR(3 downto 0) ;
begin
    eq_comp_4bit(0) <= not (a(0) XOR b(0));
    eq_comp_4bit(1) <= not (a(1) XOR b(1));
    eq_comp_4bit(2) <= not (a(2) XOR b(2));
    eq_comp_4bit(3) <= not (a(3) XOR b(3));

    gt_comp_4bit(0) <= a(0) AND (NOT b(0));
    gt_comp_4bit(1) <= a(1) AND (NOT b(1));
    gt_comp_4bit(2) <= a(2) AND (NOT b(2));
    gt_comp_4bit(3) <= a(3) AND (NOT b(3));

    
    
    result <= 
            gt_comp_4bit(3) OR
            (eq_comp_4bit(3) AND gt_comp_4bit(2)) OR
            (eq_comp_4bit(3) AND eq_comp_4bit(2) AND gt_comp_4bit(1)) OR
            (eq_comp_4bit(3) AND eq_comp_4bit(2) AND eq_comp_4bit(1) AND gt_comp_4bit(0));

            

end architecture RTL;