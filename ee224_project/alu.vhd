library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
  port(
    A      : in  std_logic_vector(7 downto 0);
    B      : in  std_logic_vector(7 downto 0);
    c12    : in  std_logic;
    c13    : in  std_logic;


    FLAG_c : out std_logic;
    FLAG_o : out std_logic;
    FLAG_n : out std_logic;
    FLAG_z : out std_logic;

    alu_res : out std_logic_vector(7 downto 0)
  );
end entity;

architecture behavioral of alu is
begin
  process(A, B, c12, c13)
    variable Au, Bu : unsigned(7 downto 0);
    variable sum9   : unsigned(8 downto 0); -- For Carry (Unsigned math)
    variable tmp_s  : signed(8 downto 0);   -- For Overflow (Signed math)
    variable diff9  : signed(8 downto 0);   -- For Overflow (Signed math)
    variable sel    : std_logic_vector(1 downto 0);
    variable res_v  : std_logic_vector(7 downto 0);
    variable c_out  : std_logic;
    variable v_out  : std_logic;
  begin
    -- Asynchronous Reset

      sel := c12 & c13;
      Au := unsigned(A);
      Bu := unsigned(B);
      
      -- Defaults
      res_v := (others => '0');
      c_out := '0';
      v_out := '0';

      case sel is
        when "00" =>          -- SHL
          res_v := std_logic_vector(A(6 downto 0) & '0');
          c_out := A(7);

        when "01" =>          -- SHR
          res_v := std_logic_vector('0' & A(7 downto 1));
          c_out := A(0);

        when "10" =>          -- ADD
          -- 1. Unsigned Math for Carry
          sum9  := ("0" & Au) + ("0" & Bu);
          res_v := std_logic_vector(sum9(7 downto 0));
          c_out := sum9(8);

          -- 2. Signed Math for Overflow (The FIX)
          -- We resize inputs to 9 bits to preserve the sign (Sign Extension)
          tmp_s := resize(signed(A), 9) + resize(signed(B), 9);
          
          -- Check if result is outside -128 to +127 range
          if (tmp_s > 127) or (tmp_s < -128) then
            v_out := '1';
          end if;

        when others =>        -- SUB / CMP
          -- 1. Result Calculation
          res_v := std_logic_vector(Au - Bu);

          -- 2. Carry Logic (i281 Standard: C=1 means No Borrow, C=0 means Borrow)
          if Au < Bu then
            c_out := '0';   -- Borrow occurred
          else
            c_out := '1';   -- No borrow
          end if;

        
			 v_out := (A(7) xor B(7)) and (A(7) xor res_v(7));


         
      end case;

      -- Outputs
      alu_res <= res_v;
      
      -- Zero Flag
      if res_v = "00000000" then
        FLAG_z <= '1';
      else 
        FLAG_z <= '0';
      end if;

      FLAG_n <= res_v(7); -- Negative Flag
      FLAG_c <= c_out;
      FLAG_o <= v_out;
      
  end process;
end architecture;