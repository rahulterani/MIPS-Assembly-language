.data
        newLine: .asciiz "\n"

.text
        main:
                li $a1, 11
                jal showNumber
                
                li $a1, 11
                jal clearBitZero
        
                move $a1, $v0
                jal showNumber 
        
                #exit the program
                li $v0, 10
                syscall


        showNumber:
                li $v0,4
                la $a0, newLine
                syscall
        
                li $v0, 1
                move $a0, $a1
                syscall
                
                jr $ra
                
        clearBitZero:
                #mask is s0
                addi $sp, $sp, -4
                sw $s0, 0($sp)
                
                #make the mask
                li $s0, -1
                sll $s0, $s0, 1
                and $v0, $a1, $s0
                
                lw $s0, 0($sp)
                addi $sp, $sp, 4
                
                jr $ra
        
        
        