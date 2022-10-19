import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  TextStyle _textStyle = TextStyle(fontSize: 20.0, color: Colors.cyan.shade200);
  ThemeData _themeData = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: Colors.red,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.cyan,
    ),
    backgroundColor: Colors.cyan.shade200,
    textButtonTheme: TextButtonThemeData(
      // 按钮主题
      style:
          // TextButton.styleFrom(
          //   foregroundColor: Colors.cyan.shade200,
          //   side: BorderSide(
          //     color: Colors.cyan.shade200,
          //   ),
          // ),
          ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade800),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
      ),
    ),
  );

  TextStyle get textStyle => _textStyle;

  ThemeData get themeData => _themeData;

  // 写
  void changeTheme(ThemeData themeData) {
    _themeData = themeData;
    // 通知调用者刷新
    notifyListeners();
  }

  void changeTextStyle(TextStyle textStyle) {
    _textStyle = textStyle;
    // 通知调用者刷新
    notifyListeners();
  }
}
