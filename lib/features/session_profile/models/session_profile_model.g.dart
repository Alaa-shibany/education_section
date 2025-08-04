// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionProfileModel _$SessionProfileModelFromJson(Map<String, dynamic> json) =>
    _SessionProfileModel(
      id: (json['id'] as num).toInt(),
      sessionDate: json['session_date'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      quizzes: (json['quizzes'] as List<dynamic>)
          .map((e) => QuizModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeworksDue: (json['homeworksDue'] as List<dynamic>)
          .map((e) => HomeworksDue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SessionProfileModelToJson(
  _SessionProfileModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'session_date': instance.sessionDate,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'quizzes': instance.quizzes,
  'homeworksDue': instance.homeworksDue,
};
