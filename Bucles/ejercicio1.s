.data
    msg1: .asciiz "Introduce una palabra: "
    ast: .word 'N'
.text

    la  $a0, ast
    add $t0, $zero, $zero   # Contador

    loop:

    slti    $t1, $t0, 10
    beq     $t1, $zero, exit

    li  $v0, 4
    syscall

    addiu   $t0, $t0, 1

    j loop
    exit:
    li  $v0, 10
    syscall

    jr $ra
