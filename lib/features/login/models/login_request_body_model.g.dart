// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestBodyModel _$LoginRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _LoginRequestBodyModel(
  email: json['email'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$LoginRequestBodyModelToJson(
  _LoginRequestBodyModel instance,
) => <String, dynamic>{'email': instance.email, 'password': instance.password};
