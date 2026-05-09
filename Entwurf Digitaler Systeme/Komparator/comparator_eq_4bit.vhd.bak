LIBRARY ieee;
USE ieee.std_logic_1164.ALL; -- TODO: nur genutzte Libraries
--USE ieee.std_logic_1164.std_logic_vector;

entity comparator_eq_4bit is
    port (
        a : IN STD_LOGIC_VECTOR(3 downto 0); -- a0 a1 a2 a3
        b : IN STD_LOGIC_VECTOR(3 downto 0);

        result : OUT STD_LOGIC
        
    );
end entity;



architecture RTL of comparator_eq_4bit is
    signal eq_comp_4bit : std_logic_vector(3 downto 0) ;
begin
    -- e_i = (a_i XNOR b_i)
    eq_comp_4bit(0) <= not (a(0) XOR b(0));
    eq_comp_4bit(1) <= not (a(1) XOR b(1));
    eq_comp_4bit(2) <= not (a(2) XOR b(2));
    eq_comp_4bit(3) <= not (a(3) XOR b(3));
    
    -- E e3 UND e2 UND ...
    result <= (eq_comp_4bit(0) AND eq_comp_4bit(1) AND eq_comp_4bit(2) AND eq_comp_4bit(3));
    
    
    -- oder:
    --result <= (not (a(0) xor b(0))) AND
    --      (not (a(1) xor b(1))) AND
    --      (not (a(2) xor b(2))) AND
    --      (not (a(3) xor b(3)));

    -- ist das effizienter? macht das einen unterschied?

end architecture RTL;

