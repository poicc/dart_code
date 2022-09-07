import 'package:flutter/material.dart';

import '../global/styles.dart';

class CardNumItem extends StatelessWidget {
  String title;
  int? number;
  IconData? icon;

  CardNumItem(this.title, {this.number = 0, this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: cardItemStyle,
          ),
          Text(
            number.toString(),
            style: numberStyle,
          )
        ],
      ),
    );
  }
}
