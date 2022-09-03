import 'dart:io';

doTask() async {
  sleep(Duration(seconds: 3));
  print('finish');
  return 'OK';
}

test() async {
  var res = await doTask();
  print(res);
}

void main() {
  print('main start');
  // var res = doTask();
  // print(res); // Instance of 'Future<dynamic>'
  test();
  print('main end');
}
