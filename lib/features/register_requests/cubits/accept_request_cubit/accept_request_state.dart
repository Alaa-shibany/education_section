part of 'accept_request_cubit.dart';

@freezed
abstract class AcceptRequestState with _$AcceptRequestState {
  const factory AcceptRequestState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    AcceptRequestModel? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
