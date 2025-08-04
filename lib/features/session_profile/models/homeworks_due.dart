import 'package:freezed_annotation/freezed_annotation.dart';

part 'homeworks_due.freezed.dart';
part 'homeworks_due.g.dart';

@freezed
abstract class HomeworksDue with _$HomeworksDue {
  const factory HomeworksDue({
    required int id,
    required String description,
    required String goal,
  }) = _HomeworksDue;

  factory HomeworksDue.fromJson(Map<String, dynamic> json) => _$HomeworksDueFromJson(json);
}
