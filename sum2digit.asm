.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "ENTER  DIGIT : $"; 
nl DB 0dh,0ah, "$";
sum db "SUM : $";
.CODE
MAIN PROC
    MOV ax,@DATA;
    MOV ds,ax;
    
    MOV ah,9;
    LEA dx,MSG1
    INT 21h;
    
    MOV ah,1;   
    INt 21h;
    MOV bl,al;
    
    MOV ah,9;
    lea dx,nl;
    INT 21h;
     
    MOV ah,9;
    LEA dx,MSG1;
    INT 21h;
     
    MOV ah,1;
    INT 21h;
    MOV cl,al; 
    
    MOV ah,9;
    LEA dx,nl;
    INT 21h;
    
    MOV ah,9;
    LEA DX,sum;
    INT 21h;
    
    
    ADD cl,bl;
    SUB cl,'9';
    SUB cl,1H;
    
    MOV ah,2;
    MOV dl,'1';
    INT 21h;
     
    ;SUMMATION  
    MOV ah,2;
    MOV dl,cl;
    INT 21h;  

    MOV ah,4ch;
    INT 21h;
    
    MAIN ENDP
END MAIN
