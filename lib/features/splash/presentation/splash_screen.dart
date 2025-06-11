import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_show/core/assets/image_assets.dart';
import 'package:movie_show/core/navigation/app_navigator.dart';
import 'package:movie_show/features/auth/login/presentation/login_screen.dart';
import 'package:movie_show/features/home/presentation/home_screen.dart';
import 'package:movie_show/features/splash/presentation/splash_cubit.dart';
import 'package:movie_show/features/splash/presentation/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is Authenticated) {
            AppNavigator.pushReplacement(context, HomeScreen());
          }
          if (state is UnAuthenticated) {
            AppNavigator.pushReplacement(context, LoginScreen());
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.splashImg),
                ),
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
      ),
    );
  }
}
