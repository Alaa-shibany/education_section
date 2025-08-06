part of 'update_subject_cubit.dart';

@freezed
abstract class UpdateSubjectState with _$UpdateSubjectState {
  const factory UpdateSubjectState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    UpdateSubjectResponse? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
