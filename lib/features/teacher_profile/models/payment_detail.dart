// ignore_for_file: invalid_annotation_target

import 'package:courses/features/teacher_profile/models/course_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_detail.freezed.dart';
part 'payment_detail.g.dart';

@freezed
abstract class PaymentDetail with _$PaymentDetail {
  const factory PaymentDetail({
    required int id,
    required int amount,
    @JsonKey(name: 'is_paid') required bool isPaid,
    required CourseSession courseSession,
  }) = _PaymentDetail;

  factory PaymentDetail.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailFromJson(json);
}
