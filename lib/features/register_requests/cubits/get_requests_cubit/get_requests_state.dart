part of 'get_requests_cubit.dart';

@freezed
abstract class GetRequestsState with _$GetRequestsState {
  const factory GetRequestsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<RegisterRequestModel>? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
