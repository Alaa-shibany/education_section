// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_session.freezed.dart';
part 'course_session.g.dart';

@freezed
abstract class CourseSession with _$CourseSession {
  const factory CourseSession({
    required int id,
    @JsonKey(name: 'session_date') required String sessionDate,
  }) = _CourseSession;

  factory CourseSession.fromJson(Map<String, dynamic> json) =>
      _$CourseSessionFromJson(json);
}
