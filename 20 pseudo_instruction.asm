.data
        message: .asciiz "Heyy, How you doin?"

.text
        main:
                addi $s0, $zero, -14
                #addi $s1, $zero, 10
        
                #bgt $s0, $s1, displayHi 
                bgtz $s0, displayHi
                
        #exit the program
        li $v0, 10
        syscall
        
        displayHi:
                li $v0, 4
                la $a0, message
                syscall