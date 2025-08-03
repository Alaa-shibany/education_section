import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_course_request_body_model.freezed.dart';
part 'create_course_request_body_model.g.dart';

@freezed
abstract class CreateCourseRequestBodyModel with _$CreateCourseRequestBodyModel {
  const factory CreateCourseRequestBodyModel({
    required int subject_id,
    required int teacher_id,
    required String name,
    required String start_date,
    required String finish_date,
    required int price,
    required int first_payment_amount,
    required int teacher_salary,
    required int payment_deadline_days,
    required int success_percentage,
    required List sessions,
  }) = _CreateCourseRequestBodyModel;

  factory CreateCourseRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateCourseRequestBodyModelFromJson(json);
}
