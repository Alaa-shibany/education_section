// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatedTeacherModel _$CreatedTeacherModelFromJson(Map<String, dynamic> json) =>
    _CreatedTeacherModel(
      name: (json['name'] as num).toInt(),
      email: (json['email'] as num).toInt(),
      subjects: (json['subjects'] as List<dynamic>)
          .map((e) => SubjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$CreatedTeacherModelToJson(
  _CreatedTeacherModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'subjects': instance.subjects,
  'createdAt': instance.createdAt,
};
