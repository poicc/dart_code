import 'package:flutter/material.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      print('当前是竖屏模式');
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 屏幕适配'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          //根据屏幕旋转方向返回不同布局行为
          return orientation == Orientation.portrait
              ? _buildVerticalLayout(context)
              : _buildHorizontalLayout(context);
        },
      ),
    );
  }

  Widget _buildVerticalLayout(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.green,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width / 2,
            height: double.infinity,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width / 2,
            height: double.infinity,
          ),
        ),
      ],
    );
  }
}
