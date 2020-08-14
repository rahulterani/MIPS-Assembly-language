.data
        message1: .asciiz "Numbers are equal."
        message2: .asciiz "Numbers are different."
.text
        main:
                addi $t0, $zero, 10
                addi $t1, $zero, 10
                
                beq $t0, $t1, numbersEqual               #if numbers are equal jump to numberEqual
                
                #executes below code if not equal
                li $v0, 4
                la $a0, message2
                syscall
        
        #exit the program
        li $v0, 10
        syscall

        numbersEqual:
                li $v0, 4
                la $a0,message1
                syscall
                
                #exit the program
                li $v0, 10
                syscall