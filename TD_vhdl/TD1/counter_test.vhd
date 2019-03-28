--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:07 03/27/2019
-- Design Name:   
-- Module Name:   /home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/counter_test.vhd
-- Project Name:  TD1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compteur
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY counter_test IS
END counter_test;
 
ARCHITECTURE behavior OF counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compteur
    PORT(
         CK : IN  std_logic;
         RST : IN  std_logic;
         LOAD : IN  std_logic;
         SENS : IN  std_logic;
         EN : IN  std_logic;
         Din : IN  std_logic_vector(7 downto 0);
         Dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CK : std_logic := '0';
   signal RST : std_logic := '0';
   signal LOAD : std_logic := '0';
   signal SENS : std_logic := '0';
   signal EN : std_logic := '0';
   signal Din : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dout : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant CK_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compteur PORT MAP (
          CK => CK,
          RST => RST,
          LOAD => LOAD,
          SENS => SENS,
          EN => EN,
          Din => Din,
          Dout => Dout
        );

   -- Clock process definitions
   CK_process :process
   begin
		CK <= '0';
		wait for CK_period/2;
		CK <= '1';
		wait for CK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CK_period*10;
		
		SENS <= '1';
		RST <= '1';
	
      wait for CK_period*10;
		
		Din <= x"AB";
		LOAD <= '1';
		
		wait for CK_period;
		
		LOAD <= '0';
		SENS <= '0';
		
		wait for CK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
