import 'package:coding_exercise/domain/entities/entity_user.dart';

sealed class StateFriendProfile {}

class StateFriendProfileInitial extends StateFriendProfile {}

class StateFriendProfileLoading extends StateFriendProfile {}

class StateFriendProfileLoaded extends StateFriendProfile {
  final EntityUser data;
  StateFriendProfileLoaded(this.data);
}

class StateFriendProfileError extends StateFriendProfile {
  final String error;
  StateFriendProfileError(this.error);
}
