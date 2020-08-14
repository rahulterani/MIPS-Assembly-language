.data

.text
        addi $t0, $zero, 200
        addi $t1, $zero, 4

        #2nd way:
        mult $t0, $t1   
        
        #bottom two register lo and hi store multiplication of two numbers
        mflo $a0                        #move the result to a0
        
        li $v0, 1
        syscall
