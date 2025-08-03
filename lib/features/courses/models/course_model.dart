// ignore_for_file: invalid_annotation_target

import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required int id,
    required String name,
    required String status,
    @JsonKey(name: 'start_date') required String? startDate,
    @JsonKey(name: 'finish_date') required String? finishDate,
    @JsonKey(name: 'first_payment_amount') required int firstPaymentAmount,
    required int price,
    @JsonKey(name: 'teacher_salary') required int teacherSalary,
    @JsonKey(name: 'payment_deadline_days') required int paymentDeadlineDays,
    @JsonKey(name: 'success_percentage') required int successPercentage,
    required TeacherModel teacher,
    required SubjectModel subject,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}
