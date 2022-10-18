import 'package:flutter/material.dart';
import 'package:flutter_demo/file/counter_model.dart';
import 'package:provider/provider.dart' as provider;

import 'first_page.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return provider.ChangeNotifierProvider.value(
      value: CounterModel(), //需要共享的数据资源
      child: const MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
