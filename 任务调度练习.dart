import 'dart:async';

void main() {
  print('main start');

  Future(() {
    print('this is my task');
  });

  Future.microtask(() {
    print('this is microtask');
  });

  print('main stop');
}
