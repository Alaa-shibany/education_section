import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_attendance_request_body_model.freezed.dart';
part 'sync_attendance_request_body_model.g.dart';

@freezed
abstract class SyncAttendanceRequestBodyModel with _$SyncAttendanceRequestBodyModel {
  const factory SyncAttendanceRequestBodyModel({
    required List<int> id,
  }) = _SyncAttendanceRequestBodyModel;

  factory SyncAttendanceRequestBodyModel.fromJson(Map<String, dynamic> json) => _$SyncAttendanceRequestBodyModelFromJson(json);
}
