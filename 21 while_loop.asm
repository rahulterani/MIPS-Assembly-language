.data
        message: .asciiz "Whie loop is done."
        spacel: .asciiz "\n"

.text
        main:
                addi $s0, $zero, 0
                
                while:
                        bge  $t0, 10 exit
                        jal printTheValue
                        addi $t0, $t0, 1                                #i++ => i = i + 1
                        
                        #jump back to the whie loop
                        j while
                
                exit:
                        li $v0, 10
                        syscall
                        
        printTheValue:          
                #print the value on screen
                li $v0, 1
                add  $a0, $zero, $t0
                syscall
                
                #make a new line
                li $v0, 4
                la $a0, spacel
                syscall
        
                jr $ra
