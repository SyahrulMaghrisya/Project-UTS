ORG 00H    ;STARTING ADDRESS

AGAIN:                     ; AGAIN SUBROUTINE
	SETB P2.0        ; TURN LED OFF
        ACALL DELAY  ; CALL DELAY
        CLR P2.0          ; TURN LED ON
        ACALL DELAY  ; CALL DELAY
	SETB P2.1        ; TURN LED OFF
        ACALL DELAY  ; CALL DELAY
        CLR P2.1          ; TURN LED ON
        ACALL DELAY  ; CALL DELAY
        SJMP AGAIN    ; DO CONTINUESLY
        
        DELAY:            ; NORMAL DELAY TO BLINK LED
        	MOV R0,#8H
        HERE3:	MOV R1,#0FFH
        HERE2:	MOV R2,#0FFH
        HERE:	DJNZ R2, HERE
		DJNZ R1, HERE2
 		DJNZ R0, HERE3
   		RET
		END