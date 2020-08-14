.data
        message1: .asciiz "Number is less than the other."
        message2: .asciiz "Number is not less than the other."
        
.text
        main:
                addi $t0, $zero, 160
                addi $t1, $zero, 20
                
                slt $s0, $t0, $t1                      #stores 1 if it's less than t1 else stores 0
                beq $s0, $zero, notEqual
                
                li $v0, 4
                la $a0, message1
                syscall
                
                
                #exit the program
                li $v0, 10
                syscall

        notEqual:
                li $v0, 4
                la $a0, message2
                syscall
                
                li $v0, 10
                syscall