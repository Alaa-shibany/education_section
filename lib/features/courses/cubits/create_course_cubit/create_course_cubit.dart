import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/courses_repository.dart';
import '../../models/accept_request_model.dart';
import '../../models/create_course_request_body_model.dart';

part 'create_course_state.dart';
part 'create_course_cubit.freezed.dart';

class CreateCourseCubit extends Cubit<CreateCourseState> {
  final CoursesRepository _repository;

  CreateCourseCubit(this._repository) : super(const CreateCourseState());

  Future<void> createCourse({ required CreateCourseRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createCourse(body: body, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}