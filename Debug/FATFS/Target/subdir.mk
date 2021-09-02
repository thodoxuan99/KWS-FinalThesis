################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FATFS/Target/bsp_driver_sd.c \
../FATFS/Target/fatfs_platform.c \
../FATFS/Target/sd_diskio.c 

OBJS += \
./FATFS/Target/bsp_driver_sd.o \
./FATFS/Target/fatfs_platform.o \
./FATFS/Target/sd_diskio.o 

C_DEPS += \
./FATFS/Target/bsp_driver_sd.d \
./FATFS/Target/fatfs_platform.d \
./FATFS/Target/sd_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
FATFS/Target/%.o: ../FATFS/Target/%.c FATFS/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../FATFS/Target -I../FATFS/App -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/Common" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ft5336" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/n25q128a" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ov9655" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/wm8994" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

