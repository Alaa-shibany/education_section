// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_homework_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateHomeworkRequestBodyModel _$CreateHomeworkRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateHomeworkRequestBodyModel(
  description: json['description'] as String,
  goal: json['goal'] as String,
  course_id: (json['course_id'] as num).toInt(),
  due_session_id: (json['due_session_id'] as num).toInt(),
);

Map<String, dynamic> _$CreateHomeworkRequestBodyModelToJson(
  _CreateHomeworkRequestBodyModel instance,
) => <String, dynamic>{
  'description': instance.description,
  'goal': instance.goal,
  'course_id': instance.course_id,
  'due_session_id': instance.due_session_id,
};
