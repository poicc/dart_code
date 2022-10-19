import 'package:flutter/material.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:provider/provider.dart' as provider;

import 'first_page1.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return provider.ChangeNotifierProvider.value(
      value: PhoneModel(), //需要共享的数据资源
      child: const MaterialApp(
        home: FirstPage1(),
      ),
    );
  }
}
