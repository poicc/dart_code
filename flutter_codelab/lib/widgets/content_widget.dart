import 'package:flutter/material.dart';

import '../global/styles.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Mount Semeru',
            style: detailTitleStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata',
            overflow: TextOverflow.ellipsis,
            maxLines: 8,
            style: desStyle,
          )
        ],
      ),
    );
  }
}
