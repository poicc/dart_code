import 'package:flutter/material.dart';
import 'package:flutter_demo/test_app.dart';

import 'config/app_config.dart';

void main() {
  var configApp = const AppConfig(
    appName: 'example',
    apiBaseUrl: 'http://dev.example.com/',
    child: TestApp(),
  );
  runApp(configApp);
}
