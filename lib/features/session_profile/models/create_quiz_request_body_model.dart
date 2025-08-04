import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_quiz_request_body_model.freezed.dart';
part 'create_quiz_request_body_model.g.dart';

@freezed
abstract class CreateQuizRequestBodyModel with _$CreateQuizRequestBodyModel {
  const factory CreateQuizRequestBodyModel({
    required String description,
    required String goal,
    required int success_mark,
    required int course_session_id,
  }) = _CreateQuizRequestBodyModel;

  factory CreateQuizRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateQuizRequestBodyModelFromJson(json);
}
