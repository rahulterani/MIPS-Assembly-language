.data
        mdArray: .word 2, 5, 3                               #2x2 dimensional array
                         .word 3, 1, 5
                         .word 2, 7, 9
                         
        size:    .word 3                                     #row and column size
        .eqv DATA_SIZE 4                                     #define constant
        
.text
        main:
                la $a0, mdArray
                lw $a1, size
                
                jal sumdiagonal
                
                move $a0, $v0
                li $v0, 1
                syscall
                
                #exit the program
                li $v0, 10
                syscall
                
        sumdiagonal:
                li $v0, 0                                     #return sum
                li $t0, 0                                     #t0 as index
                        
                        sumLoop:
                                mul $t1, $t0, $a1             #t1 = row index * no of column
                                add $t1, $t1, $t0             #t1 = t1 + column indez
                                mul $t1, $t1, DATA_SIZE #data_size = integer = 4
                                
                                add $t1, $t1, $a0             #add base address to t1
                                
                                lw $t2, ($t1)                 #get the value from t1 register into t2
                                add $v0, $v0, $t2             #sum = sum + mdArray[i][i]
                                
                                addi $t0, $t0, 1              #increase index by 1
                                blt $t0, $a1, sumLoop         # i<size -> loop again
                                
                jr $ra          
                