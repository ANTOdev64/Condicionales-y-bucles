.data

msg1: .asciiz "¿Cuál es tu edad? "
msg2: .asciiz "¿Cuales son tus ingresos mensuales?" 
msg3: .asciiz "Tienes que cotizar"
msg4: .asciiz "No tienes que cotizar"
mayor: .word 16
cotizar: .word 1000

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

    lw $a0, mayor
    lw $a1, cotizar

    slt $5,$a0,$s0  # test $t1 < $a0
    slt $0,$a1,$s1  # test $t1 < $a0
    
    beq $5,$0,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3

    j Endif
    Else:           #----------------------------
    
    li $v0,4 
    la $a0,msg4     # imprimir mensaje 4

    Endif:
    syscall