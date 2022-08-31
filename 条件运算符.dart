void main() {
  // exp ?? exp1 非空条件判断 表示exp不空就返回exp 否则返回exp1
  String? str1 = null;
  String str2 = 'world';
  var res = str1 ?? str2.toUpperCase();
  print(res);
}
