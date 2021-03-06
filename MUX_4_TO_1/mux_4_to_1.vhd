--
--						   MUX 4 EM 1
--
--		    	AUTOR: EDWILDSON C. RODRIGUES
--
--				   	 DATA:27/07/2018
--

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4_to_1 is port(
A: in std_logic_vector(3 downto 0);
S: in std_logic_vector(1 downto 0);
O: out std_logic
);
end mux_4_to_1;

architecture hardware of mux_4_to_1 is 
begin
with S select
	O <= A(0) when "00",
		  A(1) when "01",
		  A(2) when "10",
		  A(3) when "11",
		  '0' when others;
end hardware;