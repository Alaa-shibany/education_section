import 'package:courses/core/services/cache_service.dart';
import 'package:courses/core/services/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/login_response_model.dart';
import '../models/login_request_body_model.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<Either<Failure, LoginResponseModel>> login({
    required LoginRequestBodyModel body,
    required bool saveToken,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.login,
        data: body.toJson(),
      );
      final cashServices = sl<CacheService>();

      final data = LoginResponseModel.fromJson(response.data['data']);
      if (saveToken) {
        await cashServices.saveData(key: 'token', value: data.token);
      }
      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
