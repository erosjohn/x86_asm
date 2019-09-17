;extern testStringA
;extern testStringB

[section .data]

[section .text]
global myStrcmp

myStrcmp:
	push ebp
	mov ebp,esp
	push ebx
	push ecx
	push edx
	mov eax,[ebp+8]
	mov ebx,[ebp+12]
LOOP:	
	mov cl,[eax]
	mov dl,[ebx]
	inc eax
	inc ebx	
	cmp cl,0
	jz stringA_end
	cmp dl,0
	jz stringB_end
	cmp cl,dl
	ja bigger
	je LOOP
	jmp smaller

stringB_end:
bigger:
	mov eax,1
	jmp exit 

smaller:
	mov eax,-1
	jmp exit

isEqual:
	mov eax,0

exit:
	pop edx
	pop ecx
	pop ebx
	mov esp,ebp
	pop ebp
	ret

stringA_end:
	cmp dl,0
	jz isEqual
	jmp smaller

