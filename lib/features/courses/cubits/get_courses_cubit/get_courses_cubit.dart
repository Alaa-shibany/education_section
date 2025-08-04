import 'package:courses/features/courses/models/status_model.dart';
import 'package:courses/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/status.dart';

import '../../repo/courses_repository.dart';
import '../../models/course_model.dart';

part 'get_courses_state.dart';
part 'get_courses_cubit.freezed.dart';

class GetCoursesCubit extends Cubit<GetCoursesState> {
  final CoursesRepository _repository;

  GetCoursesCubit(this._repository) : super(const GetCoursesState());

  final searchNameController = TextEditingController();
  final searchSubjectController = TextEditingController();
  final searchTeacherController = TextEditingController();

  late final pagingController = PagingController<int, CourseModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  void refreshFilters() {
    searchNameController.clear();
    searchSubjectController.clear();
    searchTeacherController.clear();
    pagingController.refresh();
  }

  late final List<TextEditingController> controllers;

  Future<void> initState() async {
    controllers = [
      searchNameController,
      searchSubjectController,
      searchTeacherController,
    ];
    for (final controller in controllers) {
      controller.addListener(_updateBadgeCount);
    }
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

  StatusModel getNextStatus(String status, AppLocalizations translator) {
    final statuses = ['created', 'announced', 'started', 'finished'];
    final labels = [
      translator.created,
      translator.announced,
      translator.started,
      translator.finished,
    ];
    int index = statuses.indexWhere((element) => element == status);
    if (index == -1) {
      return StatusModel(label: 'Unknown', value: 'Unknown');
    }
    return StatusModel(label: labels[index + 1], value: statuses[index + 1]);
  }

  Future<List<CourseModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getCourses(
      page: pageKey,
      name: searchNameController.text,
      subjectName: searchSubjectController.text,
      teacherName: searchTeacherController.text,
    );
    return result.fold((failure) {
      emit(
        state.copyWith(
          status: SubmissionStatus.error,
          errorMessage: failure.message,
        ),
      );
      return [];
    }, (paginationData) => paginationData.items);
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
