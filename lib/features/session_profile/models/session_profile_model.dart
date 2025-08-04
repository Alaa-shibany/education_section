// ignore_for_file: invalid_annotation_target

import 'quiz_model.dart';
import 'homeworks_due.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_profile_model.freezed.dart';
part 'session_profile_model.g.dart';

@freezed
abstract class SessionProfileModel with _$SessionProfileModel {
  const factory SessionProfileModel({
    required int id,
    @JsonKey(name: 'session_date') required String sessionDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
    required List<QuizModel> quizzes,
    required List<HomeworksDue> homeworksDue,
  }) = _SessionProfileModel;

  factory SessionProfileModel.fromJson(Map<String, dynamic> json) =>
      _$SessionProfileModelFromJson(json);
}
