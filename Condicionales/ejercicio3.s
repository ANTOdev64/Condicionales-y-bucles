.data

msg1: .asciiz "Introduce el dividendo: "
msg2: .asciiz "Introduce el divisior: "
msg3: .asciiz "¡Error! No se puede dividir por 0."
cero: .word 0

.text

main:
# escribir msg1

li $v0,4
la $a0,msg1
syscall

# leer msg1
li $v0,5
syscall
move $t1,$v0 # $t1

# escribir msg2

li $v0,4
la $a0,msg2
syscall

# leer msg1
li $v0,5
syscall
move $t2,$v0 # $t2

# condicional

lw $a0, cero

beq $t2,$a0,Else  # if false goto Else;

div $s0,$t1,$t2

li $v0,1
add $a0, $zero, $s0

j Endif
Else:

li $v0,4        # imprimir mensaje 3
la $a0,msg3

Endif:
syscall
