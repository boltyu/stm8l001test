/* MAIN.C file
 * 
 * Copyright (c) 2002-2005 STMicroelectronics
 */
#include "main.h"

void waitfor(void){
	int countx = 1000;
	while(countx--);
		
}
 
void main(void)
{
	PC_DDR = 0xff;
	PC_CR1 = 0;
	PC_CR2 = 0;
	
	for(;;){
		PC_ODR = 0xff;
		waitfor();
		PC_ODR = 0x00;
		waitfor();		
		}
}