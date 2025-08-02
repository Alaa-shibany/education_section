import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_subject_request_body_model.freezed.dart';
part 'update_subject_request_body_model.g.dart';

@freezed
abstract class UpdateSubjectRequestBodyModel with _$UpdateSubjectRequestBodyModel {
  const factory UpdateSubjectRequestBodyModel({
    required String name,
  }) = _UpdateSubjectRequestBodyModel;

  factory UpdateSubjectRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateSubjectRequestBodyModelFromJson(json);
}
