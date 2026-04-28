################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers_Devices/Src/stm32f407xx.c \
../Drivers_Devices/Src/stm32f407xx_gpio.c 

OBJS += \
./Drivers_Devices/Src/stm32f407xx.o \
./Drivers_Devices/Src/stm32f407xx_gpio.o 

C_DEPS += \
./Drivers_Devices/Src/stm32f407xx.d \
./Drivers_Devices/Src/stm32f407xx_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers_Devices/Src/%.o Drivers_Devices/Src/%.su Drivers_Devices/Src/%.cyclo: ../Drivers_Devices/Src/%.c Drivers_Devices/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F407G_DISC1 -DSTM32F4 -DSTM32F407VGTx -c -I"E:/Device_Drivers/Custom_drivers/Drivers_Devices/Inc" -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers_Devices-2f-Src

clean-Drivers_Devices-2f-Src:
	-$(RM) ./Drivers_Devices/Src/stm32f407xx.cyclo ./Drivers_Devices/Src/stm32f407xx.d ./Drivers_Devices/Src/stm32f407xx.o ./Drivers_Devices/Src/stm32f407xx.su ./Drivers_Devices/Src/stm32f407xx_gpio.cyclo ./Drivers_Devices/Src/stm32f407xx_gpio.d ./Drivers_Devices/Src/stm32f407xx_gpio.o ./Drivers_Devices/Src/stm32f407xx_gpio.su

.PHONY: clean-Drivers_Devices-2f-Src

