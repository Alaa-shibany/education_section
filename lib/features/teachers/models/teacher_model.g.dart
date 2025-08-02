// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) =>
    _TeacherModel(
      id: (json['id'] as num).toInt(),
      name: json['full_name'] as String,
      phone: json['phone_number'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$TeacherModelToJson(_TeacherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.name,
      'phone_number': instance.phone,
      'email': instance.email,
    };
