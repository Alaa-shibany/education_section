import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_course_status_request_body_model.freezed.dart';
part 'update_course_status_request_body_model.g.dart';

@freezed
abstract class UpdateCourseStatusRequestBodyModel with _$UpdateCourseStatusRequestBodyModel {
  const factory UpdateCourseStatusRequestBodyModel({
    required String status,
  }) = _UpdateCourseStatusRequestBodyModel;

  factory UpdateCourseStatusRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateCourseStatusRequestBodyModelFromJson(json);
}
