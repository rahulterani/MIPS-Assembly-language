.data

.text
        addi $t0, $zero, 30
        addi $t1, $zero, 7
        
        #2nd way:
        div $t0, $t1                    #t0/t1
        mflo $s0                        #quotient
        mfhi $s1                        #remainder
        
        li $v0, 1
        move $a0, $s1
        syscall