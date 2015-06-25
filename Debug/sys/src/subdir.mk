################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sys/src/sys.c \
../sys/src/sysEncrypt.c \
../sys/src/sysTimer.c 

OBJS += \
./sys/src/sys.o \
./sys/src/sysEncrypt.o \
./sys/src/sysTimer.o 

C_DEPS += \
./sys/src/sys.d \
./sys/src/sysEncrypt.d \
./sys/src/sysTimer.d 


# Each subdirectory must supply rules for building sources it contributes
sys/src/%.o: ../sys/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/hal/atmega256rfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/hal/drivers/atmega256rfr2" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/nwk/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/phy/atmegarfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/sys/inc" -DPHY_ATMEGARFR2 -DHAL_ATMEGA256RFR2 -DPLATFORM_BITSTORM_ZB_B -Wall -g2 -gstabs -O1 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega256rfr2 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


