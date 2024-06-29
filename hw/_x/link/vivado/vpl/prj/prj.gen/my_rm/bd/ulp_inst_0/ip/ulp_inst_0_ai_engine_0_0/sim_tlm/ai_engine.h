#ifndef __AIE_ENGINE_0_0_H__
#define __AIE_ENGINE_0_0_H__
/*  (c) Copyright 1995 - 2018 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.          */



#include "aie_logical.h"
#include "aie_config.h"
#include "aie_ps.h"

class ai_engine :  public sc_module {

    public: 
        SC_HAS_PROCESS (ai_engine);

        ai_engine(sc_module_name nm, xsc::common_cpp::properties& me_properties);

        //! Slave AXI-MM config sockets...
        xtlm::xtlm_aximm_target_socket* S00_AXI_tlm_aximm_read_socket;
        xtlm::xtlm_aximm_target_socket* S00_AXI_tlm_aximm_write_socket;

        //! ME to NOC/PL Stream socket-enabled in IPI
        xtlm::xtlm_axis_initiator_socket* M00_AXIS_tlm_axis_socket;

         //! NOC/PL to ME Stream socket-enabled in IPI
        xtlm::xtlm_axis_target_socket* S00_AXIS_tlm_axis_socket;
       
        //! ME to NOC MM socket-enabled in IPI

        //! PL Clock in ports
        sc_in<bool> aclk0;

        //! NOC Stream Clock out ports

        //! NOC Stream Clock periods

        //! NOC Slave AXIMM Clock out ports
        sc_out<bool> s00_axi_aclk;

        //! NOC Slave AXIMM Clock periods
        sc_time s00_axi_aclk_period;

        //! NOC Master AXIMM Clock out ports

        //! NOC Master AXIMM Clock periods

        //! NOC Stream Clock Generation methods
        void noc_aclk0_gen();

        //! NOC Slave AXIMM Clock Generation methods
        void s00_axi_aclk_gen();

        //! NOC Master AXIMM Clock Generation methods

        //ME Core clock
        sc_clock  me_core_clk;

        //! TRG IN Ports

        //! TRG OUT Ports

    ~ai_engine();
    private: 
        //! Aie Logical instance
        xsc::aie::AieConfig    aie_cfg;
        xsc::aie::aie_logical* aie_logical_inst;

        std::map<unsigned int, unsigned int>   s_axis_width_map;
        std::map<unsigned int, unsigned int>   m_axis_width_map;

        void set_sim_config();

        aie_ps* m_aie_ps;
        xtlm::xtlm_aximm_target_rd_socket_util *S00_Aximm_rd_util;
        xtlm::xtlm_aximm_target_wr_socket_util *S00_Aximm_wr_util;
        
        void set_aie_ps_reset();
        sc_core::sc_signal<bool> aie_ps_reset;
        
};


#endif // __ME_XTLM_0_0_H_
