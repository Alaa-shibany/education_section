// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) =>
    _SubjectModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
    );

Map<String, dynamic> _$SubjectModelToJson(_SubjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
