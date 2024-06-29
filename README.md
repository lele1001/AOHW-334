# Benchmark for Xilinx AI Engine 

## Info & Description
This repository contains the source code of the Project "Versal System Exploration: Benchmark suite for AI Engine". 

|| Information |
|----------------------|-----|
| **Team number**          | AOHW-334 |
| **Project name**         | Versal System Exploration: Benchmark suite for AI Engine |
| **YouTube's video**      | https://youtu.be/DQ7PJQzX1jk |
| **Project's repository** | https://github.com/lele1001/AOHW-334 |
| **University name**      | Politecnico di Milano |
| **Participant (email**)  | Eleonora Cabai (eleonora.cabai@mail.polimi.it) |
| **Supervisor name**      | Davide Conficconi |
| **Supervisor email**     | davide.conficconi@polimi.it |
| **Board used**           | AMD-Xilinx Versal VCK5000 |
| **Software version**     | 2024.1 |

## Main Structure
The archive is structured as follows:
```
├─ aie/                # AIE kernel for transfomation
|  └─ src/             # Contains the code
├─ data_movers/        # PL kernels for setting up the AIE and for fetching
├─ mutual_info/        # PL Kernel for computing mutual information
├─ common/             # Common codes and variables
├─ hw/                 # System integration
├─ sw/                 # Host application and dataset
└─ Makefile/           # Top-level Makefile to build and run  
```
## Instructions to build and test project

### Step 1 - Clone the repository
Open a terminal, then clone the repository by running the following command
```shell
git clone https://github.com/github.com/lele1001/AOHW-334.git
```
Then, move into the repository with 
```shell
cd AOHW-334
```

### Step 2 - Setup the environment
Before building and/or running the framework, run the following script. Notice that this will source Vitis 2022.1, xrt and devtoolset-7
```shell
source ./setup_all.sh
```

**Main Commands**

### aie

_make aie_compile_x86_ : compile your code for x86 architecture.  
_make aie_simulate_x86_ : simulate your x86 architecture.  
_make aie_compile_ : compile your code for VLIW architecture, as your final hardware for HW ad HW_EMU.  
_make aie_simulate_ : simulate your code for VLIW architecture, as your final hardware.  
_make clean_ : removes all the output file created by the commands listed above.  

### data_movers

_make compile TARGET=HW/HW_EMU_: compiles all your kernel, skipping the ones already compiled.  
_make run_testbench_setup_aie_ : compiles and execute the testbench for the kernel setup_aie.  
_make run_testbench_sink_from_aie_ : compiles and execute the testbench for the kernel setup_aie.  

### HW

_make all TARGET=HW_ : builds the hardware linking your components
_make all TARGET=HW_EMU_ : builds the hardware emu linking your components
_make clean_: removes all files.

### SW

_make build_sw_ : compiles the sw
_./setup_emu.sh -s on_ : enables the hardware emulation
_./host_overlay.exe_ : runs the emulation

## General useful commands:

If you need to move your bitstream and executable on the target machine, you may want it prepared in a single folder that contains all the required stuff to be moved. In this case, you can use the

_make build_and_pack TARGET=hw/hw_emu_ :  it allows you to pack our build in a single folder. Notice that the hw_emu does not have to be moved on the device, it must be executed on the development machine.
