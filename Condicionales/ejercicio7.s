.data

msg1: .asciiz "¿Cuál es tu renta anual? "
msg2: .asciiz "Tienes que pagar " 
msg3: .asciiz "€"
tipo1: .word 5
tipo2: .word 15
tipo3: .word 20
tipo4: .word 30
tipo5: .word 45
renta1: .word 10000
renta2: .word 20000
renta3: .word 35000
renta4: .word 60000

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

    lw $t0, tipo1
    lw $t1, tipo2
    lw $t2, tipo3
    lw $t3, tipo4
    lw $t5, tipo5
    
    lw $t6, renta1
    lw $t7, renta2
    lw $t8, renta3
    lw $t9, renta4

    slt $0,$s0,$t6  # test $t1 < $a0
    #slt $1,$a0,$t7  # test $t1 < $a0
    
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