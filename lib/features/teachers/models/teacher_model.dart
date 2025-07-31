import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
abstract class teacherModel with _$teacherModel {
  const factory teacherModel({
    required int id,
    required String name,
    required String email,
    required List<SubjectModel> subjects,
    required String created_at,
    required String updated_at,
  }) = _teacherModel;

  factory teacherModel.fromJson(Map<String, dynamic> json) =>
      _$teacherModelFromJson(json);
}
