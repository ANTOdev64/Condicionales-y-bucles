.data

msg1: .asciiz "Introduce la contraseņa: "
msg2: .asciiz "La contaseņa coincide"
msg3: .asciiz "La contraseņa no coincide"
key: .asciiz "contraseņa"

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