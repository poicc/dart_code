void main() {
  try {
    print(11 ~/ 0);
  } on UnsupportedError {
    print('除数为0');
  } finally {
    print('退出');
  }
}
