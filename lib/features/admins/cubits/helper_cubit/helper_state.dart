part of 'helper_cubit.dart';

@freezed
abstract class HelperState with _$HelperState {
  const factory HelperState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<Permission>? data,
    String? errorMessage,
  }) = _CreateTeacherState;
}
