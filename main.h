#ifndef __MAIN_H__
#define __MAIN_H__





#define _COSMIC_

#include <stm8l10x.h>

#define STARTUP_SWIM_DELAY_5S \
{\
_asm(\
"				PUSHW X				\n"	\
" 			PUSH A				\n"	\
"				LDW X,#0xFFFF	\n"	\
"loop1:	LD 	A,#50			\n"	\
													\
"loop2: DEC A					\n"	\
"				JRNE loop2		\n"	\
													\
"				DECW X				\n"	\
"				JRNE loop1		\n"	\
													\
"				POP A					\n"	\
"				POPW X					");\
}


#define CONFIG_UNUSED_PINS_STM8L001 \
{\
	GPIOA->DDR |= GPIO_Pin_1 | GPIO_Pin_3 | GPIO_Pin_5;\
	GPIOB->DDR |= GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_4;\
	GPIOC->DDR |= GPIO_Pin_5 | GPIO_Pin_6;\
	GPIOD->DDR |= GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7;\
}


#endif
