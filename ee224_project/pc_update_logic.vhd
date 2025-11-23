library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity pc_logic is
    port (
        current_pc      : in  std_logic_vector(5 downto 0); 
        offset       : in  std_logic_vector(5 downto 0); 
        next_pc_off         : out std_logic_vector(5 downto 0); -- The calculated pointer for the next cycle
        next_pc : out std_logic_vector(5 downto 0)  -- The return address (Current PC + 1)
    );
end pc_logic;

architecture Behavioral of pc_logic is

    signal pc_plus_one_internal : std_logic_vector(5 downto 0);
    signal branch_target        : std_logic_vector(5 downto 0);
    signal mux_select           : std_logic;

begin

pc_plus_one_internal <= std_logic_vector(unsigned(current_pc) + 1);
next_pc              <= pc_plus_one_internal;
next_pc_off          <= std_logic_vector(unsigned(pc_plus_one_internal) + unsigned(offset));

end Behavioral;