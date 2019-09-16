extern testString

[section .data]

[section .text]
	global myStrlen
	
myStrlen:
	push ebp
	mov ebp,esp             ;开栈
	mov edi,[ebp + 8]       ;ebp+4 = ret_addr   
	mov ecx,-1              ;设置循环次数 -1,即0xFFFFFFFF
	xor al,al               ;清空al 
	cld                     ;将标志寄存器Flag的方向标志位DF清零
	repnz                   ;REPNE/REPNZ是重复前缀（CX<>0 且ZF=0重复执行字符串指令）
	scasb                   ;一直重复搜索到EDI字符串末尾的\0 
	mov eax,ecx      
	not eax                 ;获得搜索次数，也就是字符串长度
	dec eax                 ;不带末尾0的字符串长度
	mov esp,ebp             ;恢复栈 
	pop ebp      
	ret 
