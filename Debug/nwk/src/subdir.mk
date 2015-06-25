################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../nwk/src/nwk.c \
../nwk/src/nwkDataReq.c \
../nwk/src/nwkFrame.c \
../nwk/src/nwkGroup.c \
../nwk/src/nwkRoute.c \
../nwk/src/nwkRouteDiscovery.c \
../nwk/src/nwkRx.c \
../nwk/src/nwkSecurity.c \
../nwk/src/nwkTx.c 

OBJS += \
./nwk/src/nwk.o \
./nwk/src/nwkDataReq.o \
./nwk/src/nwkFrame.o \
./nwk/src/nwkGroup.o \
./nwk/src/nwkRoute.o \
./nwk/src/nwkRouteDiscovery.o \
./nwk/src/nwkRx.o \
./nwk/src/nwkSecurity.o \
./nwk/src/nwkTx.o 

C_DEPS += \
./nwk/src/nwk.d \
./nwk/src/nwkDataReq.d \
./nwk/src/nwkFrame.d \
./nwk/src/nwkGroup.d \
./nwk/src/nwkRoute.d \
./nwk/src/nwkRouteDiscovery.d \
./nwk/src/nwkRx.d \
./nwk/src/nwkSecurity.d \
./nwk/src/nwkTx.d 


# Each subdirectory must supply rules for building sources it contributes
nwk/src/%.o: ../nwk/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/hal/atmega256rfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/hal/drivers/atmega256rfr2" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/nwk/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/phy/atmegarfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_coordinator/sys/inc" -DPHY_ATMEGARFR2 -DHAL_ATMEGA256RFR2 -DPLATFORM_BITSTORM_ZB_B -Wall -g2 -gstabs -O1 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega256rfr2 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


