import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_subject_response.freezed.dart';
part 'create_subject_response.g.dart';

@freezed
abstract class CreateSubjectResponse with _$CreateSubjectResponse {
  const factory CreateSubjectResponse({required String message}) =
      _CreateSubjectResponse; 

  factory CreateSubjectResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateSubjectResponseFromJson(json);
}
