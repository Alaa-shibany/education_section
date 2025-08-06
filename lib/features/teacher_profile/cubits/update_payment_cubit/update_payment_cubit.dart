import 'package:bloc/bloc.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/teacher_profile_repository.dart';
import '../../models/update_teacher_payment_response.dart';

part 'update_payment_state.dart';
part 'update_payment_cubit.freezed.dart';

class UpdatePaymentCubit extends Cubit<UpdatePaymentState> {
  final TeacherProfileRepository _repository;

  UpdatePaymentCubit(this._repository) : super(const UpdatePaymentState());

  Future<void> updatePayment({required String teacherId}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updatePayment(teacherId: teacherId);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
