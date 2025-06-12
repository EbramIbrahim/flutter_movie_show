import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_show/core/widgets/primary_button_widget.dart';
import 'package:movie_show/core/widgets/primary_text_field_widget.dart';

import '../../../../core/navigation/app_router.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          children: [
            _signInText(),
            SizedBox(height: 30),
            PrimaryTextFieldWidget(
              hintText: 'Email',
              controller: _emailController,
            ),
            SizedBox(height: 20),
            PrimaryTextFieldWidget(
              hintText: 'Password',
              controller: _passwordController,
            ),
            SizedBox(height: 20),
            PrimaryButtonWidget(buttonText: 'Sign In', onPress: () {}),
            const SizedBox(height: 20),
            _signupText(context),
          ],
        ),
      ),
    );
  }
}

Widget _signInText() {
  return Text(
    'Sign In',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}

Widget _signupText(BuildContext context) {
  return Text.rich(
    TextSpan(
      children: [
        const TextSpan(text: "Don't you have account?"),
        TextSpan(
          text: ' Sign Up',
          style: const TextStyle(color: Colors.blue),
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  GoRouter.of(context).pushReplacement(AppRouter.signUpScreen);
                },
        ),
      ],
    ),
  );
}
