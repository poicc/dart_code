enableFlags({bool? bold, bool? hiddle}) {
  print(bold);
  print(hiddle);
}

void add({int? x, int y = 1, int z = 2}) {
  print(x);
  print(y + z);
}

// 命名可选参数：参数和顺序无关 位置可选参数：必须按顺序传值
void add1(int x, [int y = 1, int z = 2]) {
  int res = x;
  if (y != null) {
    res = res + y;
  }
  if (z != null) {
    res = res + z;
  }
  print(y + z);
}

void main() {
  enableFlags(hiddle: true);
  enableFlags(bold: false, hiddle: true);

  add(x: 10);
}
