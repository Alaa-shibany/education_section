import 'package:bloc/bloc.dart';
import 'package:courses/features/teacher_profile/models/payment_detail.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/teacher_profile_repository.dart';
import '../../models/teacher_payments.dart';

part 'get_payments_state.dart';
part 'get_payments_cubit.freezed.dart';

class GetPaymentsCubit extends Cubit<GetPaymentsState> {
  final TeacherProfileRepository _repository;

  GetPaymentsCubit(this._repository) : super(const GetPaymentsState());

  void initState({required TeacherModel teacher}) async {
    emit(state.copyWith(teacher: teacher));
    await getPayments(teacherId: teacher.id.toString());
  }

  double getPaidDues() {
    double amount = 0;
    if (state.data == null) {
      return amount;
    }
    for (final payment in state.data!) {
      if (payment.isPaid) {
        amount += payment.amount;
      }
    }
    return amount;
  }

  double getPendingDues() {
    double amount = 0;
    if (state.data == null) {
      return amount;
    }
    for (final payment in state.data!) {
      if (!payment.isPaid) {
        amount += payment.amount;
      }
    }
    return amount;
  }

  Future<void> getPayments({required String teacherId}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getPayments(teacherId: teacherId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: SubmissionStatus.error,
          errorMessage: failure.message,
        ),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }
}
