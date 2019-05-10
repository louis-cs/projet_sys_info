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
  } else {
    d = d + 2;
    a = a - 2;
    printf(a);
  }
  printf(d);
  d = 24;
  printf(d);
  if (b>=d) {
    if (a<b) {
      b = 2;
    }
    printf(b);
  } else {
    printf(d);
  }
  a = b * d;
  printf(a);
}
