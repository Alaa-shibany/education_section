import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_subject_response.freezed.dart';
part 'update_subject_response.g.dart';

@freezed
abstract class UpdateSubjectResponse with _$UpdateSubjectResponse {
  const factory UpdateSubjectResponse({required String message}) =
      _UpdateSubjectResponse;

  factory UpdateSubjectResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateSubjectResponseFromJson(json);
}
