.text
main:
	addi $2, $0, 5
	syscall
	
	add $4, $2, $2
	addi $2, $0, 1
	syscall
	
	
	#Código para finalizar o código
	add $4, $2, $2
	addi $2, $0, 10
	syscall
