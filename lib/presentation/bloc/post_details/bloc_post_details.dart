import 'package:coding_exercise/domain/usecases/usecase_get_post_details.dart';
import 'package:coding_exercise/presentation/bloc/post_details/event_post_details.dart';
import 'package:coding_exercise/presentation/bloc/post_details/state_post_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPostDetails extends Bloc<EventPostDetails, StatePostDetails> {
  final UseCaseGetPostDetails getPostDetails;

  BlocPostDetails({required this.getPostDetails})
      : super(StatePostDetailsInitial()) {
    on<EventGetPostDetails>((event, emit) async {
      emit(StatePostDetailsLoading());

      final errorOrData = await getPostDetails(event.id);
      errorOrData.fold((e) => emit(StatePostDetailsError(e.toString())),
          (data) => emit(StatePostDetailsLoaded(data)));
    });
  }
}
