import '类型判断运算符.dart';

class Person {
  String? name;
  int? age;
  Person({this.name, this.age});

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }
}

void main() {
  new Person()
    ..setName('Alice')
    ..setAge(20);
}
