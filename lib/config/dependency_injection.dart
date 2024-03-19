import 'package:coding_exercise/data/data_source.dart';
import 'package:coding_exercise/data/impl_data_source.dart';
import 'package:coding_exercise/data/repositories/impl_repository_data.dart';
import 'package:coding_exercise/domain/repositories/repository_data.dart';
import 'package:coding_exercise/domain/usecases/usecase_get_friend_profile.dart';
import 'package:coding_exercise/domain/usecases/usecase_get_friends_list.dart';
import 'package:coding_exercise/domain/usecases/usecase_get_post_details.dart';
import 'package:coding_exercise/domain/usecases/usecase_get_posts_list.dart';
import 'package:coding_exercise/domain/usecases/usecase_get_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/bloc_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friends_list/bloc_friends_list.dart';
import 'package:coding_exercise/presentation/bloc/post_details/bloc_post_details.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/bloc_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/bloc_user_profile.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDi() {
  getIt.registerLazySingleton<DataSource>(() => ImplDataSource());

  getIt.registerLazySingleton<RepositoryData>(
      () => ImplRepositoryData(source: getIt()));

  getIt.registerLazySingleton(() => UseCaseGetUserProfile(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetFriendProfile(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetPostDetails(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetFriendsList(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetPostsList(getIt()));

  getIt.registerFactory(() => BlocUserProfile(getUserProfile: getIt()));
  getIt.registerFactory(() => BlocFriendProfile(getFriendProfile: getIt()));
  getIt.registerFactory(() => BlocPostDetails(getPostDetails: getIt()));
  getIt.registerFactory(() => BlocFriendsList(getFriendsList: getIt()));
  getIt.registerFactory(() => BlocPostsList(getPostsList: getIt()));
}
