----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:01:35 11/26/2022 
-- Design Name: 
-- Module Name:    FA - Behavioral 
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

entity FA is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           so : out  STD_LOGIC);
end FA;

architecture Behavioral of FA is
component HA is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC;
           s: out  STD_LOGIC);
end component;
signal t1, t2, t3: STD_LOGIC;
begin

	u1: HA PORT MAP
	
	( a => a1,
	  b => b1,
	  c => t1,
	  s => t2
	  );
	  
	u2: HA PORT MAP
	
	( a => t2,
	  b => ci,
	  c => t3,
	  s => so
	  );

	co <= t1 or t3;
	
end Behavioral;

