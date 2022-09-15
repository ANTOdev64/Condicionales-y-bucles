.data

msg1: .asciiz "¿Cuál es tu edad? "
msg2: .asciiz "Eres menor de edad"
msg3: .asciiz "Eres mayor de edad."
legal: .word 18

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

# condicional

lw $a0, legal

slt $5,$t1,$a0  # test $t1 < $a0
beq $5,$0,Else  # if false goto Else;
li $v0,4        # imprimir mensaje menor
la $a0,msg2
j Endif
Else:
li $v0,4        # imprimir mensaje mayor
la $a0,msg3
Endif:
syscall
