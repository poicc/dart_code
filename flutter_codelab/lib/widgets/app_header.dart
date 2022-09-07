import 'package:flutter/material.dart';

import '../global/styles.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/59445871?v=4',
            ),
            radius: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Hello crq',
                  style: titleStyle,
                ),
                Text(
                  'Good Morning',
                  style: summaryStyle,
                ),
              ],
            ),
          ),
          // ClipOval(
          //   child: Image.network(
          //     'https://avatars.githubusercontent.com/u/59445871?v=4',
          //     width: 50,
          //     height: 50,
          //     fit: BoxFit.cover,
          //   ),
          // ),
        ],
      ),
    );
  }
}
