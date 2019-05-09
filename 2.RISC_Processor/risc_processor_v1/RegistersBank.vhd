----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date:    14:56:07 04/19/2019
-- Design Name:
-- Module Name:    RegistersBank - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Utilisation de notre librairie
library Processor_Lib;
use Processor_Lib.Processor_Constants;

entity RegistersBank is
	 -- generic( NB_REGISTRES:natural := 16;
   --          TAILLE_REGISTRES:NATURAL := 8;
   --          NBIT_NUM_REGISTRES:NATURAL := 4);
    Port ( at_A : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_B : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           at_W : in   STD_LOGIC_VECTOR (NBIT_NUM_REGISTRES-1 downto 0);
           W    : in   STD_LOGIC;
           CK   : in   STD_LOGIC;
           RST  : in   STD_LOGIC;
           DATA : in   STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QA   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0);
           QB   : out  STD_LOGIC_VECTOR (TAILLE_REGISTRES-1 downto 0));
end RegistersBank;

architecture Behavioral of RegistersBank is
	type BANC_DE_REGISTRES is array (NATURAL range <>) of STD_LOGIC_VECTOR(TAILLE_REGISTRES-1 downto 0);
	signal br : BANC_DE_REGISTRES(NB_REGISTRES-1 downto 0);
begin
	process
	begin
		wait until CK' event and CK = '1'; --attend un front montant sur CK
    --initialisation du banc de registres
		if RST = '0' then
      br <= (others => X"00");
    --lecture de 2 registres at_A et at_B
    elsif W = '0' then
      QA <= br(to_integer(unsigned(at_A)));
      QB <= br(to_integer(unsigned(at_B)));
    --ecriture de DATA dans le registre at_W
    else
      br(to_integer(unsigned(at_W))) <= DATA;
    end if;
	end process;
end Behavioral;
