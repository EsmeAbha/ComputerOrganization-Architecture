.MODEL small
.STACK 100h
.DATA
.CODE
PROC MAIN
    MOV AH,1;take input 1 character
    INT 21H; 
    
    SUB AL,30H;convert to ascii
        

; 1, 3:
    CMP al,1 ;compare with 1
    JE ODD   ;jump if equal to 1
    CMP al,3 ;compare al with 3
    JE odd   ;jump if equal to 3
;2,4:
    CMP al,2 ;compare al with 2
    JE even  ;jump if equal to 2
    CMP al,4 ;compare al with 4
    JE even  ;jump if equal to 4
    JMP END_CASE ;jump if case is end
        
    ODD:
    MOV DL,'o' ;display o
    JMP DISPLAY
        
    EVEN:
    MOV DL,'e' ;display e
        
DISPLAY:
    MOV AH,2 ;display one character
    INT 21H; ;interrupt handler
END_CASE:
    
    MAIN ENDP
END MAIN