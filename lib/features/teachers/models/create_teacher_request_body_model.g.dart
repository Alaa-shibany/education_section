// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_teacher_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTeacherRequestBodyModel _$CreateTeacherRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateTeacherRequestBodyModel(
  full_name: json['full_name'] as String,
  phone_number: json['phone_number'] as String,
  email: json['email'] as String,
  subjects: (json['subjects'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$CreateTeacherRequestBodyModelToJson(
  _CreateTeacherRequestBodyModel instance,
) => <String, dynamic>{
  'full_name': instance.full_name,
  'phone_number': instance.phone_number,
  'email': instance.email,
  'subjects': instance.subjects,
};
