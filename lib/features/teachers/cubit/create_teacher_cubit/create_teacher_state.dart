part of 'create_teacher_cubit.dart';

@freezed
abstract class CreateTeacherState with _$CreateTeacherState {
  const factory CreateTeacherState({
    @Default([]) List<SubjectModel> selectedBooks,
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    teacherModel? createdTeacher,
    String? errorMessage,
  }) = _CreateTeacherState; 
}