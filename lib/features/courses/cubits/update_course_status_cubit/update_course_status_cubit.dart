import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/courses_repository.dart';
import '../../models/accept_request_model.dart';
import '../../models/update_course_status_request_body_model.dart';

part 'update_course_status_state.dart';
part 'update_course_status_cubit.freezed.dart';

class UpdateCourseStatusCubit extends Cubit<UpdateCourseStatusState> {
  final CoursesRepository _repository;

  UpdateCourseStatusCubit(this._repository) : super(const UpdateCourseStatusState());

  Future<void> updateCourseStatus({ required UpdateCourseStatusRequestBodyModel body, required int id,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updateCourseStatus(body: body, id: id, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}