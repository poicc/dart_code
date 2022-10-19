import 'package:flutter/material.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:flutter_demo/file/theme_model.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 取出资源
    final counter = Provider.of<CounterModel>(context);
    // 取出字体大小的资源
    final testSize = Provider.of<double>(context);
    final user = Provider.of<PhoneModel>(context);
    final themeData = Provider.of<ThemeModel>(context);

    // 展示
    return MaterialApp(
      theme: themeData.themeData,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('first page'),
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.avatar),
              ),
              title: Text(
                'name:${user.name} ',
                style: TextStyle(fontSize: testSize),
              ),
              subtitle: Text(
                'phone:${user.phone}',
                style: TextStyle(fontSize: testSize),
              ),
            ),
            Text(
              'Counter:${counter.counter}',
              style: themeData.textStyle,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SecondPage()));
          },
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
