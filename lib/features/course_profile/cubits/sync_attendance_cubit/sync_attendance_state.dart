part of 'sync_attendance_cubit.dart';

@freezed
abstract class SyncAttendanceState with _$SyncAttendanceState {
  const factory SyncAttendanceState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    SyncAttendanceResponseModel? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
