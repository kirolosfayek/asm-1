.586

.MODEL FLAT

INCLUDE io.h

.STACK 4096

.DATA

	result BYTE "THE TOTAL NUMBER OF COINS",0

	p BYTE  "enter number of pennies ",0

	n BYTE  "enter number of nickels ",0

	d BYTE  "enter number of dimes ",0

	q BYTE  "enter number of quarters ",0

	f BYTE  "enter number of fifty-cent pieces ",0

	dol BYTE  "enter number of dollar  ",0

	x  DWORD ?

	y  DWORD ?

	count DWORD ?



	string BYTE 30 DUP(?)

    result1 BYTE "The toatal you enter is "

	dollar BYTE 11 DUP(?)

	   BYTE "  Dollar and "

	 

	pennies BYTE 11 DUP(?)

	   BYTE "  Pennies ",0

.CODE

MainProc PROC 

	input p,string,30

	atod string 

	mov x,eax

	input n,string,30

	atod string

	mov y,eax

	mov eax,5

	mul y

	add x,eax
  
	input d,string,30

	atod string

	mov y,eax

	mov eax,10

	mul y

	add x,eax

	input q,string,30

	atod string

	mov y,eax

	mov eax,25

	mul y

	add x,eax

	input f,string,30

	atod string

	mov y,eax

	mov eax,50

	mul y

	add x,eax

	input dol,string,30

	atod string

	mov y,eax

	mov eax,100

	mul y

	add eax,x
  

	mov ebx,100

	div ebx



	dtoa pennies,edx

	dtoa dollar,eax

	output result,result1


	mov eax,0 

	ret



MainProc ENDP



END
