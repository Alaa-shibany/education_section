import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_attendance_response_model.freezed.dart';
part 'sync_attendance_response_model.g.dart';

@freezed
abstract class SyncAttendanceResponseModel with _$SyncAttendanceResponseModel {
  const factory SyncAttendanceResponseModel({
    required String message,
  }) = _SyncAttendanceResponseModel;

  factory SyncAttendanceResponseModel.fromJson(Map<String, dynamic> json) => _$SyncAttendanceResponseModelFromJson(json);
}
