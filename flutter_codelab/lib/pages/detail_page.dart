import 'package:flutter/material.dart';

import '../global/styles.dart';
import '../widgets/card_num.dart';
import '../widgets/content_widget.dart';
import '../widgets/detail_bottom.dart';

class DetailPage extends StatelessWidget {
  final Map? arguments;

  const DetailPage({Key? key, required this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  arguments?['bgImg'],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: const BackButton(
                  color: Colors.white,
                ),
                // elevation: 0,
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: const Icon(
                  Icons.terrain,
                  color: Colors.white,
                  size: 40,
                ),
                iconTheme: const IconThemeData(color: mainColor),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              ),
              body: Container(
                height: 300,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      arguments?['title'],
                      style: cardStyle,
                    ),
                    Text(
                      arguments?['subTitle'],
                      style: cardTitleStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CardNum(),
                SizedBox(
                  height: 10,
                ),
                ContentWidget(),
                SizedBox(
                  height: 40,
                ),
                DetailBottom()
                // Expanded(
                //   child: Container(),
                // ),
                // const AppBottomBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
