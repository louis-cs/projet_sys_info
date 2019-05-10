main (int args) {
  int a = 10;
  int d = 17;
  int b = 1;
  b = a + d;
  printf(b);
  if (a==b) {
    d = d + 1;
    a = a - 1;
    printf(a);
  }
  printf(d);
  d = 24;
  printf(d);
  if (b>=d) {
    printf(b);
  }
}
