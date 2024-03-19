import 'package:coding_exercise/domain/entities/entity_post.dart';

sealed class StatePostDetails {}

class StatePostDetailsInitial extends StatePostDetails {}

class StatePostDetailsLoading extends StatePostDetails {}

class StatePostDetailsLoaded extends StatePostDetails {
  final EntityPost data;
  StatePostDetailsLoaded(this.data);
}

class StatePostDetailsError extends StatePostDetails {
  final String error;
  StatePostDetailsError(this.error);
}
