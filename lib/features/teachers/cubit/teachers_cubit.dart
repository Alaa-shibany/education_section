import 'package:bloc/bloc.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/repo/teachers_repository.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'teachers_state.dart';

class TeachersCubit extends Cubit<TeachersState> {
  TeachersCubit(this._repository) : super(TeachersInitial());
  final TeachersRepository _repository;

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  late final List<TextEditingController> controllers;
  int badgeCount = 0;

  Future<void> initState() async {
    controllers = [searchController, phoneController, emailController];
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
    badgeCount = count;
    emit(TeachersInitial());
  }

  late final pagingController = PagingController<int, teacherModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  Future<List<teacherModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getTeachersData(
      page: pageKey,
      search: searchController.text,
      phone: phoneController.text,
      email: emailController.text,
    );
    result.fold((failure) => [], (paginationData) => paginationData.items);
    return [
      teacherModel(
        id: 1,
        name: 'Teacher name',
        email: 'ex@gmail.com',
        created_at: '2025-7-21',
        updated_at: '2025-7-21',
      ),
      teacherModel(
        id: 1,
        name: 'Teacher name',
        email: 'ex@gmail.com',
        created_at: '2025-7-21',
        updated_at: '2025-7-21',
      ),
      teacherModel(
        id: 1,
        name: 'Teacher name',
        email: 'ex@gmail.com',
        created_at: '2025-7-21',
        updated_at: '2025-7-21',
      ),
    ];
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
