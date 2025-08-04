part of 'create_course_cubit.dart';

@freezed
abstract class CreateCourseState with _$CreateCourseState {
  const factory CreateCourseState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    AcceptRequestModel? data,
    @Default(true) bool isDaily,
    String? errorMessage,
  }) = _CreateTeacherState;
}
