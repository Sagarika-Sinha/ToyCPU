library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity code_memory is
    port (
        clock        : in  std_logic;                     -- System Clock
        c1 : in  std_logic;                     -- Write Enable
        write_select   : in  std_logic_vector(5 downto 0);  -- Write Address
        input   : in  std_logic_vector(15 downto 0); -- Write Data
        read_select    : in  std_logic_vector(5 downto 0);  -- Read Address (PC)
        instruction  : out std_logic_vector(15 downto 0)  -- Instruction Output
    );
end code_memory;

architecture Behavioral of code_memory is

    type memory_array is array (0 to 63) of std_logic_vector(15 downto 0);

    signal ram : memory_array := (
	     1  => b"1110000000011110",
		  
        
        32  => b"0011000000000000", 
        

        33 => b"1000110000001000", 
        
        
        34 => b"0011010000000000", 
        

        35 => b"1101001100000000", 
        
 
        36 => b"1111001100001110", 
        
      
        37  => b"1000110000001000", 
        

        38 => b"0110110000000000", 
        
       
        39 => b"1101011100000000", 
        
       
        40 => b"1111001100001000", 
        
        
        41 => b"1001100100000000", 
        
       
        42 => b"1001110100000001", 
        
        
        43 => b"1101111000000000", 
        
        
        44 => b"1111001100000010", 
        
       
        45 => b"1011110100000000", 
        
       
        46 => b"1011100100000001", 
        
        47 => b"0101010000000001", 
        
        48 => b"1110000011110100", 
        
        
        49 => b"0101000000000001", 
       
        50 => b"1110000011101110", 
        
        
        51 => b"0000000000000000",
        
        others => (others => '0')
    );

begin

    process(clock)
    begin
        if rising_edge(clock) then
            -- Write Port
            if c1 = '1' then
                ram(to_integer(unsigned(write_select))) <= input;
            end if;
              end if;
    end process; 
            instruction <= ram(to_integer(unsigned(read_select)));


end Behavioral;