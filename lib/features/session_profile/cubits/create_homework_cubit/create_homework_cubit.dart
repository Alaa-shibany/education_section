import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:courses/core/services/status.dart';
import '../../repo/sessions_profile_repository.dart';
import '../../models/create_homework_response_model.dart';
import '../../models/create_homework_request_body_model.dart';

part 'create_homework_state.dart';
part 'create_homework_cubit.freezed.dart';

class CreateHomeworkCubit extends Cubit<CreateHomeworkState> {
  final SessionsProfileRepository _repository;

  CreateHomeworkCubit(this._repository) : super(const CreateHomeworkState());

  Future<void> createHomework({ required CreateHomeworkRequestBodyModel body,  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createHomework(body: body, );
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.error , errorMessage: failure.message)),
      (data) => emit(state.copyWith(status: SubmissionStatus.success , data: data)),
    );
  }
}