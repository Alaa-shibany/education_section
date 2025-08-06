part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    LoginResponseModel? data,
    @Default(true) bool saveToken,
    Failure? failure,
  }) = _CreateTeacherState;
}
