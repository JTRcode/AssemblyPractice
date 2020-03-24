COMMENTS @
translate 

if (i == j)
  i++;
else
  j--;
j += i;
@

.text

main: addi $t0, $zero, 5
      addi $t1, $zero, 7
      
      neq $t0, $t1, ELSE
      addi $t0, $t0, 1
      j END

ELSE: addi $t0, $t0, -1
END:  add $t1, $t1, $t0