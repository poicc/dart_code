class Person {
  String? name;
  int? age;
  Person(name, age);
}

void main() {
  var p = Person('name', 10);
  print(p is Person);
  // (p as Person).name = 'Alice';
}
