part of 'create_admin_cubit.dart';

@freezed
abstract class CreateAdminState with _$CreateAdminState {
  const factory CreateAdminState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateAdminResponse? data,
    Permission? selectedPermission,
    String? errorMessage,
  }) = _CreateTeacherState;
}
