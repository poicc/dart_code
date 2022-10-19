import 'package:flutter/material.dart';

import 'l_text.dart';

typedef ItemSelectedCallback = Null Function(int value);

class ListWidget extends StatefulWidget {
  final ItemSelectedCallback onItemSelected;
  const ListWidget(this.onItemSelected, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return ListTile(
          title: LText(position.toString()),
          onTap: () => widget.onItemSelected(position),
        );
      },
    );
  }
}
