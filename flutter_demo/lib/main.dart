import 'package:flutter/material.dart';
// import 'package:flutter_demo/basic/text_widget.dart';
// import 'package:flutter_demo/basic/image_widget.dart';
// import 'package:flutter_demo/basic/news_content.dart';
// import 'package:flutter_demo/basic/list_tile_base.dart';
// import 'package:flutter_demo/basic/news_page.dart';
// import 'package:flutter_demo/basic/list_view_base.dart';
// import 'basic/my_dialog_demo.dart';
// import 'package:flutter_demo/basic/list_view_dynamic.dart';
// import 'package:flutter_demo/basic/http_demo.dart';
// import 'package:flutter_demo/basic/gird_view_base.dart';
// import 'package:flutter_demo/basic/swiper_demo.dart';
// import 'package:flutter_demo/basic/grid_view_builder.dart';
// import 'package:flutter_demo/basic/aspect_ratio.dart';
// import 'package:flutter_demo/basic/padding_demo.dart';
// import 'package:flutter_demo/basic/card_demo.dart';
// import 'package:flutter_demo/basic/row_demo.dart';
// import 'package:flutter_demo/basic/layout_demo.dart';
// import 'package:flutter_demo/basic/column_demo.dart';
// import 'package:flutter_demo/basic/wrap_demo.dart';
// import 'package:flutter_demo/basic/expanded_demo.dart';
// import 'package:flutter_demo/basic/routes.dart';
// import 'package:flutter_demo/basic/stack_align.dart';
// import 'package:flutter_demo/pages/appbar_page.dart';
import 'package:flutter_demo/basic/stack_positioned.dart';
// import 'package:flutter_demo/basic/button_demo.dart';
// import 'package:flutter_demo/basic/floating_action_button_demo.dart';
// import 'package:flutter_demo/basic/form_demo.dart';
// import 'package:flutter_demo/basic/form_widget.dart';
// import 'package:flutter_demo/basic/date_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('zh', 'CH'), Locale('en', 'US')],
      home: StackDemo1(),
      // onGenerateRoute: onGenerateRoute,
      // routes: {
      //   '/': (context) => const NewsPage(),
      //   '/news-content': (context, {arguments}) => NewsContent(arguments: arguments),
      // },
    );
  }
}
