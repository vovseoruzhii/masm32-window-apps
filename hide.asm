.586
.model flat,stdcall

includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

extern FindWindowA@8:near
extern ShowWindow@8:near
extern Sleep@4:near

data segment

szClassName db "CalcFrame",0
WindowHandler dd 0

data ends

text segment
start:

push 0;offset zagolowka okna
push offset szClassName;offset klassa okna
call FindWindowA@8
mov WindowHandler,eax

push 0
push WindowHandler
call ShowWindow@8

push 5000;5000 ms == 5 sec
call Sleep@4

push 5
push WindowHandler
call ShowWindow@8

	ret
text ends
end start