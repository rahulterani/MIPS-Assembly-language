.data

.text
        addi $t0, $zero, 4
        
        #3rd way[very efficient way]:
        sll $t1, $t0, 1

        #shift left logical: result(t1) = number(t0) * 2^i
        #i is the immediate value passed in the above instruction.
        
        li $v0, 1
        move $a0, $t1
        syscall