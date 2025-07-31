import 'package:courses/features/teachers/models/create_teacher_request_body_model.dart';
import 'package:courses/features/teachers/models/update_teacher_request_body_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/teacher_model.dart';

class TeachersRepository {
  final ApiService _apiService;

  TeachersRepository(this._apiService);

  Future<Either<Failure, PaginationModel<teacherModel>>> getTeachersData({
    required int page,
    required String search,
    required String phone,
    required String email,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.teachers,
        queryParams: {
          'page': page,
          'search': search,
          'phone': phone,
          'email': email,
        },
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => teacherModel.fromJson(i))
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

  Future<Either<Failure, teacherModel>> createTeacher({
    required CreateTeacherRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.create,
        data: body.toJson(),
      );

      final data = teacherModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, teacherModel>> updateTeacher({
    required UpdateTeacherRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        EndPoints.update,
        data: body.toJson(),
      );

      final data = teacherModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
