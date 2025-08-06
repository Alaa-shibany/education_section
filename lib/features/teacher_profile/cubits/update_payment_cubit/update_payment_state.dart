part of 'update_payment_cubit.dart';

@freezed
abstract class UpdatePaymentState with _$UpdatePaymentState {
  const factory UpdatePaymentState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    UpdateTeacherPaymentResponse? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
