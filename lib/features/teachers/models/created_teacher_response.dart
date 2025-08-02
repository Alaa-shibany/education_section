import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_teacher_response.freezed.dart';
part 'created_teacher_response.g.dart';

@freezed
abstract class CreatedTeacherResponse with _$CreatedTeacherResponse {
  const factory CreatedTeacherResponse({
    required String message,
  }) = _CreatedTeacherResponse;

  factory CreatedTeacherResponse.fromJson(Map<String, dynamic> json) => _$CreatedTeacherResponseFromJson(json);
}
