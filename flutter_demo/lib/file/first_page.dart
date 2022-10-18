import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 取出资源
    final counter = Provider.of<CounterModel>(context);
    // 展示
    return Scaffold(
      appBar: AppBar(
        title: const Text('first page'),
      ),
      body: Text('Counter:${counter.counter}'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SecondPage()));
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
