#Automatically initializes array with defined values.

.data
        myArray: .word 100:3                         #initializes array with three 100 numbers
        newLine: .asciiz "\n"

.text
main:
        #index
        addi $t0, $zero, 0

        while:
                beq $t0, 12 exit
                lw $t6, myArray($t0)
                addi $t0, $t0, 4
                
                jal printValue          
                
                j while
                
        exit:
                li $v0, 10
                syscall
        
        #prints the stored value on screen
        printValue:
                li $v0, 1
                move $a0, $t6
                syscall
        
                li $v0, 4
                la $a0, newLine
                syscall

                jr $ra
