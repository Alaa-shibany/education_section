import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/sessions_repository.dart';
import '../../models/sync_attendance_response_model.dart';
import '../../models/sync_attendance_request_body_model.dart';

part 'sync_attendance_state.dart';
part 'sync_attendance_cubit.freezed.dart';

class SyncAttendanceCubit extends Cubit<SyncAttendanceState> {
  final SessionsRepository _repository;

  SyncAttendanceCubit(this._repository) : super(const SyncAttendanceState());

  Future<void> syncAttendance({
    required SyncAttendanceRequestBodyModel body,
    required int sessionId,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.syncAttendance(
      body: body,
      sessionId: sessionId,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
