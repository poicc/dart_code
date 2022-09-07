import 'package:flutter/material.dart';

import '../global/styles.dart';
import '../mock/data.dart';
import '../model/card_model.dart';
import 'app_card_item.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Company',
                style: titleStyle,
              ),
              Text(
                'Look More',
                style: summaryStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardItems.length,
              itemBuilder: (context, index) {
                CardModel model = cardItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppCardItem(model.title, icon: model.icon),
                );
              }),
        ),
      ],
    );
  }
}
