import 'package:bloc/bloc.dart';
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
    : super(const CreateTeacherState.initial());

  List<SubjectModel> selectedBooks = [];

  void addBook(SubjectModel book) {
    selectedBooks.add(book);
    emit(CreateTeacherState.initial());
  }

  void removeBook(SubjectModel book) {
    selectedBooks.remove(book);
    emit(CreateTeacherState.initial());
  }

  Future<void> createTeacher({
    required CreateTeacherRequestBodyModel body,
  }) async {
    emit(const CreateTeacherState.loading());
    final result = await _repository.createTeacher(body: body);
    result.fold(
      (failure) => emit(CreateTeacherState.error(failure.message)),
      (data) => emit(CreateTeacherState.success(data)),
    );
  }
}
