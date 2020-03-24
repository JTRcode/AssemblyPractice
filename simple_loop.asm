COMMENTS @
  int i = 0;
  while (i < 100){
    i++;
  }
@

.text

main :  addi $t0, $zero, 0
        addi $t1, $zero, 100
        j START
        
START:  beq $t0, $t1, END
        addi $t0, $t0, 1
        j START
END: