import 'package:coding_exercise/domain/usecases/usecase_get_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/event_posts_list.dart';
import 'package:coding_exercise/presentation/bloc/posts_list/state_posts_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPostsList extends Bloc<EventPostsList, StatePostsList> {
  final UseCaseGetPostsList getPostsList;

  BlocPostsList({required this.getPostsList}) : super(StatePostsListInitial()) {
    on<EventGetPostsList>((event, emit) async {
      emit(StatePostsListLoading());

      final errorOrData = await getPostsList();
      errorOrData.fold((e) => emit(StatePostsListError(e.toString())),
          (data) => emit(StatePostsListLoaded(data)));
    });
  }
}
