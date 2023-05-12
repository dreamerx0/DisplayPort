# Variables
set ref_path "../../ref/intel/dk-dev-10cx220"
set src_path "../../src"

# Create new project
project_new dp_ref_intel_dk_dev_10cx220 -overwrite

# Copy files from reference folder into the synthesis folder
file copy -force $ref_path/phy_pll.ip .
file copy -force $ref_path/phy.ip .
file copy -force $ref_path/sys_pll.ip .
file copy -force $ref_path/dp_ref_intel_dk_dev_10cx220.sdc .
file copy -force $ref_path/dp_app_int_rom.mif .
file copy -force $ref_path/dp_app_int_ram.mif .

# assignments
set_global_assignment -name FAMILY "Cyclone 10 GX"
set_global_assignment -name TOP_LEVEL_ENTITY dp_ref_intel_dk_dev_10cx220
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
set_global_assignment -name DEVICE 10CX220YF780E5G
set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT 780
set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
set_global_assignment -name POWER_APPLY_THERMAL_MARGIN ADDITIONAL
set_global_assignment -name ADD_PASS_THROUGH_LOGIC_TO_INFERRED_RAMS OFF

set_global_assignment -name SDC_FILE dp_ref_intel_dk_dev_10cx220.sdc
set_global_assignment -name IP_FILE phy_pll.ip
set_global_assignment -name IP_FILE phy.ip
set_global_assignment -name IP_FILE sys_pll.ip
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/risc-v/prt_riscv_lib.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/risc-v/prt_riscv_rom.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/risc-v/prt_riscv_ram.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/risc-v/prt_riscv_cpu_reg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/risc-v/prt_riscv_cpu.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_dp_clkdet.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_top.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_tmr.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_rom.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_ram.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_pio.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_mutex.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_msg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_irq.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_hpd_tx.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_hpd_rx.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_hart.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_exch.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/pm/prt_dp_pm_aux.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_uart.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_int_rcfg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_lb_mux.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_i2c.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_hb.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_dp_msg_slv_ing.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_dp_msg_slv_egr.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/misc/prt_dp_msg_cdc.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_tpg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_top.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_tg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_mon.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_freq.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_fifo.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_ctl.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/vtb/prt_vtb_cr.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/lib/prt_dp_pkg.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/lib/prt_dp_lib_mem.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/lib/prt_dp_lib_if.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/lib/prt_dp_lib.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/app/dp_app_top.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_vid.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_trn_lane.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_trn.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_top.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_scrm.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_pars.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_msa.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_lnk.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/rx/prt_dprx_ctl.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_vid.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_trn.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_top.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_skew.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_scrm.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_msa.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_lnk.sv
set_global_assignment -name SYSTEMVERILOG_FILE $src_path/tx/prt_dptx_ctl.sv
set_global_assignment -name SYSTEMVERILOG_FILE $ref_path/dp_ref_intel_dk_dev_10cx220.sv

# Pins
set_location_assignment PIN_U8 -to DPTX_AUX_TX_OUT
set_location_assignment PIN_Y4 -to DPTX_AUX_RX_IN
set_location_assignment PIN_W4 -to DPTX_AUX_EN_OUT
set_location_assignment PIN_T9 -to DPTX_HPD_IN
set_location_assignment PIN_W5 -to DPRX_AUX_EN_OUT
set_location_assignment PIN_Y5 -to DPRX_AUX_TX_OUT
set_location_assignment PIN_AA1 -to DPRX_AUX_RX_IN
set_location_assignment PIN_AB6 -to DPRX_HPD_OUT
set_location_assignment PIN_AF2 -to I2C_SCL_INOUT
set_location_assignment PIN_AE1 -to I2C_SDA_INOUT
set_instance_assignment -name IO_STANDARD LVDS -to PHY_REFCLK_IN 
set_location_assignment PIN_W24 -to PHY_REFCLK_IN
set_location_assignment PIN_W23 -to "PHY_REFCLK_IN(n)"
set_location_assignment PIN_M3 -to TENTIVA_GT_CLK_LOCK_IN
set_location_assignment PIN_T1 -to TENTIVA_VID_CLK_LOCK_IN
set_instance_assignment -name IO_STANDARD LVDS -to TENTIVA_VID_CLK_IN 
set_location_assignment PIN_AD3 -to TENTIVA_VID_CLK_IN
set_location_assignment PIN_AC3 -to "TENTIVA_VID_CLK_IN(n)"
set_location_assignment PIN_AF6 -to LED_OUT[0]
set_location_assignment PIN_AE6 -to LED_OUT[1]
set_location_assignment PIN_AC6 -to LED_OUT[2]
set_location_assignment PIN_AC7 -to LED_OUT[3]
set_location_assignment PIN_V6 -to UART_TX_OUT
set_location_assignment PIN_V5 -to UART_RX_IN
set_location_assignment PIN_J23 -to CLK_IN
set_location_assignment PIN_AF26 -to PHY_RX_IN[0]
set_location_assignment PIN_AF25 -to "PHY_RX_IN[0](n)"
set_location_assignment PIN_AD26 -to PHY_RX_IN[1]
set_location_assignment PIN_AD25 -to "PHY_RX_IN[1](n)"
set_location_assignment PIN_AB26 -to PHY_RX_IN[2]
set_location_assignment PIN_AB25 -to "PHY_RX_IN[2](n)"
set_location_assignment PIN_Y26 -to PHY_RX_IN[3]
set_location_assignment PIN_Y25 -to "PHY_RX_IN[3](n)"
set_location_assignment PIN_AG28 -to PHY_TX_OUT[0]
set_location_assignment PIN_AG27 -to "PHY_TX_OUT[0](n)"
set_location_assignment PIN_AE28 -to PHY_TX_OUT[1]
set_location_assignment PIN_AE27 -to "PHY_TX_OUT[1](n)"
set_location_assignment PIN_AC28 -to PHY_TX_OUT[2]
set_location_assignment PIN_AC27 -to "PHY_TX_OUT[2](n)"
set_location_assignment PIN_AA28 -to PHY_TX_OUT[3]
set_location_assignment PIN_AA27 -to "PHY_TX_OUT[3](n)"
set_location_assignment PIN_Y7 -to TENTIVA_CLK_SEL_OUT

