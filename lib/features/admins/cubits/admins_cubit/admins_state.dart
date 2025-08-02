part of 'admins_cubit.dart';

@freezed
abstract class AdminsState with _$AdminsState {
  const factory AdminsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<AdminModel>? data,
    String? errorMessage,
  }) = _CreateTeacherState; 
}