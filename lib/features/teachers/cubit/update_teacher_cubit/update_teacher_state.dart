part of 'update_teacher_cubit.dart';

@freezed
class UpdateTeacherState with _$UpdateTeacherState {
  const factory UpdateTeacherState.initial() = _Initial;
  const factory UpdateTeacherState.loading() = _Loading;
  const factory UpdateTeacherState.success(teacherModel data) = _Success;
  const factory UpdateTeacherState.error(String message) = _Error;
}
