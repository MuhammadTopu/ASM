.model small
.stack 100h
.data
a db 'JMP CONCEPT $'
b db 'IGNORE ME $'
c db 'PRINT ME $'
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    jmp level
    
    mov ah,9
    lea dx,b
    int 21h
    
    level:
    mov ah,9
    lea dx,c
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main