import 'package:coding_exercise/domain/entities/entity_user.dart';

sealed class StateUserProfile {}

class StateUserProfileInitial extends StateUserProfile {}

class StateUserProfileLoading extends StateUserProfile {}

class StateUserProfileLoaded extends StateUserProfile {
  final EntityUser data;
  StateUserProfileLoaded(this.data);
}

class StateUserProfileError extends StateUserProfile {
  final String error;
  StateUserProfileError(this.error);
}
