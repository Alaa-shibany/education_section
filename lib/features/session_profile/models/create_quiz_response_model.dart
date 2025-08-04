import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_quiz_response_model.freezed.dart';
part 'create_quiz_response_model.g.dart';

@freezed
abstract class CreateQuizResponseModel with _$CreateQuizResponseModel {
  const factory CreateQuizResponseModel({
    required String message,
  }) = _CreateQuizResponseModel;

  factory CreateQuizResponseModel.fromJson(Map<String, dynamic> json) => _$CreateQuizResponseModelFromJson(json);
}
