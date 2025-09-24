.model small
.stack 100h
.code

main proc
    ; Initialize registers with some values
    mov ax, 1234h    ; Example value in AX
    mov bx, 5678h    ; Example value in BX

    ; Swap AX and BX
    xchg ax, bx

    ; Exit program
    mov ah, 4ch
    int 21h
main endp
end main
