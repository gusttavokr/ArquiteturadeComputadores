.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	
	srl $20, $8, 31
	beq $20, $0, processoPositivo
processoNegativo:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	addi $19, $0, 1

	div $8, $9
	mflo $10
	mfhi $11 # ultimo bit
	beq $11, $0, viraUm
	mul $11, $0, $11
	j próximo
viraUm:
	add $11, $11, $19

próximo:
	div $10, $9
	mflo $10
	mfhi $12
	beq $12, $0, virado2
	mul $12, $0, $12
	j próximo2
virado2:
	add $12, $12, $19
	
próximo2:
	div $10, $9
	mflo $10
	mfhi $13
	beq $13, $0, virado3
	mul $13, $0, $13
	j próximo3
virado3:
	add $13, $13, $19
	
próximo3:
	div $10, $9
	mflo $10
	mfhi $14
	beq $14, $0, virado4
	mul $14, $0, $14
	j próximo4
virado4:
	add $14, $14, $19
	
próximo4:
	div $10, $9
	mflo $10
	mfhi $15
	beq $15, $0, virado5
	mul $15, $0, $15
	j próximo5
virado5:
	add $15, $15, $19
	
próximo5:
	div $10, $9
	mflo $10
	mfhi $16
	beq $16, $0, virado6
	mul $16, $0, $16
	j próximo6
virado6:
	add $16, $16, $19
	
próximo6:
	div $10, $9
	mflo $10
	mfhi $17
	beq $17, $0, virado7
	mul $17, $0, $17
	j próximo7
virado7:
	add $17, $17, $19
	
próximo7:
	div $10, $9
	mflo $10
	mfhi $18
	beq $18, $0, virado8
	mul $18, $0, $18
	j somando
virado8:
	add $18, $18, $19
somando:
	addi $2, $0, 10000000
	mul $18, $18, $2
	addi $2, $0, 1000000
	mul $17, $17, $2
	addi $2, $0, 100000
	mul $16, $16, $2
	addi $2, $0, 10000
	mul $15, $15, $2
	addi $2, $0, 1000
	mul $14, $14, $2
	addi $2, $0, 100
	mul $13, $13, $2
	addi $2, $0, 10
	mul $12, $12, $2
	mul $11, $11, $19
	
	add $18, $18, $17
	add $18, $18, $16
	add $18, $18, $15
	add $18, $18, $14
	add $18, $18, $13
	add $18, $18, $12
	add $18, $18, $11
	
	add $18, $18, $19
	add $8, $0, $18
	
processoPositivo:
	div $8, $9
	mflo $10
	mfhi $11 # ultimo bit
	
	div $10, $9
	mflo $10
	mfhi $12
	sll $12, $12, 1
	
	div $10, $9
	mflo $10
	mfhi $13
	sll $13, $13, 2
	
	div $10, $9
	mflo $10
	mfhi $14
	sll $14, $14, 3
	
	div $10, $9
	mflo $10
	mfhi $15
	sll $15, $15, 4
	
	div $10, $9
	mflo $10
	mfhi $16
	sll $16, $16, 5
	
	div $10, $9
	mflo $10
	mfhi $17
	sll $17, $17, 6
	
	div $10, $9
	mflo $10
	mfhi $18
	sll $18, $18, 7
	
	add $18, $18, $17
	add $18, $18, $16
	add $18, $18, $15
	add $18, $18, $14
	add $18, $18, $13
	add $18, $18, $12
	add $18, $18, $11
	
	add $4, $0, $18
	addi $2, $0, 1
	syscall