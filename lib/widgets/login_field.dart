import 'package:flutter/material.dart';
import 'package:project_login_ui_tutorial/pallet.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(9),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Pallete.gradient2,width: 0),
            borderRadius: BorderRadius.circular(9),
            
          ),
        ),
      ),
    );
  }
}
