import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body_model.freezed.dart';
part 'login_request_body_model.g.dart';

@freezed
abstract class LoginRequestBodyModel with _$LoginRequestBodyModel {
  const factory LoginRequestBodyModel({
    required String username,
    required String password,
  }) = _LoginRequestBodyModel;

  factory LoginRequestBodyModel.fromJson(Map<String, dynamic> json) => _$LoginRequestBodyModelFromJson(json);
}
