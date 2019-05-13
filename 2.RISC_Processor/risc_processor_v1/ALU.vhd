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

-- Use our library 
library work;
use work.Processor_Constants.all;

entity ALU is
    port ( Ctrl_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           A        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           B        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           S        : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           FLAGS    : out  STD_LOGIC_VECTOR (4 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
--	with Ctrl_ALU select
--					 when ('0','0','0','1'), --ADD
--					 when ('0','0','1','0'), --MUL
--					 when ('0','0','1','1'), --SUB
--					 when ('0','1','1','1'), --DIV

end Behavioral;
