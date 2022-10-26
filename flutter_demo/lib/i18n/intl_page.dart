import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class IntlPage extends StatelessWidget {
  const IntlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(S.of(context).title),
      ),
      extendBody: true,
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.white70),
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              S.current.bg,
              fit: BoxFit.fitHeight,
            ),
          ),
          ListTile(
            title: Text(S.current.title),
            subtitle: Text(S.current.price),
            leading: CircleAvatar(
              backgroundImage: AssetImage(S.current.bg),
            ),
          ),
        ],
      ),
    );
  }
}
