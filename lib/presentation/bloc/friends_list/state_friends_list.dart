import 'package:coding_exercise/domain/entities/entity_user.dart';

sealed class StateFriendsList {}

class StateFriendsListInitial extends StateFriendsList {}

class StateFriendsListLoading extends StateFriendsList {}

class StateFriendsListLoaded extends StateFriendsList {
  final List<EntityUser> data;
  StateFriendsListLoaded(this.data);
}

class StateFriendsListError extends StateFriendsList {
  final String error;
  StateFriendsListError(this.error);
}
