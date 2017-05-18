################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
dima.obj: ../dima.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_16.3.0.STS/bin/cl430" -vmsp --use_hw_mpy=16 --include_path="C:/ti/ccsv6/ccs_base/msp430/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_16.3.0.STS/include" --advice:power=all -g --define=__MSP430F148__ --display_error_number --diag_wrap=off --diag_warning=225 --abi=eabi --printf_support=minimal --preproc_with_compile --preproc_dependency="dima.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_16.3.0.STS/bin/cl430" -vmsp --use_hw_mpy=16 --include_path="C:/ti/ccsv6/ccs_base/msp430/include" --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-msp430_16.3.0.STS/include" --advice:power=all -g --define=__MSP430F148__ --display_error_number --diag_wrap=off --diag_warning=225 --abi=eabi --printf_support=minimal --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


