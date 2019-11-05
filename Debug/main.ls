   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.10 - 25 Sep 2019
1713                     ; 7 void waitfor(void){
1715                     	switch	.text
1716  0000               _waitfor:
1718  0000 89            	pushw	x
1719       00000002      OFST:	set	2
1722                     ; 8 	int countx = 1000;
1724  0001 ae03e8        	ldw	x,#1000
1725  0004 1f01          	ldw	(OFST-1,sp),x
1728  0006               L7611:
1729                     ; 9 	while(countx--);
1731  0006 1e01          	ldw	x,(OFST-1,sp)
1732  0008 1d0001        	subw	x,#1
1733  000b 1f01          	ldw	(OFST-1,sp),x
1734  000d 1c0001        	addw	x,#1
1736  0010 a30000        	cpw	x,#0
1737  0013 26f1          	jrne	L7611
1738                     ; 11 }
1741  0015 85            	popw	x
1742  0016 81            	ret
1770                     ; 13 void main(void)
1770                     ; 14 {
1771                     	switch	.text
1772  0017               _main:
1776                     ; 15 	PC_DDR = 0xff;
1778  0017 35ff500c      	mov	_PC_DDR,#255
1779                     ; 16 	PC_CR1 = 0;
1781  001b 725f500d      	clr	_PC_CR1
1782                     ; 17 	PC_CR2 = 0;
1784  001f 725f500e      	clr	_PC_CR2
1785  0023               L3021:
1786                     ; 20 		PC_ODR = 0xff;
1788  0023 35ff500a      	mov	_PC_ODR,#255
1789                     ; 21 		waitfor();
1791  0027 add7          	call	_waitfor
1793                     ; 22 		PC_ODR = 0x00;
1795  0029 725f500a      	clr	_PC_ODR
1796                     ; 23 		waitfor();		
1798  002d add1          	call	_waitfor
1801  002f 20f2          	jra	L3021
1814                     	xdef	_main
1815                     	xdef	_waitfor
1834                     	end
