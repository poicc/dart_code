import 'package:flutter/material.dart';
import 'package:flutter_demo/file/phone_model.dart';
import 'package:flutter_demo/file/test_icon.dart';
import 'package:flutter_demo/file/theme_model.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class SecondPage extends StatelessWidget {
  // const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Text('Counter: ${counter.counter}'),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: counter.add,
      //   // child: const Icon(Icons.add),
      //   child: TestIcon(),
      // ),

      // body: Consumer<CounterModel>(
      //   builder: (context, CounterModel counter, _) =>
      //       Text('counter:${counter.counter}'),
      // ),
      // floatingActionButton: Consumer<CounterModel>(
      //   builder: (context, CounterModel counter, child) => FloatingActionButton(
      //     onPressed: counter.add,
      //     child: child,
      //   ),
      //   child: TestIcon(),
      // ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Consumer(
          builder: (context, ThemeModel themeModel, _) => AppBar(
            title: const Text('second page'),
            backgroundColor: themeModel.themeData.backgroundColor,
          ),
        ),
      ),

      body: Consumer4(
        builder: (context, CounterModel counter, double testSize,
                PhoneModel user, ThemeModel theme, _) =>
            Column(
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
              style: theme.textStyle,
            ),
            ElevatedButton(
              onPressed: () {
                user.changeName('poicc');
                user.changeAvatar(
                    'https://images.pexels.com/photos/13684830/pexels-photo-13684830.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load');
              },
              child: const Text('修改用户信息'),
            ),
            ElevatedButton(
              onPressed: () {
                theme.changeTheme(
                  ThemeData(
                    backgroundColor: Colors.green.shade200,
                    appBarTheme: AppBarTheme(
                      backgroundColor: Colors.green.shade200,
                    ),
                  ),
                );
              },
              child: const Text('修改主题'),
            ),
            ElevatedButton(
              onPressed: () {
                theme.changeTextStyle(
                  TextStyle(fontSize: 25.0, color: Colors.green.shade200),
                );
              },
              child: const Text('修改字体样式'),
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<CounterModel>(
        builder: (context, CounterModel counter, child) => FloatingActionButton(
          onPressed: counter.add,
          child: child,
        ),
        child: TestIcon(),
      ),
    );
  }
}
