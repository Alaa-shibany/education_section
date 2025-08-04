import 'package:bloc/bloc.dart';
import 'package:courses/features/courses/models/course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/sessions_repository.dart';
import '../../models/session_model.dart';

part 'get_sessions_state.dart';
part 'get_sessions_cubit.freezed.dart';

class GetSessionsCubit extends Cubit<GetSessionsState> {
  final SessionsRepository _repository;

  GetSessionsCubit(this._repository) : super(const GetSessionsState());

  void initState(CourseModel course) async {
    emit(state.copyWith(course: course));
    await getSessions(courseId: course.id);
  }

  Future<void> getSessions({required int courseId}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getSessions(courseId: courseId);
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
