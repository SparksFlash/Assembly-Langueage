.model
.stack 100h
.data               ; For var declaration   
a db 5              ; db = define byte
b db ?
.code

main proc  
    mov ax,@data    ; initialization with code segment
    mov ds,ax
    
    mov ah,1
    int 21h
    mov b,al        ; b input
    
    mov ah,2
    mov dl,10 
    int 21h
    mov dl,13       ; carry return
    int 21h
    
    
    mov ah,2
    mov dl,a 
    add dl,48       ; 5 + 48 = 53(5)   ASCII value of 5
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    