import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import '../../repo/login_repository.dart';
import '../../models/login_response_model.dart';
import '../../models/login_request_body_model.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _repository;
  final _cancelToken = CancelToken();

  LoginCubit(this._repository) : super(const LoginState());

  Future<void> login({required LoginRequestBodyModel body}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.login(
      body: body,
      saveToken: state.saveToken,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}
