extern	testString
extern	testchar
extern	lens
[section .data]
[section .text] 
global myStrchr

myStrchr:
	push ebp
	mov ebp,esp
	lea edi,[testString]
	mov ecx,-1
	mov al,[testchar]
	cld
	repne                   ;CX=0 or ZF=1 then exit()
	scasb
	mov eax,ecx
	not eax
	cmp eax,[lens]
	ja notfound	
	mov esp,ebp
	pop ebp
	ret 

notfound:
	mov eax,0
	mov esp,ebp
	pop ebp
	ret 
