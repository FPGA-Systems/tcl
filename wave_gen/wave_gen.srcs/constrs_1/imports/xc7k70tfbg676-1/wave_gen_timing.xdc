#
# Global timing constraints
#
# Main clock defined in Clocking Wizard IP XDC

# Create a virual clock for IO constraints
create_clock -period 6.000 -name virtual_clock

set_input_delay -clock [get_clocks -of_objects [get_ports clk_pin_p]] 0.000 [get_ports rxd_pin]
set_input_delay -clock [get_clocks -of_objects [get_ports clk_pin_p]] -min -0.500 [get_ports rxd_pin]

set_input_delay -clock virtual_clock -max 0.000 [get_ports lb_sel_pin]
set_input_delay -clock virtual_clock -min -0.500 [get_ports lb_sel_pin]
set_output_delay -clock virtual_clock -max 0.000 [get_ports {txd_pin {led_pins[*]}}]
set_output_delay -clock virtual_clock -min -0.500 [get_ports {txd_pin {led_pins[*]}}]

# Path specific timing constraints
create_generated_clock -name spi_clk -source [get_pins dac_spi_i0/out_ddr_flop_spi_clk_i0/ODDR_inst/C] -divide_by 1 -invert [get_ports spi_clk_pin]
set_output_delay -clock spi_clk -max 1.000 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]
set_output_delay -clock spi_clk -min -1.000 [get_ports {spi_mosi_pin dac_cs_n_pin dac_clr_n_pin}]

set_multicycle_path -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]} -include_replicated_objects] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 2
set_multicycle_path -hold -from [get_cells {cmd_parse_i0/send_resp_data_reg[*]} -include_replicated_objects] -to [get_cells {resp_gen_i0/to_bcd_i0/bcd_out_reg[*]}] 1

set_multicycle_path -from [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter IS_SEQUENTIAL] -to [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter IS_SEQUENTIAL] 108
set_multicycle_path -hold -from [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter IS_SEQUENTIAL] -to [get_cells uart_rx_i0/uart_rx_ctl_i0/* -filter IS_SEQUENTIAL] 107

# For 193.75 MHz CLOCK_RATE_TX
#set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL}] 105
#set_multicycle_path -from [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL}] -to [get_cells "uart_tx_i0/uart_tx_ctl_i0/*" -filter {IS_SEQUENTIAL}] -hold 104

# For 166.667 MHz CLOCK_RATE_TX
set_multicycle_path -from [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter IS_SEQUENTIAL] -to [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter IS_SEQUENTIAL] 90
set_multicycle_path -hold -from [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter IS_SEQUENTIAL] -to [get_cells uart_tx_i0/uart_tx_ctl_i0/* -filter IS_SEQUENTIAL] 89

create_generated_clock -name clk_samp -source [get_pins clk_gen_i0/clk_core_i0/clk_tx] -divide_by 32 [get_pins clk_gen_i0/BUFHCE_clk_samp_i0/O]

# To keep the synchronizer registers near each other
set_max_delay -from [get_cells clkx_nsamp_i0/meta_harden_bus_new_i0/signal_meta_reg] -to [get_cells clkx_nsamp_i0/meta_harden_bus_new_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells clkx_pre_i0/meta_harden_bus_new_i0/signal_meta_reg] -to [get_cells clkx_pre_i0/meta_harden_bus_new_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells clkx_spd_i0/meta_harden_bus_new_i0/signal_meta_reg] -to [get_cells clkx_spd_i0/meta_harden_bus_new_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_meta_reg] -to [get_cells lb_ctl_i0/debouncer_i0/meta_harden_signal_in_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells samp_gen_i0/meta_harden_samp_gen_go_i0/signal_meta_reg] -to [get_cells samp_gen_i0/meta_harden_samp_gen_go_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells uart_rx_i0/meta_harden_rxd_i0/signal_meta_reg] -to [get_cells uart_rx_i0/meta_harden_rxd_i0/signal_dst_reg] 2.000
set_max_delay -from [get_cells rst_gen_i0/reset_bridge_clk_rx_i0/rst_meta_reg] -to [get_cells rst_gen_i0/reset_bridge_clk_rx_i0/rst_dst_reg] 2.000
set_max_delay -from [get_cells rst_gen_i0/reset_bridge_clk_tx_i0/rst_meta_reg] -to [get_cells rst_gen_i0/reset_bridge_clk_tx_i0/rst_dst_reg] 2.000
set_max_delay -from [get_cells rst_gen_i0/reset_bridge_clk_samp_i0/rst_meta_reg] -to [get_cells rst_gen_i0/reset_bridge_clk_samp_i0/rst_dst_reg] 2.000

set_false_path -from [get_ports rst_pin]

# To keep the clock crossing registers near each other
set_max_delay -from [get_clocks -of_objects [get_pins clk_gen_i0/clk_core_i0/clk_rx]] -to [get_clocks -of_objects [get_pins clk_gen_i0/clk_core_i0/clk_tx]] 5.000





set_property BEL D6LUT [get_cells resp_gen_i0/char_fifo_i0_i_22]
set_property LOC SLICE_X21Y168 [get_cells resp_gen_i0/char_fifo_i0_i_22]
set_property BEL C6LUT [get_cells resp_gen_i0/char_fifo_i0_i_24]
set_property LOC SLICE_X21Y168 [get_cells resp_gen_i0/char_fifo_i0_i_24]
set_property BEL B5LUT [get_cells resp_gen_i0/char_fifo_i0_i_25]
set_property LOC SLICE_X21Y168 [get_cells resp_gen_i0/char_fifo_i0_i_25]
set_property BEL A5LUT [get_cells resp_gen_i0/char_fifo_i0_i_30]
set_property LOC SLICE_X21Y168 [get_cells resp_gen_i0/char_fifo_i0_i_30]
set_property MARK_DEBUG false [get_nets {char_cnt_reg[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt[0]_i_1_n_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[3]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_25_n_0]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_1]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[1]_1}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_8]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[9]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/state_reg_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[4]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/p_31_out[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/Q[0]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/val_d1_reg]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_47]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[1]_0}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_30_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[5]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[13]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[2]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[9]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[5]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/Q[1]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_5]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[16][0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[3]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[10]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[4]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/val_d1]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[6]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_31_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[14]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/Q[2]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[2]_0[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[12]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_7]
set_property MARK_DEBUG false [get_nets resp_gen_i0/value_val0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[13]_0}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_6]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[16]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[4]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_24_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[5]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[6]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[10]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_2]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_13_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[15]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[2]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/send_resp_type[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[7]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[6]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[15]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_22_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_fifo_i0[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[11]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[6]_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/send_resp_type[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[3]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/rst_clk_rx]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_i_18_n_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[14]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/din[2]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/p_31_out[0]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/bcd_out_reg[8]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/old_value_val]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_fifo_i0_0]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/p_0_in[3]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[3]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/char_cnt]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt[1]_i_1_n_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt[3]_i_1_n_0}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[2]_0[1]}]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/char_cnt_reg[2]_0[2]}]
set_property MARK_DEBUG false [get_nets resp_gen_i0/CLK]
set_property MARK_DEBUG false [get_nets {resp_gen_i0/p_0_in[2]}]


set_property MARK_DEBUG false [get_nets {char_fifo_dout[2]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[5]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[1]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[4]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[7]}]
set_property MARK_DEBUG false [get_nets char_fifo_full]
set_property MARK_DEBUG false [get_nets char_fifo_rd_en]
set_property MARK_DEBUG false [get_nets {char_fifo_din[7]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[3]}]
set_property MARK_DEBUG false [get_nets char_fifo_empty]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[0]}]
set_property MARK_DEBUG false [get_nets {char_fifo_dout[6]}]
set_property MARK_DEBUG false [get_nets clk_tx]
set_property MARK_DEBUG false [get_nets {char_fifo_din[6]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[5]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[4]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[3]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[2]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[1]}]
set_property MARK_DEBUG false [get_nets {char_fifo_din[0]}]
create_debug_core ila_uart ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores ila_uart]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores ila_uart]
set_property C_ADV_TRIGGER false [get_debug_cores ila_uart]
set_property C_DATA_DEPTH 1024 [get_debug_cores ila_uart]
set_property C_EN_STRG_QUAL false [get_debug_cores ila_uart]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores ila_uart]
set_property C_TRIGIN_EN false [get_debug_cores ila_uart]
set_property C_TRIGOUT_EN false [get_debug_cores ila_uart]
set_property port_width 1 [get_debug_ports ila_uart/clk]
connect_debug_port ila_uart/clk [get_nets [list clk_gen_i0/clk_core_i0/inst/clk_tx_clk_core]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe0]
set_property port_width 1 [get_debug_ports ila_uart/probe0]
connect_debug_port ila_uart/probe0 [get_nets [list clk_tx]]
create_debug_port ila_uart probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe1]
set_property port_width 8 [get_debug_ports ila_uart/probe1]
connect_debug_port ila_uart/probe1 [get_nets [list {char_fifo_dout[0]} {char_fifo_dout[1]} {char_fifo_dout[2]} {char_fifo_dout[3]} {char_fifo_dout[4]} {char_fifo_dout[5]} {char_fifo_dout[6]} {char_fifo_dout[7]}]]
create_debug_port ila_uart probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe2]
set_property port_width 1 [get_debug_ports ila_uart/probe2]
connect_debug_port ila_uart/probe2 [get_nets [list char_fifo_empty]]
create_debug_port ila_uart probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe3]
set_property port_width 1 [get_debug_ports ila_uart/probe3]
connect_debug_port ila_uart/probe3 [get_nets [list char_fifo_rd_en]]
create_debug_port ila_uart probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe4]
set_property port_width 1 [get_debug_ports ila_uart/probe4]
connect_debug_port ila_uart/probe4 [get_nets [list rst_clk_tx]]
create_debug_port ila_uart probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports ila_uart/probe5]
set_property port_width 1 [get_debug_ports ila_uart/probe5]
connect_debug_port ila_uart/probe5 [get_nets [list txd_tx]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_clk_tx_clk_core]
