part of 'create_quiz_cubit.dart';

@freezed
abstract class CreateQuizState with _$CreateQuizState {
  const factory CreateQuizState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateQuizResponseModel? data,
    String? errorMessage,
  }) = _CreateTeacherState; 
}