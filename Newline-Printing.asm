.model
.stack 256
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    ;mov dl,10  ; new line    
    mov dl,0Ah
    int 21h
    mov dl,13  ; carry return
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main