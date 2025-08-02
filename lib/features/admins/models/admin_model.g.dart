// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminModel _$AdminModelFromJson(Map<String, dynamic> json) => _AdminModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$AdminModelToJson(_AdminModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
    };
