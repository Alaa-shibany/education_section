part of 'get_payments_cubit.dart';

@freezed
abstract class GetPaymentsState with _$GetPaymentsState {
  const factory GetPaymentsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<PaymentDetail>? data,
    TeacherModel? teacher,
    Failure? failure,
  }) = _CreateTeacherState;
}
