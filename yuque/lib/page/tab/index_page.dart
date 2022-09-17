import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/59445871?v=4'),
          ),
        ),
        title: const Text(
          '小记',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        actions: [
          SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.tag,
                  color: Colors.black,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ],
        backgroundColor: Colors.grey.shade100,
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover),
            ),
            foregroundDecoration: const BoxDecoration(color: Colors.black26),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210, left: 10, right: 10),
            child: Column(
              children: [
                Text(
                  'hello world',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.indigo),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'This is Roboto-Bold',
                  style: TextStyle(fontFamily: 'Roboto-Bold', fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'SFCompactRounded',
                  style:
                      TextStyle(fontFamily: 'SFCompactRounded', fontSize: 22),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
