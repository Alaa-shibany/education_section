import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/core/services/failure_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/status.dart';

import '../../repo/teachers_repository.dart';
import '../../models/teacher_model.dart';

part 'get_teachers_state.dart';
part 'get_teachers_cubit.freezed.dart';

class GetTeachersCubit extends Cubit<GetTeachersState> {
  final TeachersRepository _repository;

  GetTeachersCubit(this._repository) : super(const GetTeachersState());
  late final List<TextEditingController> controllers;

  Future<void> initState() async {
    emit(
      state.copyWith(
        emailNameController: TextEditingController(),
        phoneNameController: TextEditingController(),
        searchNameController: TextEditingController(),
      ),
    );
    controllers = [
      state.searchNameController!,
      state.emailNameController!,
      state.phoneNameController!,
    ];
    for (final controller in controllers) {
      controller.addListener(_updateBadgeCount);
    }
  }

  void clean() {
    state.searchNameController!.clear();
    state.emailNameController!.clear();
    state.phoneNameController!.clear();
    _updateBadgeCount();
  }

  void _updateBadgeCount() {
    int count = 0;
    for (final controller in controllers) {
      if (controller.text.isNotEmpty) {
        count++;
      }
    }
    print('We are here');
    emit(state.copyWith(badgeCount: count));
  }

  late final pagingController = PagingController<int, TeacherModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => fetchPage(pageKey),
  );

  Future<List<TeacherModel>> fetchPage(int pageKey) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getTeachers(
      page: pageKey,
      name: state.searchNameController == null
          ? ''
          : state.searchNameController!.text,
      phone: state.phoneNameController == null
          ? ''
          : state.phoneNameController!.text,
      email: state.emailNameController == null
          ? ''
          : state.emailNameController!.text,
    );
    return result.fold(
      (failure) {
        emit(state.copyWith(status: SubmissionStatus.error, failure: failure));
        return [];
      },
      (paginationData) {
        emit(
          state.copyWith(
            data: paginationData,
            status: SubmissionStatus.success,
          ),
        );
        return paginationData.items;
      },
    );
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
