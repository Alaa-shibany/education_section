part of 'create_subject_cubit.dart';

@freezed
abstract class CreateSubjectState with _$CreateSubjectState {
  const factory CreateSubjectState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateSubjectResponse? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
