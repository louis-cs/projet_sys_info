library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.common.all;


entity instr_memory is
	generic(
		LEN_SEL: natural := 16;
		LEN_INSTR: natural := 32
	);
	port(
		sel: in std_logic_vector(LEN_SEL-1 downto 0);
		q: out std_logic_vector(LEN_INSTR-1 downto 0)
	);
end entity;


architecture beh of instr_memory is

	signal instr_memory: instrArray := init_rom(filename => "./mini1.hex");

-- ***** Test COP *****
--		signal instr_memory: instrArray := (
--		0 => x"060108FD", --AFC R1 <- 8
--		1 => x"06020302", --AFC R2 <- 3
--		2 => x"050301ff", --COP R3 <- R1
--		3 => x"050402ee", --COP R4 <- R2
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test ADD *****
--	signal instr_memory: instrArray := (
--		0 => x"060102FD", --AFC R1 <- 2
--		1 => x"06020502", --AFC R2 <- 5
--		2 => x"01030102", --ADD R3 <- R1 + R2
--		3 => x"08000102",
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test SUB *****
--		signal instr_memory: instrArray := (
--		0 => x"060108FD", --AFC R1 <- 8
--		1 => x"06020302", --AFC R2 <- 3
--		2 => x"03030102", --SUB R3 <- R1 - R2
--		3 => x"08000102",
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test MUL *****
--		signal instr_memory: instrArray := (
--		0 => x"060108FD", --AFC R1 <- 8
--		1 => x"06020302", --AFC R2 <- 3
--		2 => x"02030102", --MUL R3 <- R1 * R2
--		3 => x"08000102",
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test LOAD *****
--		signal instr_memory: instrArray := (
--		0 => x"060108FD", --AFC R1 <- 8
--		1 => x"070103EE", --LOAD R1 <- [@3]
--		2 => x"02030102",
--		3 => x"08000102",
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test STORE *****
--		signal instr_memory: instrArray := (
--		0 => x"060109FD", --AFC R1 <- 9
--		1 => x"080201EE", --STORE [@2] <- R1
--		2 => x"070302FF", --LOAD R3 <- [@2]
--		3 => x"08000102",
--		4 => x"06020001", 
--		5 => x"07010001",
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
-- ***** Test n°0 *****
--		signal instr_memory: instrArray := (
--		0 => x"060109FD", --AFC R1 <- 9
--		1 => x"060204EE", --AFC R2 <- 4
--		2 => x"02030102", --MUL R3 <- R1 * R2
--		3 => x"080203EE", --STORE [@2] <- R3
--		4 => x"070202EE", --LOAD R2 <- [@2]
--		5 => x"03060201", --SUB R6 <- R2 - R1
--		6 => x"00010102",
--		others => x"FFFFFFFF"
--	);
---- ***** Test n°1 *****
--		signal instr_memory: instrArray := (
--		0 => x"060109FD", --AFC R1 <- 9
--		1 => x"060204EE", --AFC R2 <- 4
--		2 => x"02030102", --MUL R3 <- R1 * R2
--		3 => x"080203EE", --STORE [@2] <- R3
--		4 => x"070202EE", --LOAD R2 <- [@2]
--		5 => x"03060201", --SUB R6 <- R2 - R1
--		6 => x"080106EE", --STORE [@1] <- R6
--		others => x"FFFFFFFF"
--	);
-- ***** Test n°2 *****
-- 		signal instr_memory: instrArray := (
--		0 => x"060109FD", --AFC R1 <- 9
--		1 => x"060204EE", --AFC R2 <- 4
--		2 => x"02030102", --MUL R3 <- R1 * R2
--		others => x"FFFFFFFF"
--	);
-- ***** Test mini1.asm *****
-- 		signal instr_memory: instrArray := (
--		0 => x"06000AFD", --AFC   0   10
--		1 => x"080000fd", --STORE 0   0
--		2 => x"070000df", --LOAD  0   0
--		3 => x"080100ff", --STORE 1   0
--		4 => x"060011aa", --AFC   0   17
--		5 => x"080200aa", --STORE 2   0
--		6 => x"070002bb", --LOAD  0   2
--		7 => x"080300aa", --STORE 3   0
--		8 => x"060001FD", --AFC   0   1
--		9 => x"080400aa", --STORE 4   0
--	  10 => x"070004bb", --LOAD  0   4
--	  11 => x"080500aa", --STORE 5   0
--	  12 => x"070001bb", --LOAD  0   1
--	  13 => x"080600aa", --STORE 6   0
--	  14 => x"070003bb", --LOAD  0   3
--	  15 => x"080700aa", --STORE 7   0
--	  16 => x"070006bb", --LOAD  0   6
--	  17 => x"070107bb", --LOAD  1   7
--	  18 => x"01020001", --ADD   2   0   1
--	  19 => x"080602aa", --STORE 6   2
--	  20 => x"070006bb", --LOAD  0   6
--	  21 => x"080500aa", --STORE 5   0
--	  22 => x"060012aa", --AFC   0   18
--	  23 => x"080800aa", --STORE 8   0
--	  24 => x"070008bb", --LOAD  0   8
--	  25 => x"080300aa", --STORE 3   0
--	  others => x"FFFFFFFF"
--	);
   
 


begin
	
	q <= instr_memory(to_integer(unsigned(sel)));

end architecture;

