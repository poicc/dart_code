void main() {
  List list = [1, 2, 3];
  print(list[0]);
  print(list.length);

  // const定义不可变列表
  var constList = const [1, 2, 3];
  constList[1] = 1; // 报错
}
