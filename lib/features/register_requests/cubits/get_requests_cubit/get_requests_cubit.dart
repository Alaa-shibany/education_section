import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/status.dart';

import '../../repo/register_requests_repository.dart';
import '../../models/register_request_model.dart';

part 'get_requests_state.dart';
part 'get_requests_cubit.freezed.dart';

class GetRequestsCubit extends Cubit<GetRequestsState> {
  final RegisterRequestsRepository _repository;

  GetRequestsCubit(this._repository) : super(const GetRequestsState());

  TextEditingController studentController = TextEditingController();
  TextEditingController courseController = TextEditingController();

  late final pagingController = PagingController<int, RegisterRequestModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  Future<List<RegisterRequestModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getRequests(
      page: pageKey,
      courseName: courseController.text,
      name: studentController.text,
    );
    return result.fold((failure) {
      emit(
        state.copyWith(
          status: SubmissionStatus.error,
          errorMessage: failure.message,
        ),
      );
      return [
        RegisterRequestModel(
          id: 1,
          student: 'Alaa shibany',
          course: 'Laravel course',
          payment: 125,
          createdAt: '2-8-2025',
        ),
      ];
    }, (paginationData) => paginationData.items);
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
