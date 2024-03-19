import 'package:flutter/material.dart';

class WidgetFriendPostView extends StatelessWidget {
  final String imageProfile;
  final String userName;
  final String date;
  final double size;
  const WidgetFriendPostView(
      {super.key,
      required this.imageProfile,
      required this.userName,
      required this.date,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: size,
          backgroundImage: AssetImage(
            imageProfile,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(fontSize: size - 4, fontWeight: FontWeight.w500),
            ),
            Text(
              date,
              style: TextStyle(
                  fontSize: size - 6,
                  color: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .color
                      ?.withOpacity(0.54)),
            ),
          ],
        )
      ],
    );
  }
}
