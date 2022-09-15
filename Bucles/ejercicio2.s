.data
    msg1: .asciiz "¿Cuántos años tienes? "
    msg2: .asciiz "\nHas cumplido "
    msg3: .asciiz " años"
.text
main:
    # Imprime msg1
    li $v0, 4
    la $a0, msg1
    syscall
    
    # Leer para msg1
    li $v0, 5
    syscall
    move $t5, $v0
    
    #move $t0, $0
    #li $t1, 10
    
startloop:
    beq $t0, $t5, exitloop
    
    li $v0, 4
    la $a0, msg2
    syscall
    
    li $v0, 1
    move $a0, $t0
    syscall
    
    li $v0, 4
    la $a0, msg3
    syscall
    
    addi $t0, $t0, 1
    j startloop
exitloop:
    
    