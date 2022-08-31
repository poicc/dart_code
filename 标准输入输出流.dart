import 'dart:io';

void main() {
  stdout.writeln('hello');
  stderr.writeln('has error');
  var input = stdin.readByteSync();
  stdout.writeln('input data: $input');
}
