// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionModel _$SessionModelFromJson(Map<String, dynamic> json) =>
    _SessionModel(
      id: (json['id'] as num).toInt(),
      sessionDate: json['session_date'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$SessionModelToJson(_SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session_date': instance.sessionDate,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
