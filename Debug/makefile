################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include sys/src/subdir.mk
-include phy/atmegarfr2/src/subdir.mk
-include nwk/src/subdir.mk
-include hal/drivers/atmega256rfr2/subdir.mk
-include hal/atmega256rfr2/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
spike_zb_coordinator.lss \

FLASH_IMAGE += \
spike_zb_coordinator.hex \

SIZEDUMMY += \
sizedummy \


# All Target
all: spike_zb_coordinator.elf secondary-outputs

# Tool invocations
spike_zb_coordinator.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,spike_zb_coordinator.map -mmcu=atmega256rfr2 -o "spike_zb_coordinator.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

spike_zb_coordinator.lss: spike_zb_coordinator.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S spike_zb_coordinator.elf  >"spike_zb_coordinator.lss"
	@echo 'Finished building: $@'
	@echo ' '

spike_zb_coordinator.hex: spike_zb_coordinator.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex spike_zb_coordinator.elf  "spike_zb_coordinator.hex"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: spike_zb_coordinator.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega256rfr2 spike_zb_coordinator.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) spike_zb_coordinator.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
