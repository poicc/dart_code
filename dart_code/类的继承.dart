// 首先定义三个父类
class Father {
  myFunction() {
    print('father class');
  }
}

class Son extends Father {
  @override
  myFunction() {
    super.myFunction();
    print('son class');
  }
}

void main() {
  var f = Father();
  f.myFunction();

  var s = Son();
  s.myFunction();
}
