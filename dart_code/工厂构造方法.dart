// dart中已经包含了隐式的get方法 非final类型的变量包含了隐式的set方法
class Person {
  String userName;

  Person(this.userName);

  String get name {
    return 'user:' + this.userName;
  }

  set name(String name) {
    this.userName = name;
  }
}

void main() {
  Person p = Person('userName');
  print(p.name);
  p.name = 'Jack';
  print(p.name);
}
