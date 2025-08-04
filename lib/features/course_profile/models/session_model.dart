import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
abstract class SessionModel with _$SessionModel {
  const factory SessionModel({
    required int id,
    @JsonKey(name: 'session_date') required String sessionDate,
    @JsonKey(name: 'start_time') required String startTime,
    @JsonKey(name: 'end_time') required String endTime,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);
}
