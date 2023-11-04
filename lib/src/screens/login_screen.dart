import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poraali/src/utils/app_Styles.dart';
import 'package:poraali/src/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/signin_balls.png'),
            const Text(
              'Sign in.',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
            ),
            const SizedBox(height: 50,),
            const SocialButton(iconPath: 'assets/svgs/g_logo.svg', label: 'Continue with Google')
          ],
        ),
      ),
    );
  }
}
