   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.13 - 05 Feb 2019
   3                     ; Generator (Limited) V4.4.10 - 25 Sep 2019
  71                     ; 7 int main()
  71                     ; 8 {
  73                     	switch	.text
  74  0000               _main:
  76  0000 5206          	subw	sp,#6
  77       00000006      OFST:	set	6
  80                     ; 9 	int a = 0;
  82                     ; 10 	int b = 1;
  84                     ; 11 	int c = a + b;
  86                     ; 12 	a = c;
  88  0002               L73:
  89                     ; 13 	while (1);
  91  0002 20fe          	jra	L73
 104                     	xdef	_main
 123                     	end
