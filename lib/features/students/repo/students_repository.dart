import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/student_model.dart';
import 'package:courses/core/model/pagination_model.dart';

class StudentsRepository {
  final ApiService _apiService;

  StudentsRepository(this._apiService);

  Future<Either<Failure, PaginationModel<StudentModel>>> getStudents({ required int page, required String name,  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_students_index,
        queryParams: {'page': page, 'name': name}
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => StudentModel.fromJson(i)).toList();
      final pageSize = response.data['data']['per_page'] as int;
      final isReachMax = response.data['data']['next_page_url'] == null;
      final data = PaginationModel(items: items, pageSize: pageSize, isReachMax: isReachMax);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

}