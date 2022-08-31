class Point {
  int x;
  int y;

  Point(this.x, this.y);

  // operator关键字 为改类重载+运算符
  Point operator +(Point p) {
    return Point(this.x + p.x, this.y + p.y);
  }

  Point operator -(Point p) {
    return Point(this.x - p.x, this.y - p.y);
  }
}

void main() {
  var p1 = Point(1, 5);
  var p2 = Point(7, 10);

  var p3 = p1 + p2;
  var p4 = p1 - p2;

  print("${p3.x},${p3.y}");
  print("${p4.x},${p4.y}");

}
