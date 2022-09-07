import 'package:flutter/material.dart';

import '../global/styles.dart';
import 'landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LandingPage(),
        ),
      );
    });
    return Container(
      decoration: const BoxDecoration(
        color: mainColor,
        // image: DecorationImage(
        //   image: NetworkImage(
        //       "https://avatars.githubusercontent.com/u/59445871?v=4"),
        // ),
      ),
      child: Stack(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              size: 90,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              // padding: EdgeInsets.symmetric(vertical: 100),
              padding: EdgeInsets.only(bottom: 80),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
