################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/src/FEE001/FEE001.c \
../Dave/Generated/src/FEE001/FEE001_Conf.c 

OBJS += \
./Dave/Generated/src/FEE001/FEE001.o \
./Dave/Generated/src/FEE001/FEE001_Conf.o 

C_DEPS += \
./Dave/Generated/src/FEE001/FEE001.d \
./Dave/Generated/src/FEE001/FEE001_Conf.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/src/FEE001/%.o: ../Dave/Generated/src/FEE001/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DUC_ID=1201007 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC1200_series/Include" -I"C:\DAVE3_workspace\first\RGB_LED_Shield_XMC1200_tmp_flash\Dave\Generated\inc\DAVESupport" -I"C:\DAVE3_workspace\first\RGB_LED_Shield_XMC1200_tmp_flash\Dave\Generated\inc\LIBS" -Os -ffunction-sections -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


