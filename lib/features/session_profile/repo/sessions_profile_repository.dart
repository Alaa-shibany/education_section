import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/session_profile_model.dart';
import '../models/create_homework_response_model.dart';
import '../models/create_homework_request_body_model.dart';
import '../models/create_quiz_response_model.dart';
import '../models/create_quiz_request_body_model.dart';

class SessionsProfileRepository {
  final ApiService _apiService;

  SessionsProfileRepository(this._apiService);

  Future<Either<Failure, SessionProfileModel>> getSessionProfile({
    required int session,
  }) async {
    try {
      final response = await _apiService.get(
        "${EndPoints.dashboard_course_sessions_show}/$session",
      );

      final data = SessionProfileModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CreateHomeworkResponseModel>> createHomework({
    required CreateHomeworkRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_homeworks_create,
        data: body.toJson(),
      );

      final data = CreateHomeworkResponseModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CreateQuizResponseModel>> createQuiz({
    required CreateQuizRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_quizzes_create,
        data: body.toJson(),
      );

      final data = CreateQuizResponseModel.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
