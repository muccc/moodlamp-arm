################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Lib/subdir.mk
-include Dave/Generated/src/PWMSP003/subdir.mk
-include Dave/Generated/src/NVIC002/subdir.mk
-include Dave/Generated/src/IO004/subdir.mk
-include Dave/Generated/src/IO002/subdir.mk
-include Dave/Generated/src/IO001/subdir.mk
-include Dave/Generated/src/I2C003/subdir.mk
-include Dave/Generated/src/FLASH003/subdir.mk
-include Dave/Generated/src/DMX512RD01/subdir.mk
-include Dave/Generated/src/DAVESupport/subdir.mk
-include Dave/Generated/src/COLORLAMP01/subdir.mk
-include Dave/Generated/src/CLK002/subdir.mk
-include Dave/Generated/src/CCU4GLOBAL/subdir.mk
-include Dave/Generated/src/BCCUGLOBAL/subdir.mk
-include Dave/Generated/src/BCCUDIM01/subdir.mk
-include Dave/Generated/src/BCCUCH01/subdir.mk
-include Dave/Generated/src/ANACMPGLOB01/subdir.mk
-include Dave/Generated/src/ANACMP01/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
RGB_LED_Shield_v5.hex \

SECONDARY_LIST += \
RGB_LED_Shield_v5.lst \

SECONDARY_SIZE += \
RGB_LED_Shield_v5.siz \


# All Target
all: RGB_LED_Shield_v5.elf secondary-outputs

# Tool invocations
RGB_LED_Shield_v5.elf: $(OBJS) ../RGB_LED_Shield_v5.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -T"../RGB_LED_Shield_v5.ld" -nostartfiles -Xlinker --gc-sections -L"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Lib" -L"C:\DAVE-3.1.10\eclipse\/../Examples/Lib" -L"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI" -Wl,-Map,"RGB_LED_Shield_v5.map" -mcpu=cortex-m0 -mthumb -g3 -gdwarf-2 -o "RGB_LED_Shield_v5.elf" "@makefile.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

RGB_LED_Shield_v5.hex: RGB_LED_Shield_v5.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objcopy" -O ihex "RGB_LED_Shield_v5.elf"  "RGB_LED_Shield_v5.hex"
	@echo 'Finished building: $@'
	@echo ' '

RGB_LED_Shield_v5.lst: RGB_LED_Shield_v5.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objdump" -h -S "RGB_LED_Shield_v5.elf" > "RGB_LED_Shield_v5.lst"
	@echo 'Finished building: $@'
	@echo ' '

RGB_LED_Shield_v5.siz: RGB_LED_Shield_v5.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-size"  --format=berkeley RGB_LED_Shield_v5.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(SECONDARY_FLASH)$(S_DEPS)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(SECONDARY_LIST) RGB_LED_Shield_v5.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
