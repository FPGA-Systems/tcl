// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Mar 20 11:09:28 2021
// Host        : fae-server running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/prj/tcl/wave_gen/wave_gen.gen/sources_1/ip/char_fifo/char_fifo_sim_netlist.v
// Design      : char_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module char_fifo
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
  char_fifo_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module char_fifo_xpm_cdc_gray
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
module char_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module char_fifo_xpm_cdc_single
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
module char_fifo_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module char_fifo_xpm_cdc_sync_rst
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
module char_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 116544)
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
