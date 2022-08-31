void main() {
  Map myMap = {'zhangsan': '202201', 'lisi': '202202', 'wangwu': '202203'};

  myMap.forEach((k, v) => print('$k: $v'));

  for (var k in myMap.keys) {
    print("$k: ${myMap[k]}");
  }
}
