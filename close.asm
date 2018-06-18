.586
.model flat,stdcall

includelib \masm32\lib\user32.lib

extern FindWindowA@8:near
extern SendMessageA@16:near


data segment

szClassName db "CalcFrame",0

data ends


text segment
start:

push 0
push offset szClassName
call FindWindowA@8

push 0
push 0
push 16
push eax
call SendMessageA@16

	ret
text ends
end start