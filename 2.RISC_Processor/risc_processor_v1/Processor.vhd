----------------------------------------------------------------------------------
-- Company downto
-- Engineer:
--
-- Create Date:    13:46:17 04/19/2019
-- Design Name:
-- Module Name:    Processor - Behavioral
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

entity Processor is
end Processor;


architecture struct of Processor is
  component Pipeline
    port ( CK		  : in   STD_LOGIC;
           OP_in  : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
  		     A_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           B_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           C_in   : in   STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           OP_out : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           A_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           B_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0);
           C_out  : out  STD_LOGIC_VECTOR (FORMAT_INST-1 downto 0));
  end component;

  component RegistersBank
    port ( at_A : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_B : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_W : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           W    : in   STD_LOGIC;
           CK   : in   STD_LOGIC;
           RST  : in   STD_LOGIC;
           DATA : in   STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QA   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QB   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0));
  end component;

  component ALU
    port ( Ctrl_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           A        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           B        : in  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           S        : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           FLAGS    : out  STD_LOGIC_VECTOR (4 downto 0));
  end component;

  component DataMemory
    port ( addresse : in STD_LOGIC_VECTOR (TAILLE_ADDR-1 downto 0);
           INDATA   : in STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0);
           RW       : in STD_LOGIC;
           RST      : in STD_LOGIC;
           CK       : in STD_LOGIC;
           OUTDATA  : in STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0));
  end component;

end struct;
