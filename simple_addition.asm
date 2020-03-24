#compute result = a^2 + 2b + 10
.text

main: addi $t0, $zero, 7
      addi $t1, $zero, 9

      addi $t6, $zero, 10

      add $t6, $t6, $t1
      add $t6, $t6, $t1

      mult $t0, $t0
      mflo $t4
      mfhi $t5

      add $t4, $t4, $t6

COMMENT @
#compute r = (2a + 5) * 7b
# $t0 = a, $t1 = b, $t4 = result
# $t7 = left side, $t8 = right side
#
.text

main: addi $t0, $zero, 7
      addi $t1, $zero, 9
      
      add $t0, $t0, $t0
      addi $t0, $t0, 5
      
      addi $t8, $zero, 7
      multi $t1, $t8
      mflo $t4
      mflo $t5
      
      mult $0, $4
      mflo $t4
@