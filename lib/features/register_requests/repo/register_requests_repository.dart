import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/register_request_model.dart';
import '../models/accept_request_model.dart';
import '../models/accept_request_request_body_model.dart';
import 'package:courses/core/model/pagination_model.dart';

class RegisterRequestsRepository {
  final ApiService _apiService;

  RegisterRequestsRepository(this._apiService);

  Future<Either<Failure, PaginationModel<RegisterRequestModel>>> getRequests({ required int page,  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.requests,
        queryParams: {'page': page}
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => RegisterRequestModel.fromJson(i)).toList();
      final pageSize = response.data['data']['per_page'] as int;
      final isReachMax = response.data['data']['next_page_url'] == null;
      final data = PaginationModel(items: items, pageSize: pageSize, isReachMax: isReachMax);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, AcceptRequestModel>> acceptRequest({ required AcceptRequestRequestBodyModel body,  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.request_accept,
        data: body.toJson()
      );

      final data = AcceptRequestModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

}