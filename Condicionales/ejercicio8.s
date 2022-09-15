.data

msg1: .asciiz "Introduce tu puntuación: "
msg2: .asciiz "Inaceptable " 
msg3: .asciiz "€"

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
    
# Condición

    beq $1,$0,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3

    j Endif
    Else:           #----------------------------
    
    li $v0,4 
    la $a0,msg4     # imprimir mensaje 4

    syscall
    
    slt $2,$t6,$s0  # test $t1 < $a0
    slt $3,$a0,$t7  # test $t1 < $a0
    
     beq $3,$2,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3

    j Endif
    Else:           #----------------------------
    
    li $v0,4 
    la $a0,msg4     # imprimir mensaje 4

    Endif:
    syscall
    
    slt $4,$t7,$s0  # test $t1 < $a0
    slt $5,$a0,$t8  # test $t1 < $a0
    
    beq $5,$4,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3

    j Endif
    Else:           #----------------------------
    
    li $v0,4 
    la $a0,msg4     # imprimir mensaje 4

    Endif:
    syscall
    
    slt $6,$t8,$s0  # test $t1 < $a0
    slt $7,$a0,$t9  # test $t1 < $a0
    
    beq $7,$6,Else  # if false goto Else; #----------------------------

    li $v0,4        # imprimir mensaje 3
    la $a0,msg3

    j Endif
    Else:           #----------------------------
    
    li $v0,4 
    la $a0,msg4     # imprimir mensaje 4

    Endif:
    syscall