----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:31 03/15/2023 
-- Design Name: 
-- Module Name:    multi6x6 - Behavioral 
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

entity multi6x6 is
    Port ( a6 : in  STD_LOGIC_VECTOR (5 downto 0);
           b6 : in  STD_LOGIC_VECTOR (5 downto 0);
           p : out  STD_LOGIC_VECTOR (11 downto 0));
end multi6x6;

architecture Behavioral of multi6x6 is

component FA_4 is
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
			  
			  end component;
			  
signal t0, t1, t2, t3, t4: STD_LOGIC_VECTOR (5 downto 0);

signal Coutput: STD_LOGIC_VECTOR (4 downto 0);

begin

q1: FA_4 PORT MAP
	( 
	A0 => a6(1) and b6(0),
	A1 => a6(2) and b6(0),
	A2 => a6(3) and b6(0),
	A3 => a6(4) and b6(0),
	A4 => a6(5) and b6(0),
	A5 => '0',
	B0 =>  a6(0) and b6(1), 
	B1 =>  a6(1) and b6(1),
	B2 =>  a6(2) and b6(1),
	B3 =>  a6(3) and b6(1),
	B4 =>  a6(4) and b6(1),
	B5 =>  a6(5) and b6(1),
	Cin => '0',
	Cout => Coutput(0),
	s0 => t0(0),
	s1 => t0(1),
	s2 => t0(2),
	s3 => t0(3),
	s4 => t0(4),
	s5 => t0(5));


q2: FA_4 PORT MAP
	( 
	A0 => t0(1),
	A1 => t0(2),
	A2 => t0(3),
	A3 => t0(4),
	A4 => t0(5),
	A5 => Coutput(0),
	B0 =>  a6(0) and b6(2), 
	B1 =>  a6(1) and b6(2),
	B2 =>  a6(2) and b6(2),
	B3 =>  a6(3) and b6(2),
	B4 =>  a6(4) and b6(2),
	B5 =>  a6(5) and b6(2),
	Cin => '0',
	Cout => Coutput(1),
	s0 => t1(0),
	s1 => t1(1),
	s2 => t1(2),
	s3 => t1(3),
	s4 => t1(4),
	s5 => t1(5));


q3: FA_4 PORT MAP
	( 
	A0 => t1(1),
	A1 => t1(2),
	A2 => t1(3),
	A3 => t1(4),
	A4 => t1(5),
	A5 => Coutput(1),
	B0 =>  a6(0) and b6(3), 
	B1 =>  a6(1) and b6(3),
	B2 =>  a6(2) and b6(3),
	B3 =>  a6(3) and b6(3),
	B4 =>  a6(4) and b6(3),
	B5 =>  a6(5) and b6(3),
	Cin => '0',
	Cout => Coutput(2),
	s0 => t2(0),
	s1 => t2(1),
	s2 => t2(2),
	s3 => t2(3),
	s4 => t2(4),
	s5 => t2(5));
	
	
	q4: FA_4 PORT MAP
	( 
	A0 => t2(1),
	A1 => t2(2),
	A2 => t2(3),
	A3 => t2(4),
	A4 => t2(5),
	A5 => Coutput(2),
	B0 =>  a6(0) and b6(4), 
	B1 =>  a6(1) and b6(4),
	B2 =>  a6(2) and b6(4),
	B3 =>  a6(3) and b6(4),
	B4 =>  a6(4) and b6(4),
	B5 =>  a6(5) and b6(4),
	Cin => '0',
	Cout => Coutput(3),
	s0 => t3(0),
	s1 => t3(1),
	s2 => t3(2),
	s3 => t3(3),
	s4 => t3(4),
	s5 => t3(5));

	
	q5: FA_4 PORT MAP
	( 
	A0 => t3(1),
	A1 => t3(2),
	A2 => t3(3),
	A3 => t3(4),
	A4 => t3(5),
	A5 => Coutput(3),
	B0 =>  a6(0) and b6(5), 
	B1 =>  a6(1) and b6(5),
	B2 =>  a6(2) and b6(5),
	B3 =>  a6(3) and b6(5),
	B4 =>  a6(4) and b6(5),
	B5 =>  a6(5) and b6(5),
	Cin => '0',
	Cout => Coutput(4),
	s0 => t4(0),
	s1 => t4(1),
	s2 => t4(2),
	s3 => t4(3),
	s4 => t4(4),
	s5 => t4(5));
	
	p(0) <= a6(0) and b6(0);
	p(1) <= t0(0);
	p(2) <= t1(0);
	p(3) <= t2(0);
	p(4) <= t3(0);
	p(5) <= t4(0);
	p(6) <= t4(1);
	p(7) <= t4(2);
	p(8) <= t4(3);
	p(9) <= t4(4);
	p(10) <= t4(5);
	p(11) <= Coutput(4);
	
	
	
end Behavioral;

