// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Mar 20 11:09:27 2021
// Host        : fae-server running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 117360)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
