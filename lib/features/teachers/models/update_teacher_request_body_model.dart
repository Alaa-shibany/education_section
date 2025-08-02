import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_teacher_request_body_model.freezed.dart';
part 'update_teacher_request_body_model.g.dart';

@freezed
abstract class UpdateTeacherRequestBodyModel with _$UpdateTeacherRequestBodyModel {
  const factory UpdateTeacherRequestBodyModel({
    required int id,
    required String full_name,
    required String phone_number,
    required String email,
    required List<int> subjects,
  }) = _UpdateTeacherRequestBodyModel;

  factory UpdateTeacherRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateTeacherRequestBodyModelFromJson(json);
}
