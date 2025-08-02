// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_payments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherPayments _$TeacherPaymentsFromJson(Map<String, dynamic> json) =>
    _TeacherPayments(
      payments: (json['payments'] as List<dynamic>)
          .map((e) => PaymentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeacherPaymentsToJson(_TeacherPayments instance) =>
    <String, dynamic>{'payments': instance.payments};
