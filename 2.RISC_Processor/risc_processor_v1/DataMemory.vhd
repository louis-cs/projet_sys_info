----------------------------------------------------------------------------------
-- Company downto
-- Engineer:
--
-- Create Date:    13:46:17 04/19/2019
-- Design Name:
-- Module Name:    DataMemory - Behavioral
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

entity DataMemory is
  generic(TAILLE_ADDR: NATURAL := 8;
          TAILLE_DATA: NATURAL := 8);
  port ( addresse : in STD_LOGIC_VECTOR (TAILLE_ADDR-1 downto 0);
         INDATA   : in STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0);
         RW       : in STD_LOGIC;
         RST      : in STD_LOGIC;
         CK       : in STD_LOGIC;
         OUTDATA  : in STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

  begin

end Behavioral;
