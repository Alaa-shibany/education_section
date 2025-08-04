import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_homework_response_model.freezed.dart';
part 'create_homework_response_model.g.dart';

@freezed
abstract class CreateHomeworkResponseModel with _$CreateHomeworkResponseModel {
  const factory CreateHomeworkResponseModel({
    required String message,
  }) = _CreateHomeworkResponseModel;

  factory CreateHomeworkResponseModel.fromJson(Map<String, dynamic> json) => _$CreateHomeworkResponseModelFromJson(json);
}
