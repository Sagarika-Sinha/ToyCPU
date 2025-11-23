library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_tb is

end cpu_tb;

architecture Behavioral of cpu_tb is

    component cpu
        port(
            clock : in std_logic;
            reset : in std_logic
        );
    end component;

    -- Internal Signals to drive the CPU inputs
    signal clock : std_logic := '0';
    signal reset : std_logic := '0';

    -- Clock Period Definition (50 MHz = 20ns period)
    constant clock_period : time := 20 ns;

begin

    -- Instantiate the CPU (Unit Under Test)
    uut: component cpu
        port map (
            clock => clock,
            reset => reset
        );

    -- Clock Generation Process
    -- Toggles the clock signal every 10ns (Total period = 20ns)
    clock_process :process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

    -- Stimulus Process
    -- Controls the Reset signal and simulation duration
    stim_proc: process
    begin
        -- 1. Start Simulation Message
        report "Starting i281 CPU Simulation..." severity note;

        -- 2. Apply Reset
        reset <= '0'; -- Active Low Reset
        wait for 100 ns; -- Hold reset to ensure PC and Registers clear
        
        -- 3. Release Reset
        reset <= '1';
        report "Reset Released. CPU Running..." severity note;

        -- 4. Run Simulation
        -- The Bubble Sort algorithm is O(N^2). 
        -- With a 20ns clock, 200 us = 10,000 clock cycles.
        -- This is sufficient for sorting the 10-element array.
        wait for 5000 us;

        -- 5. Stop Simulation
        report "Simulation Finished." severity failure; 
        wait;
    end process;

end Behavioral;