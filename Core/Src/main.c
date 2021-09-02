/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stm32746g_discovery_audio.h"
#include "stm32746g_discovery_sdram.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
typedef enum {
    BUFFER_OFFSET_NONE = 0,
    BUFFER_OFFSET_HALF = 1,
    BUFFER_OFFSET_FULL = 2,
} BUFFER_StateTypeDef;


#define AUDIO_BLOCK_SIZE   ((uint32_t)512)
#define AUDIO_BUFFER_IN     SDRAM_DEVICE_ADDR
#define AUDIO_BUFFER_OUT   (AUDIO_BUFFER_IN + (AUDIO_BLOCK_SIZE * 2))

volatile uint32_t  audio_rec_buffer_state = BUFFER_OFFSET_NONE;
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
//  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
//  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */

  /* USER CODE BEGIN 2 */
  printf("\n\nAUDIO LOOPBACK EXAMPLE START:\n");

  BSP_AUDIO_IN_OUT_Init(INPUT_DEVICE_DIGITAL_MICROPHONE_2, OUTPUT_DEVICE_HEADPHONE, DEFAULT_AUDIO_IN_FREQ, DEFAULT_AUDIO_IN_BIT_RESOLUTION, DEFAULT_AUDIO_IN_CHANNEL_NBR);
  printf("AUDIO loop from digital micro (U20 & U21 components on board) to headphone (CN10 jack connector)\n");


  /* Initialize SDRAM buffers */
  BSP_SDRAM_Init();
  memset((uint16_t *)AUDIO_BUFFER_IN, 0, AUDIO_BLOCK_SIZE * 2);
  memset((uint16_t *)AUDIO_BUFFER_OUT, 0, AUDIO_BLOCK_SIZE * 2);
  printf("SDRAM init done\n");

  audio_rec_buffer_state = BUFFER_OFFSET_NONE;

  /* Start Recording */
  if (BSP_AUDIO_IN_Record((uint16_t *)AUDIO_BUFFER_IN, AUDIO_BLOCK_SIZE) != AUDIO_OK) {
	  printf("BSP_AUDIO_IN_Record error\n");
  }

  /* Start Playback */
  BSP_AUDIO_OUT_SetAudioFrameSlot(CODEC_AUDIOFRAME_SLOT_02);
  if (BSP_AUDIO_OUT_Play((uint16_t *)AUDIO_BUFFER_OUT, AUDIO_BLOCK_SIZE * 2) != AUDIO_OK) {
	  printf("BSP_AUDIO_OUT_Play error\n");
  }
  /* USER CODE END 2 */

  while (1) {
      /* Wait end of half block recording */
      while (audio_rec_buffer_state == BUFFER_OFFSET_HALF) {
      }
      audio_rec_buffer_state = BUFFER_OFFSET_NONE;

      /* Copy recorded 1st half block */
      memcpy((uint16_t *)(AUDIO_BUFFER_OUT), (uint16_t *)(AUDIO_BUFFER_IN), AUDIO_BLOCK_SIZE);

      /* Wait end of one block recording */
      while (audio_rec_buffer_state == BUFFER_OFFSET_FULL) {
      }
      audio_rec_buffer_state = BUFFER_OFFSET_NONE;

      /* Copy recorded 2nd half block */
      memcpy((uint16_t *)(AUDIO_BUFFER_OUT + (AUDIO_BLOCK_SIZE)), (uint16_t *)(AUDIO_BUFFER_IN + (AUDIO_BLOCK_SIZE)), AUDIO_BLOCK_SIZE);
  }
}


void BSP_AUDIO_IN_TransferComplete_CallBack(void)
{
    audio_rec_buffer_state = BUFFER_OFFSET_FULL;
}

/**
  * @brief  Manages the DMA Half Transfer complete interrupt.
  * @param  None
  * @retval None
  */
void BSP_AUDIO_IN_HalfTransfer_CallBack(void)
{
    audio_rec_buffer_state = BUFFER_OFFSET_HALF;
}

/**
  * @brief  Audio IN Error callback function.
  * @param  None
  * @retval None
  */
void BSP_AUDIO_IN_Error_CallBack(void)
{
    printf("BSP_AUDIO_IN_Error_CallBack\n");
}
/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
