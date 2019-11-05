/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include "main.h"


 
void main(void)
{
	unsigned int delaycount = 0;
	
	CONFIG_UNUSED_PINS_STM8L001;
	
	STARTUP_SWIM_DELAY_5S;
	
	GPIO_Init(GPIOA, GPIO_Pin_0, GPIO_Mode_In_PU_No_IT);
	GPIO_Init(GPIOA, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);
	GPIO_Init(GPIOD, GPIO_Pin_0, GPIO_Mode_In_PU_No_IT);
	GPIO_Init(GPIOB, GPIO_Pin_6, GPIO_Mode_In_PU_No_IT);
	GPIO_Init(GPIOB, GPIO_Pin_7, GPIO_Mode_In_PU_No_IT);
	
	GPIO_Init(GPIOB, GPIO_Pin_3 ,GPIO_Mode_Out_PP_Low_Slow);
	
	while(1){
		delaycount = 10000;
		while(delaycount --);
		GPIO_ToggleBits(GPIOB,GPIO_Pin_3);
	}
}
