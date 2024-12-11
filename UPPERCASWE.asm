.MODEL SMALL
.STACK 100H
.DATA
box DB 0dh,0ah,'********** $';EQUATE OF DB TYPE WITH NEW LINE AND A STRING
box1 DB 0dh,0ah,'***coa**** $';EQUATE OF DB TYPE WITH NEW LINE AND A STRING
.CODE
MAIN PROC
    ;INITIALLIZE
    MOV AX,@DATA;
    MOV DS,AX;
    ;PRINT USER PROMPT
    
    LEA DX,box;
    MOV AH,9;
    INT 21H; 
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H      
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H 
    
    ;DISPLAY ON THE NEXT LINE
    LEA DX,box1;
    MOV AH,9;
    INT 21H      
    
    ;DISPLAY ON THE NEXT LINE
    LEA DX,box;
    MOV AH,9;
    INT 21H 
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H      
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H 
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H      
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H   
    
    ;DISPLAY ON THE NEXT LINE
    MOV AH,9;
    INT 21H 
    
    ;DOS EXIT
    MOV AH,4CH;
    INT 21H;
    MAIN ENDP
END MAIN