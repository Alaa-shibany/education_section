import 'package:courses/core/services/failure_service/failure.dart';
import 'package:courses/features/teacher_profile/models/payment_detail.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:courses/core/services/api_services.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/failure_services.dart';
import '../models/update_teacher_payment_response.dart';

class TeacherProfileRepository {
  final ApiService _apiService;

  TeacherProfileRepository(this._apiService);

  Future<Either<Failure, List<PaymentDetail>>> getPayments({
    required String teacherId,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_teacher_payouts_all,
        queryParams: {'teacher_id': teacherId},
      );
      final jsonData = response.data['data'] as List;
      final data = jsonData.map((e) => PaymentDetail.fromJson(e)).toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, UpdateTeacherPaymentResponse>> updatePayment({
    required String teacherId,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_payouts_update}/$teacherId",
        data: {'is_paid': 1},
      );

      final data = UpdateTeacherPaymentResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
