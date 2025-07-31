// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_teacher_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTeacherRequestBodyModel _$CreateTeacherRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateTeacherRequestBodyModel(
  name: json['name'] as String,
  email: json['email'] as String,
  subjects: (json['subjects'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$CreateTeacherRequestBodyModelToJson(
  _CreateTeacherRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'subjects': instance.subjects,
};
