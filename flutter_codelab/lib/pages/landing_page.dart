import 'package:dart_code/global/styles.dart';
import 'package:dart_code/widgets/app_header.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bottom_bar.dart';
import '../widgets/app_card.dart';
import '../widgets/app_list.dart';
import '../widgets/app_search.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.list,
          size: 30,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Icon(
          Icons.terrain,
          size: 40,
        ),
        iconTheme: const IconThemeData(color: mainColor),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.settings,
              color: mainColor,
              size: 32,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const AppHeader(),
          // Divider(
          //   color: Colors.grey.shade300,
          //   thickness: 2,
          //   indent: 20,
          //   endIndent: 20,
          // ),
          const AppSearch(),
          const AppList(),
          const CardList(),
          Expanded(
            child: Container(),
          ),
          const AppBottomBar(),
        ],
      ),
    );
  }
}
