################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
/home/brenton/kernel/processAPA/processAPA.cxx 

CXX_DEPS += \
./testbench/processAPA.d 

OBJS += \
./testbench/processAPA.o 


# Each subdirectory must supply rules for building sources it contributes
testbench/processAPA.o: /home/brenton/kernel/processAPA/processAPA.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/data/Xilinx/Vitis_HLS/2023.1/include/ap_sysc -I/data/Xilinx/Vitis_HLS/2023.1/include/etc -I/data/Xilinx/Vitis_HLS/2023.1/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/auto_cc/include -I/data/Xilinx/Vitis_HLS/2023.1/lnx64/tools/systemc/include -I/home/brenton/kernel/processAPA -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/processAPA.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


