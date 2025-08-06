import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/features/admins/models/permission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/admins_repository.dart';
import '../../models/create_admin_response.dart';
import '../../models/create_admin_request_body_model.dart';

part 'create_admin_state.dart';
part 'create_admin_cubit.freezed.dart';

class CreateAdminCubit extends Cubit<CreateAdminState> {
  final AdminsRepository _repository;

  CreateAdminCubit(this._repository) : super(const CreateAdminState());

  void selectPermission(Permission permission) {
    emit(state.copyWith(selectedPermission: permission));
  }

  void deletePermission() {
    emit(state.copyWith(selectedPermission: null));
  }

  Future<void> createAdmin({required CreateAdminRequestBodyModel body}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createAdmin(body: body);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
