.data
        array:   .word 10, 2, 9                         #initialize array
        length:  .word 3
        sum:     .word 0
        average: .word 0
        newLine: .asciiz "\n"
        
.text
        main:
                la $t0, array                           #get the base address of the array
                li $t1, 0                               #index
                lw $t2, length
                li $t3, 0                               #sum = 0
                
                sumLoop:
                        lw $t4, ($t0)                   #t4 has the value of first element of array
                        add $t3, $t3, $t4               #sum = sum + array[i]
                
                        add $t1, $t1, 1                 #i = i + 1
                        add $t0, $t0, 4                 #updating the base address
                        blt $t1, $t2, sumLoop           #loop again if i < L
                
                sw $t3, sum
                
                #display the sum on screen
                li $v0, 1
                move $a0, $t3
                syscall
        
                #calculate the average
                div $t5, $t3, $t2                       #t5 has the average
                sw $t5, average
                
                #make a new line
                li $v0, 4
                la $a0, newLine
                syscall
                        
                #display the average on screen
                li $v0, 1
                move $a0, $t5
                syscall
                
        #exit the program
        li $v0, 10
        syscall
        


