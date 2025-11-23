library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------
-- ENTITY: control_logic
--
-- This block implements the main combinational logic for the i281 CPU.
-- It receives pre-decoded instruction signals (y0-y22), register
-- fields (y23-y26), and status flags.
--
-- It generates the 18 control_logic signals (c1-c18) for the datapath.
--
-- This entity corresponds to the "control_logic" block highlighted in red
-- in the i281 CPU datapath diagram.
--------------------------------------------------------------------------------
entity control_logic is
    port (
        -- === INPUTS ===
        
        -- 23 "one-hot" instruction select lines from OpCode Decoder (y0-y22)
        opcode_outputs:in std_logic_vector(26 downto 0);
         reset: in std_logic;
        
        -- 4-bit status flags from the Flags register
        -- We assume: Flags(2)=ZF, Flags(1)=NF, Flags(0)=OF
        Flags         : in  std_logic_vector(3 downto 0); 

        -- === OUTPUTS (control_logic Signals c1 to c18) ===
        c1  : out std_logic; -- IMEM_WRITE_ENABLE
        c2  : out std_logic; -- PROGRAM_COUNTER_MUX
        c3  : out std_logic; -- PROGRAM_COUNTER_SELECT1
        c4  : out std_logic; -- REGISTERS_PORTB_SELECT1
        c5  : out std_logic; -- REGISTERS_PORTA_SELECT1
        c6  : out std_logic; -- REGISTERS_PORTB_SELECT0
        c7  : out std_logic; -- REGISTERS_PORTA_SELECT0
        c8  : out std_logic; -- REGISTERS_WRITE_SELECT1
        c9  : out std_logic; -- REGISTERS_WRITE_SELECT0
        c10 : out std_logic; -- REGISTERS_WRITE_ENABLE
        c11 : out std_logic; -- ALU_SOURCE_MUX
        c12 : out std_logic; -- ALU_SELECT1
        c13 : out std_logic; -- ALU_SELECT0
        c14 : out std_logic; -- FLAGS_WRITE_ENABLE
        c15 : out std_logic; -- ALU_RESULT_MUX
        c16 : out std_logic; -- DMEM_INPUT_MUX
        c17 : out std_logic; -- DMEM_WRITE_ENABLE
        c18 : out std_logic  -- REG_WRITEBACK_MUX
    );
end entity control_logic;

--------------------------------------------------------------------------------
-- ARCHITECTURE: Behavioral
--
-- This architecture uses concurrent signal assignments to implement
-- the sum-of-products logic for each control_logic signal (c1-c18).
--------------------------------------------------------------------------------
architecture Behavioral of control_logic is

    -- === Internal Signals for Readability ===

    -- 1. Instruction Aliases (y0 - y22)
    signal NOOP        : std_logic;
    signal INPUTC      : std_logic;
    signal INPUTCF    : std_logic;
    signal INPUTD      : std_logic;
    signal INPUTDF    : std_logic;
    signal MOVE       : std_logic;
    signal LOADI_LOADP : std_logic;
    signal ADD        : std_logic;
    signal ADDI       : std_logic;
    signal SUB        : std_logic;
    signal SUBI       : std_logic;
    signal LOAD       : std_logic;
    signal LOADF      : std_logic;
    signal STORE      : std_logic;
    signal STOREF     : std_logic;
    signal SHIFTL     : std_logic;
    signal SHIFTR     : std_logic;
    signal CMP        : std_logic;
    signal JUMP       : std_logic;
    signal BRE_BRZ    : std_logic;
    signal BRNE_BRNZ  : std_logic;
    signal BRG        : std_logic;
    signal BRGE       : std_logic;

    -- 2. Register Field Aliases (y23 - y26)
    signal X1, X0, Y1, Y0 : std_logic;

    -- 3. Flag Aliases
    signal ZF, NF, OFF     : std_logic;

    -- 4. Branch Condition Logic
    signal B1, B2, B3, B4 : std_logic;

begin

    -- === Concurrent Alias Assignments ===

    -- Map instruction select inputs (y0-y22) to named signals
    NOOP        <= opcode_outputs(26);
    INPUTC      <= opcode_outputs(25);
    INPUTCF    <= opcode_outputs(24);
    INPUTD      <= opcode_outputs(23);
    INPUTDF    <= opcode_outputs(22);
    MOVE        <= opcode_outputs(21);
    LOADI_LOADP <= opcode_outputs(20);
    ADD         <= opcode_outputs(19);
    ADDI        <= opcode_outputs(18);
    SUB         <= opcode_outputs(17);
    SUBI        <= opcode_outputs(16);
    LOAD        <= opcode_outputs(15);
    LOADF       <= opcode_outputs(14);
    STORE       <= opcode_outputs(13);
    STOREF      <= opcode_outputs(12);
    SHIFTL      <= opcode_outputs(11);
    SHIFTR      <= opcode_outputs(10);
    CMP         <= opcode_outputs(9);
    JUMP        <= opcode_outputs(8);
    BRE_BRZ     <= opcode_outputs(7);
    BRNE_BRNZ   <= opcode_outputs(6);
    BRG         <= opcode_outputs(5);
    BRGE        <= opcode_outputs(4);

    -- Map register field inputs (y23-y26)
    X1 <= opcode_outputs(3); -- y23
    X0 <= opcode_outputs(2); -- y24
    Y1 <= opcode_outputs(1); -- y25
    Y0 <= opcode_outputs(0); -- y26

    -- Map individual flags
    ZF <= Flags(0);
    NF <= Flags(1);
    OFF <= Flags(2);
    
    -- === Concurrent Logic Calculations ===
    
    -- Calculate Branch Conditions
    B1 <= ZF;                             -- B1 = ZF
    B2 <= not ZF;                         -- B2 = ~ZF
    B3 <= (not ZF) and (not (NF xor OFF)); -- B3 = ~ZF AND (NF XNOR OF)
    B4 <= not (NF xor OFF);                -- B4 = NF XNOR OF

    -- Generate control_logic Signals (c1-c18)
    -- Each signal is a combinational "OR" of the conditions that set it high.
    process(opcode_outputs, Flags, reset, 
        NOOP, INPUTC, INPUTCF, INPUTD, INPUTDF, MOVE, LOADI_LOADP,
        ADD, ADDI, SUB, SUBI, LOAD, LOADF, STORE, STOREF,
        SHIFTL, SHIFTR, CMP, JUMP, BRE_BRZ, BRNE_BRNZ, BRG, BRGE,
        X1, X0, Y1, Y0, B1, B2, B3, B4)
begin

    if reset = '0' then
        c1  <= '0'; c2  <= '0'; c3  <= '0'; c4  <= '0'; c5  <= '0';
        c6  <= '0'; c7  <= '0'; c8  <= '0'; c9  <= '0'; c10 <= '0';
        c11 <= '0'; c12 <= '0'; c13 <= '0'; c14 <= '0'; c15 <= '0';
        c16 <= '0'; c17 <= '0'; c18 <= '0';

    else
	 c1<=INPUTC or INPUTCF;
	 
    c2<=JUMP or (B1 AND BRE_BRZ) or (B2 AND BRNE_BRNZ) or (B3 AND BRG) or (B4 AND BRGE);

    c3 <= '1'; 

          
    c4 <= (X1 AND (INPUTCF OR INPUTDF OR ADD OR ADDI OR SUB OR SUBI OR SHIFTL OR SHIFTR OR CMP))
	       OR (Y1 AND (MOVE OR LOADF OR STOREF));

    c5 <= (X0 AND (INPUTCF OR INPUTDF OR ADD OR ADDI OR SUB OR SUBI OR SHIFTL OR SHIFTR OR CMP))
	       OR  (Y0 AND (MOVE OR LOADF OR STOREF));

    c6 <= (Y1 AND (ADD OR SUB OR CMP)) OR (X1 AND (STORE OR STOREF));

    c7 <= (Y0 AND ( ADD OR SUB OR CMP)) OR (X0 AND (STORE OR STOREF));

    c8 <= (MOVE or LOADI_LOADP or ADD or ADDI or SUB or 
           SUBI or LOAD or LOADF or SHIFTL or SHIFTR) and X1;
           
    c9 <= (MOVE or LOADI_LOADP or ADD or ADDI or SUB or 
           SUBI or LOAD or LOADF or SHIFTL or SHIFTR) and X0;
          
    c10 <= MOVE or LOADI_LOADP or ADD or ADDI or SUB or 
           SUBI or LOAD or LOADF or SHIFTL or SHIFTR;

    c11 <= INPUTCF or INPUTDF or MOVE or ADDI or SUBI or 
           LOADF or STOREF;

    c12 <= INPUTCF or INPUTDF or MOVE or ADD OR ADDI OR SUB or SUBI or 
           LOADF or STOREF OR CMP;
           
    c13 <= SUB OR SUBI OR SHIFTR OR CMP;
           
    c14 <= ADD or ADDI or SUB or SUBI or SHIFTL or SHIFTR or
           CMP;
           
    c15 <= INPUTC or INPUTD OR LOADI_LOADP or LOAD or STORE;
    
    c16 <= INPUTD or INPUTDF;

    c17 <= INPUTD or INPUTDF or STORE or STOREF;
    
    c18 <= LOAD or LOADF;
end if;
end process;

end architecture Behavioral;