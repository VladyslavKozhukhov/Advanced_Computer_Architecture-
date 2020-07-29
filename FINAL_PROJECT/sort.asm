.data 
	a: .word 0
	b: .word 2
	c: .word 16
	d: .word 11, 10,12, 15, 1,3,4,2,5,7,6,8,9,0,13,14
.text
# $t0 => base address of arr (&arr[0])
# $t1 => number of elements in arr (n)
# $v0 => i
    la $t0,d
    lw $t1,c
sort:
    sll     $t1, $t1, 2          # count = count * 2
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