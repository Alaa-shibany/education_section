import 'package:courses/core/services/failure_service/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/session_model.dart';
import '../models/sync_attendance_response_model.dart';
import '../models/sync_attendance_request_body_model.dart';

class SessionsRepository {
  final ApiService _apiService;

  SessionsRepository(this._apiService);

  Future<Either<Failure, List<SessionModel>>> getSessions({
    required int courseId,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_course_sessions_all,
        queryParams: {'course_id': courseId},
      );
      final jsonData = response.data['data'] as List;
      final data = jsonData.map((e) => SessionModel.fromJson(e)).toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, SyncAttendanceResponseModel>> syncAttendance({
    required int sessionId,
    required SyncAttendanceRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        "dashboard/course-sessions/$sessionId/${EndPoints.attendance_sync}",
        data: body.toJson(),
      );

      final data = SyncAttendanceResponseModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
