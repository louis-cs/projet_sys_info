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
			  P1_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P1_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P1_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P2_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  P2_C : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P3_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P4_OP : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P4_A : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           P4_B : in  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
			  ALEA : out STD_LOGIC);
end Superviseur;

architecture Behavioral of Superviseur is

begin
	process
	begin
		wait until CK' event and CK = '1'; --attend un front montant sur CK
--		P1:lecture et (P2:ecriture ou P3:ecriture ou P4:ecriture)
--		P2 ecriture
		if ((P2_OP = X"05" or --COP
			  P2_OP = X"06" or --AFC
			  P2_OP = X"07" or --LOAD
			  P2_OP = X"01" or --ADD
			  P2_OP = X"02" or --MUL
			  P2_OP = X"03" or --SUB
		 	  P2_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or 		 
			  (((P1_OP = X"01" or P1_OP = X"02" or P1_OP = X"03" or P1_OP = X"04") and (P2_A = P1_B or P2_A = P1_C)) 
			  or -- COP,STORE en lecture
			  ((P1_OP = X"05" or P1_OP = X"08") and (P2_A = P1_B)))) 
		or --	P3 ecriture
			((P3_OP = X"05" or --COP
			  P3_OP = X"06" or --AFC
			  P3_OP = X"07" or --LOAD
			  P3_OP = X"01" or --ADD
			  P3_OP = X"02" or --MUL
			  P3_OP = X"03" or --SUB
		 	  P3_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or
			  (((P1_OP = X"01" or P1_OP = X"02" or P1_OP = X"03" or P1_OP = X"04") and (P3_A = P1_B or P3_A = P1_C))
			  or -- COP,STORE en lecture
           ((P1_OP = X"05" or P1_OP = X"08") and (P3_A = P1_B))))
		or	--P4 en ecriture
			((P4_OP = X"05" or --COP
			  P4_OP = X"06" or --AFC
			  P4_OP = X"07" or --LOAD
			  P4_OP = X"01" or --ADD
			  P4_OP = X"02" or --MUL
			  P4_OP = X"03" or --SUB
		 	  P4_OP = X"04") 
			  and -- ADD,SUB,MUL,DIV en lecture or
			  (((P1_OP = X"01" or P1_OP = X"02" or P1_OP = X"03" or P1_OP = X"04") and (P4_A = P1_B or P4_A = P1_C))
			  or -- COP,STORE en lecture
           ((P1_OP = X"05" or P1_OP = X"08") and (P4_A = P1_B))))		
		then
			ALEA <= '1';
		else
			ALEA <= '0';
		end if;
	end process;


end Behavioral;

