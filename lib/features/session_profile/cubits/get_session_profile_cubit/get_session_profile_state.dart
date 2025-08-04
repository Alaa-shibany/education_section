part of 'get_session_profile_cubit.dart';

@freezed
abstract class GetSessionProfileState with _$GetSessionProfileState {
  const factory GetSessionProfileState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    SessionProfileModel? data,
    String? errorMessage,
    SessionModel? session,
  }) = _CreateTeacherState;
}
