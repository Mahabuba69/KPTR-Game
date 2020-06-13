.stack 100h
.model small
.data
msg db 'MADAM','$'  
msglen dw $-msg
msgrev db 20 dup(' ')
palin db 'string is Palindrome.','$'
not_palin db 'String is not Palindrome.','$'
.code

main proc
     
    mov ax,@data
    mov ds,ax
    

  Begin:
    mov ax, data
    mov ds, ax
    mov es, ax
    mov cx, msglen
    add cx, -2

    lea si, msg
    lea di, msgrev

    add si, msglen
    add si, -2
    L1:
       mov al, [si]
       mov [di], al
       dec si
       inc di
       loop L1
       mov al, [si]
       mov [di], al
       inc di
       mov dl, '$'
       mov [di], dl
       mov cx, msglen

    Palin_Check:
       lea si, msg
       lea di, msgrev
       repe cmpsb
       jne Not_Palin

    Palin:
       mov ah, 09h
       lea dx, Palin
       int 21h
       jmp Exit

    Not_Palin:
       mov ah, 09h
       lea dx, not_palin
       int 21h

    Exit:
       mov ax, 4c00h
       int 21h
main endp
End Begin