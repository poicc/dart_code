import 'package:flutter/material.dart';
import 'package:flutter_demo/file/counter_model.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:flutter_demo/file/theme_model.dart';
import 'package:provider/provider.dart';

import 'first_page.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return provider.ChangeNotifierProvider.value(
    //   value: CounterModel(), //需要共享的数据资源
    //   child: const MaterialApp(
    //     home: FirstPage(),
    //   ),
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CounterModel(),
        ),
        // 只读
        Provider.value(value: 20.0),
        ChangeNotifierProvider.value(
          value: PhoneModel(),
        ),
        ChangeNotifierProvider.value(
          value: ThemeModel(),
        ),
      ],
      child: const MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
