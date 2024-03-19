import 'package:flutter/material.dart';

class WidgetProfileButton extends StatelessWidget {
  final String name;
  final String imgPath;
  const WidgetProfileButton(
      {super.key, required this.name, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(
              imgPath,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Good day!',
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .color
                        ?.withOpacity(0.54)),
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
