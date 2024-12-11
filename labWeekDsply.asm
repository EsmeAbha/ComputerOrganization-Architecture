.MODEL SMALL
.STACK 100h
.DATA
.CODE
MAIN PROC      
    
    ;display prompt
    MOV AH,2;display character function
    MOV DL,'?';charcter is '?'
    INT 21h;Display character 
    
    ;go to new line
    MOV AH,2;display character function
    MOV DL,0dh;Carriage return
    INT 21H;execute
    MOV DL,0ah;line feed
    int 21h; execute 
    
    ;input character
    MOV AH,1;input key function
    INT 21H;ASCII code in AL
    MOV BL,AL;save it in bl
      
    ;go to new line
    MOV AH,2;display character function
    MOV DL,0dh;Carriage return
    INT 21H;execute
    MOV DL,0ah;line feed
    int 21h; execute
    
    ;display charcter
    MOV AH,2;
    MOV dl,bl
    INT 21H; 
    
    ;return to dos
    MOV AH,4CH;
    INT 21H;execute   
    
    MAIN ENDP
END MAIN