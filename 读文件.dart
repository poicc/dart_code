import 'dart:io';

void main() async {
  File file = File('test.txt');
  String content = await file.readAsString();
  print(content);
}
