import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/admins_repository.dart';
import '../../models/permission.dart';

part 'helper_state.dart';
part 'helper_cubit.freezed.dart';

class HelperCubit extends Cubit<HelperState> {
  final AdminsRepository _repository;

  HelperCubit(this._repository) : super(const HelperState());

  Future<void> helper() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.helper();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: SubmissionStatus.error,
          failure: failure,
          data: [
            Permission(id: 1, name: 'Permission 1'),
            Permission(id: 2, name: 'Permission 2'),
            Permission(id: 3, name: 'Permission 3'),
          ],
        ),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
