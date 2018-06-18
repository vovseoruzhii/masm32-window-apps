.586
.model flat,stdcall

includelib \masm32\lib\user32.lib

extern MessageBoxA@16:near

data segment

szHead db "Hello hello can you hear me",0
szMes db "Or can't?",0

data ends

text segment
start:

push 0
push offset szHead
push offset szMes
push 0
call MessageBoxA@16

ret 
text ends
end start