// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of num_clusters
//        bit 31~0 - num_clusters[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of num_points
//        bit 31~0 - num_points[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x24 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x28 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL           0x00
#define CONTROL_ADDR_GIE               0x04
#define CONTROL_ADDR_IER               0x08
#define CONTROL_ADDR_ISR               0x0c
#define CONTROL_ADDR_NUM_CLUSTERS_DATA 0x10
#define CONTROL_BITS_NUM_CLUSTERS_DATA 32
#define CONTROL_ADDR_NUM_POINTS_DATA   0x18
#define CONTROL_BITS_NUM_POINTS_DATA   32
#define CONTROL_ADDR_INPUT_R_DATA      0x20
#define CONTROL_BITS_INPUT_R_DATA      64
