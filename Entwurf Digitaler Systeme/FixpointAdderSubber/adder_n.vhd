library ieee;
use ieee.std_logic_1164.all;
use myfixpoint.work.all;

entity adder_n is
    generic (
        N : positive := 4
    );
    port (
		
        x, y : in  std_logic_vector(N-1 downto 0);
        m  : in  std_logic;
        sum  : out std_logic_vector(N-1 downto 0);
        cout : out std_logic
    );
end entity adder_n;

architecture rtl of adder_n is
    signal c : std_logic_vector(0 to N);
    signal x_s : std_logic_vector(N-1 downto 0);
begin
 
    c(0) <= m; -- add one for two's complement
    cout <= c(N); -- carryout of current operation
    x_s <= x xor (N-1 downto 0 => m);	 

	 -- loop index determines connections of replicated adder
    gen_adders : for i in 0 to N-1 generate
    begin
        fa : entity work.adder(rtl)
            port map (
                x    => x_s(i), -- adder_n rechnet y - x bei Subtraktion
                y    => y(i),
                cin  => c(i),
                sum  => sum(i),
                cout => c(i+1) -- cin of previous adder instance
            );
	end generate;
	 
end architecture rtl;