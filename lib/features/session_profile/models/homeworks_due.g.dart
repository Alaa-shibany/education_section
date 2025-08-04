// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeworks_due.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeworksDue _$HomeworksDueFromJson(Map<String, dynamic> json) =>
    _HomeworksDue(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      goal: json['goal'] as String,
    );

Map<String, dynamic> _$HomeworksDueToJson(_HomeworksDue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'goal': instance.goal,
    };
