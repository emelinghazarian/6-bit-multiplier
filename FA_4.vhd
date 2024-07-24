----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:43 11/26/2022 
-- Design Name: 
-- Module Name:    FA_4 - Behavioral 
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

entity FA_4 is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
			  A4 : in  STD_LOGIC;
			  A5 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
			  B4 : in  STD_LOGIC;
			  B5 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S0 : out  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
			  S3 : out  STD_LOGIC;
			  S4 : out  STD_LOGIC;
			  S5 : out  STD_LOGIC);
end FA_4;

architecture Behavioral of FA_4 is

	component FA is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           ci : in  STD_LOGIC;
           co : out  STD_LOGIC;
           so : out  STD_LOGIC
           );
			  
end component;

signal c0, c1, c2, c3, c4: STD_LOGIC;

begin

	q1: FA PORT MAP
	( a1 => A0,
	  b1 => B0,
	  ci => '0',
	  co => c0,
	  so => S0);
	  
	  q2: FA PORT MAP
	( a1 => A1,
	  b1 => B1,
	  ci => c0,
	  co => c1,
	  so => S1);
	  
	  q3: FA PORT MAP
	( a1 => A2,
	  b1 => B2,
	  ci => c1,
	  co => c2,
	  so => S2);
	  
	  q4: FA PORT MAP
	( a1 => A3,
	  b1 => B3,
	  ci => c2,
	  co => c3,
	  so => S3);
	  
	  q5: FA PORT MAP
	( a1 => A4,
	  b1 => B4,
	  ci => c3,
	  co => c4,
	  so => S4);
	  
	  q6: FA PORT MAP
	( a1 => A5,
	  b1 => B5,
	  ci => c4,
	  co => Cout,
	  so => S5);
	  
	  
	
end Behavioral;

