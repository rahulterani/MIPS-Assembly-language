.data

.text
        #pass arguments to the addNumbers function
        addi $a0, $zero, 100
        addi $a1, $zero, 50
        
        #call the function
        jal addNumbers
        
        #print the sum on the screen
        li $v0, 1
        move $a0, $t0
        syscall
        
        #exit the program
        li $v0, 10
        syscall
        
        #function definition
        addNumbers:
                add $t0, $a0, $a1
                jr $ra