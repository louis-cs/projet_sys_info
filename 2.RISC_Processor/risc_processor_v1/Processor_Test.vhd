--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:29:08 05/13/2019
-- Design Name:   
-- Module Name:   /home/mhiri/Documents/git_projects/projet_sys_info/2.RISC_Processor/risc_processor_v1/Processor_Test.vhd
-- Project Name:  risc_processor_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processor
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
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY Processor_Test IS
END Processor_Test;
 
ARCHITECTURE behavior OF Processor_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processor
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
			NUM_INST : STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
	signal NUM_INST : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processor PORT MAP (
          CLK => CLK,
          RST => RST,
			 num_inst => NUM_INST
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
		
-- On exécute l'instruction n°0
		RST <='1';
--		wait;
-- FIN test AFC

-- On exécute l'instruction n°1
		wait for CLK_period*10;
		NUM_INST <= NUM_INST + 1;
--		wait;
--	FIN test LOAD

-- On exécute l'instruction n°2
		wait for CLK_period*10;
		NUM_INST <= NUM_INST + 1;
--		wait;
--	FIN test UAL et STORE

-- On exécute l'instruction n°3
		wait for CLK_period*10;
		NUM_INST <= NUM_INST + 1;
--      wait;
--	FIN test COP

-- On exécute l'instruction n°4
		wait for CLK_period*10;
		NUM_INST <= NUM_INST + 1;
		
-- On exécute l'instruction n°5
		wait for CLK_period*10;
		NUM_INST <= NUM_INST + 1;
		wait;
--	FIN test n°0

   end process;

END;
