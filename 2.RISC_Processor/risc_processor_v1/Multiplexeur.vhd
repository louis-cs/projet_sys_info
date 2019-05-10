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
library Processor_Lib;
use Processor_Lib.Processor_Constants;

entity Multiplexeur is
    Port ( OP     : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           B      : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
			  val_B  : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           output : out STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0));
end Multiplexeur;

architecture Behavioral of Multiplexeur is

begin
	with OP select
		output <= val_B when X"05", 	--COP
					 B when X"06", 		--AFC
					 val_B when X"01", --ADD
					 val_B when X"02", --MUL
					 val_B when X"03", --SUB
					 val_B when X"04", --DIV
				    B when others;
end Behavioral;

