.586
.model flat,stdcall


includelib \masm32\lib\user32.lib

extern MessageBoxA@16:near

data segment

szHeader db "TITLE",0
szMes db "HEllo there asshole!",0Dh,0Ah,"Im here",0Dh,0Ah,"ENd process?",0


data ends


text segment
start:

push 68
push offset szHeader
push offset szMes
push 0
call MessageBoxA@16

cmp eax,7
jz start

	ret 
text ends
end start