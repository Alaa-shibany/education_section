import 'package:freezed_annotation/freezed_annotation.dart';

part 'updated_teacher_response.freezed.dart';
part 'updated_teacher_response.g.dart';

@freezed
abstract class UpdatedTeacherResponse with _$UpdatedTeacherResponse {
  const factory UpdatedTeacherResponse({
    required String message,
  }) = _UpdatedTeacherResponse;

  factory UpdatedTeacherResponse.fromJson(Map<String, dynamic> json) => _$UpdatedTeacherResponseFromJson(json);
}
