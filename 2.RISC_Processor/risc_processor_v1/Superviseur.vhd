----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:34 05/15/2019 
-- Design Name: 
-- Module Name:    Superviseur - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Utilisation de notre librairie
library work;
use work.Processor_Constants.all;

entity Superviseur is
    port ( CK : in STD_LOGIC;
			  P1_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_in_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_out_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_in_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_out_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P3_in_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_in_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_in_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P3_out_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_out_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_out_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  ALEA : out STD_LOGIC);
end Superviseur;

architecture Behavioral of Superviseur is

begin
	process
	begin
		wait until CK' event and CK = '1'; --attend un front montant sur CK
--		Probleme si 1er lecture et 2nd ecriture
--		P1_in et P1_out
--		P1_in et P2_in
--		P1_in et P2_out
--		P1_in et P3_in
--		P1_in et P3_out

--		P1:lecture et (P2:ecriture ou P3:ecriture ou P4:ecriture)
--		P2 ecriture

--		P1_in et P1_out
		if (((P1_out_OP = X"05" or --COP
			  P1_out_OP = X"06" or --AFC
			  P1_out_OP = X"07" or --LOAD
			  P1_out_OP = X"01" or --ADD
			  P1_out_OP = X"02" or --MUL
			  P1_out_OP = X"03" or --SUB
		 	  P1_out_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or 		 
			  (((P1_in_OP = X"01" or P1_in_OP = X"02" or P1_in_OP = X"03" or P1_in_OP = X"04") and (P1_out_A = P1_in_B or P1_out_A = P1_in_C)) 
			  or -- COP,STORE en lecture
			  ((P1_in_OP = X"05" or P1_in_OP = X"08") and (P1_out_A = P1_in_B))))
--		P1_in et P2_in
		or	((P2_in_OP = X"05" or --COP
			  P2_in_OP = X"06" or --AFC
			  P2_in_OP = X"07" or --LOAD
			  P2_in_OP = X"01" or --ADD
			  P2_in_OP = X"02" or --MUL
			  P2_in_OP = X"03" or --SUB
		 	  P2_in_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or
			  (((P1_in_OP = X"01" or P1_in_OP = X"02" or P1_in_OP = X"03" or P1_in_OP = X"04") and (P2_in_A = P1_in_B or P2_in_A = P1_in_C))
			  or -- COP,STORE en lecture
           ((P1_in_OP = X"05" or P1_in_OP = X"08") and (P2_in_A = P1_in_B))))
--		P1_in et P2_out
		or ((P2_out_OP = X"05" or --COP
			  P2_out_OP = X"06" or --AFC
			  P2_out_OP = X"07" or --LOAD
			  P2_out_OP = X"01" or --ADD
			  P2_out_OP = X"02" or --MUL
			  P2_out_OP = X"03" or --SUB
		 	  P2_out_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or 		 
			  (((P1_in_OP = X"01" or P1_in_OP = X"02" or P1_in_OP = X"03" or P1_in_OP = X"04") and (P2_out_A = P1_in_B or P2_out_A = P1_in_C)) 
			  or -- COP,STORE en lecture
			  ((P1_in_OP = X"05" or P1_in_OP = X"08") and (P2_out_A = P1_in_B))))
--		P1_in et P3_in
		or	((P3_in_OP = X"05" or --COP
			  P3_in_OP = X"06" or --AFC
			  P3_in_OP = X"07" or --LOAD
			  P3_in_OP = X"01" or --ADD
			  P3_in_OP = X"02" or --MUL
			  P3_in_OP = X"03" or --SUB
		 	  P3_in_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or
			  (((P1_in_OP = X"01" or P1_in_OP = X"02" or P1_in_OP = X"03" or P1_in_OP = X"04") and (P3_in_A = P1_in_B or P3_in_A = P1_in_C))
			  or -- COP,STORE en lecture
           ((P1_in_OP = X"05" or P1_in_OP = X"08") and (P3_in_A = P1_in_B))))
--		P1_in et P3_out
		or ((P3_out_OP = X"05" or --COP
			  P3_out_OP = X"06" or --AFC
			  P3_out_OP = X"07" or --LOAD
			  P3_out_OP = X"01" or --ADD
			  P3_out_OP = X"02" or --MUL
			  P3_out_OP = X"03" or --SUB
		 	  P3_out_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or 		 
			  (((P1_in_OP = X"01" or P1_in_OP = X"02" or P1_in_OP = X"03" or P1_in_OP = X"04") and (P3_out_A = P1_in_B or P3_out_A = P1_in_C)) 
			  or -- COP,STORE en lecture
			  ((P1_in_OP = X"05" or P1_in_OP = X"08") and (P3_out_A = P1_in_B)))))
		then
			ALEA <= '1';
		else
			ALEA <= '0';
		end if;
	end process;


end Behavioral;

