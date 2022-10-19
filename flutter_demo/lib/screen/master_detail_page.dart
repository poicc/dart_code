import 'package:flutter/material.dart';

import 'detail_widget.dart';
import 'list_widget.dart';

class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MasterDetailPageState createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('列表页')),
      body: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 480) {
          return Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: ListWidget((value) {
                setState(() {
                  selectedValue = value;
                });
              }),
            ),
            Expanded(
              flex: 4,
              child: DetailWidget(selectedValue),
            ),
          ]);
        } else {
          return ListWidget((value) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(title: Text('详情页：$value')),
                    body: DetailWidget(value),
                  );
                },
              ),
            );
          });
        }
      }),
    );
  }
}
