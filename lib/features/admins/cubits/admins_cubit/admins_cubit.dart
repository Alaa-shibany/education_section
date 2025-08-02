import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/status.dart';

import '../../repo/admins_repository.dart';
import '../../models/admin_model.dart';

part 'admins_state.dart';
part 'admins_cubit.freezed.dart';

class AdminsCubit extends Cubit<AdminsState> {
  final AdminsRepository _repository;

  AdminsCubit(this._repository) : super(const AdminsState());
  final searchController = TextEditingController();

  late final pagingController = PagingController<int, AdminModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  Future<List<AdminModel>> _fetchPage(int pageKey) async {
    final result = await _repository.admins(page: pageKey);
    return result.fold((failure) {
      emit(
        state.copyWith(
          status: SubmissionStatus.error,
          errorMessage: failure.message,
        ),
      );
      return [AdminModel(id: 1, name: 'Admin name', createdAt: '2-8-2025')];
    }, (paginationData) => paginationData.items);
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
