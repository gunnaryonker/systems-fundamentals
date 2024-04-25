#Part 1  MIPSzy assembly code
#1. Compute (100 - 200 + 30)

#Compute 1000 - 200
addi $t0, $zero, 1000
#use addi to add -200
addi $t0, $t0, -200

#compute $t0 + 30
addi $t0, $t0, 30

#2. Multiply the result of step 1 by 2

#Add 2 to $t1 to multiple by $t0
addi $t1, $zero, 2
mul $t0, $t0, $t1

#3. Display the result of step 2(by storing this result to memory address 8200)
#Put memory address 8200 in $t6
addi $t6, $zero, 8200
#save $t0 value to memory address 8200
sw $t0, 0($t6)
