// dart中没有private public等修饰符 用_命名表示私有变量

class Person {
  String? name;
  int? _age;

  // 构造方法简写
  Person(this.name, this._age);
}

void main() {
  Person p = Person('zhangsan', 20);
  print(p.name);
  print(p._age);
}
