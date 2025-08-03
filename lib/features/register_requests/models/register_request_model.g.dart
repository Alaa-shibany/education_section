// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestModel(
  id: (json['id'] as num).toInt(),
  student: _readStudentName(json, 'student') as String,
  course: _readCourseName(json, 'course') as String,
  payment: (_readPayment(json, 'payment') as num).toDouble(),
  createdAt: json['enrollment_date'] as String,
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  _RegisterRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'student': instance.student,
  'course': instance.course,
  'payment': instance.payment,
  'enrollment_date': instance.createdAt,
};
