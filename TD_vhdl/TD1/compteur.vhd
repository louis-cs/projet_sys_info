----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:50:12 03/20/2019 
-- Design Name: 
-- Module Name:    compteur - Behavioral 
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

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteur is
	generic(N:natural := 8);
    Port ( CK   : in   STD_LOGIC;
           RST  : in   STD_LOGIC;
           LOAD : in   STD_LOGIC;
           SENS : in   STD_LOGIC;
           EN   : in   STD_LOGIC;
           Din  : in   STD_LOGIC_VECTOR(N-1 downto 0);
           Dout : out  STD_LOGIC_VECTOR(N-1 downto 0));
end compteur;

architecture Behavioral of compteur is

signal C : STD_LOGIC_VECTOR(N-1 downto 0);

begin
	process --car synchrone
	begin
		wait until CK' event and CK = '1'; --attend un front montant sur CK
		
		if RST = '0' then -- Pour moi, RST quand RST = 1
			C <= (others => '0');
		elsif LOAD = '1' then
			C    <= Din;
		elsif EN = '0' then 
			if SENS = '1' then
				C <= C + 1; --on incrémente le compteur
			else
				C <= C - 1; --on décrémente le compteur
			end if;
		end if;
	end process;
	Dout <= C;
end Behavioral;

