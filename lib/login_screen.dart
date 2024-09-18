import 'package:flutter/material.dart';
import 'package:project_login_ui_tutorial/widgets/gradient_button.dart';
import 'package:project_login_ui_tutorial/widgets/login_field.dart';
import 'package:project_login_ui_tutorial/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/dara.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black38,
              Colors.black87,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/dara.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SociaLButton(
                    iconPath: 'assets/svg/google_icon.svg',
                    label: 'Continue with Google',
                  ),
                  const SizedBox(height: 20),
                  const SociaLButton(
                    iconPath: 'assets/svg/fb_icon.svg',
                    width: 20,
                    label: 'Continue with Facebook',
                    horizontalPadding: 88,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const LoginField(hintText: 'Email'),
                  const SizedBox(height: 20),
                  const LoginField(hintText: 'Password'),
                  const SizedBox(height: 20),
                  const GradientButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
