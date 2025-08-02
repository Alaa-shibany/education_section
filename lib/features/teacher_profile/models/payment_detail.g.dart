// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentDetail _$PaymentDetailFromJson(Map<String, dynamic> json) =>
    _PaymentDetail(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      isPaid: json['is_paid'] as bool,
      courseSession: CourseSession.fromJson(
        json['courseSession'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PaymentDetailToJson(_PaymentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'is_paid': instance.isPaid,
      'courseSession': instance.courseSession,
    };
