import 'package:flutter/material.dart';

import '../global/styles.dart';
import '../pages/detail_page.dart';

class AppListItem extends StatelessWidget {
  String title;
  String subTitle;
  String bgImg;

  AppListItem(this.title, this.subTitle, this.bgImg, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              arguments: {
                'title': title,
                'subTitle': subTitle,
                'bgImg': bgImg,
              },
            ),
          ),
        );
      },
      child: Container(
        width: 180,
        height: 250,
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(
                bgImg,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: lightTitleStyle,
            ),
            Text(
              subTitle,
              style: lightSubTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
