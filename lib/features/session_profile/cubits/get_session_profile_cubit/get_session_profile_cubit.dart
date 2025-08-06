import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/features/course_profile/models/session_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/sessions_profile_repository.dart';
import '../../models/session_profile_model.dart';

part 'get_session_profile_state.dart';
part 'get_session_profile_cubit.freezed.dart';

class GetSessionProfileCubit extends Cubit<GetSessionProfileState> {
  final SessionsProfileRepository _repository;

  GetSessionProfileCubit(this._repository)
    : super(const GetSessionProfileState());

  void initState(SessionModel session) async {
    emit(state.copyWith(session: session));
    await getSessionProfile(session: session.id);
  }

  Future<void> getSessionProfile({required int session}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getSessionProfile(session: session);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
