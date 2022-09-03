void main() {
  List myList = ['JAVA', 'JAVASCRIPT', 'DART'];

  // for..in..循环
  for (var it in myList) {
    print(it);
  }

  // 其参数是一个function对象 这里传入一个匿名函数
  myList.forEach((var it) {
    print(it);
  });

  myList.forEach((it) => print(it));
}
