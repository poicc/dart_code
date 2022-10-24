import 'package:flutter/material.dart';

import 'camera_page.dart';
import 'master_detail_page.dart';
import 'orientation_demo.dart';
import 'screen_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            ScreenPage(),
            OrientationDemo(),
            MasterDetailPage(),
            CameraPage()
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "横竖屏",
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
                text: "转屏",
              ),
              Tab(
                icon: Icon(Icons.window),
                text: "多窗格",
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: "相册",
              ),
            ],
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.blue,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
