import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/teachers_repository.dart';
import '../../models/created_teacher_response.dart';
import '../../models/create_teacher_request_body_model.dart';

part 'create_teacher_state.dart';
part 'create_teacher_cubit.freezed.dart';

class CreateTeacherCubit extends Cubit<CreateTeacherState> {
  final TeachersRepository _repository;

  CreateTeacherCubit(this._repository) : super(const CreateTeacherState());

  void addSubject(SubjectModel subject) {
    if (state.selectedBooks.contains(subject)) {
      return;
    }
    List<SubjectModel> subjects = [...state.selectedBooks, subject];
    emit(state.copyWith(selectedBooks: subjects));
  }

  void addSubjects(List<SubjectModel> subjects) {
    emit(state.copyWith(selectedBooks: subjects));
  }

  void removeSubject(SubjectModel subject) {
    List<SubjectModel> subjects = state.selectedBooks
        .where((b) => b != subject)
        .toList();
    emit(state.copyWith(selectedBooks: subjects));
  }

  Future<void> createTeacher({
    required CreateTeacherRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createTeacher(body: body);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
