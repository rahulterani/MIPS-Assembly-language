.data
        newLine: .asciiz "\n"

.text
        main:
                addi $s0, $zero, 10
        
                jal increaseMyRegister
                
                jal printsNewLine
                        
                jal printTheValue
        
        #Exit the program
        li $v0, 10
        syscall


        increaseMyRegister:
                #alocate space to store s0 on stack by subtracting 4 bytes
                #similar to push operation
                addi $sp, $sp, -4
                sw   $s0, 0($sp)                        #store the s0 value on stack
                
                addi $s0, $s0, 30
                
                #prints the new s0 value
                li $v0, 1
                move $a0, $s0
                syscall
                
                #store the original value of s0 by pop operation
                lw $s0, 0($sp)
                addi $sp, $zero, 4
                
                jr $ra

        printTheValue:
                #prints the value 10 on screen
                li $v0, 1
                move $a0, $s0
                syscall

                jr $ra
                
        printsNewLine:
                #prints a new line
                li $v0, 4
                la $a0, newLine
                syscall
                
                jr $ra


