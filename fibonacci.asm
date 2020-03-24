COMMENTS @
fibonacci sequence

int n = 10;
int f1 = 1, f2 = 1;

while (n != 0) {
  f1 = f1 + f2;
  f2 = f1 - f2;
  n = n -1;
}
@

.text

main: addi $t0, $zero, 10
      addi $t1, $zero, 1
      addi $t2, $zero, 1
      j Start
      
Start:
      beq $t0, $zero, END
      add $t1, $t1, $t2
      add $t2, $t1, -$t2
      addi $t0, $t0, -1
      j Start
END: