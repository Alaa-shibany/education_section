import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_teacher_payment_response.freezed.dart';
part 'update_teacher_payment_response.g.dart';

@freezed
abstract class UpdateTeacherPaymentResponse with _$UpdateTeacherPaymentResponse {
  const factory UpdateTeacherPaymentResponse({
    required String message,
  }) = _UpdateTeacherPaymentResponse;

  factory UpdateTeacherPaymentResponse.fromJson(Map<String, dynamic> json) => _$UpdateTeacherPaymentResponseFromJson(json);
}
