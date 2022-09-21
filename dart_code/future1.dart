void main() {
  Future(() => print('f1'));
  Future(() => print('f2'));

//f3执行后会立刻同步执行then 3
  Future(() => print('f3')).then((_) => print('then 3'));

// 加入微任务队列 尽快执行
  Future(() => null).then((_) => print('then 4'));
}
