import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LText extends StatelessWidget {
  String? content;

  LText(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(content!, style: Theme.of(context).textTheme.headline6);
  }
}
