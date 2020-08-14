.data
        message:   .asciiz "Hello, "
        userInput: .space 20                        #reserve some space for the text
        #it's like an array allocating some space
        
.text
        main:
                #get the user input as text
                li $v0, 8                           #syscall number to get the input(text)
                la $a0, userInput                   #display the message
                li $a1, 20                          #define the max length of text
                syscall                             #invoke the system call
        
                #displays the Hello
                li $v0, 4
                la $a0, message
                syscall
        
                #display the name
                li $v0, 4
                la $a0, userInput
                syscall
        
        #exit the program
        li $v0, 10
        syscall
        