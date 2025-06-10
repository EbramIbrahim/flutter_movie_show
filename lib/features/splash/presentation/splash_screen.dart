import 'package:flutter/material.dart';
import 'package:movie_show/core/assets/image_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ImageAssets.splashImg)),
        ),
      ),
    );
  }
}
