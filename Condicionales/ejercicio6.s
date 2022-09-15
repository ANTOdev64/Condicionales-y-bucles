.data

msg1: .asciiz "¿Cómo te llamas? "
msg2: .asciiz "¿Cuál es tu sexo (M o H)? " 
msg3: .asciiz "Tienes que cotizar"
msg4: .asciiz "No tienes que cotizar"
M: .word "M"
A: .word "A"


.text

main:
# Obtener valor

    li $v0,4              # Indicación de escritura
    la $a0,msg1
    syscall
    
    addi $v0, $zero, 5    # Obtener entrada
    syscall
    move $s0, $v0
    
    li $v0,4              # Indicación de escritura
    la $a0,msg2
    syscall
    
    addi $v0, $zero, 5    # Obtener entrada
    syscall
    move $s1, $v0
    
# Condición

    lw $a0, M
    lw $a1, A

    slt $5,$a0,$s0  # test $t1 < $a0
    slt $0,$a1,$s1  # test $t1 < $a0
    
    beq $5,$0,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3