library ieee;
use ieee.std_logic_1164.all;

entity opcode_decoder is
    port (
        -- Input: 8-bit opcode from instruction memory (I[15]..I[8])
        opcode_in     : in  std_logic_vector(7 downto 0); 

        -- 23 One-Hot Encoded Instruction Outputs
        NOOP        : out std_logic;
        INPUTC      : out std_logic;
        INPUTCF     : out std_logic;
        INPUTD      : out std_logic;
        INPUTDF     : out std_logic;
        MOVE        : out std_logic;
        LOADI_LOADP : out std_logic;
        ADD         : out std_logic;
        ADDI        : out std_logic;
        SUB         : out std_logic;
        SUBI        : out std_logic;
        LOAD        : out std_logic;
        LOADF       : out std_logic; -- From unused opcode 1100
        STORE       : out std_logic;
        STOREF      : out std_logic;
        SHIFTL      : out std_logic;
        SHIFTR      : out std_logic;
        CMP         : out std_logic; -- From unused opcode 1111
        JUMP        : out std_logic;
        BRE_BRZ     : out std_logic;
        BRNE_BRNZ   : out std_logic;
        BRG         : out std_logic;
        BRGE        : out std_logic;
		  
		  X1          : out std_logic;
        X0          : out std_logic;
        Y1          : out std_logic;
        Y0          : out std_logic
    );
end entity opcode_decoder;

architecture Behavioral of opcode_decoder is
    -- Internal signals for clarity
    signal primary_opcode   : std_logic_vector(3 downto 0);
    signal secondary_bits : std_logic_vector(3 downto 0);
begin

    -- Map the 8-bit input to its logical parts
    primary_opcode   <= opcode_in(7 downto 4); -- I[15..12]
    secondary_bits   <= opcode_in(3 downto 0); -- I[11..8]

    -- Logic for the 4 pass-through outputs.
    -- These are simple concurrent assignments that map I[11..8].
    X1 <= secondary_bits(3); -- Maps to I[11]
    X0 <= secondary_bits(2); -- Maps to I[10]
    Y1 <= secondary_bits(1); -- Maps to I[9]
    Y0 <= secondary_bits(0); -- Maps to I[8]

    -- This process describes the combinational logic for the 23 one-hot outputs
    process(primary_opcode, secondary_bits)
    begin
        -- Start by setting all 23 one-hot outputs to '0' (inactive).
        NOOP        <= '0';
        INPUTC      <= '0';
        INPUTCF     <= '0';
        INPUTD      <= '0';
        INPUTDF     <= '0';
        MOVE        <= '0';
        LOADI_LOADP <= '0';
        ADD         <= '0';
        ADDI        <= '0';
        SUB         <= '0';
        SUBI        <= '0';
        LOAD        <= '0';
        LOADF       <= '0';
        STORE       <= '0';
        STOREF      <= '0';
        SHIFTL      <= '0';
        SHIFTR      <= '0';
        CMP         <= '0';
        JUMP        <= '0';
        BRE_BRZ     <= '0';
        BRNE_BRNZ   <= '0';
        BRG         <= '0';
        BRGE        <= '0';

        -- This CASE statement implements the 4-to-16 primary decoder
        -- based on the primary_opcode (I[15..12])
        case primary_opcode is
        
            -- Y0: NOOP
            when "0000" => 
                NOOP <= '1';
            
            -- Y1: "INPUT" group
            when "0001" => 
                -- Nested 2-to-4 decoder using secondary_bits(1 downto 0) (I[9..8])
                case secondary_bits(1 downto 0) is
                    when "00" => INPUTC  <= '1';
                    when "01" => INPUTCF <= '1';
                    when "10" => INPUTD  <= '1';
                    when "11" => INPUTDF <= '1';
                    when others => null;
                end case;

            -- Y2: MOVE
            when "0010" =>
                MOVE <= '1';

            -- Y3: LOADI/LOADP
            when "0011" =>
                LOADI_LOADP <= '1';

            -- Y4: ADD
            when "0100" =>
                ADD <= '1';

            -- Y5: ADDI
            when "0101" =>
                ADDI <= '1';

            -- Y6: SUB
            when "0110" =>
                SUB <= '1';

            -- Y7: SUBI
            when "0111" =>
                SUBI <= '1';

            -- Y8: LOAD
            when "1000" =>
                LOAD <= '1';

            
            when "1001" =>
                LOADF <= '1';
        
            -- Y10: STORE
            when "1010" =>
                STORE <= '1';

            -- Y11: STOREF
            when "1011" =>
                STOREF <= '1';

            -- Y12: Assigned to LOADF (based on 23-instruction requirement)
				when "1100"=>
				 case secondary_bits(0) is
                    when '0' => SHIFTL <= '1';
                    when '1' => SHIFTR <= '1';
                    when others => null;
                end case;
            

            -- Y13: "BRANCH" group
            when "1101" =>
				      CMP<='1';

            -- Y14: JUMP
            when "1110" =>
                JUMP <= '1';

            -- Y15: Assigned to CMP (based on 23-instruction requirement)
            when "1111" =>
                case secondary_bits(1 downto 0) is
                    when "00" => BRE_BRZ   <= '1';
                    when "01" => BRNE_BRNZ <= '1';
                    when "10" => BRG       <= '1';
                    when "11" => BRGE      <= '1';
                    when others => null;
                end case;

            -- Default case
            when others => 
                null; -- All 23 one-hot outputs remain '0'
        
        end case;
    end process;

end architecture Behavioral;