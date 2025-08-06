import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/subjects_repository.dart';
import '../../models/create_subject_response.dart';
import '../../models/create_subject_request_body_model.dart';

part 'create_subject_state.dart';
part 'create_subject_cubit.freezed.dart';

class CreateSubjectCubit extends Cubit<CreateSubjectState> {
  final SubjectsRepository _repository;

  CreateSubjectCubit(this._repository) : super(const CreateSubjectState());

  Future<void> createSubject({
    required CreateSubjectRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createSubject(body: body);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
