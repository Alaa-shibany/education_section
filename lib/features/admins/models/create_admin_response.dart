import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_admin_response.freezed.dart';
part 'create_admin_response.g.dart';

@freezed
abstract class CreateAdminResponse with _$CreateAdminResponse {
  const factory CreateAdminResponse({
    required String message,
  }) = _CreateAdminResponse;

  factory CreateAdminResponse.fromJson(Map<String, dynamic> json) => _$CreateAdminResponseFromJson(json);
}
