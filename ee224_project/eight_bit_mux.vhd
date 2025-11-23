library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--following 0 1 ordering top 0 bottom 1
entity eight_bit_mux is
port(a,b:in std_logic_vector(7 downto 0);s:in std_logic;
output:out std_logic_vector(7 downto 0));
end entity;

architecture struct of eight_bit_mux is
begin
output<=a when s<='0' else b;
end struct;

