################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c \
../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.c 

OBJS += \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.o \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.o 

C_DEPS += \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.d \
./Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_usb.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F7xx_HAL_Driver/Src/%.o: ../Drivers/STM32F7xx_HAL_Driver/Src/%.c Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/Common" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ft5336" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/n25q128a" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/ov9655" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/Components/wm8994" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Drivers/BSP/STM32746G-Discovery" -I"C:/Users/thodo/STM32CubeIDE/workspace_1.7.0/KWS/BSP_DISCO_F746NG/Utilities/Fonts" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

