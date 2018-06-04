section .data;comment1
fmt db "section .data;comment1%cfmt db %c%s%c,0%csection .text%cglobal _main%cglobal _loop%cextern _printf%c_main:%c;comment2%cpush rbp%cmov rbp, rsp%clea rdi, [rel fmt]%cmov rsi, 0x0a%cmov rdx, 0x22%cmov rcx, rdi%cmov r8, 0x22%cmov r9, 0x0a%cmov r15, 0x20%ccall _loop%c_loop:%cpush 0x0a%cdec r15%ccmp r15, 0x0%cjge _loop%ccall _printf%cleave%cret%c",0
section .text
global _main
global _loop
extern _printf
_main:
;comment2
push rbp
mov rbp, rsp
lea rdi, [rel fmt]
mov rsi, 0x0a
mov rdx, 0x22
mov rcx, rdi
mov r8, 0x22
mov r9, 0x0a
mov r15, 0x20
call _loop
_loop:
push 0x0a
dec r15
cmp r15, 0x0
jge _loop
call _printf
leave
ret
