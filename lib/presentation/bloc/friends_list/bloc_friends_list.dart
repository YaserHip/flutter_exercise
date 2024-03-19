import 'package:coding_exercise/domain/usecases/usecase_get_friends_list.dart';
import 'package:coding_exercise/presentation/bloc/friends_list/event_friends_list.dart';
import 'package:coding_exercise/presentation/bloc/friends_list/state_friends_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFriendsList extends Bloc<EventFriendsList, StateFriendsList> {
  final UseCaseGetFriendsList getFriendsList;

  BlocFriendsList({required this.getFriendsList})
      : super(StateFriendsListInitial()) {
    on<EventGetFriendsList>((event, emit) async {
      emit(StateFriendsListLoading());

      final errorOrData = await getFriendsList();
      errorOrData.fold((e) => emit(StateFriendsListError(e.toString())),
          (data) => emit(StateFriendsListLoaded(data)));
    });
  }
}
