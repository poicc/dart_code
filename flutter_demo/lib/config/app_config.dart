import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appName;
  final String apiBaseUrl;

  const AppConfig({
    super.key,
    required this.appName,
    required this.apiBaseUrl,
    required Widget child,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
