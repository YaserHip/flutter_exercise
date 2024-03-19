import 'package:coding_exercise/presentation/bloc/posts_list/bloc_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/state_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/bloc_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/state_user_profile.dart';
import 'package:coding_exercise/presentation/pages/page_user_profile.dart';
import 'package:coding_exercise/presentation/widgets/widget_placeholder_profile_button.dart';
import 'package:coding_exercise/presentation/widgets/widget_post_image.dart';
import 'package:coding_exercise/presentation/widgets/widget_post_text.dart';
import 'package:coding_exercise/presentation/widgets/widget_profile_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<BlocUserProfile, StateUserProfile>(
                builder: (context, state) {
              switch (state) {
                case StateUserProfileLoading():
                  return const Padding(
                    padding: EdgeInsets.only(top: 14, left: 18),
                    child: WidgetPlaceHolderProfileButton(),
                  );
                case StateUserProfileError():
                  return Center(child: Text(state.error));

                case StateUserProfileLoaded():
                  return Padding(
                      padding: const EdgeInsets.only(top: 11, left: 18),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => BlocProvider.value(
                                    value: context.read<BlocUserProfile>(),
                                    child: const PageUserProfile(),
                                  )));
                        },
                        child: WidgetProfileButton(
                            name: state.data.name,
                            imgPath: state.data.imageProfile),
                      ));
                default:
                  return const WidgetPlaceHolderProfileButton();
              }
            }),
            Flexible(
              child: BlocBuilder<BlocPostsList, StatePostsList>(
                  builder: (context, state) {
                switch (state) {
                  case StatePostsListLoading():
                    return const CircularProgressIndicator();
                  case StatePostsListError():
                    return Text(state.error);
                  case StatePostsListLoaded():
                    return ListView.builder(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          var post = state.data[index];

                          if (post.type == "text") {
                            return WidgetPostText(
                                idFriend: post.userId,
                                idPost: post.id,
                                imgFriend: post.imageProfile,
                                nameFriend: post.username,
                                content: post.content,
                                date: post.date);
                          } else {
                            return WidgetPostImage(
                                idFriend: post.userId,
                                idPost: post.id,
                                imgFriend: post.imageProfile,
                                nameFriend: post.username,
                                imgPath: post.imageUrl,
                                date: post.date,
                                content: post.content);
                          }
                        });
                  default:
                    return const CircularProgressIndicator();
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
