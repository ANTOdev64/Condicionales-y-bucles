.data

msg1: .asciiz "Introduce un número entero: "
msg2: .asciiz "El número " 
msg2_1: .asciiz " es par"
msg3: .asciiz "El número " 
msg3_1: .asciiz " es impar"
cero: .word 0

.text

main:
# Obtener valor
addi $v0, $zero, 4    # Indicación de escritura
la $a0, msg1
syscall
    
addi $v0, $zero, 5    # Obtener entrada
syscall
move $s0, $v0
    
# Comprueba si es par o impar
addi $t0, $zero, 2    # Almacenar 2 en $t0
div $t0, $s0, $t0     # Dividir la entrada por 2
mfhi $s1 # <-         # Almacenar el resto en $s1
    
# Condición

lw $a0, cero

beq $s1,$a0,Else  # if false goto Else;

li $v0,4        # imprimir mensaje 2
la $a0,msg2
syscall

addi $v0, $zero, 1    # Imprimir resultado
move $a0, $s0 # <- 
syscall

li $v0,4        # imprimir mensaje 2
la $a0,msg3_1

j Endif
Else:

li $v0,4        # imprimir mensaje 3
la $a0,msg3
syscall

addi $v0, $zero, 1    # Imprimir resultado
move $a0, $s0 # <- 
syscall

li $v0,4        # imprimir mensaje 3
la $a0,msg2_1

Endif:
syscall