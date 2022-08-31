import 'dart:async';

void myTask() {
  print('this is my task');
}

void main() {
  // 使用scheduleMicrotask方法添加
  scheduleMicrotask(myTask);

  // 使用Futhre对象添加
  Future.microtask(myTask);

  // 将任务添加到Event队列
  Future(myTask);
}
