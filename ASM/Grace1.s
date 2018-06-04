%define DATA "%%define DATA %c%s%c,0%c%%define FT _main:%csection .data%cf db 0x47,0x72,0x61,0x63,0x65,0x31,0x2e,0x73,0x0%cr db 0x77,0x2b,0x0%cfmt db DATA%csection .text%cglobal _main%cextern _fopen%cextern _fclose%cextern _fprintf%cFT%cpush rbp%cmov rbp, rsp%cmov rcx, 0x29%ccall start%cstart:%cdec rcx%cpush 0x0a%ccmp rcx, 0x0%cjg start%clea rdi, [rel f]%clea rsi, [rel r]%ccall _fopen%cxchg r15, rax%cmov rdi, r15%clea rsi, [rel fmt]%cmov rdx, 0x22%cmov rcx, rsi%cmov r8, 0x22%cmov r9, 0x0a%ccall _fprintf%cxchg r15, rdi%ccall _fclose%cleave%cret%c",0
%define FT _main:
section .data
f db 0x47,0x72,0x61,0x63,0x65,0x31,0x2e,0x73,0x0
r db 0x77,0x2b,0x0
fmt db DATA
section .text
global _main
extern _fopen
extern _fclose
extern _fprintf
FT
push rbp
mov rbp, rsp
mov rcx, 0x29
call start
start:
dec rcx
push 0x0a
cmp rcx, 0x0
jg start
lea rdi, [rel f]
lea rsi, [rel r]
call _fopen
xchg r15, rax
mov rdi, r15
lea rsi, [rel fmt]
mov rdx, 0x22
mov rcx, rsi
mov r8, 0x22
mov r9, 0x0a
call _fprintf
xchg r15, rdi
call _fclose
leave
ret
