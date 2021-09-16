;
; AssemblerApplication1.asm
;
; Created: 12/8/2020 5:43:58 AM
; Author : asus
;


; Replace with your application code
start:
	LDI R17 , LOW(RAMEND)
	LDI R18 , HIGH(RAMEND)
	OUT SPH , R18
	OUT SPL , R17

    LDI R16 , 255
	OUT DDRA , R16
	
	LDI R27 , 0x00
	LDI R26 , 0x99
	
	LDI R21 , 9
	ST X+ , R21
	LDI R21 , 5
	ST X+ , R21
	LDI R21 , 0
	ST X+ , R21
	LDI R21 , 2
	ST X+ , R21
	LDI R21 , 1
	ST X+ , R21
	LDI R21 , 2
	ST X+ , R21
	LDI R21 , 6
	ST X+ , R21
	LDI R21 , 4
	ST X+ , R21
	LDI R21 , 7
	ST X+ , R21
	
	LDI R27 , 0
	LDI R26 , 0x99

	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc
	LD R22 , X+
	OUT PORTA , R22
	CALL myfunc

 L1:JMP L1

 myfunc:NOP
     L2:LDI R16 , 1
		DEC R16
		CPI R16 , 0
		BRNE L2  
		RET
