import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import 'package:intl/intl.dart';
import '../../repo/courses_repository.dart';
import '../../models/accept_request_model.dart';
import '../../models/create_course_request_body_model.dart';

part 'create_course_state.dart';
part 'create_course_cubit.freezed.dart';

class CreateCourseCubit extends Cubit<CreateCourseState> {
  final CoursesRepository _repository;

  CreateCourseCubit(this._repository) : super(const CreateCourseState());

  void changeIsDaily() {
    emit(state.copyWith(isDaily: !state.isDaily));
  }

  List<Map<String, String>> generateDailySessions({
    required String startDateString,
    required String endDateString,
    required String startTime,
    required String endTime,
  }) {
    final List<Map<String, String>> sessions = [];
    final DateFormat dateFormat = DateFormat('d-M-yyyy');

    try {
      DateTime currentDate = dateFormat.parse(startDateString);
      final DateTime endDate = dateFormat.parse(endDateString);

      while (!currentDate.isAfter(endDate)) {
        sessions.add({
          'session_date': dateFormat.format(currentDate),
          'start_time': startTime,
          'end_time': endTime,
        });

        currentDate = currentDate.add(const Duration(days: 1));
      }
    } catch (e) {
      print('Error parsing dates: $e. Please use the format "d-M-yyyy".');
      return [];
    }

    return sessions;
  }

  Future<void> createCourse({
    required CreateCourseRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createCourse(body: body);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
