part of 'create_homework_cubit.dart';

@freezed
abstract class CreateHomeworkState with _$CreateHomeworkState {
  const factory CreateHomeworkState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateHomeworkResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
