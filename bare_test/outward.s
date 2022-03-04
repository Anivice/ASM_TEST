.global foo
foo:
    # write(stdout(1), hello_world, hello_world_len)
    mov     $0x01,              %rax
    mov     $0x01,              %rdi
    mov     $hello_world,       %rsi
    mov     $hello_world_len,   %rdx
    syscall

    ret

.data
hello_world:
    .string	"Hello world!\n"
    .equ hello_world_len, . - hello_world - 1
