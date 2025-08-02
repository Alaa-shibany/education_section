import 'payment_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_payments.freezed.dart';
part 'teacher_payments.g.dart';

@freezed
abstract class TeacherPayments with _$TeacherPayments {
  const factory TeacherPayments({
    required List<PaymentDetail> payments,
  }) = _TeacherPayments;

  factory TeacherPayments.fromJson(Map<String, dynamic> json) => _$TeacherPaymentsFromJson(json);
}
