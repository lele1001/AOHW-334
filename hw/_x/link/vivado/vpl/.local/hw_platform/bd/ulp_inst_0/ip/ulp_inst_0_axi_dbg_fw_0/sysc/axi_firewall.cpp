// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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
#include "axi_firewall.h"
#include <sstream>

axi_firewall::axi_firewall(sc_core::sc_module_name module_name,xsc::common_cpp::properties&) :	sc_module(module_name) {
	M_INITIATOR_rd_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_rd_socket",32);
	M_INITIATOR_wr_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_wr_socket",32);
 	S_TARGET_rd_socket = new xtlm::xtlm_aximm_target_socket("target_rd_socket",32);
	S_TARGET_wr_socket = new xtlm::xtlm_aximm_target_socket("target_wr_socket",32);
 	S_TARGET_CTRL_rd_socket = new xtlm::xtlm_aximm_target_socket("target_ctrl_rd_socket",32);
	S_TARGET_CTRL_wr_socket = new xtlm::xtlm_aximm_target_socket("target_ctrl_wr_socket",32);
	P1 = new xtlm::xtlm_aximm_passthru_module("P1");
	P2 = new xtlm::xtlm_aximm_passthru_module("P2");
	P1->initiator_socket->bind(*M_INITIATOR_rd_socket);
	P2->initiator_socket->bind(*M_INITIATOR_wr_socket);
	S_TARGET_rd_socket->bind(*(P1->target_socket));
	S_TARGET_wr_socket->bind(*(P2->target_socket));

	ctrl_wr_util = new xtlm::xtlm_aximm_target_wr_socket_util("S_TARGET_CTRL_wr_util", xtlm::aximm::TRANSACTION, 32);
	ctrl_rd_util = new xtlm::xtlm_aximm_target_rd_socket_util("S_TARGET_CTRL_rd_util", xtlm::aximm::TRANSACTION, 32);

	S_TARGET_CTRL_rd_socket->bind(ctrl_rd_util->rd_socket);
	S_TARGET_CTRL_wr_socket->bind(ctrl_wr_util->wr_socket);

	SC_METHOD(handle_write);
	dont_initialize();
	sensitive << ctrl_wr_util->transaction_available;
	SC_METHOD(handle_read);
	dont_initialize();
	sensitive << ctrl_rd_util->transaction_available;

}

axi_firewall::~axi_firewall() {
	delete M_INITIATOR_wr_socket;
	delete M_INITIATOR_rd_socket;
	delete S_TARGET_wr_socket;
	delete S_TARGET_rd_socket;
	delete P1;
	delete P2;
}

void axi_firewall::handle_write()
{
	xtlm::aximm_payload* trans = ctrl_wr_util->get_transaction();
	trans->acquire();
	trans->set_response_status(xtlm::XTLM_OK_RESPONSE);

	sc_core::sc_time delay = SC_ZERO_TIME;
	ctrl_wr_util->send_resp(*trans, delay);
	trans->release();
}

void axi_firewall::handle_read()
{
	xtlm::aximm_payload* trans = ctrl_rd_util->get_transaction();
	trans->acquire();
	trans->set_response_status(xtlm::XTLM_OK_RESPONSE);

	sc_core::sc_time delay = SC_ZERO_TIME;
	ctrl_rd_util->send_data(*trans, delay);
	trans->release();
}
