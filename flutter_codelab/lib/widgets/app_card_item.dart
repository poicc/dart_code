import 'package:flutter/material.dart';

import '../global/styles.dart';

class AppCardItem extends StatelessWidget {
  String title;
  int? number;
  IconData? icon;

  AppCardItem(this.title, {this.number = 0, this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: mainColor,
          ),
          Text(
            title,
            style: cardItemStyle,
          )
        ],
      ),
    );
  }
}
