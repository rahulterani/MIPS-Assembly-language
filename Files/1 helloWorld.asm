# data section contains data like variables.

.data
        myMessage: .asciiz "Hello, World!\n"

# text section contains all instructions.
.text
        li $v0, 4                       # syscall number to print text on screen
        la $a0, myMessage               #loads a0 with address of myMessage
        syscall
        
