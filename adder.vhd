--biblioteca
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--entidade
entity adder is
	port(
		a : in std_logic_vector(4 downto 0);
		b : in std_logic_vector(4 downto 0);
		sum : out std_logic_vector(4 downto 0)
		--clk : in std_logic;
		--rst : in std_logic
	);
end entity adder;

--arquitetura
--architecture RTL of entityName is
architecture RTL of adder is
	--transforma de STD_LOGIC pra INTEIRO - evitar ir p inteiro
	signal aint, bint, sumint : unsigned(4 downto 0);
	
begin
	aint <= unsigned(a); 
	bint <= unsigned(b); 
	sumint <= aint + bint; 
	
	--transforma de inteiro pra STD_LOGIC
	--5 = qtdd de bits que declarei pra sum - só pra mudança do inteiro
	sum <= std_logic_vector(sumint);
	
end architecture RTL;


--test (arquivo)
