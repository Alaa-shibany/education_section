import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_admin_request_body_model.freezed.dart';
part 'create_admin_request_body_model.g.dart';

@freezed
abstract class CreateAdminRequestBodyModel with _$CreateAdminRequestBodyModel {
  const factory CreateAdminRequestBodyModel({
    required String username,
    required String password,
    required int role,
  }) = _CreateAdminRequestBodyModel;

  factory CreateAdminRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAdminRequestBodyModelFromJson(json);
}
