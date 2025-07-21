import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:courses/core/services/generic_cubit/generic_cubit.dart';
import 'package:courses/core/services/generic_cubit/generic_state.dart';
import 'package:courses/core/model/pagination_model.dart';
import '../repo/subjects_repository.dart';
import '../models/subject_model.dart';

class SubjectsCubit extends BaseCubit<SubjectModel> {
  final SubjectsRepository _repository;

  TextEditingController searchController = TextEditingController();

  SubjectsCubit(this._repository)
    : super(GenericInitial<PaginationModel<SubjectModel>>());

  late final pagingController = PagingController<int, SubjectModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  int counter = 0;

  Future<List<SubjectModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getSubjectsData(
      page: pageKey,
      search: searchController.text,
    );
    result.fold((failure) => [], (paginationData) => paginationData.items);
    return counter == 0
        ? [
            SubjectModel(
              id: 1,
              name: 'First Subject',
              created_at: '2025-7-21',
              updated_at: '2025-7-21',
            ),
          ]
        : [];
  }

  Future<void> createSubject({required String subjectName}) async {
    executeRequest(_repository.createSubject(subjectName: subjectName));
  }

  Future<void> editSubject({
    required String subjectName,
    required int id,
  }) async {
    executeRequest(_repository.editSubject(newName: subjectName, id: id));
  }

  Future<void> deleteSubject({
    required String subjectName,
    required int id,
  }) async {
    executeRequest(_repository.deleteSubject(id: id));
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    return super.close();
  }
}
