----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:13 05/10/2019 
-- Design Name: 
-- Module Name:    Multiplexeur - Behavioral 
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

entity Multiplexeur is
	generic ( etage : Natural := 0);
   port ( OP     : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           B      : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
			  val_B  : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           output : out STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0));
end Multiplexeur;

architecture Behavioral of Multiplexeur is

begin
		output <= val_B when etage = 1 and OP = X"05" else --COP
					 B 	 when etage = 1 and OP = X"06" else --AFC
					 B		 when etage = 1 and OP = X"07" else --LOAD
					 val_B when etage = 1 and OP = X"08" else --STORE
					 val_B when etage = 1 else 
					 val_B when etage = 2 and OP = X"01" else --ADD
					 val_B when etage = 2 and OP = X"02" else --MUL
					 val_B when etage = 2 and OP = X"03" else --SUB
					 val_B when etage = 2 and OP = X"04" else --DIV
					 B 	 when etage = 2 else
					 B 	 when etage = 3 and OP = X"08" else --STORE
					 val_B when etage = 3 else
					 val_B when etage = 4 and OP = X"07" else --LOAD
					 val_B when etage = 4 and OP = X"00" else --NOP
					 B 	 when etage = 4 else
				    B;
end Behavioral;

