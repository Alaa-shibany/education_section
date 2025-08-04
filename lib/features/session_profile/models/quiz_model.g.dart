// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuizModel _$QuizModelFromJson(Map<String, dynamic> json) => _QuizModel(
  id: (json['id'] as num).toInt(),
  description: json['description'] as String,
  goal: json['goal'] as String,
  successMark: (json['success_mark'] as num).toInt(),
);

Map<String, dynamic> _$QuizModelToJson(_QuizModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'goal': instance.goal,
      'success_mark': instance.successMark,
    };
