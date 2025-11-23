library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cpu is
port(clock,reset:in std_logic);
end entity;

architecture struct of cpu is
signal write_select,read_select,next_pc_off,next_pc,pc_in:std_logic_vector(5 downto 0);
signal input,instruction:std_logic_vector(15 downto 0);
signal reg_file_input,alu_in_1,alu_source_0,alu_in_2,alu_res,mux_out,dmem_out,dmem_in:std_logic_vector(7 downto 0);
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,
c17,c18,flag_c,flag_o,flag_n,flag_z:std_logic;
signal flags:std_logic_vector(3 downto 0);
signal opcode_output:std_logic_vector(26 downto 0);

begin
cm: entity work.code_memory port map(clock,c1,mux_out(5 downto 0),input,read_select,instruction);

opd:entity work.opcode_decoder port map(instruction(15 downto 8),opcode_output(26),
opcode_output(25),opcode_output(24),opcode_output(23),opcode_output(22),
opcode_output(21),opcode_output(20),opcode_output(19),opcode_output(18),
opcode_output(17),opcode_output(16),opcode_output(15),opcode_output(14),
opcode_output(13),opcode_output(12),opcode_output(11),opcode_output(10),
opcode_output(9),opcode_output(8),opcode_output(7),opcode_output(6),opcode_output(5),
opcode_output(4),opcode_output(3),opcode_output(2),opcode_output(1),opcode_output(0));

cl:entity work.control_logic port map(opcode_output,reset,flags,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,
c17,c18);

rf:entity work.register_file port map(clock,reset,reg_file_input,c8,c9,c10,c4,c5,alu_in_1,c6,c7,alu_source_0);

alu_source_mux: entity work.eight_bit_mux port map(alu_source_0,instruction(7 downto 0),c11,alu_in_2);

a:entity work.alu port map(alu_in_1,alu_in_2,c12,c13,flag_c,flag_o,flag_n,flag_z,alu_res);---to be seen later

f:entity work.flags_register port map(clock,reset,flag_c,flag_o,flag_n,flag_z,c14,flags(3),flags(2),flags(1),flags(0));----to be seen later

alu_result_mux:entity work.eight_bit_mux port map(alu_res,instruction(7 downto 0),c15,mux_out);

reg_writeback_mux:entity work.eight_bit_mux port map(mux_out,dmem_out,c18,reg_file_input);

pcul: entity work.pc_logic port map(read_select,instruction(5 downto 0),next_pc_off,next_pc);

pc_mux:entity work.six_bit_mux port map(next_pc,next_pc_off,c2,pc_in);

pc:entity work.program_counter port map(clock,reset,'1',pc_in,read_select);

dmem_input_mux: entity work.eight_bit_mux port map(alu_source_0,input(7 downto 0),c16,dmem_in);

dm:entity work.data_memory port map(clock,mux_out(3 downto 0),mux_out(3 downto 0),dmem_in,c17,dmem_out);

end struct;




