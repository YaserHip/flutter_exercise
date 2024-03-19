import 'package:coding_exercise/domain/entities/entity_post.dart';

sealed class StatePostsList {}

class StatePostsListInitial extends StatePostsList {}

class StatePostsListLoading extends StatePostsList {}

class StatePostsListLoaded extends StatePostsList {
  final List<EntityPost> data;
  StatePostsListLoaded(this.data);
}

class StatePostsListError extends StatePostsList {
  final String error;
  StatePostsListError(this.error);
}
