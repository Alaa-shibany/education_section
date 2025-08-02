import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_subject_request_body_model.freezed.dart';
part 'create_subject_request_body_model.g.dart';

@freezed
abstract class CreateSubjectRequestBodyModel with _$CreateSubjectRequestBodyModel {
  const factory CreateSubjectRequestBodyModel({
    required String name,
  }) = _CreateSubjectRequestBodyModel;

  factory CreateSubjectRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateSubjectRequestBodyModelFromJson(json);
}
