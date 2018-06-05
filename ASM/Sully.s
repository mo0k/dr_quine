%define FMT "%%define FMT %c%s%c,0%c%%define LOOP %d%csection .data%cmeta:%c.format db FMT%c.buffer db 128%c.name db %cSully_%%d.s%c,0x0%c.access db %cw+%c,0x0%c.compil db %cnasm -f macho64 Sully_%%d.s -o Sully_%%d.o && ld Sully_%%d.o -macosx_version_min 10.8 -lSystem -o Sully_%%d && rm -f Sully_%%d.o && ./Sully_%%d%c,0x0%csection .text%cglobal _main%cextern _sprintf%cextern _fopen%cextern _fprintf%cextern _fclose%cextern _system%c_main:%cpush rbp%cmov rbp, rsp%csub rsp, 0x10%cmov rcx, LOOP%ccmp rcx, 0x0%cjl exit%clea rdi, [rel meta.buffer]%clea rsi, [rel meta.name]%cmov rdx, LOOP%ccall _sprintf%clea rdi, [rel meta.buffer]%clea rsi, [rel meta.access]%ccall _fopen%cmov r14, rax%cmov rcx, 0x58%cjmp loop0%cloop0:%ccmp rcx, 0x0%cdec rcx%cpush 0x0a%cjg loop0%cmov rcx, 0x0c%cjmp loop1%cloop1:%ccmp rcx, 0x0%cdec rcx%cpush 0x0a%cjg loop1%cmov rcx, 0x02%cjmp loop2%cloop2:%ccmp rcx, 0x0%cdec rcx%cpush 0x22%cjg loop2%cpush 0x0a%cmov rcx, 0x02%cjmp loop3%cloop3:%ccmp rcx, 0x0%cdec rcx%cpush 0x22%cjg loop3%cpush 0x0a%cmov rcx, 0x02%cjmp loop4%cloop4:%ccmp rcx, 0x0%cdec rcx%cpush 0x22%cjg loop4%cmov rcx, 0x05%cjmp loop5%cloop5:%ccmp rcx, 0x0%cdec rcx%cpush 0x0a%cjg loop5%cpush LOOP-1%clea rdi, [rel r14]%clea rsi, [rel meta.format]%cmov rdx, 0x22%cmov rcx, rsi%cmov r8, 0x22%cmov r9, 0x0a%ccall _fprintf%clea rdi, [rel r14]%ccall _fclose%clea rdi, [rel meta.buffer]%clea rsi, [rel meta.compil]%cmov rdx, LOOP%cmov rcx, LOOP%cmov r8, LOOP%cmov r9, LOOP%cpush LOOP%cpush LOOP%ccall _sprintf%clea rdi, [rel meta.buffer]%ccall _system%cjmp exit%cexit:%cmov rax, 0x0%cleave%cret%c",0
%define LOOP 5
section .data
meta:
.format db FMT
.buffer db 128
.name db "Sully_%d.s",0x0
.access db "w+",0x0
.compil db "nasm -f macho64 Sully_%d.s -o Sully_%d.o && ld Sully_%d.o -macosx_version_min 10.8 -lSystem -o Sully_%d && rm -f Sully_%d.o && ./Sully_%d",0x0
section .text
global _main
extern _sprintf
extern _fopen
extern _fprintf
extern _fclose
extern _system
_main:
push rbp
mov rbp, rsp
sub rsp, 0x10
mov rcx, LOOP
cmp rcx, 0x0
jl exit
lea rdi, [rel meta.buffer]
lea rsi, [rel meta.name]
mov rdx, LOOP
call _sprintf
lea rdi, [rel meta.buffer]
lea rsi, [rel meta.access]
call _fopen
mov r14, rax
mov rcx, 0x58
jmp loop0
loop0:
cmp rcx, 0x0
dec rcx
push 0x0a
jg loop0
mov rcx, 0x0c
jmp loop1
loop1:
cmp rcx, 0x0
dec rcx
push 0x0a
jg loop1
mov rcx, 0x02
jmp loop2
loop2:
cmp rcx, 0x0
dec rcx
push 0x22
jg loop2
push 0x0a
mov rcx, 0x02
jmp loop3
loop3:
cmp rcx, 0x0
dec rcx
push 0x22
jg loop3
push 0x0a
mov rcx, 0x02
jmp loop4
loop4:
cmp rcx, 0x0
dec rcx
push 0x22
jg loop4
mov rcx, 0x05
jmp loop5
loop5:
cmp rcx, 0x0
dec rcx
push 0x0a
jg loop5
push LOOP-1
lea rdi, [rel r14]
lea rsi, [rel meta.format]
mov rdx, 0x22
mov rcx, rsi
mov r8, 0x22
mov r9, 0x0a
call _fprintf
lea rdi, [rel r14]
call _fclose
lea rdi, [rel meta.buffer]
lea rsi, [rel meta.compil]
mov rdx, LOOP
mov rcx, LOOP
mov r8, LOOP
mov r9, LOOP
push LOOP
push LOOP
call _sprintf
lea rdi, [rel meta.buffer]
call _system
jmp exit
exit:
mov rax, 0x0
leave
ret
