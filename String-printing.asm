.model
.stack 100h
.data
a db 'Bangladesh is a beautiful country $'
.code

main proc
    mov ax,@data
    mov ds,ax     
    
    mov ah,9      ; 
    lea dx,a      ;load-effective area for string printing
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    