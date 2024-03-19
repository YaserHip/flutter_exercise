import 'package:coding_exercise/presentation/bloc/friend_profile/bloc_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/post_details/bloc_post_details.dart';
import 'package:coding_exercise/presentation/bloc/post_details/event_post_details.dart';
import 'package:coding_exercise/presentation/bloc/post_details/state_post_details.dart';
import 'package:coding_exercise/presentation/pages/page_friend_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_custom_appbar.dart';
import 'package:coding_exercise/presentation/widgets/widget_friend_post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PagePostDetails extends StatelessWidget {
  final int id;
  const PagePostDetails({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<BlocPostDetails>().add(EventGetPostDetails(id));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 22, right: 46),
                    child: WidgetCustomAppBar(title: 'Post')),
                const SizedBox(
                  height: 38,
                ),
                BlocBuilder<BlocPostDetails, StatePostDetails>(
                    builder: (_, state) {
                  switch (state) {
                    case StatePostDetailsLoading():
                      return const CircularProgressIndicator();
                    case StatePostDetailsLoaded():
                      final post = state.data;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => BlocProvider.value(
                                        value:
                                            context.read<BlocFriendProfile>(),
                                        child:
                                            PageFriendProfile(id: post.userId),
                                      )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: WidgetFriendPostView(
                                imageProfile: post.imageProfile,
                                userName: post.username,
                                date: post.date,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(post.content),
                          const SizedBox(
                            height: 18,
                          ),
                          if (post.type == 'image')
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(
                                post.imageUrl,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          const SizedBox(
                            height: 18,
                          ),
                        ],
                      );
                    case StatePostDetailsError():
                      return Center(child: Text(state.error));
                    default:
                      return const CircularProgressIndicator();
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
