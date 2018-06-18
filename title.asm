.586
.model flat,stdcall

includelib \masm32\lib\user32.lib
extern SetWindowTextA@8:near
extern FindWindowA@8:near

data segment

szClassName db "CalcFrame",0
szNewTitle db "OHMY",0

data ends


text segment
start:

push 0
push offset szClassName
call FindWindowA@8

push offset szNewTitle
push eax
call SetWindowTextA@8

	ret
text ends 
end start