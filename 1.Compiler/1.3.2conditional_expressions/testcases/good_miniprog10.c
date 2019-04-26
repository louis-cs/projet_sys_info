main (int args) {
  int c,a = 10;
  int d = 2;
  int b = 10;
  b = a + d;
  c = 4;
  printf(b);
  printf(a);
  while (a<20) {
    d = d * 3;
    a = a + 1;
    printf(a);
    if (c>=0) {
      printf(c);
    }
    c = c - 1;
  }
  printf(a);
  printf(c);
  printf(d);
}
