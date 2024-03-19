import 'package:coding_exercise/domain/usecases/usecase_get_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/event_friend_profile.dart';
import 'package:coding_exercise/presentation/bloc/friend_profile/state_friend_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFriendProfile extends Bloc<EventFriendProfile, StateFriendProfile> {
  final UseCaseGetFriendProfile getFriendProfile;

  BlocFriendProfile({required this.getFriendProfile})
      : super(StateFriendProfileInitial()) {
    on<EventGetFriendProfile>((event, emit) async {
      emit(StateFriendProfileLoading());

      final errorOrData = await getFriendProfile(event.id);
      errorOrData.fold((e) => emit(StateFriendProfileError(e.toString())),
          (data) => emit(StateFriendProfileLoaded(data)));
    });
  }
}
