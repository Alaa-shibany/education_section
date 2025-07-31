part of 'create_teacher_cubit.dart';

@freezed
class CreateTeacherState with _$CreateTeacherState {
  const factory CreateTeacherState.initial() = _Initial;
  const factory CreateTeacherState.loading() = _Loading;
  const factory CreateTeacherState.success(teacherModel data) = _Success;
  const factory CreateTeacherState.error(String message) = _Error;
}
