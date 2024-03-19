import 'package:coding_exercise/presentation/bloc/user_profile/bloc_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/state_user_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_icon_text_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_profile_page_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageUserProfile extends StatelessWidget {
  const PageUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
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
              BlocBuilder<BlocUserProfile, StateUserProfile>(
                  builder: (context, state) {
                switch (state) {
                  case StateUserProfileLoading():
                    return const CircularProgressIndicator();
                  case StateUserProfileLoaded():
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
                  case StateUserProfileError():
                    return Center(child: Text(state.error));
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
