import 'package:flutter/material.dart';

import '../mock/data.dart';
import '../model/card_model.dart';
import 'card_num_item.dart';

class CardNum extends StatelessWidget {
  const CardNum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardModel model = cardItems[0];

    return Column(
      children: [
        SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardNumItem(
                model.title,
                number: model.number,
              ),
              CardNumItem(
                model.title,
                number: model.number,
              ),
              CardNumItem(
                model.title,
                number: model.number,
              )
            ],
          ),
        ),
      ],
    );
  }
}
