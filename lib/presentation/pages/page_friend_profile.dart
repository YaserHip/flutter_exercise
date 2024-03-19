import 'package:coding_exercise/presentation/bloc/friend_profile/bloc_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/event_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/state_friend_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_icon_text_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_profile_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageFriendProfile extends StatelessWidget {
  final int id;
  const PageFriendProfile({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<BlocFriendProfile>().add(EventGetFriendProfile(id));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, right: 46),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Flexible(
                        child: Center(
                            child: Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )))
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              BlocBuilder<BlocFriendProfile, StateFriendProfile>(
                  builder: (context, state) {
                switch (state) {
                  case StateFriendProfileLoading():
                    return const CircularProgressIndicator();
                  case StateFriendProfileLoaded():
                    final data = state.data;
                    return Column(
                      children: [
                        Center(
                          child: WidgetProfilePageTop(
                            imgProfile: data.imageProfile,
                            name: data.name,
                            age: data.age,
                            jobTitle: data.occupation,
                            place: data.location,
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          'Information',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 8),
                        WidgetIconTextProfile(
                            icon: Icons.business,
                            sizeIcon: 16,
                            text: data.company,
                            sizeText: 14),
                        WidgetIconTextProfile(
                            icon: Icons.school,
                            sizeIcon: 16,
                            text: data.education,
                            sizeText: 14),
                        WidgetIconTextProfile(
                            icon: Icons.favorite,
                            sizeIcon: 16,
                            text: data.status,
                            sizeText: 14),
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          'About me:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(data.bio)
                      ],
                    );
                  case StateFriendProfileError():
                    return const Text('Error');
                  default:
                    return const CircularProgressIndicator();
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
