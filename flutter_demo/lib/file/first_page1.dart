import 'package:flutter/material.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:flutter_demo/file/sqlite_phone_page.dart';
import 'package:provider/provider.dart';

class FirstPage1 extends StatelessWidget {
  const FirstPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 取出资源
    final counter = Provider.of<PhoneModel>(context);
    // 展示
    return Scaffold(
      appBar: AppBar(
        title: const Text('first page'),
      ),
      body: Text('name:${counter.name} phone:${counter.phone}'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SqlitePhonePage()));
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
