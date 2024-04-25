	#Part 2  MIPSzy assembly code

#int w1 = 60;   // use a register for this variable
addi $t0, $zero, 60		#w1 variable and total variable
#int w2 = 20;   // use a register for this variable
addi $t1, $zero, 20		#w2 variable
#int total;     // use a register for this variable
addi $t2, $zero, 0		#i variable for the loop counter, starts at 0 for int i=0
#int result[3]; // note: int = 1 word = 4 bytes (on this machine)
addi $t5, $zero, 5000		#result
#register to hold value of 3
addi $t3, $zero, 3

#address to hold base 4 multiplication
addi $t6, $zero, 4

#total = w1 soi total can be treated as the w1 variable in this case

#for loop construction for high level code process given
loop:
bge $t2, $t3, end # while (i < 3)
mul $t4, $t2, $t6   # $t4 = i * 4
add $t4, $t5, $t4   # $t4 = x's base + i*4 
add $t0, $t0, $t1   # $t0 = $t0 + $t1
sw $t0, 0($t4)      # result[i] = total
addi $t4, $zero, 8200	#set display address to print
sw $t0, 0($t4)		#print out the value of result[i] to the display
addi $t2, $t2, 1    # i = i + 1;
addi $t5, $zero, 5000	#reset the x base address to 5000
j loop				#jump to print when for loop statement is no longer true

end:
