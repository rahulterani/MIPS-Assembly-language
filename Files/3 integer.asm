.data
        # integer is 4bytes = 32bits = 1 word
        myNumber: .word 45

.text
        li $v0, 1               #to display integer we need to put 1 in v0 register,
        lw $a0, myNumber        #load word
        syscall