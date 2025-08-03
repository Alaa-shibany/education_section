// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

// Helper functions to read nested values
Object? _readStudentName(Map json, String key) {
  final child = json['child'] as Map<String, dynamic>?;
  return child?['name'];
}

Object? _readCourseName(Map json, String key) {
  final course = json['course'] as Map<String, dynamic>?;
  return course?['name'];
}

Object? _readPayment(Map json, String key) {
  final course = json['course'] as Map<String, dynamic>?;
  final payment = course?['first_payment_amount'] as num?;
  return payment?.toDouble();
}

@freezed
abstract class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    required int id,

    @JsonKey(readValue: _readStudentName) required String student,

    @JsonKey(readValue: _readCourseName) required String course,

    @JsonKey(readValue: _readPayment) required double payment,

    @JsonKey(name: 'enrollment_date') required String createdAt,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}
