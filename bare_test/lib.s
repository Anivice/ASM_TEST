.global inf
.text
inf:
    push   %rbp
    mov    %rsp,        %rbp
    mov    %rdi,        -0x8(%rbp)
    mov    %rsi,        -0x10(%rbp)
    mov    -0x8(%rbp),  %rax
    xor    -0x10(%rbp), %rax
    pop    %rbp
    ret
