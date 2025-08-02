// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => _RegisterRequestModel(
  id: (json['id'] as num).toInt(),
  student: json['student'] as String,
  course: json['course'] as String,
  payment: (json['payment'] as num).toDouble(),
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  _RegisterRequestModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'student': instance.student,
  'course': instance.course,
  'payment': instance.payment,
  'created_at': instance.createdAt,
};
