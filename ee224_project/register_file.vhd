

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_File is
    port (
        -- Global Signals
        clock           : in  std_logic;                                 -- Clock for synchronous write
        reset           : in  std_logic;                                 -- Reset to clear all registers
        
        -- Write Port (Control Unit outputs C8, C9, C10)
        reg_file_input  : in  std_logic_vector(7 downto 0);            -- 8-bit data to be written (Write_Data)
        c8              : in  std_logic;                                 -- Write Select MSB (C8)
        c9              : in  std_logic;                                 -- Write Select LSB (C9)
        c10             : in  std_logic;                                 -- Write enable signal (C10)
        
        -- Read Port 0 (Controls C4, C5)
        c4              : in  std_logic;                                 -- Read 0 Select MSB (C4)
        c5              : in  std_logic;                                 -- Read 0 Select LSB (C5)
        alu_in_1        : out std_logic_vector(7 downto 0);            -- Output data for ALU Input 1 (Port 0)
        
        -- Read Port 1 (Controls C6, C7)
        c6              : in  std_logic;                                 -- Read 1 Select MSB (C6)
        c7              : in  std_logic;                                 -- Read 1 Select LSB (C7)
        alu_source_0    : out std_logic_vector(7 downto 0)             -- Output data for ALU Source 0 (Port 1)
    );
end entity Register_File;

architecture Behavioral of Register_File is
    
    -- Define the Register File as an array of 8-bit vectors
    -- Indices 0, 1, 2, 3 correspond to Registers A, B, C, D
    type Reg_Array is array (0 to 3) of std_logic_vector(7 downto 0);
    signal Registers : Reg_Array;
    
    -- Intermediate signals to explicitly concatenate the control bits.
    signal Write_Select_Vector : std_logic_vector(1 downto 0);
    signal Read0_Select_Vector : std_logic_vector(1 downto 0);
    signal Read1_Select_Vector : std_logic_vector(1 downto 0);

begin
    
    -- *** Concurrent Concatenation Assignments ***
    -- These assignments group the individual control bits (C4-C9) into 2-bit selector vectors.
    Write_Select_Vector <= c8 & c9; 
    Read0_Select_Vector <= c4 & c5; 
    Read1_Select_Vector <= c6 & c7; 
    
    
    -- *** 1. Synchronous Write Logic (Clocked Process) ***
    Process_Write : process(clock, reset)
    begin
        if reset = '0' then
            -- Reset: Clear all registers (A, B, C, D) to zero
            Registers <= (others => (others => '0'));
            
        elsif rising_edge(clock) then
            if c10 = '1' then -- Write Enable is active (C10)
                -- Use the pre-concatenated 2-bit vector for selection.
                case Write_Select_Vector is
                    when "00" => Registers(0) <= reg_file_input; -- Register A
                    when "01" => Registers(1) <= reg_file_input; -- Register B
                    when "10" => Registers(2) <= reg_file_input; -- Register C
                    when "11" => Registers(3) <= reg_file_input; -- Register D
                    when others => null; 
                end case;
            end if;
        end if;
    end process Process_Write;
    
    -- *** 2. Asynchronous Read Logic (Combinational Processes) ***
    
    -- Port 0 Read: Selects data for alu_in_1 based on C4, C5
    Process_Read0 : process(Read0_Select_Vector, Registers)
    begin
        -- The register value is available immediately when the selector or register contents change.
        case Read0_Select_Vector is
            when "00" => alu_in_1 <= Registers(0);  -- Read Register A
            when "01" => alu_in_1 <= Registers(1);  -- Read Register B
            when "10" => alu_in_1 <= Registers(2);  -- Read Register C
            when "11" => alu_in_1 <= Registers(3);  -- Read Register D
            when others => alu_in_1 <= (others => '0');
        end case;
    end process Process_Read0;
    
    -- Port 1 Read: Selects data for alu_source_0 based on C6, C7
    Process_Read1 : process(Read1_Select_Vector, Registers)
    begin
        -- The register value is available immediately when the selector or register contents change.
        case Read1_Select_Vector is 
            when "00" => alu_source_0 <= Registers(0);  -- Read Register A
            when "01" => alu_source_0 <= Registers(1);  -- Read Register B
            when "10" => alu_source_0 <= Registers(2);  -- Read Register C
            when "11" => alu_source_0 <= Registers(3);  -- Read Register D
            when others => alu_source_0 <= (others => '0');
        end case;
    end process Process_Read1;
    
end architecture Behavioral;