import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_teacher_request_body_model.freezed.dart';
part 'create_teacher_request_body_model.g.dart';

@freezed
abstract class CreateTeacherRequestBodyModel with _$CreateTeacherRequestBodyModel {
  const factory CreateTeacherRequestBodyModel({
    required String name,
    required String email,
    required List<int> subjects,
  }) = _CreateTeacherRequestBodyModel;

  factory CreateTeacherRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateTeacherRequestBodyModelFromJson(json);
}
