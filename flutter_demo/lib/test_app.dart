import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/config/app_config.dart';

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  var test = 'debug模式';
  @override
  Widget build(BuildContext context) {
    assert(() {
      print('checking debug in asserr');
      return true;
    }());

    if (kReleaseMode) {
      print('checking release from Environment');
      setState(() {
        test = 'release模式';
      });
    } else {
      print('checking debug from Environment');
      test = 'release模式';
    }

    var config = AppConfig.of(context);
    return MaterialApp(
      title: config!.appName,
      home: TestHomePage(test),
    );
  }
}

class TestHomePage extends StatelessWidget {
  String test;

  TestHomePage(this.test, {super.key});

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config!.appName),
      ),
      body: Center(
        child: Column(
          children: [
            Text('API host: ${config.apiBaseUrl}'),
            Text('当前模式: $test'),
          ],
        ),
      ),
    );
  }
}
