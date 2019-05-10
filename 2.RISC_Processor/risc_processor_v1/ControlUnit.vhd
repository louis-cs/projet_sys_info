----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:19:48 05/10/2019 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( OP     : in  STD_LOGIC_VECTOR(FORMAT_INST-1 downto 0);
           output : out STD_LOGIC_VECTOR(3 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

begin
	with OP select
		output <= ('0','0','1','1') when X"06", --AFC -> W=1 RST=1
					 ('0','0','0','1') when X"01", --ADD
					 ('0','0','1','0') when X"02", --MUL
					 ('0','0','1','1') when X"03", --SUB
					 ('0','1','1','1') when X"04", --DIV
				    (others=>'0') when others;	 --AFC -> RST=0

end Behavioral;
