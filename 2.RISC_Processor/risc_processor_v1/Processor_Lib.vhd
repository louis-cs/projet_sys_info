----------------------------------------------------------------------------------
-- Company downto
-- Engineer:
--
-- Create Date:    13:46:17 04/19/2019
-- Design Name:
-- Module Name:    Processor_Lib
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

package Processor_Constants is
  constant NB_REGISTRES       : NATURAL := 16;
  constant TAILLE_REGISTRES   : NATURAL := 8;
  constant NBIT_NUM_REGISTRES : NATURAL := 4;
  constant FORMAT_INST        : NATURAL := 8;
end Processor_Constants;
