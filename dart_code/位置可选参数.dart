add(int x, [int y = 1, int z = 2]) {
  int res = x;
  if (y != null) {
    res = res + y;
  }

  if (z != null) {
    res = res + y;
  }

  print(res);
}

void main() {
  add(10);
  add(10, 20);
  add(10, 20, 30);
}
