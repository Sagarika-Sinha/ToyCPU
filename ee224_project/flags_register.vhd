library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- i281 Flags Register
-- Stores the 4 status flags: Zero (Z), Carry (C), Negative (N), Overflow (O).
-- Updates only when C15 (Flags Write Enable) is High.

entity flags_register is
    port (
        clock   : in  std_logic; -- System Clock
        reset   : in  std_logic; -- System Reset

        flag_c    : in  std_logic;
        flag_o  : in  std_logic;																		
        flag_n  : in  std_logic;
        flag_z: in  std_logic;
		  c14:in std_logic;

        cf   : out std_logic;
        off   : out std_logic;
        nf   : out std_logic;
        zf   : out std_logic
    );
end flags_register;

architecture Behavioral of flags_register is
begin

    process(clock, reset)
    begin
       
        if reset = '0' then
            zf <= '0';
            cf <= '0';
            nf <= '0';
            off <= '0';
            
       
        elsif rising_edge(clock) then
            
            if c14 = '1' then
                zf <= flag_z;
                cf <= flag_c;
                nf <= flag_n;
                off <= flag_o;
            end if;
        end if;
    end process;

end Behavioral;