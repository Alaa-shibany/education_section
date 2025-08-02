import 'package:bloc/bloc.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/teachers_repository.dart';
import '../../models/updated_teacher_response.dart';
import '../../models/update_teacher_request_body_model.dart';

part 'update_teacher_state.dart';
part 'update_teacher_cubit.freezed.dart';

class UpdateTeacherCubit extends Cubit<UpdateTeacherState> {
  final TeachersRepository _repository;

  UpdateTeacherCubit(this._repository) : super(const UpdateTeacherState());

  Future<void> updateTeacher({
    required UpdateTeacherRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updateTeacher(body: body);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: SubmissionStatus.error,
          errorMessage: failure.message,
        ),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
