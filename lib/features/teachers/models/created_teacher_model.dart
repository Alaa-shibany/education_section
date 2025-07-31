import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_teacher_model.freezed.dart';
part 'created_teacher_model.g.dart';

@freezed
abstract class CreatedTeacherModel with _$CreatedTeacherModel {
  const factory CreatedTeacherModel({
    required int name,
    required int email,
    required List<SubjectModel> subjects,
    required String createdAt,
  }) = _CreatedTeacherModel;

  factory CreatedTeacherModel.fromJson(Map<String, dynamic> json) =>
      _$CreatedTeacherModelFromJson(json);
}
