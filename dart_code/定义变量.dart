void main() {
  // 静态方式定义变量
  // String name = '张三';
  // num age = 18;
  // print(name);
  // print(age);

  // // 动态推导
  // var address = '羊山北路';
  // var id = 101;
  // print(address);
  // print(id);

  // 无法运行 number变量已确定为int类型
  // var number = 19;
  // number = '2022';

  // 使用dynamic声明变量
  dynamic var1 = 'hello';
  var1 = 10;
  print(var1);

  // 使用 Object 声明变量
  Object var2 = 'hello';
  var2 = 10;
  print(var2);
}
