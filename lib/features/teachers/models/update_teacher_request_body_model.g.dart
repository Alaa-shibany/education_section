// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_teacher_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTeacherRequestBodyModel _$UpdateTeacherRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _UpdateTeacherRequestBodyModel(
  id: (json['id'] as num).toInt(),
  full_name: json['full_name'] as String,
  phone_number: json['phone_number'] as String,
  email: json['email'] as String,
  subjects: (json['subjects'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UpdateTeacherRequestBodyModelToJson(
  _UpdateTeacherRequestBodyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.full_name,
  'phone_number': instance.phone_number,
  'email': instance.email,
  'subjects': instance.subjects,
};
