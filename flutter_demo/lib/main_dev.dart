import 'package:flutter/material.dart';
import 'package:flutter_demo/config/app_config.dart';
import 'package:flutter_demo/test_app.dart';

void main() {
  var configApp = const AppConfig(
    appName: 'dev',
    apiBaseUrl: 'http://dev.example.com/',
    child: TestApp(),
  );
  runApp(configApp);
}
