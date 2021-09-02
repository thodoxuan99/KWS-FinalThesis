################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/main.c \
../Core/Src/stm32f7xx_hal_msp.c \
../Core/Src/stm32f7xx_hal_timebase_tim.c \
../Core/Src/stm32f7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f7xx.c 

OBJS += \
./Core/Src/main.o \
./Core/Src/stm32f7xx_hal_msp.o \
./Core/Src/stm32f7xx_hal_timebase_tim.o \
./Core/Src/stm32f7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f7xx.o 

C_DEPS += \
./Core/Src/main.d \
./Core/Src/stm32f7xx_hal_msp.d \
./Core/Src/stm32f7xx_hal_timebase_tim.d \
./Core/Src/stm32f7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/Common" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ft5336" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/n25q128a" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ov9655" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/wm8994" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

