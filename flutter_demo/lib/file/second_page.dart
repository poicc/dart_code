import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: Text('Counter: ${counter.counter}'),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.add,
        child: const Icon(Icons.add),
      ),
    );
  }
}
