.data
        var1: .word 4           #integer is 32bits
        var2: .word 20

.text
        lw $t0, var1
        lw $t1, var2

        #3 ways to multiply two integer numbers

        #1st way:
        mul $t2, $t1, $t0               
        #limitation: we can only multiply two 16bit numbers 
        #so result will be 32bit integer

        li $v0, 1
        move $a0, $t2
        syscall
