import 'package:flutter/material.dart';

class WidgetIconTextProfile extends StatelessWidget {
  final IconData icon;
  final double sizeIcon;
  final String text;
  final double sizeText;
  const WidgetIconTextProfile(
      {super.key,
      required this.icon,
      required this.sizeIcon,
      required this.text,
      required this.sizeText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: sizeIcon,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(fontSize: sizeText),
        ),
      ],
    );
  }
}
