part of 'create_teacher_cubit.dart';

@freezed
abstract class CreateTeacherState with _$CreateTeacherState {
  const factory CreateTeacherState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreatedTeacherResponse? data,
    String? errorMessage,
    @Default([]) List<SubjectModel> selectedBooks,
  }) = _CreateTeacherState;
}
