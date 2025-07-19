import 'package:courses/core/services/generic_cubit/generic_cubit.dart';
import 'package:courses/core/services/generic_cubit/generic_state.dart';
import '../repo/login_repository.dart';
import '../models/login_model.dart';
import '../models/login_request_body_model.dart';

class LoginCubit extends BaseCubit<LoginModel> {
  final LoginRepository _repository;

  LoginCubit(this._repository) : super(GenericInitial());

  Future<void> fetchData({ required LoginRequestBodyModel body,  }) async {
    await executeRequest(_repository.getLoginData(body: body, ));
  }
}
