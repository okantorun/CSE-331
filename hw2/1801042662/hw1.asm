################################
# Gebze Technical University   #
# CSE331 - HW2		       #
# Okan Torun  -   1801042662   #
################################

# string which is writen into memory directly.
.data
	#values written to memory
	myArray: .space 24#starting elements	
	sequanceArray: .space 40 #Keeps all subsequences in order
	maxArray: .space 40 #It keeps the number of sequence in its indexes.

	
	lengthOfSequance: .asciiz "Length of Sequance:"
	maxLengthOfSequance: .asciiz "Max Length of Sequance:"
	fout:   .asciiz "testout.txt"
	newLine: .asciiz "\n"
	comma:	.asciiz ","
	demoLabel1:.asciiz "Demo 1:\n"
	demoLabel2:.asciiz "Demo 2:\n"
	demoLabel3:.asciiz "Demo 3:\n"
	demoLabel4:.asciiz "Demo 4:\n"
	demoLabel5:.asciiz "Demo 5:\n"
	demoLabel6:.asciiz "Demo 6:\n"
	
.text
	demo1:
	
	#Counter dor demo loop
	li $k0,1
	
	li $v0,4
	la $a0,demoLabel1
	syscall
	li $v0,4
	la $a0,newLine
	syscall
	
	#Array Elements
	addi $s0,$zero ,3
	addi $s1,$zero ,10
	addi $s2,$zero ,7
	addi $s3,$zero ,9
	addi $s4,$zero ,4
	addi $s5,$zero ,11
	
	#index = $t0
	addi $t0,$zero,0
	
	#Fill Array
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	
	
	
	demo2:
	li $v0,4
	la $a0,newLine
	syscall
	li $v0,4
	la $a0,demoLabel2
	syscall
	li $v0,4
	la $a0,newLine
	syscall
	
	#Counter dor demo loop
	li $k0,2
		
	addi $s0,$zero ,22
	addi $s1,$zero ,10
	addi $s2,$zero ,9
	addi $s3,$zero ,33
	addi $s4,$zero ,21
	addi $s5,$zero ,50
	
	#indez = $t0
	addi $t0,$zero,0
	
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	
	demo3:
	li $v0,4
	la $a0,newLine
	syscall
	li $v0,4
	la $a0,demoLabel3
	syscall
	li $v0,4
	la $a0,newLine
	syscall
	
	#Counter dor demo loop	
	li $k0,3	
	
	addi $s0,$zero ,6
	addi $s1,$zero ,9
	addi $s2,$zero ,2
	addi $s3,$zero ,3
	addi $s4,$zero ,5
	addi $s5,$zero ,7
	
	#indez = $t0
	addi $t0,$zero,0
	
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	
	demo4:
	li $v0,4
	la $a0,newLine
	syscall
	li $v0,4
	la $a0,demoLabel4
	syscall
	li $v0,4
	la $a0,newLine
	syscall
	
	#Counter dor demo loop	
	li $k0,4	
	
	#Array Elemensts
	addi $s0,$zero ,35
	addi $s1,$zero ,7			
	addi $s2,$zero ,47
	addi $s3,$zero ,60
	addi $s4,$zero ,18
	addi $s5,$zero ,95
	
	#indez = $t0
	addi $t0,$zero,0
	
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	
	
	demo5:
	li $v0,4
	la $a0,newLine
	syscall
	li $v0,4
	la $a0,demoLabel5
	syscall
	li $v0,4
	la $a0,newLine
	syscall
		
	li $k0,5	
	addi $s0,$zero ,90
	addi $s1,$zero ,60
	addi $s2,$zero ,85
	addi $s3,$zero ,55
	addi $s4,$zero ,75
	addi $s5,$zero ,80

	#indez = $t0
	addi $t0,$zero,0
	
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	
	
	demo6:
	li $v0,4
	la $a0,newLine
	syscall
	li $v0,4
	la $a0,demoLabel6
	syscall
	li $v0,4
	la $a0,newLine
	syscall
		
	li $k0,6	
	
	
	addi $s0,$zero ,30
	addi $s1,$zero ,10
	addi $s2,$zero ,7
	addi $s3,$zero ,9
	addi $s4,$zero ,4
	addi $s5,$zero ,55
	
	#indez = $t0
	addi $t0,$zero,0
	
	sw $s0, myArray($t0)
		addi $t0,$t0,4
	sw $s1, myArray($t0)
		addi $t0,$t0,4
	sw $s2, myArray($t0)
		addi $t0,$t0,4
	sw $s3, myArray($t0)
		addi $t0,$t0,4
	sw $s4, myArray($t0)
		addi $t0,$t0,4
	sw $s5, myArray($t0)
	
	
	li $s0,6 	#arrLength	
	li $t2 ,0	#index1	
	li $t3 ,1	#index2
	li $t4 ,0	#index1Counter
	li $t5 ,1	#index2Counter
	li $t6 ,0	#sequenceLength
	li $t7 ,0	#maxSequenceLength
	jal firstIf
	#t0 for compare index
	#t1 for compare index
	firstIf:
		# $s5-to assign between two arrays
		
		bge $t3,$s0,elseIf
		mul $t0,$t2,4
		mul $t1,$t3,4
		lw $t0,myArray($t0)
		lw $t1,myArray($t1)
		# t0-t1 rlrmrnts of  two different arrays
		bge $t0,$t1,elseIf
		beq $t6,$zero,sequenceIfZero
		mul $t1,$t3,4
		lw $s5,myArray($t1)
		mul $s7,$t6,4
		sw $s5, sequanceArray($s7)
		addi $t6,$t6,1
		move $t2,$t3
		addi $t3,$t3,1
		li $t0,0		#for counter
		jal printSequanceLength
	
	sequenceIfZero:
	
		mul $t0,$t2,4
		lw $s5,myArray($t0)			#s5 temprory keeps number
		mul $s7,$t6,4
		sw $s5, sequanceArray($s7)
		addi $t6,$t6,1
		
		mul $t1,$t3,4
		lw $s5,myArray($t1)
		mul $s7,$t6,4
		sw $s5, sequanceArray($s7)
		addi $t6,$t6,1
		
		move $t2,$t3
		addi $t3,$t3,1
		
		jal index2EqualArrayLength
		
	#t3- index2	
	elseIf:
		bge $t3,$s0,index2EqualArrayLength
			addi $t3,$t3,1
			jal index2EqualArrayLength
				
	index2EqualArrayLength:	
	
		#bgt $t3,$s0,exit
		bne $t3,$s0,firstIf
		# comparison sequance length-max length
		ble $t6,$t7,contIndex2EqualArrayLength
		jal createMaxArray
		
		
	
	createMaxArray:
		move $t7,$t6
		li $t0,0	#counter for loop
		li $t1,0	#limit for loop
		mul $t1,$t7,4	#maxSequenceLength*4
		jal for
	
	#I'm updating the maximum length sequence.
	for:
		beq $t0,$t1,contIndex2EqualArrayLength
		lw $s5,sequanceArray($t0)			#s5 temprory keeps number
		sw $s5, maxArray($t0)
		addi $t0,$t0,4
		j for
		
		
		
	contIndex2EqualArrayLength:
		
		li $t6,0
		addi $t5,$t5,1
		move $t3,$t5
		move $t2,$t4
		jal index2CounterEqualArrLength
		
	index2CounterEqualArrLength:

		bne $t5,$s0,index1CounterEqualArrLength		
			addi $t4,$t4,1
			move $t5,$t4
			addi $t5,$t5,1
			move $t3,$t5
			move $t2,$t4					
			jal index1CounterEqualArrLength
		
	index1CounterEqualArrLength:
		#I reduce the array size by 1 to compare
		addi $s5,$s0,-1
		bne $s5,$t4,firstIf
			li $t0,0
			jal printMaxSequanceLength
	
		
	#I'm printing sub-sequentially			
	allSequancePrint:
		mul $t1,$t6,4
		beq $t0,$t1,endOfLine
		lw $s5, sequanceArray($t0)
		addi $t0,$t0,4
		#Prints current number
		li $v0,1
		move $a0,$s5
		syscall
		#Prints a comma
		li $v0,4
		la $a0,comma
		syscall	
		j allSequancePrint
			
	#I print maxArray with for
	maxSequancePrint:
		mul $t1,$t7,4		
		beq $t0,$t1,demoLoop
		lw $s5 , maxArray($t0)
		addi $t0,$t0,4
		#Prints current number
		li $v0,1
		move $a0,$s5
		syscall
		#Prints a new line
		li $v0,4
		la $a0,comma
		syscall
		
		j maxSequancePrint
		
	#I disploy all demo with for.K is a special number 
	#k represents each demo and is used for comparison.
	demoLoop:
		li $v0,4
		la $a0,newLine
		syscall
		beq $k0,1,demo2	
		beq $k0,2,demo3	
		beq $k0,3,demo4	
		beq $k0,4,demo5	
		beq $k0,5,demo6		
		jal exit	
	
	endOfLine:
		li $v0,4
		la $a0,newLine
		syscall
		jal index2EqualArrayLength
	
	# $t6 Sequance Length	
	printSequanceLength:
		li $v0,4
		la $a0,lengthOfSequance
		syscall
		li $v0,1
		move $a0,$t6
		syscall
		li $v0,4
		la $a0,newLine
		syscall
		jal allSequancePrint
		
	# $t7 maxSequanceLength	
	printMaxSequanceLength:
		li $v0,4
		la $a0,maxLengthOfSequance
		syscall
		li $v0,1
		move $a0,$t7
		syscall
		li $v0,4
		la $a0,newLine
		syscall
		jal maxSequancePrint
	
	
	
	#exit	
	exit:	
		li $v0,10
		syscall
		
	
