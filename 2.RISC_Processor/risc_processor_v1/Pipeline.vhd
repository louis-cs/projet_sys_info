----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:43:02 04/19/2019
-- Design Name:
-- Module Name:    Pipeline - Behavioral
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

entity Pipeline is
  -- generic( FORMAT_INST:NATURAL := 8);
  Port ( CK		  : in   STD_LOGIC;
         OP_in  : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
		   A_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         B_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         C_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         OP_out : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         A_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         B_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
         C_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0));
end Pipeline;

architecture Behavioral of Pipeline is

begin
	process --car synchrone
	begin
		wait until CK' event and CK = '1'; --attend un front montant sur CK
		OP_out <= OP_in;
		A_out  <= A_in;
		B_out  <= B_in;
		C_out  <= C_in;
	end process;


end Behavioral;
