import 'package:courses/core/services/failure_service/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/course_model.dart';
import '../models/accept_request_model.dart';
import '../models/create_course_request_body_model.dart';
import '../models/update_course_status_request_body_model.dart';
import 'package:courses/core/model/pagination_model.dart';

class CoursesRepository {
  final ApiService _apiService;

  CoursesRepository(this._apiService);

  Future<Either<Failure, PaginationModel<CourseModel>>> getCourses({
    required int page,
    required String teacherName,
    required String subjectName,
    required String name,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_courses_index,
        queryParams: {
          'page': page,
          'teacher[full_name]': teacherName,
          'subject[name]': subjectName,
          'name': name,
        },
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => CourseModel.fromJson(i))
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

  Future<Either<Failure, AcceptRequestModel>> createCourse({
    required CreateCourseRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_courses_create,
        data: body.toJson(),
      );

      final data = AcceptRequestModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, AcceptRequestModel>> updateCourseStatus({
    required int id,
    required UpdateCourseStatusRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_courses_update}/$id",
        data: body.toJson(),
      );

      final data = AcceptRequestModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
