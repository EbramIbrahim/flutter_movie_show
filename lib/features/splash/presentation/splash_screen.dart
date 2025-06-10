import 'package:flutter/material.dart';
import 'package:movie_show/core/assets/image_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageAssets.splashImg)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xff1A1B20).withAlpha(0),
                  const Color(0xff1A1B20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
