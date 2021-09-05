#include "mbed.h"
#include "stm32746g_discovery_audio.h"
#include "stm32746g_discovery_sdram.h"
#include <cstdio>
#include <exception>
#include <ratio>


#define MBED_CONF_TARGET_STDIO_UART_TX  PC_6    // USART6_TX    
#define MBED_CONF_TARGET_STDIO_UART_RX  PC_7    // USART6_RX
#define RXBUFFER                        255

Serial serial(PC_6,PC_7);
FlagStatus record = RESET;
FlagStatus got_command = RESET;
uint16_t window_length = 0;                 // Size of windown by milisecond
uint16_t start_time  = 0;
char terminator[] = "Terminate\r\n";

uint8_t temp;
uint8_t buffer[RXBUFFER];
uint8_t buffer_index;

typedef enum {
    BUFFER_OFFSET_NONE = 0,
    BUFFER_OFFSET_HALF = 1,
    BUFFER_OFFSET_FULL = 2,
} BUFFER_StateTypeDef;


#define AUDIO_BLOCK_SIZE   ((uint32_t)512)
#define AUDIO_BUFFER_IN     SDRAM_DEVICE_ADDR
#define AUDIO_BUFFER_OUT   (AUDIO_BUFFER_IN + (AUDIO_BLOCK_SIZE * 2))

volatile uint32_t  audio_rec_buffer_state = BUFFER_OFFSET_NONE;
FlagStatus isReceiveData(uint8_t *buffer , uint16_t buffer_len , const uint8_t * data);
uint8_t Get_Integer_From_Buffer(uint8_t *buffer,uint8_t start_index,uint8_t end_index);

int main()
{
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

    while (1) {
        /* Wait end of half block recording */
        if(record){
            if(HAL_GetTick() - start_time > window_length){
                record = RESET;
            }
            else{
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
                serial.write((uint16_t *)AUDIO_BUFFER_OUT,AUDIO_BLOCK_SIZE*2,NULL);
                serial.write((uint16_t*)"\r\n",2,NULL);
                serial.write((uint16_t*)terminate,strlen(terminator),NULL);
            }
        }
        else{
            if(serial.readable()){
                buffer[buffer_index++] = serial.read(&temp,1,NULL);
                if(isReceiveData((uint8_t*)buffer,(uint16_t)buffer_index,(uint8_t*)"\r\n")){
                    window_length = Get_Integer_From_Buffer(buffer, 0, 1);
                    memset(buffer,0,RXBUFFER);
                    buffer_index = 0;
                    start_time = HAL_GetTick();
                    record = SET;
                }
            }
        }
    }
}


/*-------------------------------------------------------------------------------------
       Callbacks implementation:
           the callbacks API are defined __weak in the stm32746g_discovery_audio.c file
           and their implementation should be done in the user code if they are needed.
           Below some examples of callback implementations.
  -------------------------------------------------------------------------------------*/
/**
  * @brief Manages the DMA Transfer complete interrupt.
  * @param None
  * @retval None
  */
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


FlagStatus isReceiveData(uint8_t *buffer , uint16_t buffer_len , const uint8_t * data){
	uint8_t data_length = strlen((char*)data);
	for (uint8_t index = 0; index < data_length; index++) {
		if(buffer[buffer_len -data_length + index]!=data[index]){
			return RESET;
		}
	}
	return SET;
}

uint8_t Get_Integer_From_Buffer(uint8_t *buffer,uint8_t start_index,uint8_t end_index){
    uint8_t result;
    for (uint8_t index = start_index ; index < end_index ; index++){
        result = result*10 + (uint8_t)(buffer[index]) - 48;
    }
    return result;
}
