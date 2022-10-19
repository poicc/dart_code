import 'package:flutter/material.dart';

import 'l_text.dart';

class DetailWidget extends StatefulWidget {
  final int data;

  const DetailWidget(this.data, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LText('index: ${widget.data}'),
          ],
        ),
      ),
    );
  }
}
