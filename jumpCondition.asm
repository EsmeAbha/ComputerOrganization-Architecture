.model small
.stack 150h
.data
m1 dw 'Input character is: $';
m2 dw 'Second msg is: $';
 nl dw 0ah, 0dh, '$';
.code
    main proc   
        mov ax, @data
        mov ds, ax
        
        jmp morning
        morning:  
      ;input the character  
        mov ah, 1 
        int 21h       
        mov dl,al 
        mov ch,al 
        
        add dl, 32
        mov cl,dl  
        
              
        lea dx, nl
        mov ah, 9
        int 21h
        
      ;convert to capital letter  

        
        lea dx, m1
        mov ah, 9
        int 21h
        
        mov ah, 2
        mov dl, ch
        int 21h  
        
        lea dx, nl
        mov ah, 9
        int 21h
        
        lea dx, m2
        mov ah, 9
        int 21h
        
        mov ah, 2
        mov dl, cl
        int 21h   
        
        lea dx, nl
        mov ah, 9
        int 21h

                
        jmp morning
        
        jmp exit
        exit:
        mov ah, 4ch 
        int 21h
        

    main endp
end main

