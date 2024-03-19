import 'package:coding_exercise/presentation/bloc/friend_profile/bloc_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/post_details/bloc_post_details.dart';
import 'package:coding_exercise/presentation/pages/page_friend_profile.dart';
import 'package:coding_exercise/presentation/pages/page_post_details.dart';
import 'package:coding_exercise/presentation/widgets/widget_friend_post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidgetPostText extends StatelessWidget {
  final int idFriend;
  final int idPost;
  final String imgFriend;
  final String nameFriend;
  final String content;
  final String date;

  const WidgetPostText(
      {super.key,
      required this.imgFriend,
      required this.nameFriend,
      required this.content,
      required this.date,
      required this.idFriend,
      required this.idPost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 123,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                              value: context.read<BlocPostDetails>()),
                          BlocProvider.value(
                              value: context.read<BlocFriendProfile>())
                        ],
                        child: PagePostDetails(
                          id: idPost,
                        ))));
          },
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, top: 13.0),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                                value: context.read<BlocFriendProfile>(),
                                child: PageFriendProfile(id: idFriend),
                              )));
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: WidgetFriendPostView(
                          imageProfile: imgFriend,
                          userName: nameFriend,
                          date: date,
                          size: 16,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        content,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
