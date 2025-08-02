import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/admin_model.dart';
import '../models/create_admin_response.dart';
import '../models/create_admin_request_body_model.dart';
import '../models/permission.dart';
import 'package:courses/core/model/pagination_model.dart';

class AdminsRepository {
  final ApiService _apiService;

  AdminsRepository(this._apiService);

  Future<Either<Failure, PaginationModel<AdminModel>>> admins({
    required int page,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.admins,
        queryParams: {'page': page},
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => AdminModel.fromJson(i))
          .toList();
      final pageSize = response.data['data']['per_page'] as int;
      final isReachMax = response.data['data']['next_page_url'] == null;
      final data = PaginationModel(
        items: items,
        pageSize: pageSize,
        isReachMax: isReachMax,
      );

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CreateAdminResponse>> createAdmin({
    required CreateAdminRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.createAdmin,
        data: body.toJson(),
      );

      final data = CreateAdminResponse.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, List<Permission>>> helper() async {
    try {
      final response = await _apiService.get(EndPoints.dashboard_admins_helper);
      final jsonList = response.data['data'] as List;
      final data = jsonList.map((e) => Permission.fromJson(e)).toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
