import 'package:freezed_annotation/freezed_annotation.dart';

part 'accept_request_model.freezed.dart';
part 'accept_request_model.g.dart';

@freezed
abstract class AcceptRequestModel with _$AcceptRequestModel {
  const factory AcceptRequestModel({
    required String message,
  }) = _AcceptRequestModel;

  factory AcceptRequestModel.fromJson(Map<String, dynamic> json) => _$AcceptRequestModelFromJson(json);
}
