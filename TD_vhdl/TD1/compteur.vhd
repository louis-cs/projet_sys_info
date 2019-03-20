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

begin
	process
	begin
		if RST = '0' then 
			Dout <= 0; -- FAUX il faut mettre Dout à 0
		end if;
		--on attend un front montant de l'horloge
		wait until CK' event and CK = '1';
		if LOAD = '1' then
			Dout <= Din;
		end if;
		if LOAD = '0' and EN = '0' and SENS = '1' then
			--on incrémente le compteur
		end if;
		if LOAD = '0' and EN = '0' and SENS = '0' then
			--on décrémente le compteur
		end if;
	end process;
end Behavioral;

