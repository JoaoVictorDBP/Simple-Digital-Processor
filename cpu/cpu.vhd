library ieee;
library work;
use ieee.std_logic_1164.all;

entity cpu is 
port(
	clk    : in std_logic;
	reset  : in std_logic;
	button : in std_logic;
	input  : in std_logic_vector(7 downto 0);
	output : out std_logic_vector(7 downto 0)
);
end cpu;

architecture logic of cpu is
signal address : std_logic_vector(0 to 7) := x"00";
signal m_r     : std_logic_vector(0 to 7) := x"00";
signal m_w     : std_logic_vector(0 to 7) := x"00";
signal stmem   : std_logic := '0';

component ram
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		   : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
begin
	
	processador : entity work.processor(p)
	port map(
		clk => clk,
		rst => reset,
		btt => button,
		input => input,
		output => output,
		address => address,
		stmem => stmem,
		m_r => m_r,
		m_w => m_w
	);
	
	memoria : ram
	port map(
		address => address,
		clock => clk,
		data => m_w,
		wren => stmem,
		q    => m_r
	);
	
end architecture;