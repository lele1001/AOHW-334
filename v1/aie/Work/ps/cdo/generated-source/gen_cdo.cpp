#include <iostream> 
#include <cstring>
#include "gen_cdo.h"
#include "../c_rts/aie_control.cpp"
extern "C" {
#include "cdo_driver.h"
}

void initializeCDOGenerator(bool AXIdebug, bool endianness){
	if(AXIdebug)
		EnAXIdebug(); // Enables AXI-MM prints for configs being added in CDO, helpful for debugging
	setEndianness(endianness);
	
}

void addInitConfigToCDO(const std::string &workDirPath){
	if(broadcastConfigForCoreEnable() != adf::return_code::ok)
		exit(EXIT_FAILURE);
	aie_graph_init(workDirPath);
}

void addCoreEnableToCDO(){
	aie_graph_core_enable();
}

void addDbgHaltToCDO(){
	aie_graph_core_debug_halt();
}

void addResetConfigToCDO(){
	resetPartition();
}

void addErrorHandlingToCDO(){
	enableErrorHandling();
}

void addClockGatingToCDO(){
	enableClockGating();
}

void addMemClearingConfigToCDO(){
	clearPartitionMems();
}

void addAieElfsToCDO(const std::string &workDirPath){
	std::vector<std::string> elfInfoPath;
	if(!aie_graph_load_elf(workDirPath, elfInfoPath))
		exit(EXIT_FAILURE);
}

void generateCDOBinariesSeparately(const std::string &workDirPath, bool AXIdebug) {

	// aie_cdo_reset.bin
	const std::string resetCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_reset.bin";
	if(AXIdebug) std::cout << "START: Reset Configuration\n";
	startCDOFileStream(resetCDOFilePath.c_str());
	FileHeader();
	addResetConfigToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Reset Configuration\n\n";

	// aie_cdo_clock_gating.bin
	const std::string clockGatingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_clock_gating.bin";
	if(AXIdebug) std::cout << "START: Clock Gating Configuration\n";
	startCDOFileStream(clockGatingCDOFilePath.c_str());
	FileHeader();
	addClockGatingToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Clock Gating Configuration\n\n";

	// aie_cdo_mem_clear.bin
	const std::string memClearingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_mem_clear.bin";
	if(AXIdebug) std::cout << "START: Memory Clearing Configuration\n";
	startCDOFileStream(memClearingCDOFilePath.c_str());
	FileHeader();
	addMemClearingConfigToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Memory Clearing Configuration\n\n";

	// aie_cdo_error_handling.bin
	const std::string errorHandlingCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_error_handling.bin";
	if(AXIdebug) std::cout << "START: Error Handling Configuration\n";
	startCDOFileStream(errorHandlingCDOFilePath.c_str());
	FileHeader();
	addErrorHandlingToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Error Handling Configuration\n\n";

	// aie_cdo_elfs.bin
	const std::string elfsCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_elfs.bin";
	if(AXIdebug) std::cout << "START: AIE ELF Configuration\n";
	startCDOFileStream(elfsCDOFilePath.c_str());
	FileHeader();
	addAieElfsToCDO(workDirPath);
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: AIE ELF Configuration\n\n";

	// aie_cdo_init.bin
	const std::string initCfgCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_init.bin";
	if(AXIdebug) std::cout << "START: Initial Configuration (SHIM and AIE Array)\n";
	startCDOFileStream(initCfgCDOFilePath.c_str());
	FileHeader();
	addInitConfigToCDO(workDirPath);
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Initial Configuration (SHIM and AIE Array)\n\n";

	// aie_cdo_enable.bin
	const std::string coreEnableCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_enable.bin";
	if(AXIdebug) std::cout << "START: Core Enable Configuration\n";
	startCDOFileStream(coreEnableCDOFilePath.c_str());
	FileHeader();
	addCoreEnableToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Core Enable Configuration\n\n";

	// aie_cdo_debug.bin
	const std::string dbgHaltCDOFilePath = workDirPath + "/ps/cdo/aie_cdo_debug.bin";
	if(AXIdebug) std::cout << "START: Core Debug Halt Configuration\n";
	startCDOFileStream(dbgHaltCDOFilePath.c_str());
	FileHeader();
	addDbgHaltToCDO();
	configureHeader();
	endCurrentCDOFileStream();
	if(AXIdebug) std::cout << "DONE: Core Debug Halt Configuration\n\n";

	// aie_resources.bin
	const std::string aieRscsFilePath = workDirPath + "/config/aie_resources.bin";
	dumpAllocatedRscsToFile(aieRscsFilePath);
}
