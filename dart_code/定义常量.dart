// final 运行时常量
// const 编译时常量

void main() {
  // final定义常量
  final height = 10.9;
  print(height);

  // const定义常量
  const PI = 3.14;
  print(PI);

  // 两者区别
  final time1 = DateTime.now(); //正确
  print(time1);
  // 报错 final可以接受一次赋值
  // const time2 = DateTime.now();

  const list1 = const [1, 2, 3];
  print(list1);
}
