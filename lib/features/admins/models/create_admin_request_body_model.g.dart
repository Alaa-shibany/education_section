// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_admin_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAdminRequestBodyModel _$CreateAdminRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateAdminRequestBodyModel(
  username: json['username'] as String,
  password: json['password'] as String,
  role: (json['role'] as num).toInt(),
);

Map<String, dynamic> _$CreateAdminRequestBodyModelToJson(
  _CreateAdminRequestBodyModel instance,
) => <String, dynamic>{
  'username': instance.username,
  'password': instance.password,
  'role': instance.role,
};
