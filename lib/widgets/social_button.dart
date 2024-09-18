import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SociaLButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final double width;
  const SociaLButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 94,
    this.width =18,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: width,
      ),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(
          vertical: 20,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
          side: const BorderSide(width: 1,
          color: Colors.white
          )
        )
        
      ),
    );
  }
}
