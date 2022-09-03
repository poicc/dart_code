class Point {
  num x;
  num y;

  // 同名构造方法
  Point(this.x, this.y);

  // 命名的构造方法重定向到同名构造方法
  Point.alongXAxis(num x) : this(x, 0);
}
