################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_camera.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c \
../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.c 

OBJS += \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_camera.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.o \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.o 

C_DEPS += \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_camera.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.d \
./BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/%.o: ../BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/%.c BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/Common" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ft5336" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/n25q128a" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ov9655" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/wm8994" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

