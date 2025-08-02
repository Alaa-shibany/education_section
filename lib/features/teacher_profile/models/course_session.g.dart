// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseSession _$CourseSessionFromJson(Map<String, dynamic> json) =>
    _CourseSession(
      id: (json['id'] as num).toInt(),
      sessionDate: json['session_date'] as String,
    );

Map<String, dynamic> _$CourseSessionToJson(_CourseSession instance) =>
    <String, dynamic>{'id': instance.id, 'session_date': instance.sessionDate};
