part of 'get_sessions_cubit.dart';

@freezed
abstract class GetSessionsState with _$GetSessionsState {
  const factory GetSessionsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<SessionModel>? data,
    Failure? failure,
    CourseModel? course,
  }) = _CreateTeacherState;
}
