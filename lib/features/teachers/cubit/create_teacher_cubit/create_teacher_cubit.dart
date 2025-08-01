import 'package:bloc/bloc.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/features/subjects/models/subject_model.dart';
import 'package:courses/features/teachers/models/create_teacher_request_body_model.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/repo/teachers_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_teacher_state.dart';
part 'create_teacher_cubit.freezed.dart';

class CreateTeacherCubit extends Cubit<CreateTeacherState> {
  final TeachersRepository _repository;

  CreateTeacherCubit(this._repository)
    : super(const CreateTeacherState());

  void addBook(SubjectModel book) {
    if (state.selectedBooks.contains(book)) {
      return;
    }
    final updatedList = [...state.selectedBooks, book];
    emit(state.copyWith(selectedBooks: updatedList));
  }

  void removeBook(SubjectModel book) {
    final updatedBooks = state.selectedBooks.where((b) => b != book).toList();
    emit(state.copyWith(selectedBooks: updatedBooks));
  }

  Future<void> createTeacher({
    required CreateTeacherRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createTeacher(body: body);
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , createdTeacher: data)),
    );
  }
}
