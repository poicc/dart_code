import 'dart:io';

void main() async {
  File file = File('test.txt');
  try {
    String content = await file.readAsString();
    print(content);
  } catch (e) {
    print(e);
  }
}
