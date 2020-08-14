.data
        progmessage: .asciiz "Enter the number to find the factorial: "
        resmessage:  .ascii "Factorial of the number is: "
        theNumber:   .word 0                      #to store the input number
        theAnswer:   .word 0                      #to store the answer

.text
.globl main
        main:
                #read user input number
                li $v0, 4
                la $a0, progmessage
                syscall
                
                #get the user input and stored in v0
                li $v0, 5
                syscall
                
                #store the number in theNumber variable
                sw $v0, theNumber

                #call the factorial function
                lw $a0, theNumber
                jal findFactorial
                sw $v0, theAnswer
                
                #display the result
                li $v0, 4
                la $a0, resmessage
                syscall
                
                #display the result
                li $v0, 1
                la $a0,theAnswer
                syscall
                
                #this is the end of program
                li $v0, 10
                syscall
                
###############       Factorial       ###############
                
.globl findFactorial
        findFactorial:
                subu $sp, $sp, 8
                sw $ra, ($sp)                   
                sw $s0, 4($sp)
                
                #base case
                li $v0, 1
                beq $a0, 0, factorialDone
                
                #findFactorial of (number-1)
                move $s0, $a0
                sub $a0, $a0, 1
                jal findFactorial
                
                
                mul $v0, $s0, $v0
                
                factorialDone:
                        lw $ra,($sp)
                        lw $s0, 4($sp)
                        addu $sp, $sp, 8
                        jr $ra
                        