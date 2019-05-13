----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:59:25 04/19/2019
-- Design Name:
-- Module Name:    ALU - Behavioral
-- Project Name:
-- Target Devices:
-- Tool versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- S_additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ALU is
    generic(N: natural := 8);
    port ( Ctrl_ALU : in  STD_LOGIC_VECTOR  (2 downto 0);
           A        : in  STD_LOGIC_VECTOR  (TAILLE_REGISTRES-1 downto 0);
           B        : in  STD_LOGIC_VECTOR  (TAILLE_REGISTRES-1 downto 0);
           S        : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           FLAGS    : out  STD_LOGIC_VECTOR (4 downto 0));
        -- FLAGS = (N, O, Z, C)
end ALU;

architecture Behavioral of ALU is

   signal  S_add   : STD_LOGIC_VECTOR(N     downto 0);
	signal  S_sub   : STD_LOGIC_VECTOR(N-1   downto 0);
	signal  S_mul   : STD_LOGIC_VECTOR(N*2-1 downto 0);
	signal  S_eqz   : STD_LOGIC;
	signal  S_noz   : STD_LOGIC;
	signal  S_inf   : STD_LOGIC;

	constant Zeros  : STD_LOGIC_VECTOR(N*2-1 downto 0) := (others => '0');

begin
	S 	<= S_add(N-1 downto 0) 				when Ctrl_ALU="001" else
			S_sub 								when Ctrl_ALU="010" else
			S_mul(N-1 downto 0) 				when Ctrl_ALU="011" else
			Zeros(N-2 downto 0) & S_eqz 	when Ctrl_ALU="100" else
			Zeros(N-2 downto 0) & S_noz	when Ctrl_ALU="101" else
			Zeros(N-2 downto 0) & S_inf	when Ctrl_ALU="110" else
			Zeros(N-1 downto 0) ;

	S_add  <=  ('0' & A) + ('0' & B);
	S_sub  <=  A - B;
	S_mul  <=  A * B;

	S_eqz <= '1' when A /= Zeros(N-1 downto 0)  else '0' ;

	S_noz <= '1' when A  = Zeros(N-1 downto 0)  else '0' ;

	S_inf <= '1' when A < B        else '0' ;

    ---------------- FLAGS ----------------
    -- N : Negative
    FLAGS(0) <= '1'	when Ctrl_ALU="001" and S_add(S_add'high-1) = '1'    else -- S_add
                '1'	when Ctrl_ALU="010" and S_sub(S_sub'high) = '1'      else -- S_sub
                '1' 	when Ctrl_ALU="011" and S_mul(S_mul'high) = '1'      else -- S_mul
                '0';
    -- O : Overflow
	FLAGS(1) <= '1'	when Ctrl_ALU="001" and S_add = x"0"&Zeros(N-1 downto 0)	else -- S_add
					'1'	when Ctrl_ALU="010" and S_sub = Zeros(N-1 downto 0) 		else -- S_sub
               '1'	when Ctrl_ALU="011" and S_mul = Zeros 	else -- S_mul
					'0';
    -- Z : Zero
    FLAGS(2) <= '1' when Ctrl_ALU="001" and (A(A'high) = B(B'high) and S_add(S_add'high-1) /= A(A'high))	 		else -- S_add
					 '1' when Ctrl_ALU="010" and (A(A'high) = '0' and B(B'high) = '1' and S_sub(S_sub'high) = '1') 	else -- S_sub
                '1' when Ctrl_ALU="010" and (A(A'high) = '1' and B(B'high) = '0' and S_sub(S_sub'high) = '0') 	else -- S_sub
					 '1' when Ctrl_ALU="011" and S_mul(N*2-1 downto N) /= Zeros(N-1 downto 0) else -- S_mul
					 '0';
    -- C : Carry
	FLAGS(3) <= '1' when Ctrl_ALU="001" and S_add(S_add'high) = '1' else -- S_add
			    '0';


-- begin
--     S_buf <= A + B;
--     S_S_add <= when A(15)='0' and B(15)='0' else -- A and B positives
--              when A(15)='1' and B(15)='0' else -- A negative and B positive
--              when A(15)='0' and B(15)='1' else -- A positive and B negative
--              when A(15)='1' and B(15)='1' else -- A and B negatives
--
--     S_buf <= A * B;
--     S_mul <= S_buf(15 downto 0);
--
--     S_buf <= A - B;
--     S_sub <= S_buf(7 downto 0);
--
-- 	with Ctrl_ALU select
-- 		 when "0001", S <= S_S_add(15 downto 0); --S_add
-- 		 when "0010", S <= S_mul(15 downto 0); --S_mul
-- 		 when "0011", S <= S_sub(15 downto 0); --S_sub
-- 		 -- when ('0','1','1','1'), --DIV

end Behavioral;
