import 'package:flutter/material.dart';

class WidgetCustomAppBar extends StatelessWidget {
  final String title;
  const WidgetCustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        Flexible(
            child: Center(
                child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        )))
      ],
    );
  }
}
