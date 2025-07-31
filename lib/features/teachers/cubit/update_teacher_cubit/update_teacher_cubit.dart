import 'package:bloc/bloc.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/repo/teachers_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/update_teacher_request_body_model.dart';

part 'update_teacher_state.dart';
part 'update_teacher_cubit.freezed.dart';

class UpdateTeacherCubit extends Cubit<UpdateTeacherState> {
  final TeachersRepository _repository;

  UpdateTeacherCubit(this._repository)
    : super(const UpdateTeacherState.initial());

  Future<void> updateTeacher({
    required UpdateTeacherRequestBodyModel body,
  }) async {
    emit(const UpdateTeacherState.loading());
    final result = await _repository.updateTeacher(body: body);
    result.fold(
      (failure) => emit(UpdateTeacherState.error(failure.message)),
      (data) => emit(UpdateTeacherState.success(data)),
    );
  }
}
