part of 'update_course_status_cubit.dart';

@freezed
abstract class UpdateCourseStatusState with _$UpdateCourseStatusState {
  const factory UpdateCourseStatusState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    AcceptRequestModel? data,
    String? errorMessage,
  }) = _CreateTeacherState; 
}