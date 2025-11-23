library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_memory is
    port (
        clock        : in  std_logic;                     -- System Clock
        read_select : in  std_logic_vector(3 downto 0);  -- 4-bit Write Address
        write_select  : in  std_logic_vector(3 downto 0);  
        input     : in  std_logic_vector(7 downto 0);  
        c17 : in  std_logic;                    
        data_out     : out std_logic_vector(7 downto 0)
	
        	
    );
end data_memory;

architecture Behavioral of data_memory is

    -- Memory Size: 16 registers, 8 bits each (2^4 = 16)
    type memory_type is array (0 to 15) of std_logic_vector(7 downto 0);
    signal ram : memory_type := (
        0  => x"07", -- Index 0
        1  => x"03", -- Index 1
        2  => x"02", -- Index 2
        3  => x"01", -- Index 3
        4  => x"06", -- Index 4
        5  => x"04", -- Index 5
        6  => x"05", -- Index 6
        7  => x"08", -- Index 7
        8  => x"07", -- Index 8
        9  => x"00", -- Index 9
        
        
        10 => x"00", 
        
        -- Remaining addresses initialized to 0
        others => x"00"
    );

begin

    process(clock)
    begin
        if rising_edge(clock) then
            if c17 = '1' then
                ram(to_integer(unsigned(write_select))) <= input;
            end if;
				end if;
				
	end process;
    data_out <= ram(to_integer(unsigned(read_select)));
        
		 
end Behavioral;