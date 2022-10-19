import 'package:flutter/material.dart';

import 'l_text.dart';

class OrientationDemo extends StatefulWidget {
  const OrientationDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OrientationDemoState createState() => _OrientationDemoState();
}

class _OrientationDemoState extends State<OrientationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? _buildVerticalLayout()
              : _buildHorizontalLayout();
        },
      ),
    );
  }

  Widget _buildVerticalLayout() {
    return Column(
      children: const <Widget>[
        PeopleIconView(),
        Expanded(
          child: ItemListView(),
        )
      ],
    );
  }

  Widget _buildHorizontalLayout() {
    return Row(
      children: const <Widget>[
        Expanded(
          flex: 1,
          child: PeopleIconView(),
        ),
        Expanded(
          flex: 4,
          child: ItemListView(),
        ),
      ],
    );
  }
}

class PeopleIconView extends StatelessWidget {
  const PeopleIconView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Icon(Icons.people_outline, size: 80.0),
    );
  }
}

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: List.generate(30, (n) {
        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              child: LText('text $n'),
            ),
            Divider(color: Colors.grey.shade400),
          ],
        );
      }),
    );
  }
}
