import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/subject_model.dart';
import '../models/create_subject_response.dart';
import '../models/create_subject_request_body_model.dart';
import '../models/update_subject_response.dart';
import '../models/update_subject_request_body_model.dart';

class SubjectsRepository {
  final ApiService _apiService;

  SubjectsRepository(this._apiService);

  Future<Either<Failure, List<SubjectModel>>> getSubjects({
    required String name,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_subjects_all,
        queryParams: {'name': name},
      );
      final jsonData = response.data['data'] as List;
      final data = jsonData.map((e) => SubjectModel.fromJson(e)).toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, CreateSubjectResponse>> createSubject({
    required CreateSubjectRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_subjects_create,
        data: body.toJson(),
      );

      final data = CreateSubjectResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UpdateSubjectResponse>> updateSubject({
    required int id,
    required UpdateSubjectRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_subjects_update}/$id",
        data: body.toJson(),
      );

      final data = UpdateSubjectResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
