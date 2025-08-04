import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_homework_request_body_model.freezed.dart';
part 'create_homework_request_body_model.g.dart';

@freezed
abstract class CreateHomeworkRequestBodyModel with _$CreateHomeworkRequestBodyModel {
  const factory CreateHomeworkRequestBodyModel({
    required String description,
    required String goal,
    required int course_id,
    required int due_session_id,
  }) = _CreateHomeworkRequestBodyModel;

  factory CreateHomeworkRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateHomeworkRequestBodyModelFromJson(json);
}
