import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/register_requests_repository.dart';
import '../../models/accept_request_model.dart';
import '../../models/accept_request_request_body_model.dart';

part 'accept_request_state.dart';
part 'accept_request_cubit.freezed.dart';

class AcceptRequestCubit extends Cubit<AcceptRequestState> {
  final RegisterRequestsRepository _repository;

  AcceptRequestCubit(this._repository) : super(const AcceptRequestState());

  Future<void> acceptRequest({ required AcceptRequestRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.acceptRequest(body: body, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}