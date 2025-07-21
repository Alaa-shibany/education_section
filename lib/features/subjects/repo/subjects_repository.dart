import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/model/pagination_model.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/subject_model.dart';

class SubjectsRepository {
  final ApiService _apiService;

  SubjectsRepository(this._apiService);

  Future<Either<Failure, PaginationModel<SubjectModel>>> getSubjectsData({
    required int page,
    required String search,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.subjects,
        queryParams: {'page': page, 'search': search},
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => SubjectModel.fromJson(i))
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

  Future<Either<Failure, SubjectModel>> createSubject({
    required String subjectName,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.createSubject,
        data: {'name': subjectName},
      );

      final SubjectModel newSubject = SubjectModel.fromJson(
        response.data['data'],
      );
      return Right(newSubject);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, SubjectModel>> editSubject({
    required String newName,
    required int id,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.editSubject}/$id",
        data: {'name': newName},
      );

      final SubjectModel newSubject = SubjectModel.fromJson(
        response.data['data'],
      );
      return Right(newSubject);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, SubjectModel>> deleteSubject({required int id}) async {
    try {
      await _apiService.delete(EndPoints.deleteSubject, data: {'id': id});
      final SubjectModel subject = SubjectModel(
        id: id,
        name: 'name',
        created_at: 'created_at',
        updated_at: 'updated_at',
      );
      return Right(subject);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
