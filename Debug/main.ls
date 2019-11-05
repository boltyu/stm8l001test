   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.10 - 25 Sep 2019
  56                     ; 9 void main(void)
  56                     ; 10 {
  58                     	switch	.text
  59  0000               _main:
  61  0000 89            	pushw	x
  62       00000002      OFST:	set	2
  65                     ; 11 	unsigned int delaycount = 0;
  67                     ; 13 	CONFIG_UNUSED_PINS_STM8L001;
  69  0001 c65002        	ld	a,20482
  70  0004 aa2a          	or	a,#42
  71  0006 c75002        	ld	20482,a
  74  0009 c65007        	ld	a,20487
  75  000c aa17          	or	a,#23
  76  000e c75007        	ld	20487,a
  79  0011 c6500c        	ld	a,20492
  80  0014 aa60          	or	a,#96
  81  0016 c7500c        	ld	20492,a
  84  0019 c65011        	ld	a,20497
  85  001c aafe          	or	a,#254
  86  001e c75011        	ld	20497,a
  87                     ; 15 	STARTUP_SWIM_DELAY_5S;
  91  0021 89            				PUSHW X				
  92  0022 88             			PUSH A				
  93  0023 aeffff        				LDW X,#0xFFFF	
  94  0026 a632          loop1:	LD 	A,#50			
  95  0028 4a            loop2: DEC A					
  96  0029 26fd          				JRNE loop2		
  97  002b 5a            				DECW X				
  98  002c 26f8          				JRNE loop1		
  99  002e 84            				POP A					
 100  002f 85            				POPW X					
 102                     ; 17 	GPIO_Init(GPIOA, GPIO_Pin_0, GPIO_Mode_In_PU_No_IT);
 105  0030 4b40          	push	#64
 106  0032 4b01          	push	#1
 107  0034 ae5000        	ldw	x,#20480
 108  0037 cd0000        	call	_GPIO_Init
 110  003a 85            	popw	x
 111                     ; 18 	GPIO_Init(GPIOA, GPIO_Pin_2, GPIO_Mode_In_PU_No_IT);
 113  003b 4b40          	push	#64
 114  003d 4b04          	push	#4
 115  003f ae5000        	ldw	x,#20480
 116  0042 cd0000        	call	_GPIO_Init
 118  0045 85            	popw	x
 119                     ; 19 	GPIO_Init(GPIOD, GPIO_Pin_0, GPIO_Mode_In_PU_No_IT);
 121  0046 4b40          	push	#64
 122  0048 4b01          	push	#1
 123  004a ae500f        	ldw	x,#20495
 124  004d cd0000        	call	_GPIO_Init
 126  0050 85            	popw	x
 127                     ; 20 	GPIO_Init(GPIOB, GPIO_Pin_6, GPIO_Mode_In_PU_No_IT);
 129  0051 4b40          	push	#64
 130  0053 4b40          	push	#64
 131  0055 ae5005        	ldw	x,#20485
 132  0058 cd0000        	call	_GPIO_Init
 134  005b 85            	popw	x
 135                     ; 21 	GPIO_Init(GPIOB, GPIO_Pin_7, GPIO_Mode_In_PU_No_IT);
 137  005c 4b40          	push	#64
 138  005e 4b80          	push	#128
 139  0060 ae5005        	ldw	x,#20485
 140  0063 cd0000        	call	_GPIO_Init
 142  0066 85            	popw	x
 143                     ; 23 	GPIO_Init(GPIOB, GPIO_Pin_3 ,GPIO_Mode_Out_PP_Low_Slow);
 145  0067 4bc0          	push	#192
 146  0069 4b08          	push	#8
 147  006b ae5005        	ldw	x,#20485
 148  006e cd0000        	call	_GPIO_Init
 150  0071 85            	popw	x
 151  0072               L72:
 152                     ; 26 		delaycount = 10000;
 154  0072 ae2710        	ldw	x,#10000
 155  0075 1f01          	ldw	(OFST-1,sp),x
 158  0077               L73:
 159                     ; 27 		while(delaycount --);
 161  0077 1e01          	ldw	x,(OFST-1,sp)
 162  0079 1d0001        	subw	x,#1
 163  007c 1f01          	ldw	(OFST-1,sp),x
 164  007e 1c0001        	addw	x,#1
 166  0081 a30000        	cpw	x,#0
 167  0084 26f1          	jrne	L73
 168                     ; 28 		GPIO_ToggleBits(GPIOB,GPIO_Pin_3);
 170  0086 4b08          	push	#8
 171  0088 ae5005        	ldw	x,#20485
 172  008b cd0000        	call	_GPIO_ToggleBits
 174  008e 84            	pop	a
 176  008f 20e1          	jra	L72
 189                     	xdef	_main
 190                     	xref	_GPIO_ToggleBits
 191                     	xref	_GPIO_Init
 210                     	end
