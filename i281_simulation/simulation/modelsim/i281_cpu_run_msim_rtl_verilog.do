transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/seven_seg_decoder_BUSOUT.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ONES.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/BIOS_Hardcoded_Low.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/BIOS_Hardcoded_High.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/User_Data.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/User_Code_Low.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/User_Code_High.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/16Wide4To1BusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/4x8BitRegisters.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/4WideBusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/4to16DecoderWithEnable.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/2to4DecoderWithEnable.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/2BitDecoderWithEnable.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/1to2DecoderWithEnable.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/SixteenWideBusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ShiftNoDff.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Registers16bit.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Registers8bit.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ReadOnly_16x16_Register_File_Low.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ReadOnly_16x16_Register_File_High.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Opcode_Decoder.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/IMEM_low.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/IMEM_high.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/IMEM.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/FullAdder.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Flag_Registers.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/DMEM.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Clock_dividers.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Clock_divider_4_16_and_64.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Clock_divider_512.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/6bitAdder.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/C16to1BusMUX.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/BusNot.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Block3.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ALU_Flag_Calculator.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/8WidWideBusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/ALU.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/7WidWideBusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/6WideBusMux.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Video_Card.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/8wide16to1BusMUX.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/8bitAdder.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/Control_FSM.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/8wide4to1BusMUX.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/i281_CPU.v}

vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/i281_CPU.v}
vlog -vlog01compat -work work +incdir+Y:/Documents/GitHub/ToyCPU/i281_simulation {Y:/Documents/GitHub/ToyCPU/i281_simulation/i281_cpu_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  i281_cpu_tb

add wave *
view structure
view signals
run -all
