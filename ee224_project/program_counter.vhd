library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity program_counter is
    port (
        clock   : in  std_logic;                    -- System Clock
        reset   : in  std_logic;                    -- Asynchronous Reset
        c3      : in  std_logic;                    -- PC Write Enable (Control Signal C3)
        pc_in   : in  std_logic_vector(5 downto 0); -- 6-bit Next PC Address (from PC Logic)
        pc_out  : out std_logic_vector(5 downto 0)  -- 6-bit Current PC Address (to Code Memory)
    );
end program_counter;

architecture Behavioral of program_counter is
begin

    process(clock, reset)
    begin
        if reset = '0' then
            -- Reset the PC to address 0
            pc_out <= (others => '0');
            
        elsif rising_edge(clock) then
            -- Update the PC only if C3 (Write Enable) is active
            if c3 = '1' then
                pc_out <= pc_in;
            end if;
        end if;
    end process;

end Behavioral;