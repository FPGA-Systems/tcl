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
set_property MARK_DEBUG true [get_nets {char_fifo_din[0]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[1]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[2]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[3]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[4]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[5]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[6]}]
set_property MARK_DEBUG true [get_nets {char_fifo_din[7]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[0]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[1]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[2]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[3]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[4]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[5]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[6]}]
set_property MARK_DEBUG true [get_nets {char_fifo_dout[7]}]
set_property MARK_DEBUG true [get_nets char_fifo_empty]
set_property MARK_DEBUG true [get_nets char_fifo_full]
set_property MARK_DEBUG true [get_nets clk_tx]
set_property MARK_DEBUG true [get_nets char_fifo_rd_en]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list clk_rx]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 3 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {send_resp_data[0]} {send_resp_data[1]} {send_resp_data[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list resp_gen_i0_n_5]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list cmd_parse_i0_n_138]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list cmd_parse_i0_n_140]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list cmd_parse_i0_n_67]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list resp_gen_i0_n_4]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list cmd_parse_i0_n_142]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list resp_gen_i0_n_3]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list cmd_parse_i0_n_139]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list resp_gen_i0_n_24]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list cmd_parse_i0_n_141]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {val[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list cmd_parse_i0_n_12]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list cmd_parse_i0_n_146]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list cmd_parse_i0_n_147]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list cmd_parse_i0_n_148]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list cmd_parse_i0_n_145]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list cmd_parse_i0_n_134]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list resp_gen_i0_n_7]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list cmd_parse_i0_n_136]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list cmd_parse_i0_n_135]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list cmd_parse_i0_n_66]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list resp_gen_i0_n_6]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list cmd_parse_i0_n_137]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list resp_gen_i0_n_20]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list resp_gen_i0_n_21]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list resp_gen_i0_n_22]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 3 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list {char_cnt_reg[0]} {char_cnt_reg[1]} {char_cnt_reg[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 7 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list {send_char[0]} {send_char[1]} {send_char[2]} {send_char[3]} {send_char[4]} {send_char[5]} {send_char[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list cmd_parse_i0_n_68]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list cmd_parse_i0_n_70]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list cmd_parse_i0_n_87]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list cmd_parse_i0_n_88]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list cmd_parse_i0_n_89]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list cmd_parse_i0_n_90]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list cmd_parse_i0_n_71]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list cmd_parse_i0_n_72]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list cmd_parse_i0_n_73]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list cmd_parse_i0_n_85]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 8 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list {char_fifo_din[0]} {char_fifo_din[1]} {char_fifo_din[2]} {char_fifo_din[3]} {char_fifo_din[4]} {char_fifo_din[5]} {char_fifo_din[6]} char_fifo_full]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list to_bcd_i0/old_value_val]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe42]
set_property port_width 2 [get_debug_ports u_ila_0/probe42]
connect_debug_port u_ila_0/probe42 [get_nets [list {to_bcd_i0/p_31_out[17]} {to_bcd_i0/p_31_out[18]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe43]
set_property port_width 1 [get_debug_ports u_ila_0/probe43]
connect_debug_port u_ila_0/probe43 [get_nets [list rst_clk_rx]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe44]
set_property port_width 1 [get_debug_ports u_ila_0/probe44]
connect_debug_port u_ila_0/probe44 [get_nets [list send_char_val]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe45]
set_property port_width 1 [get_debug_ports u_ila_0/probe45]
connect_debug_port u_ila_0/probe45 [get_nets [list send_resp_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe46]
set_property port_width 2 [get_debug_ports u_ila_0/probe46]
connect_debug_port u_ila_0/probe46 [get_nets [list {send_resp_type[0]} {send_resp_type[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe47]
set_property port_width 1 [get_debug_ports u_ila_0/probe47]
connect_debug_port u_ila_0/probe47 [get_nets [list send_resp_val]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe48]
set_property port_width 1 [get_debug_ports u_ila_0/probe48]
connect_debug_port u_ila_0/probe48 [get_nets [list resp_gen_i0_n_8]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe49]
set_property port_width 1 [get_debug_ports u_ila_0/probe49]
connect_debug_port u_ila_0/probe49 [get_nets [list to_digit1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe50]
set_property port_width 1 [get_debug_ports u_ila_0/probe50]
connect_debug_port u_ila_0/probe50 [get_nets [list to_bcd_i0/val_d1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe51]
set_property port_width 1 [get_debug_ports u_ila_0/probe51]
connect_debug_port u_ila_0/probe51 [get_nets [list cmd_parse_i0_n_62]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe52]
set_property port_width 1 [get_debug_ports u_ila_0/probe52]
connect_debug_port u_ila_0/probe52 [get_nets [list value_val0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe53]
set_property port_width 1 [get_debug_ports u_ila_0/probe53]
connect_debug_port u_ila_0/probe53 [get_nets [list char_fifo_wr_en]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
create_debug_core fifo ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores fifo]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores fifo]
set_property C_ADV_TRIGGER false [get_debug_cores fifo]
set_property C_DATA_DEPTH 1024 [get_debug_cores fifo]
set_property C_EN_STRG_QUAL false [get_debug_cores fifo]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores fifo]
set_property C_TRIGIN_EN false [get_debug_cores fifo]
set_property C_TRIGOUT_EN false [get_debug_cores fifo]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports fifo/probe0]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
