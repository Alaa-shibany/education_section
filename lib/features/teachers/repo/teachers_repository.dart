import 'package:courses/core/services/failure_service/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/teacher_model.dart';
import '../models/created_teacher_response.dart';
import '../models/create_teacher_request_body_model.dart';
import '../models/updated_teacher_response.dart';
import '../models/update_teacher_request_body_model.dart';
import 'package:courses/core/model/pagination_model.dart';

class TeachersRepository {
  final ApiService _apiService;

  TeachersRepository(this._apiService);

  Future<Either<Failure, PaginationModel<TeacherModel>>> getTeachers({
    required String name,
    required int page,
    required String phone,
    required String email,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_teachers_index,
        queryParams: {
          'full_name': name,
          'page': page,
          'phone_number': phone,
          'email': email,
        },
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => TeacherModel.fromJson(i))
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
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, CreatedTeacherResponse>> createTeacher({
    required CreateTeacherRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_teachers_create,
        data: body.toJson(),
      );

      final data = CreatedTeacherResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, UpdatedTeacherResponse>> updateTeacher({
    required UpdateTeacherRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_teachers_update}/${body.id}",
        data: body.toJson(),
      );

      final data = UpdatedTeacherResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
