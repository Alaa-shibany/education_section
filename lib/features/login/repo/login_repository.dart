import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/login_model.dart';
import '../models/login_request_body_model.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<Either<Failure, LoginModel>> getLoginData({ required LoginRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.login, data: body.toJson()
      );

      final data = LoginModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
