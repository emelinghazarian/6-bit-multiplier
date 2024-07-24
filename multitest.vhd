--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:23:07 03/16/2023
-- Design Name:   
-- Module Name:   /home/ise/adder1/multitest.vhd
-- Project Name:  adder1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multi6x6
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
 
ENTITY multitest IS
END multitest;
 
ARCHITECTURE behavior OF multitest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi6x6
    PORT(
         a6 : IN  std_logic_vector(5 downto 0);
         b6 : IN  std_logic_vector(5 downto 0);
         p : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a6 : std_logic_vector(5 downto 0) := (others => '0');
   signal b6 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal p : std_logic_vector(11 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi6x6 PORT MAP (
          a6 => a6,
          b6 => b6,
          p => p
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		a6(0) <= '0';
		a6(1) <= '1';
		a6(2) <= '1';
		a6(3) <= '0';
		a6(4) <= '1';
		a6(5) <= '0';
		
		b6(0) <= '0';
		b6(1) <= '1';
		b6(2) <= '0';
		b6(3) <= '1';
		b6(4) <= '1';
		b6(5) <= '1';
	

      wait;
   end process;

END;
