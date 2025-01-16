.model small
.stack 100h
.data

msg1 DB 'TYPE A CHARACTER:$'
msg2 DB 0DH,0AH,'THE ASCII CODE OF $'
msg3 DB ' IN BINARY IS $'
msg4 DB 0DH,0AH,'THE NUMBER OF 1 BITS IS $'
invalidmsg db 0dh,0ah, 'The input is invalid $'

.code

    main proc
    mov ax,@data ;load data section
    mov ds,ax
    lea dx,msg1  ;print msg1 "Type a character"    
    mov ah,9
    int 21h
    
    mov ah,1 ;take single character input

    int 21h   
    
    cmp al,'A' ;compare input with A
    jl invalidInput ;jump to invalidInput if less than 'A'
    cmp al,'Z';compare input with Z
    jg  notLetter ;jump to notLetter if input is greater than 'Z'
    jmp valid 
    
    invalidInput:
    Mov ah,9  
    lea dx,invalidmsg
    int 21h 
    jmp exit
    
     
    valid:
    xor bx,bx ;clear bx register
    mov bl,al
    
    lea dx,msg2 ;print msg2 "The ASCII code of"
    mov ah,9
    int 21h
    
    mov dl,bl ;move the input into dl
    mov ah,2
    int 21h
    
    lea dx,msg3 ;print msg3 "In binary is"
    mov ah,9
    int 21h 
    
    
    mov cx,8 ; limit for loop i<=8 for 8 bit
    mov bh,0  
    
    binary:
    shl bl,1 ;logical left shift bl 1  
    jnc zero; jump if CF=0
    inc bh  ;increment bh by 1 if cf=1
    mov dl,31h ; move '1' to dl
    jmp display ;jump to display
    
    zero:
    mov dl,30h ;load ascii '0' into dl    
    display:    
    
    mov ah,2 ;display single character
    int 21h
    loop binary ;loop will be terminated while cx is greater than 8  
    
    ADD bh,30h ;convert bh to ascii
    lea dx,msg4
    mov ah,9 ;print msg4 "The number of 1 bits is"
    int 21h
    
    mov dl,bh ;print the count of 1 bits
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h 
    
    notLetter:
    cmp al,'a'
    jl invalidInput
    cmp al,'z'
    jg invalidInput 
    jmp valid
     
    exit:
    mov ah,4ch
    int 21h
    
    MAIN ENDP
    End main
    