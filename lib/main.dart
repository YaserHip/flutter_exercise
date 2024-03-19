import 'package:coding_exercise/config/dependency_injection.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/bloc_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friends_list/bloc_friends_list.dart';
import 'package:coding_exercise/presentation/bloc/friends_list/event_friends_list.dart';
import 'package:coding_exercise/presentation/bloc/post_details/bloc_post_details.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/bloc_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/event_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/bloc_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/event_user_profile.dart';
import 'package:coding_exercise/presentation/pages/page_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initDi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var colorSeed = Colors.green;

    return MaterialApp(
        title: 'Flutter Coding Exercise',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: colorSeed),
            useMaterial3: true,
            brightness: Brightness.light),
        darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: colorSeed, brightness: Brightness.dark),
            useMaterial3: true,
            brightness: Brightness.dark),
        themeMode: ThemeMode.light,
        home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) =>
                getIt<BlocUserProfile>()..add(EventGetUserProfile()),
          ),
          BlocProvider(create: (context) => getIt<BlocFriendProfile>()),
          BlocProvider(create: (context) => getIt<BlocPostDetails>()),
          BlocProvider(
              create: (context) =>
                  getIt<BlocFriendsList>()..add(EventGetFriendsList())),
          BlocProvider(
              create: (context) =>
                  getIt<BlocPostsList>()..add(EventGetPostsList()))
        ], child: const PageHome()));
  }
}
