part of 'update_teacher_cubit.dart';

@freezed
abstract class UpdateTeacherState with _$UpdateTeacherState {
  const factory UpdateTeacherState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    UpdatedTeacherResponse? data,
    Failure? failure,
    @Default([]) List<SubjectModel> selectedBooks,
  }) = _CreateTeacherState;
}
