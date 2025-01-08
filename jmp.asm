                                                        
#work_1(Conditional Jump)
.model small
.data
    hello db 0dh, 0ah, "Hello World$"
    bye db 0dh, 0ah, "Bye World$"
    count db 5

.code
    mov ax, @data
    mov ds, ax

    ; Initialize loop counter
    mov cx, 5   
    

print_hello:
    mov ah, 09h     ; DOS function to print a string
    lea dx, hello   ; Load address of hello string
    int 21h         ; Call DOS 

    dec cx;

    ; Check if we've printed "Hello World" five times
    CMP cx, 0;
    JG  print_hello:
   
    JLE print_bye    ; If count is zero, jump to print_bye 


  
print_bye:
    ; Print "Bye World"
    mov ah, 09h     ; DOS function to print a string
    lea dx, bye     ; Load address of bye string
    int 21h         ; Call DOS

    ; Exit the program
    mov ah, 4Ch     ; DOS function to exit
    int 21h         ; Call DOS

end
