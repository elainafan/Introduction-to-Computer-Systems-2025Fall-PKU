movq %rsp,%rax
ret
movq %rax,%rdi
ret
pop %rax
nop
ret
mov %eax,%ecx
cmp %cl,%cl
ret
mov %ecx,%edx
cmp %cl,%cl
ret
mov %edx,%esi
cmp %cl,%cl
ret
lea (%rdi,%rsi,1),%rax
mov %rax,%rdi
ret