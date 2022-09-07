import 'package:dart_code/global/styles.dart';
import 'package:flutter/material.dart';

class DetailBottom extends StatelessWidget {
  const DetailBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Read New',
              style: cardTitleStyle,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: mainColor),
          ),
          child: const Icon(
            Icons.turned_in_not,
            color: mainColor,
          ),
        ),
      ],
    );
  }
}
