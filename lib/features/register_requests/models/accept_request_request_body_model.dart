import 'package:freezed_annotation/freezed_annotation.dart';

part 'accept_request_request_body_model.freezed.dart';
part 'accept_request_request_body_model.g.dart';

@freezed
abstract class AcceptRequestRequestBodyModel with _$AcceptRequestRequestBodyModel {
  const factory AcceptRequestRequestBodyModel({
    required int id,
  }) = _AcceptRequestRequestBodyModel;

  factory AcceptRequestRequestBodyModel.fromJson(Map<String, dynamic> json) => _$AcceptRequestRequestBodyModelFromJson(json);
}
