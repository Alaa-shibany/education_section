import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/sessions_profile_repository.dart';
import '../../models/create_quiz_response_model.dart';
import '../../models/create_quiz_request_body_model.dart';

part 'create_quiz_state.dart';
part 'create_quiz_cubit.freezed.dart';

class CreateQuizCubit extends Cubit<CreateQuizState> {
  final SessionsProfileRepository _repository;

  CreateQuizCubit(this._repository) : super(const CreateQuizState());

  Future<void> createQuiz({ required CreateQuizRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createQuiz(body: body, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}