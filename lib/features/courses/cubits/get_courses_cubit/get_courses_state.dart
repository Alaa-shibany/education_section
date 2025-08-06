part of 'get_courses_cubit.dart';

@freezed
abstract class GetCoursesState with _$GetCoursesState {
  const factory GetCoursesState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<CourseModel>? data,
    @Default(0) int badgeCount,
    Failure? failure,
  }) = _CreateTeacherState;
}
