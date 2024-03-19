import 'package:coding_exercise/presentation/widgets/widget_icon_text_profile.dart';
import 'package:flutter/material.dart';

class WidgetProfilePageTop extends StatelessWidget {
  final String imgProfile;
  final String name;
  final int age;
  final String jobTitle;
  final String place;

  const WidgetProfilePageTop(
      {super.key,
      required this.imgProfile,
      required this.name,
      required this.age,
      required this.jobTitle,
      required this.place});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(imgProfile),
        ),
        const SizedBox(width: 28),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$name, $age',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            WidgetIconTextProfile(
                icon: Icons.work, sizeIcon: 15, text: jobTitle, sizeText: 12),
            WidgetIconTextProfile(
                icon: Icons.place, sizeIcon: 15, text: place, sizeText: 12),
          ],
        ),
      ],
    );
  }
}
