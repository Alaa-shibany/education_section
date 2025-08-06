part of 'get_subjects_cubit.dart';

@freezed
abstract class GetSubjectsState with _$GetSubjectsState {
  const factory GetSubjectsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<SubjectModel>? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
