// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_teacher_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTeacherRequestBodyModel _$UpdateTeacherRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _UpdateTeacherRequestBodyModel(
  name: json['name'] as String,
  email: json['email'] as String,
  subjects: (json['subjects'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UpdateTeacherRequestBodyModelToJson(
  _UpdateTeacherRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'subjects': instance.subjects,
};
