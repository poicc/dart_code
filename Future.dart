import 'dart:async';
void main() {
  print("main start");
  Future task1 = Future((){
    print("task 1");
    return 1;
  });

  Future task2 = Future((){
    print("task 2");
    return 2;
  });
    
  Future task3 = Future((){
    print("task 3");
    return 3;
  });

  Future fut = Future.wait([task1, task2, task3]);
  fut.then((responses){
    print(responses);
  });

  print("main stop");
}