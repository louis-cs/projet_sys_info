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
  port ( CK       : in STD_LOGIC;
			RST      : in STD_LOGIC;
			RW       : in STD_LOGIC;
			addresse : in STD_LOGIC_VECTOR  (TAILLE_ADDR-1 downto 0);
         INDATA   : in STD_LOGIC_VECTOR  (TAILLE_DATA-1 downto 0);
         OUTDATA  : out STD_LOGIC_VECTOR (TAILLE_DATA-1 downto 0));
end DataMemory;

architecture Behavioral of DataMemory is

    type DATAMEM is array (NATURAL range <>) of STD_LOGIC_VECTOR(TAILLE_DATA-1 downto 0);
    signal dm : DATAMEM(2**TAILLE_ADDR-1 downto 0);

begin
   process
	begin
        wait until CK' event and CK = '1'; --attend un front montant sur CK

        -- initialisation de la mémoire de données
        if RST = '1' then
            dm <= (others => X"00"); -- pas générique pour des tailles de N bits
        elsif RST = '0' then
            -- Read at @addresse
            if RW = '0' then OUTDATA      <= dm(addresse);  end if;
            -- Write at @addresse
            if RW = '1' then dm(addresse) <= INDATA;        end if;
        end if;
    end process;

    -- Bypass du composant
    -- OUTDATA <= INDATA;
end Behavioral;
