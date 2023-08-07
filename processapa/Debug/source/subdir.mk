################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
/home/brenton/kernel/processAPA/FDHDChannelMapSP.cxx 

CPP_SRCS += \
/home/brenton/kernel/processAPA/kernel.cpp \
/home/brenton/kernel/processAPA/myproject.cpp 

CXX_DEPS += \
./source/FDHDChannelMapSP.d 

OBJS += \
./source/FDHDChannelMapSP.o \
./source/kernel.o \
./source/myproject.o 

CPP_DEPS += \
./source/kernel.d \
./source/myproject.d 


# Each subdirectory must supply rules for building sources it contributes
source/FDHDChannelMapSP.o: /home/brenton/kernel/processAPA/FDHDChannelMapSP.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/data/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/data/Xilinx/Vitis_HLS/2023.1/include/etc -I/data/Xilinx/Vitis_HLS/2023.1/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/brenton/kernel/processAPA -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/kernel.o: /home/brenton/kernel/processAPA/kernel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/data/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/data/Xilinx/Vitis_HLS/2023.1/include/etc -I/data/Xilinx/Vitis_HLS/2023.1/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/brenton/kernel/processAPA -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/myproject.o: /home/brenton/kernel/processAPA/myproject.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/data/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/data/Xilinx/Vitis_HLS/2023.1/include/etc -I/data/Xilinx/Vitis_HLS/2023.1/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/brenton/kernel/processAPA -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


