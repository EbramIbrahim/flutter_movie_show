import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:movie_show/core/widgets/primary_button_widget.dart';
import 'package:movie_show/core/widgets/primary_text_field_widget.dart';
import 'package:movie_show/features/auth/login/presentation/login_screen.dart';
import '../../../../core/navigation/app_navigator.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          children: [
            _signUpText(),
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
            _signInText(context),
          ],
        ),
      ),
    );
  }
}

Widget _signUpText() {
  return Text(
    'Sign Up',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}

Widget _signInText(BuildContext context) {
  return Text.rich(
    TextSpan(
      children: [
        const TextSpan(text: "have an account?"),
        TextSpan(
          text: ' Sign In',
          style: const TextStyle(color: Colors.blue),
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.push(context, LoginScreen());
                },
        ),
      ],
    ),
  );
}
