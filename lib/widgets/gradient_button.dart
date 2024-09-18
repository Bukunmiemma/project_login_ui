import 'package:flutter/material.dart';
import 'package:project_login_ui_tutorial/pallet.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          elevation: 2,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
