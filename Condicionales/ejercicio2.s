.data

msg1: .asciiz "Introduce la contraseña: "
msg2: .asciiz "La contaseña coincide"
msg3: .asciiz "La contraseña no coincide"
key: .asciiz "contraseña"

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

# bucle

lw $a0, key

beq $5,$t1,$a0 # if
beq $5,$0,Else

li $v0,4
la $a0,msg2

j Endif
Else:          # else

li $v0,4
la $a0,msg3

Endif:
syscall