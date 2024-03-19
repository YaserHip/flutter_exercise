import 'package:coding_exercise/domain/usecases/usecase_get_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/event_user_profile.dart';
import 'package:coding_exercise/presentation/bloc/user_profile/state_user_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocUserProfile extends Bloc<EventUserProfile, StateUserProfile> {
  final UseCaseGetUserProfile getUserProfile;

  BlocUserProfile({required this.getUserProfile})
      : super(StateUserProfileInitial()) {
    on<EventGetUserProfile>((event, emit) async {
      emit(StateUserProfileLoading());

      final errorOrData = await getUserProfile();
      errorOrData.fold((e) => emit(StateUserProfileError(e.toString())),
          (data) => emit(StateUserProfileLoaded(data)));
    });
  }
}
