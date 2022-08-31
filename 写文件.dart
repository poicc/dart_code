import 'dart:io';

void main() async {
  File file = File('test.txt');
  String content =
      'The easiest way to write text to a file is to create a file';
  try {
    await file.writeAsString(content);
    print('data written');
  } catch (e) {
    print(e);
  }
}
