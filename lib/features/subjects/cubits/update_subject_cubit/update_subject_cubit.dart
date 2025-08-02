import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/subjects_repository.dart';
import '../../models/update_subject_response.dart';
import '../../models/update_subject_request_body_model.dart';

part 'update_subject_state.dart';
part 'update_subject_cubit.freezed.dart';

class UpdateSubjectCubit extends Cubit<UpdateSubjectState> {
  final SubjectsRepository _repository;

  UpdateSubjectCubit(this._repository) : super(const UpdateSubjectState());

  Future<void> updateSubject({ required UpdateSubjectRequestBodyModel body, required int id,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updateSubject(body: body, id: id, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}