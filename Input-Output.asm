.model small  ; By the code size we can define it small, large or somthing
.stack 100h   ; How much the size of stack's memory, it can be decimal or hex value
.code         ; code segment

main proc     ; main func 
    mov ah,1  ; char input
    int 21h   ; interuppt 21h func will call the previous function for execution
    mov bh,al ; Any value by defult stores in AL, But we will try not to keep our value in by default reg
    
    mov ah,2  ; char output   [ah,9==string output]
    mov dl,bl ; Anything we want to show in output have to take in DL register
    int 21h    
    
    exit:     ; These 4 lines works as return 0
    mov ah,4ch
    int 21h
    main endp
end main      


;We should use the low portion first like (al,bl,cl,dl)     