----------------------------------------------------------------------------------
-- Company downto  
-- Engineer: 
-- 
-- Create Date:    13:46:17 04/19/2019 
-- Design Name: 
-- Module Name:    MemoryInstructions - Behavioral 
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

entity MemoryInstructions is
    Port ( ins_di : in  STD_LOGIC_VECTOR (31 downto 0);
			  PC     : in  STD_LOGIC_VECTOR (15 downto 0);
			  A      : out STD_LOGIC_VECTOR (15 downto 0);
			  OP     : out STD_LOGIC_VECTOR (7  downto 0);
			  B      : out STD_LOGIC_VECTOR (15 downto 0);
			  C      : out STD_LOGIC_VECTOR (15 downto 0)
			  );
		
end MemoryInstructions;




architecture Behavioral of MemoryInstructions is
	constant OP_ADD : STD_LOGIC_VECTOR(7 downto 0):= X"01";
	constant OP_MUL : STD_LOGIC_VECTOR(7 downto 0):= X"02";
	constant OP_AFC : STD_LOGIC_VECTOR(7 downto 0):= X"06";
	-- ...
	-- Ici on charge le programme
begin
	-- On récup l'instruction dans ins_di
	
	OP <= ins_di(31 downto 24);
	
	A  <= ins_di(23 downto 8) when ins_di(31 downto 24)=X"08" else -- case STORE
	      X"0000" & ins_di(23 downto 16);
	
	B  <= ins_di(15 downto 0) when ins_di(31 downto 24)=X"06" or ins_di(31 downto 24)=X"07" else -- case AFC, LOAD
	      X"0000" & ins_di(15 downto 8);

	C  <= "XXXX" when ins_di(31 downto 24)=X"06" or ins_di(31 downto 24)=X"07" else -- case AFC, LOAD
	      X"0000" & ins_di(7 downto 0);
end Behavioral;

