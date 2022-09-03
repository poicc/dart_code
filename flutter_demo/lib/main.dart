import 'package:flutter/material.dart';
// import 'package:flutter_demo/basic/aspect_ratio.dart';
// import 'package:flutter_demo/basic/card_demo.dart';
// import 'package:flutter_demo/basic/layout_demo.dart';
// import 'package:flutter_demo/basic/wrap_demo.dart';
// import 'package:flutter_demo/basic/routes.dart';
// import 'package:flutter_demo/pages/appbar_page.dart';
// import 'package:flutter_demo/basic/button_demo.dart';
// import 'package:flutter_demo/basic/floating_action_button_demo.dart';
import 'package:flutter_demo/basic/form_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const FormDemo(),
      // onGenerateRoute: onGenerateRoute,
      // routes: {
      //   '/': (context) => const Tabs(),
      //   '/search': (context) => const SearchPage(
      //         title: '搜索',
      //       ),
      //   '/from': (context) => const FormPage(
      //         title: '搜索',
      //       ),
      // },
    );
  }
}
