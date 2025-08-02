part of 'get_teachers_cubit.dart';

@freezed
abstract class GetTeachersState with _$GetTeachersState {
  const factory GetTeachersState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<TeacherModel>? data,
    String? errorMessage,
    TextEditingController? searchNameController,
    TextEditingController? phoneNameController,
    TextEditingController? emailNameController,
    @Default(0) int badgeCount,
  }) = _CreateTeacherState;
}
