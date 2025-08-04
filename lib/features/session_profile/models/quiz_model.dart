// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
abstract class QuizModel with _$QuizModel {
  const factory QuizModel({
    required int id,
    required String description,
    required String goal,
    @JsonKey(name: 'success_mark') required int successMark,
  }) = _QuizModel;

  factory QuizModel.fromJson(Map<String, dynamic> json) =>
      _$QuizModelFromJson(json);
}
