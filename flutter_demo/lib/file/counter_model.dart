import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _count = 0;

  int get counter => _count;

  // 写
  void add() {
    _count++;
    // 通知调用者刷新
    notifyListeners();
  }
}
