class ConstPoint {
  final num x;
  final num y;

  // 使用const修饰构造方法
  const ConstPoint(this.x, this.y);

  // 编译时常量对象
  static final ConstPoint origin = const ConstPoint(10, 20);
}

void main() {
  print(ConstPoint.origin.x);
  print(ConstPoint.origin.y);
}
