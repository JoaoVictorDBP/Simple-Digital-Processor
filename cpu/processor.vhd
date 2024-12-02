library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processor is
    port(
		btt     : in std_logic;
      clk     : in std_logic;
      input   : in std_logic_vector(7 downto 0);
		output  : out std_logic_vector(7 downto 0); -- talvez troca isso pros negocio do display de 7 segmentos
      rst     : in std_logic;
		
		-- memory related stuff
      address : inout std_logic_vector(0 to 7);
		m_r     : in std_logic_vector(0 to 7);
		m_w     : out std_logic_vector(0 to 7);
		stmem   : out std_logic
	);
end processor;

architecture p of processor is
type reg is array(0 to 2) of unsigned(0 to 7);
type p_st is (RESET, IDLE, OP, MEM, RINST);

shared variable state   : p_st := RESET;

shared variable command : std_logic_vector(0 to 15);

-- regA: 0, regB: 1, regR: 2
signal registers : reg;

-- buses connecting the registers
shared variable regb   : unsigned(0 to 7);

-- flags: zero, signal, carry, overflow
signal flags 		     : std_logic_vector(0 to 3);

signal var  			  : std_logic := '0';
begin
	
	process(clk, rst)	
	variable iinstruction 	   : unsigned(0 to 3) := x"0";

	variable regI              : unsigned(0 to 7);
	variable int   		      : unsigned(0 to 7);
	
	variable reg1, reg2        : integer range 0 to 2; -- index of the registers A, B and R
	
	variable op_type     		: bit_vector(1 downto 0) := "00";
	variable mem_step     	   : bit := '0';
	variable reseted  			: bit := '0';
	
	begin
		
		if rst = '0' and reseted = '0' then
			
			reseted := '1';
			state := RESET;
			mem_step := '0';
			address <= x"00";
			command := x"0000";
			iinstruction := x"0";
			registers <= (x"00", x"00", x"00");
			reg1 := 0;
			reg2 := 0;
			stmem <= '0';
			flags <= x"0";
			
		elsif falling_edge(clk) then
			
			if btt = '1' then
				var <= '0';
			end if;
		
			if state = RESET then
		
				if rst = '1' then
					state   := RINST;
					reseted := '0';
				end if;
				
				mem_step     := '0';
				address      <= x"00";
				command      := x"0000";
				iinstruction := x"0";
				registers    <= (x"00", x"00", x"00");
				reg1         := 0;
				reg2         := 0;
				stmem        <= '0';
				flags        <= x"0";
			
			elsif state = RINST then
			
				if mem_step = '0' then
					address <= std_logic_vector(unsigned(address) + 1);
					command(0 to 7) := m_r;
					mem_step := '1';
				else
					address <= std_logic_vector(unsigned(address) + 1);
					command(8 to 15) := m_r;
					state := IDLE;
				end if;
				
			elsif state = IDLE then
			
				
					-- read the instruction from the memory
					iinstruction := unsigned(command(0 to 3));
					
					-- assign the indexes of the registers to reg1 and reg2
					-- and assign the last 8 bits to int
					reg1 := to_integer(unsigned(command(5 to 6)));
					reg2 := to_integer(unsigned(command(7 to 8)));
					int  := unsigned(command(8 to 15));
						

					
						if (iinstruction < 8) then
							op_type := "00";
						elsif (iinstruction < 13) then
							op_type := "01";
						elsif (iinstruction < 14) then
							op_type := "10";
						else
							op_type := "11";
						end if;
						
						state := OP;
					
			elsif state = OP then
					
				-- execute the command
				if op_type(1) = '0' then
				
					-- operations that don't use memory
					
						case iinstruction is
							when x"0" =>
								-- ADD
								if (command(4) = '1') then
									if registers(reg1) + int > 255 then
										regI := registers(reg1) + int - 255;
										flags(2) <= '1';
									else
										regI := registers(reg1) + int;
										flags(2) <= '0';
									end if;
								else
									if registers(reg1) + registers(reg2) > 255 then
										regI := registers(reg1) + registers(reg2) - 255;
										flags(2) <= '1';
									else
										regI := registers(reg1) + registers(reg2);
										flags(2) <= '0';
									end if;
								end if;
							when x"1" =>
								-- SUB
								
								if (command(4) = '1') then
									if int > registers(reg1) then
										regI := int - registers(reg1);
										flags(2) <= '1'; 
									else
										regI := registers(reg1) - int;
										flags(2) <= '0';
									end if;
								else
									if registers(reg2) > registers(reg1) then
										regI := registers(reg2) - registers(reg1);
										flags(2) <= '1';
									else
										regI := registers(reg1) - registers(reg2);
										flags(2) <= '0';
									end if;
								end if;
							when x"2" =>
								-- AND
								if command(4) = '1' then
									regI := registers(reg1) and int;
								else
									regI := registers(reg1) and registers(reg2);
								end if;
								
								flags(3) <= '0';
							when x"3" =>
								-- OR
								if command(4) = '1' then
									regI := registers(reg1) or int;
								else
									regI := registers(reg1) or registers(reg2);
								end if;
								
								flags(2) <= '0';
							when x"4" =>
								-- NOT
								regI := not registers(reg1);
								
								flags(2) <= '0';
							when x"5" =>
								-- CMP
								
								if command(4) = '1' then
									if registers(reg1) = int then
										flags <= "1000";
									else
										if registers(reg1) < int then
											flags <= "0100";
										else
											flags <= "0000";
										end if;
									end if;
								else
									if registers(reg1) = registers(reg2) then
										flags <= "1000";
									else
										if registers(reg1) < registers(reg2) then
											flags <= "0100";
										else
											flags <= "0000";
										end if;
									end if;
								end if;
							when x"6" =>
								-- MOV
								if command(4) = '1' then
									registers(reg1) <= int;
								else
									registers(reg1) <= registers(reg2);
								end if;
							when x"7" =>
								-- OUT
								output <= std_logic_vector(registers(reg1));
								
						
						-- operations that have memory as an input 
						
							when x"8" =>
								-- JMP
								if command(4) = '1' then
									address <= std_logic_vector(int);
								else
									address <= std_logic_vector(registers(reg1));
								end if;
								
								state := RINST;
								mem_step := '0';
							when x"9" =>
								-- JEQ
								if flags(0) = '1' then
									address <= std_logic_vector(int);
								end if;
								
								state := RINST;
								mem_step := '0';
							when x"a" =>
								-- JGR
								-- not flags(0): n1 != n2
								-- not flags(1): n1 > n2
								if flags(1) = '0' then
									address <= std_logic_vector(int);
								end if;
								
								state := RINST;
								mem_step := '0';
							when x"b" =>
								-- STORE
								if command(4) = '1' then
									stmem <= '1';
									regI := unsigned(address);
									address <= std_logic_vector(int);
									state := MEM;
									m_w <= std_logic_vector(registers(reg1));
								else
									registers(reg2) <= registers(reg1);
									state := RINST;
									mem_step := '0';
								end if;
							when x"c" =>
								-- LOAD
								if command(4) = '1' then
									regI := unsigned(address);
									address <= std_logic_vector(int);
									state := MEM;
								else
									registers(reg1) <= registers(reg2);
									state := RINST;
									mem_step := '0';
								end if;
							when others =>
						end case;
						
						if iinstruction < 5 then
							registers(2) <= regI;
						end if;
						
						if op_type(0) = '0' then
						
							state := RINST;
							mem_step := '0';
					end if;
				else
					if btt = '0' and var = '0' then
						if op_type(0) = '0' then
							registers(reg1) <= unsigned(input);
						end if;
					
						state := RINST;
						mem_step := '0';
						var <= '1';
					end if;
				end if;	
			elsif state = MEM then
			
				if iinstruction = 12 then
					regb := unsigned(m_r);
					registers(reg1) <= regb;
				end if;
				
				mem_step := '0';
				state := RINST;
				stmem <= '0';
				address <= std_logic_vector(regI);
			end if;
		end if;
	end process;	
end architecture;
