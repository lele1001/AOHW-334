// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "ulp_inst_0_ai_engine_0_0_sc.h"

#include "ulp_inst_0_ai_engine_0_0.h"

#include "ai_engine.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
ulp_inst_0_ai_engine_0_0::ulp_inst_0_ai_engine_0_0(const sc_core::sc_module_name& nm) : ulp_inst_0_ai_engine_0_0_sc(nm), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awregion("S00_AXI_awregion"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arregion("S00_AXI_arregion"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), s00_axi_aclk("s00_axi_aclk"), M00_AXIS_tdata("M00_AXIS_tdata"), M00_AXIS_tkeep("M00_AXIS_tkeep"), M00_AXIS_tlast("M00_AXIS_tlast"), M00_AXIS_tvalid("M00_AXIS_tvalid"), M00_AXIS_tready("M00_AXIS_tready"), S00_AXIS_tdata("S00_AXIS_tdata"), S00_AXIS_tlast("S00_AXIS_tlast"), S00_AXIS_tvalid("S00_AXIS_tvalid"), S00_AXIS_tready("S00_AXIS_tready"), aclk0("aclk0")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->aclk0(aclk0);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awaddr_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_araddr_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_M00_AXIS_tlast_converter = NULL;
  mp_M00_AXIS_tvalid_converter = NULL;
  mp_M00_AXIS_tready_converter = NULL;
  mp_S00_AXIS_transactor = NULL;
  mp_S00_AXIS_tlast_converter = NULL;
  mp_S00_AXIS_tvalid_converter = NULL;
  mp_S00_AXIS_tready_converter = NULL;

  // initialize socket stubs

}

void ulp_inst_0_ai_engine_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "1250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "16");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "42");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "bd_9d54_noc_ai_mm_0_0_s_axi_aclk");
    S00_AXI_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXI_transactor_param_props.addString("CATEGORY", "NOC");
    S00_AXI_transactor_param_props.addString("PHYSICAL_CHANNEL", "NOC_NSU_TO_AIE");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,42,16,1,17,1,1,17>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_awaddr_converter");
    mp_S00_AXI_awaddr_converter->vector_in(S00_AXI_awaddr);
    mp_S00_AXI_awaddr_converter->vector_out(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWADDR(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWREGION(S00_AXI_awregion);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_araddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_araddr_converter");
    mp_S00_AXI_araddr_converter->vector_in(S00_AXI_araddr);
    mp_S00_AXI_araddr_converter->vector_out(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARADDR(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARREGION(S00_AXI_arregion);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    M00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    M00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_M00_AXIS_transactor->TDATA(M00_AXIS_tdata);
    mp_M00_AXIS_transactor->TKEEP(M00_AXIS_tkeep);
    mp_M00_AXIS_tlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tlast_converter");
    mp_M00_AXIS_tlast_converter->scalar_in(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tlast_converter->vector_out(M00_AXIS_tlast);
    mp_M00_AXIS_transactor->TLAST(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tvalid_converter");
    mp_M00_AXIS_tvalid_converter->scalar_in(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tvalid_converter->vector_out(M00_AXIS_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXIS_tready_converter");
    mp_M00_AXIS_tready_converter->vector_in(M00_AXIS_tready);
    mp_M00_AXIS_tready_converter->scalar_out(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->CLK(aclk0);
    m_M00_AXIS_transactor_rst_signal.write(1);
    mp_M00_AXIS_transactor->RST(m_M00_AXIS_transactor_rst_signal);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_tlm_axis_socket->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    S00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<4,1,1,1,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_S00_AXIS_transactor->TDATA(S00_AXIS_tdata);
    mp_S00_AXIS_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tlast_converter");
    mp_S00_AXIS_tlast_converter->vector_in(S00_AXIS_tlast);
    mp_S00_AXIS_tlast_converter->scalar_out(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_transactor->TLAST(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tvalid_converter");
    mp_S00_AXIS_tvalid_converter->vector_in(S00_AXIS_tvalid);
    mp_S00_AXIS_tvalid_converter->scalar_out(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_transactor->TVALID(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_tready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXIS_tready_converter");
    mp_S00_AXIS_tready_converter->scalar_in(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_tready_converter->vector_out(S00_AXIS_tready);
    mp_S00_AXIS_transactor->TREADY(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_transactor->CLK(aclk0);
    m_S00_AXIS_transactor_rst_signal.write(1);
    mp_S00_AXIS_transactor->RST(m_S00_AXIS_transactor_rst_signal);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_tlm_axis_socket->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
ulp_inst_0_ai_engine_0_0::ulp_inst_0_ai_engine_0_0(const sc_core::sc_module_name& nm) : ulp_inst_0_ai_engine_0_0_sc(nm), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awregion("S00_AXI_awregion"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arregion("S00_AXI_arregion"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), s00_axi_aclk("s00_axi_aclk"), M00_AXIS_tdata("M00_AXIS_tdata"), M00_AXIS_tkeep("M00_AXIS_tkeep"), M00_AXIS_tlast("M00_AXIS_tlast"), M00_AXIS_tvalid("M00_AXIS_tvalid"), M00_AXIS_tready("M00_AXIS_tready"), S00_AXIS_tdata("S00_AXIS_tdata"), S00_AXIS_tlast("S00_AXIS_tlast"), S00_AXIS_tvalid("S00_AXIS_tvalid"), S00_AXIS_tready("S00_AXIS_tready"), aclk0("aclk0")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->aclk0(aclk0);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awaddr_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_araddr_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_M00_AXIS_tlast_converter = NULL;
  mp_M00_AXIS_tvalid_converter = NULL;
  mp_M00_AXIS_tready_converter = NULL;
  mp_S00_AXIS_transactor = NULL;
  mp_S00_AXIS_tlast_converter = NULL;
  mp_S00_AXIS_tvalid_converter = NULL;
  mp_S00_AXIS_tready_converter = NULL;

  // initialize socket stubs

}

void ulp_inst_0_ai_engine_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "1250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "16");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "42");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "bd_9d54_noc_ai_mm_0_0_s_axi_aclk");
    S00_AXI_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXI_transactor_param_props.addString("CATEGORY", "NOC");
    S00_AXI_transactor_param_props.addString("PHYSICAL_CHANNEL", "NOC_NSU_TO_AIE");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,42,16,1,17,1,1,17>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_awaddr_converter");
    mp_S00_AXI_awaddr_converter->vector_in(S00_AXI_awaddr);
    mp_S00_AXI_awaddr_converter->vector_out(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWADDR(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWREGION(S00_AXI_awregion);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_araddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_araddr_converter");
    mp_S00_AXI_araddr_converter->vector_in(S00_AXI_araddr);
    mp_S00_AXI_araddr_converter->vector_out(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARADDR(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARREGION(S00_AXI_arregion);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    M00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    M00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_M00_AXIS_transactor->TDATA(M00_AXIS_tdata);
    mp_M00_AXIS_transactor->TKEEP(M00_AXIS_tkeep);
    mp_M00_AXIS_tlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tlast_converter");
    mp_M00_AXIS_tlast_converter->scalar_in(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tlast_converter->vector_out(M00_AXIS_tlast);
    mp_M00_AXIS_transactor->TLAST(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tvalid_converter");
    mp_M00_AXIS_tvalid_converter->scalar_in(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tvalid_converter->vector_out(M00_AXIS_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXIS_tready_converter");
    mp_M00_AXIS_tready_converter->vector_in(M00_AXIS_tready);
    mp_M00_AXIS_tready_converter->scalar_out(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->CLK(aclk0);
    m_M00_AXIS_transactor_rst_signal.write(1);
    mp_M00_AXIS_transactor->RST(m_M00_AXIS_transactor_rst_signal);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_tlm_axis_socket->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    S00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<4,1,1,1,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_S00_AXIS_transactor->TDATA(S00_AXIS_tdata);
    mp_S00_AXIS_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tlast_converter");
    mp_S00_AXIS_tlast_converter->vector_in(S00_AXIS_tlast);
    mp_S00_AXIS_tlast_converter->scalar_out(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_transactor->TLAST(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tvalid_converter");
    mp_S00_AXIS_tvalid_converter->vector_in(S00_AXIS_tvalid);
    mp_S00_AXIS_tvalid_converter->scalar_out(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_transactor->TVALID(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_tready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXIS_tready_converter");
    mp_S00_AXIS_tready_converter->scalar_in(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_tready_converter->vector_out(S00_AXIS_tready);
    mp_S00_AXIS_transactor->TREADY(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_transactor->CLK(aclk0);
    m_S00_AXIS_transactor_rst_signal.write(1);
    mp_S00_AXIS_transactor->RST(m_S00_AXIS_transactor_rst_signal);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_tlm_axis_socket->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
ulp_inst_0_ai_engine_0_0::ulp_inst_0_ai_engine_0_0(const sc_core::sc_module_name& nm) : ulp_inst_0_ai_engine_0_0_sc(nm), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awregion("S00_AXI_awregion"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arregion("S00_AXI_arregion"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), s00_axi_aclk("s00_axi_aclk"), M00_AXIS_tdata("M00_AXIS_tdata"), M00_AXIS_tkeep("M00_AXIS_tkeep"), M00_AXIS_tlast("M00_AXIS_tlast"), M00_AXIS_tvalid("M00_AXIS_tvalid"), M00_AXIS_tready("M00_AXIS_tready"), S00_AXIS_tdata("S00_AXIS_tdata"), S00_AXIS_tlast("S00_AXIS_tlast"), S00_AXIS_tvalid("S00_AXIS_tvalid"), S00_AXIS_tready("S00_AXIS_tready"), aclk0("aclk0")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->aclk0(aclk0);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awaddr_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_araddr_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_M00_AXIS_tlast_converter = NULL;
  mp_M00_AXIS_tvalid_converter = NULL;
  mp_M00_AXIS_tready_converter = NULL;
  mp_S00_AXIS_transactor = NULL;
  mp_S00_AXIS_tlast_converter = NULL;
  mp_S00_AXIS_tvalid_converter = NULL;
  mp_S00_AXIS_tready_converter = NULL;

  // initialize socket stubs

}

void ulp_inst_0_ai_engine_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "1250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "16");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "42");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "bd_9d54_noc_ai_mm_0_0_s_axi_aclk");
    S00_AXI_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXI_transactor_param_props.addString("CATEGORY", "NOC");
    S00_AXI_transactor_param_props.addString("PHYSICAL_CHANNEL", "NOC_NSU_TO_AIE");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,42,16,1,17,1,1,17>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_awaddr_converter");
    mp_S00_AXI_awaddr_converter->vector_in(S00_AXI_awaddr);
    mp_S00_AXI_awaddr_converter->vector_out(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWADDR(m_S00_AXI_awaddr_converter_signal);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWREGION(S00_AXI_awregion);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_araddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_araddr_converter");
    mp_S00_AXI_araddr_converter->vector_in(S00_AXI_araddr);
    mp_S00_AXI_araddr_converter->vector_out(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARADDR(m_S00_AXI_araddr_converter_signal);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARREGION(S00_AXI_arregion);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "M00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXIS' transactor parameters
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    M00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    M00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);

    // M00_AXIS' transactor ports

    mp_M00_AXIS_transactor->TDATA(M00_AXIS_tdata);
    mp_M00_AXIS_transactor->TKEEP(M00_AXIS_tkeep);
    mp_M00_AXIS_tlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tlast_converter");
    mp_M00_AXIS_tlast_converter->scalar_in(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tlast_converter->vector_out(M00_AXIS_tlast);
    mp_M00_AXIS_transactor->TLAST(m_M00_AXIS_tlast_converter_signal);
    mp_M00_AXIS_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tvalid_converter");
    mp_M00_AXIS_tvalid_converter->scalar_in(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tvalid_converter->vector_out(M00_AXIS_tvalid);
    mp_M00_AXIS_transactor->TVALID(m_M00_AXIS_tvalid_converter_signal);
    mp_M00_AXIS_tready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXIS_tready_converter");
    mp_M00_AXIS_tready_converter->vector_in(M00_AXIS_tready);
    mp_M00_AXIS_tready_converter->scalar_out(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->TREADY(m_M00_AXIS_tready_converter_signal);
    mp_M00_AXIS_transactor->CLK(aclk0);
    m_M00_AXIS_transactor_rst_signal.write(1);
    mp_M00_AXIS_transactor->RST(m_M00_AXIS_transactor_rst_signal);

    // M00_AXIS' transactor sockets

    mp_impl->M00_AXIS_tlm_axis_socket->bind(*(mp_M00_AXIS_transactor->socket));
  }
  else
  {
  }

  // configure 'S00_AXIS' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXIS_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXIS' transactor parameters
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    S00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<4,1,1,1,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);

    // S00_AXIS' transactor ports

    mp_S00_AXIS_transactor->TDATA(S00_AXIS_tdata);
    mp_S00_AXIS_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tlast_converter");
    mp_S00_AXIS_tlast_converter->vector_in(S00_AXIS_tlast);
    mp_S00_AXIS_tlast_converter->scalar_out(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_transactor->TLAST(m_S00_AXIS_tlast_converter_signal);
    mp_S00_AXIS_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tvalid_converter");
    mp_S00_AXIS_tvalid_converter->vector_in(S00_AXIS_tvalid);
    mp_S00_AXIS_tvalid_converter->scalar_out(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_transactor->TVALID(m_S00_AXIS_tvalid_converter_signal);
    mp_S00_AXIS_tready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXIS_tready_converter");
    mp_S00_AXIS_tready_converter->scalar_in(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_tready_converter->vector_out(S00_AXIS_tready);
    mp_S00_AXIS_transactor->TREADY(m_S00_AXIS_tready_converter_signal);
    mp_S00_AXIS_transactor->CLK(aclk0);
    m_S00_AXIS_transactor_rst_signal.write(1);
    mp_S00_AXIS_transactor->RST(m_S00_AXIS_transactor_rst_signal);

    // S00_AXIS' transactor sockets

    mp_impl->S00_AXIS_tlm_axis_socket->bind(*(mp_S00_AXIS_transactor->socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
ulp_inst_0_ai_engine_0_0::ulp_inst_0_ai_engine_0_0(const sc_core::sc_module_name& nm) : ulp_inst_0_ai_engine_0_0_sc(nm),  S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awregion("S00_AXI_awregion"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arregion("S00_AXI_arregion"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), s00_axi_aclk("s00_axi_aclk"), M00_AXIS_tdata("M00_AXIS_tdata"), M00_AXIS_tkeep("M00_AXIS_tkeep"), M00_AXIS_tlast("M00_AXIS_tlast"), M00_AXIS_tvalid("M00_AXIS_tvalid"), M00_AXIS_tready("M00_AXIS_tready"), S00_AXIS_tdata("S00_AXIS_tdata"), S00_AXIS_tlast("S00_AXIS_tlast"), S00_AXIS_tvalid("S00_AXIS_tvalid"), S00_AXIS_tready("S00_AXIS_tready"), aclk0("aclk0")
{
  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->aclk0(aclk0);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awaddr_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_araddr_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_M00_AXIS_tlast_converter = NULL;
  mp_M00_AXIS_tvalid_converter = NULL;
  mp_M00_AXIS_tready_converter = NULL;
  mp_S00_AXIS_transactor = NULL;
  mp_S00_AXIS_tlast_converter = NULL;
  mp_S00_AXIS_tvalid_converter = NULL;
  mp_S00_AXIS_tready_converter = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "1250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "16");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "42");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "bd_9d54_noc_ai_mm_0_0_s_axi_aclk");
    S00_AXI_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXI_transactor_param_props.addString("CATEGORY", "NOC");
    S00_AXI_transactor_param_props.addString("PHYSICAL_CHANNEL", "NOC_NSU_TO_AIE");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,42,16,1,17,1,1,17>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWID(S00_AXI_awid);
  mp_S00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_awaddr_converter");
  mp_S00_AXI_awaddr_converter->vector_in(S00_AXI_awaddr);
  mp_S00_AXI_awaddr_converter->vector_out(m_S00_AXI_awaddr_converter_signal);
  mp_S00_AXI_transactor->AWADDR(m_S00_AXI_awaddr_converter_signal);
  mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
  mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
  mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
  mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
  mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWREGION(S00_AXI_awregion);
  mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
  mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
  mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
  mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
  mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
  mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
  mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
  mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
  mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
  mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
  mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
  mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
  mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_transactor->BID(S00_AXI_bid);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
  mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
  mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
  mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->ARID(S00_AXI_arid);
  mp_S00_AXI_araddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_araddr_converter");
  mp_S00_AXI_araddr_converter->vector_in(S00_AXI_araddr);
  mp_S00_AXI_araddr_converter->vector_out(m_S00_AXI_araddr_converter_signal);
  mp_S00_AXI_transactor->ARADDR(m_S00_AXI_araddr_converter_signal);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARREGION(S00_AXI_arregion);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
  mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
  mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
  mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
  mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_transactor->RID(S00_AXI_rid);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
  mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
  mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
  mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
  mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
  mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
  mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->CLK(s00_axi_aclk);
  m_S00_AXI_transactor_rst_signal.write(1);
  mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);
  // configure M00_AXIS_transactor
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    M00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    M00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);
  mp_M00_AXIS_transactor->TDATA(M00_AXIS_tdata);
  mp_M00_AXIS_transactor->TKEEP(M00_AXIS_tkeep);
  mp_M00_AXIS_tlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tlast_converter");
  mp_M00_AXIS_tlast_converter->scalar_in(m_M00_AXIS_tlast_converter_signal);
  mp_M00_AXIS_tlast_converter->vector_out(M00_AXIS_tlast);
  mp_M00_AXIS_transactor->TLAST(m_M00_AXIS_tlast_converter_signal);
  mp_M00_AXIS_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tvalid_converter");
  mp_M00_AXIS_tvalid_converter->scalar_in(m_M00_AXIS_tvalid_converter_signal);
  mp_M00_AXIS_tvalid_converter->vector_out(M00_AXIS_tvalid);
  mp_M00_AXIS_transactor->TVALID(m_M00_AXIS_tvalid_converter_signal);
  mp_M00_AXIS_tready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXIS_tready_converter");
  mp_M00_AXIS_tready_converter->vector_in(M00_AXIS_tready);
  mp_M00_AXIS_tready_converter->scalar_out(m_M00_AXIS_tready_converter_signal);
  mp_M00_AXIS_transactor->TREADY(m_M00_AXIS_tready_converter_signal);
  mp_M00_AXIS_transactor->CLK(aclk0);
  m_M00_AXIS_transactor_rst_signal.write(1);
  mp_M00_AXIS_transactor->RST(m_M00_AXIS_transactor_rst_signal);
  // configure S00_AXIS_transactor
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    S00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<4,1,1,1,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);
  mp_S00_AXIS_transactor->TDATA(S00_AXIS_tdata);
  mp_S00_AXIS_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tlast_converter");
  mp_S00_AXIS_tlast_converter->vector_in(S00_AXIS_tlast);
  mp_S00_AXIS_tlast_converter->scalar_out(m_S00_AXIS_tlast_converter_signal);
  mp_S00_AXIS_transactor->TLAST(m_S00_AXIS_tlast_converter_signal);
  mp_S00_AXIS_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tvalid_converter");
  mp_S00_AXIS_tvalid_converter->vector_in(S00_AXIS_tvalid);
  mp_S00_AXIS_tvalid_converter->scalar_out(m_S00_AXIS_tvalid_converter_signal);
  mp_S00_AXIS_transactor->TVALID(m_S00_AXIS_tvalid_converter_signal);
  mp_S00_AXIS_tready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXIS_tready_converter");
  mp_S00_AXIS_tready_converter->scalar_in(m_S00_AXIS_tready_converter_signal);
  mp_S00_AXIS_tready_converter->vector_out(S00_AXIS_tready);
  mp_S00_AXIS_transactor->TREADY(m_S00_AXIS_tready_converter_signal);
  mp_S00_AXIS_transactor->CLK(aclk0);
  m_S00_AXIS_transactor_rst_signal.write(1);
  mp_S00_AXIS_transactor->RST(m_S00_AXIS_transactor_rst_signal);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXIS_transactor_initiator_socket_stub = nullptr;
  S00_AXIS_transactor_target_socket_stub = nullptr;

}

void ulp_inst_0_ai_engine_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "M00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->M00_AXIS_tlm_axis_socket->bind(*(mp_M00_AXIS_transactor->socket));
  
  }
  else
  {
    M00_AXIS_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    M00_AXIS_transactor_initiator_socket_stub->bind(*(mp_M00_AXIS_transactor->socket));
    mp_M00_AXIS_transactor->disable_transactor();
  }

  // configure 'S00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S00_AXIS_tlm_axis_socket->bind(*(mp_S00_AXIS_transactor->socket));
  
  }
  else
  {
    S00_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S00_AXIS_transactor_target_socket_stub->bind(*(mp_S00_AXIS_transactor->socket));
    mp_S00_AXIS_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
ulp_inst_0_ai_engine_0_0::ulp_inst_0_ai_engine_0_0(const sc_core::sc_module_name& nm) : ulp_inst_0_ai_engine_0_0_sc(nm),  S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awregion("S00_AXI_awregion"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arregion("S00_AXI_arregion"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), s00_axi_aclk("s00_axi_aclk"), M00_AXIS_tdata("M00_AXIS_tdata"), M00_AXIS_tkeep("M00_AXIS_tkeep"), M00_AXIS_tlast("M00_AXIS_tlast"), M00_AXIS_tvalid("M00_AXIS_tvalid"), M00_AXIS_tready("M00_AXIS_tready"), S00_AXIS_tdata("S00_AXIS_tdata"), S00_AXIS_tlast("S00_AXIS_tlast"), S00_AXIS_tvalid("S00_AXIS_tvalid"), S00_AXIS_tready("S00_AXIS_tready"), aclk0("aclk0")
{
  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->aclk0(aclk0);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awaddr_converter = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_araddr_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_M00_AXIS_transactor = NULL;
  mp_M00_AXIS_tlast_converter = NULL;
  mp_M00_AXIS_tvalid_converter = NULL;
  mp_M00_AXIS_tready_converter = NULL;
  mp_S00_AXIS_transactor = NULL;
  mp_S00_AXIS_tlast_converter = NULL;
  mp_S00_AXIS_tvalid_converter = NULL;
  mp_S00_AXIS_tready_converter = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "128");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "1250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "16");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "42");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "17");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "32");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "bd_9d54_noc_ai_mm_0_0_s_axi_aclk");
    S00_AXI_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXI_transactor_param_props.addString("CATEGORY", "NOC");
    S00_AXI_transactor_param_props.addString("PHYSICAL_CHANNEL", "NOC_NSU_TO_AIE");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<128,42,16,1,17,1,1,17>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWID(S00_AXI_awid);
  mp_S00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_awaddr_converter");
  mp_S00_AXI_awaddr_converter->vector_in(S00_AXI_awaddr);
  mp_S00_AXI_awaddr_converter->vector_out(m_S00_AXI_awaddr_converter_signal);
  mp_S00_AXI_transactor->AWADDR(m_S00_AXI_awaddr_converter_signal);
  mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
  mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
  mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
  mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
  mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWREGION(S00_AXI_awregion);
  mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
  mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
  mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
  mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
  mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
  mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
  mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
  mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
  mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
  mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
  mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
  mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
  mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_transactor->BID(S00_AXI_bid);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
  mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
  mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
  mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->ARID(S00_AXI_arid);
  mp_S00_AXI_araddr_converter = new xsc::common::vector2vector_converter<34,42>("S00_AXI_araddr_converter");
  mp_S00_AXI_araddr_converter->vector_in(S00_AXI_araddr);
  mp_S00_AXI_araddr_converter->vector_out(m_S00_AXI_araddr_converter_signal);
  mp_S00_AXI_transactor->ARADDR(m_S00_AXI_araddr_converter_signal);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARREGION(S00_AXI_arregion);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
  mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
  mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
  mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
  mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_transactor->RID(S00_AXI_rid);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
  mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
  mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
  mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
  mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
  mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
  mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->CLK(s00_axi_aclk);
  m_S00_AXI_transactor_rst_signal.write(1);
  mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);
  // configure M00_AXIS_transactor
    xsc::common_cpp::properties M00_AXIS_transactor_param_props;
    M00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    M00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    M00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "1");
    M00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    M00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    M00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    M00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    M00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    M00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    M00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    M00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    M00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_M00_AXIS_transactor = new xtlm::xaxis_xtlm2pin_t<4,1,1,1,1,1>("M00_AXIS_transactor", M00_AXIS_transactor_param_props);
  mp_M00_AXIS_transactor->TDATA(M00_AXIS_tdata);
  mp_M00_AXIS_transactor->TKEEP(M00_AXIS_tkeep);
  mp_M00_AXIS_tlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tlast_converter");
  mp_M00_AXIS_tlast_converter->scalar_in(m_M00_AXIS_tlast_converter_signal);
  mp_M00_AXIS_tlast_converter->vector_out(M00_AXIS_tlast);
  mp_M00_AXIS_transactor->TLAST(m_M00_AXIS_tlast_converter_signal);
  mp_M00_AXIS_tvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXIS_tvalid_converter");
  mp_M00_AXIS_tvalid_converter->scalar_in(m_M00_AXIS_tvalid_converter_signal);
  mp_M00_AXIS_tvalid_converter->vector_out(M00_AXIS_tvalid);
  mp_M00_AXIS_transactor->TVALID(m_M00_AXIS_tvalid_converter_signal);
  mp_M00_AXIS_tready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXIS_tready_converter");
  mp_M00_AXIS_tready_converter->vector_in(M00_AXIS_tready);
  mp_M00_AXIS_tready_converter->scalar_out(m_M00_AXIS_tready_converter_signal);
  mp_M00_AXIS_transactor->TREADY(m_M00_AXIS_tready_converter_signal);
  mp_M00_AXIS_transactor->CLK(aclk0);
  m_M00_AXIS_transactor_rst_signal.write(1);
  mp_M00_AXIS_transactor->RST(m_M00_AXIS_transactor_rst_signal);
  // configure S00_AXIS_transactor
    xsc::common_cpp::properties S00_AXIS_transactor_param_props;
    S00_AXIS_transactor_param_props.addLong("TDATA_NUM_BYTES", "4");
    S00_AXIS_transactor_param_props.addLong("TDEST_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TID_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TUSER_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TREADY", "1");
    S00_AXIS_transactor_param_props.addLong("HAS_TSTRB", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TKEEP", "0");
    S00_AXIS_transactor_param_props.addLong("HAS_TLAST", "1");
    S00_AXIS_transactor_param_props.addLong("FREQ_HZ", "299996999");
    S00_AXIS_transactor_param_props.addLong("HAS_RESET", "0");
    S00_AXIS_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXIS_transactor_param_props.addString("CLK_DOMAIN", "cd_aclk_kernel_00");
    S00_AXIS_transactor_param_props.addString("LAYERED_METADATA", "undef");
    S00_AXIS_transactor_param_props.addString("MY_CATEGORY", "AIE");
    S00_AXIS_transactor_param_props.addString("CATEGORY", "PL");
    S00_AXIS_transactor_param_props.addString("IS_REGISTERED", "true");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    S00_AXIS_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_S00_AXIS_transactor = new xtlm::xaxis_pin2xtlm_t<4,1,1,1,1,1>("S00_AXIS_transactor", S00_AXIS_transactor_param_props);
  mp_S00_AXIS_transactor->TDATA(S00_AXIS_tdata);
  mp_S00_AXIS_tlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tlast_converter");
  mp_S00_AXIS_tlast_converter->vector_in(S00_AXIS_tlast);
  mp_S00_AXIS_tlast_converter->scalar_out(m_S00_AXIS_tlast_converter_signal);
  mp_S00_AXIS_transactor->TLAST(m_S00_AXIS_tlast_converter_signal);
  mp_S00_AXIS_tvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXIS_tvalid_converter");
  mp_S00_AXIS_tvalid_converter->vector_in(S00_AXIS_tvalid);
  mp_S00_AXIS_tvalid_converter->scalar_out(m_S00_AXIS_tvalid_converter_signal);
  mp_S00_AXIS_transactor->TVALID(m_S00_AXIS_tvalid_converter_signal);
  mp_S00_AXIS_tready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXIS_tready_converter");
  mp_S00_AXIS_tready_converter->scalar_in(m_S00_AXIS_tready_converter_signal);
  mp_S00_AXIS_tready_converter->vector_out(S00_AXIS_tready);
  mp_S00_AXIS_transactor->TREADY(m_S00_AXIS_tready_converter_signal);
  mp_S00_AXIS_transactor->CLK(aclk0);
  m_S00_AXIS_transactor_rst_signal.write(1);
  mp_S00_AXIS_transactor->RST(m_S00_AXIS_transactor_rst_signal);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXIS_transactor_initiator_socket_stub = nullptr;
  S00_AXIS_transactor_target_socket_stub = nullptr;

}

void ulp_inst_0_ai_engine_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "M00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->M00_AXIS_tlm_axis_socket->bind(*(mp_M00_AXIS_transactor->socket));
  
  }
  else
  {
    M00_AXIS_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    M00_AXIS_transactor_initiator_socket_stub->bind(*(mp_M00_AXIS_transactor->socket));
    mp_M00_AXIS_transactor->disable_transactor();
  }

  // configure 'S00_AXIS' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("ulp_inst_0_ai_engine_0_0", "S00_AXIS_TLM_MODE") != 1)
  {
    mp_impl->S00_AXIS_tlm_axis_socket->bind(*(mp_S00_AXIS_transactor->socket));
  
  }
  else
  {
    S00_AXIS_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    S00_AXIS_transactor_target_socket_stub->bind(*(mp_S00_AXIS_transactor->socket));
    mp_S00_AXIS_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




ulp_inst_0_ai_engine_0_0::~ulp_inst_0_ai_engine_0_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_awaddr_converter;
  delete mp_S00_AXI_awvalid_converter;
  delete mp_S00_AXI_awready_converter;
  delete mp_S00_AXI_wlast_converter;
  delete mp_S00_AXI_wvalid_converter;
  delete mp_S00_AXI_wready_converter;
  delete mp_S00_AXI_bvalid_converter;
  delete mp_S00_AXI_bready_converter;
  delete mp_S00_AXI_araddr_converter;
  delete mp_S00_AXI_arvalid_converter;
  delete mp_S00_AXI_arready_converter;
  delete mp_S00_AXI_rlast_converter;
  delete mp_S00_AXI_rvalid_converter;
  delete mp_S00_AXI_rready_converter;

  delete mp_M00_AXIS_transactor;
  delete mp_M00_AXIS_tlast_converter;
  delete mp_M00_AXIS_tvalid_converter;
  delete mp_M00_AXIS_tready_converter;

  delete mp_S00_AXIS_transactor;
  delete mp_S00_AXIS_tlast_converter;
  delete mp_S00_AXIS_tvalid_converter;
  delete mp_S00_AXIS_tready_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(ulp_inst_0_ai_engine_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(ulp_inst_0_ai_engine_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(ulp_inst_0_ai_engine_0_0);
SC_REGISTER_BV(128);
#endif

