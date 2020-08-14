#Functions are called as Procedures
#Functions should contain Main module

.data
        myMessage:   .asciiz "Hello, World!\n"
        doneMessage: .asciiz "Program executed perfectly.\n"
.text
        main:
                jal displayMessage              
                jal done
                
        #to exit the program
        li $v0, 10                              #syscall number to exit the program
        syscall
        
        #Even if didn't cal the function and exit call above the program will execute.
        displayMessage:                         #Function
                li $v0, 4                       #syscall number to display message on screen
                la $a0, myMessage
                syscall
                
                jr $ra                          #goes back to the procedure called by it.
                                                #otherwise it'll continues execution
                
        done:                                   #Function
                li $v0, 4
                la $a0, doneMessage
                syscall
                
                