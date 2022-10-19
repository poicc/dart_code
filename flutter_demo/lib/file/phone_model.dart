import 'package:flutter/material.dart';

class PhoneModel with ChangeNotifier {
  String _name = 'poicc';
  String _phone = '18841412221';
  String _avatar = 'https://avatars.githubusercontent.com/u/59445871?v=4';

  String get name => _name;
  String get phone => _phone;
  String get avatar => _avatar;

  // 写
  void changeName(String name) {
    _name = name;
    // 通知调用者刷新
    notifyListeners();
  }

  void changePhone(String phone) {
    _phone = phone;
    // 通知调用者刷新
    notifyListeners();
  }

  void changeAvatar(String avatar) {
    _avatar = avatar;
    // 通知调用者刷新
    notifyListeners();
  }
}
