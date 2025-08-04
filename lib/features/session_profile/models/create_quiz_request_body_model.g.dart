// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quiz_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateQuizRequestBodyModel _$CreateQuizRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateQuizRequestBodyModel(
  description: json['description'] as String,
  goal: json['goal'] as String,
  success_mark: (json['success_mark'] as num).toInt(),
  course_session_id: (json['course_session_id'] as num).toInt(),
);

Map<String, dynamic> _$CreateQuizRequestBodyModelToJson(
  _CreateQuizRequestBodyModel instance,
) => <String, dynamic>{
  'description': instance.description,
  'goal': instance.goal,
  'success_mark': instance.success_mark,
  'course_session_id': instance.course_session_id,
};
