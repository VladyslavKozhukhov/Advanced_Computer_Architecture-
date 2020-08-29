.data 
	a: .word 0
	b: .word 2
	c: .word 16
	d: .word 11, 10,12, 15, 170,2834,4,2,5,7,6,8,1,48059,13,1
	N: .word 6000000
.text
# $t0 => base address of arr (&arr[0])
# $t1 => number of elements in arr (n)
# $v0 => i
    la $t0,d
    lw $t1,c
sort:
    #add     $t1, $t1, $t1        # count = count * 2
     #   add     $t1, $t1, $t1        # count = count * 2
    sll $t1,$t1,2
    lw      $v0, a               # int i = 0
  loop:
    slt     $t3, $v0, $t1        # if (i < n) => $t3 = 1
    beq     $t3, $zero, end      # while (i < n) {
    bne     $v0, $zero, compare  # if (i == 0)
    addi   $v0, $v0, 4          # i = i + 1
  compare:
    addu    $t2, $t0, $v0        # $s2 = &arr[i]
    lw      $t4, -4($t2)         # $t4 = arr[i-1]
    lw      $t5, 0($t2)          # $t5 = arr[i]
    blt     $t5, $t4, swap       # swap if (arr[i] < arr[i-1])
    addi   $v0, $v0, 4          # i = i+ 1
    j       loop
  swap:
    sw      $t4, 0($t2)          # swap (arr[i], arr[i-1])
    sw      $t5, -4($t2)
    addi   $v0, $v0, -4         # i = i - 1
    j       loop
  end:
   	la $t0,d   # $t0 => base address of arr (&arr[0]) 
   	lw $t1,c   # N=16
   	lw $t5,a   #int i = 0
    	
    	#addi $t5,$t5,1
 	lw   $t3,N
	la   $t0,d # read the state of PORT_SW[7-0]
	lw  $t7,c # N
Loop:	
	beq $t7,$t5,ENDPRINT
	lw $t6,0($t0)
	sw   $t6,0x808 # write to PORT_HEX0[7-0]
	sw   $t6,0x80C  # write to PORT_HEX0[7-0]
	sw   $t6,0x810  # write to PORT_HEX0[7-0]
	sw   $t6,0x814 # write to PORT_HEX0[7-0]
	
	addi  $t0,$t0,4
	addi $t7,$t7,-1
	move $t1,$zero  # $t1=0
delay:	addi $t1,$t1,1  # $t1=$t1+1
	slt  $t2,$t1,$t3      #if $t1<N than $t2=1
	beq  $t2,$zero,Loop   #if $t1>=N then go to Loop label
	j   delay

ENDPRINT:
j ENDPRINT