import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/subjects_repository.dart';
import '../../models/subject_model.dart';

part 'get_subjects_state.dart';
part 'get_subjects_cubit.freezed.dart';

class GetSubjectsCubit extends Cubit<GetSubjectsState> {
  final SubjectsRepository _repository;

  GetSubjectsCubit(this._repository) : super(const GetSubjectsState());
  final searchController = TextEditingController();

  Future<void> getSubjects() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getSubjects(name: searchController.text);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
