import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/status.dart';
import 'package:courses/core/services/failure_service/failure.dart';

import '../../repo/students_repository.dart';
import '../../models/student_model.dart';

part 'get_students_state.dart';
part 'get_students_cubit.freezed.dart';

class GetStudentsCubit extends Cubit<GetStudentsState> {
  final StudentsRepository _repository;

  final TextEditingController nameController = TextEditingController();

  GetStudentsCubit(this._repository) : super(const GetStudentsState());

  late final pagingController = PagingController<int, StudentModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  final _cancelToken = CancelToken();

  Future<List<StudentModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getStudents(
      page: pageKey,
      name: nameController.text,
    );
    return result.fold((failure) {
      emit(state.copyWith(status: SubmissionStatus.error, failure: failure));
      return [];
    }, (paginationData) => paginationData.items);
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}
