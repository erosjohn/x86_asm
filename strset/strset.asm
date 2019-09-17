;extern testString
;extern testchar
;extern lens
[section .data]

[section .text]
global myStrset

myStrset:
	push ebp
	mov ebp,esp
	push ebx
	;push ecx
	push edx
	mov eax,[ebp+8]     ;testString address
	mov bl,[ebp+12]    ;testchar
	;xor ecx,ecx
LOOP:	
	mov [eax],bl
	inc eax
	;inc ecx
	mov dl,[eax]
	cmp dl,0
	jnz LOOP
		
	pop edx
	;pop ecx
	pop ebx
	mov esp,ebp
	pop ebp
	ret
	 		

