import 'package:courses/features/teacher_profile/repo/teacher_profile_repository.dart';
import 'package:courses/features/teacher_profile/cubits/update_payment_cubit/update_payment_cubit.dart';
import 'package:courses/features/teacher_profile/cubits/get_payments_cubit/get_payments_cubit.dart';

import 'package:courses/features/teachers/repo/teachers_repository.dart';
import 'package:courses/features/teachers/cubits/update_teacher_cubit/update_teacher_cubit.dart';
import 'package:courses/features/teachers/cubits/create_teacher_cubit/create_teacher_cubit.dart';
import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';

import 'package:courses/features/subjects/repo/subjects_repository.dart';
import 'package:courses/features/subjects/cubits/update_subject_cubit/update_subject_cubit.dart';
import 'package:courses/features/subjects/cubits/create_subject_cubit/create_subject_cubit.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/admins/repo/admins_repository.dart';
import 'package:courses/features/admins/cubits/helper_cubit/helper_cubit.dart';
import 'package:courses/features/admins/cubits/create_admin_cubit/create_admin_cubit.dart';
import 'package:courses/features/admins/cubits/admins_cubit/admins_cubit.dart';

import 'package:courses/features/register_requests/cubits/accept_request_cubit/accept_request_cubit.dart';
import 'package:courses/features/register_requests/cubits/get_requests_cubit/get_requests_cubit.dart';
import 'package:courses/features/register_requests/repo/register_requests_repository.dart';

import 'package:courses/features/login/repo/login_repository.dart';
import 'package:courses/features/login/cubit/login_cubit.dart';

import 'package:courses/core/services/cache_service.dart';
import 'package:courses/core/services/end_points.dart';
import 'package:courses/core/services/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'api_services.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // It will be created only ONCE

  sl.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  sl.registerLazySingleton<CacheService>(
    () => CacheService(sharedPreferences: sl()),
  );

  sl.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(cacheService: sl()),
  );

  sl.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {'Accept': 'application/json'},
      ),
    );
    dio.interceptors.add(sl<AuthInterceptor>());
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
      ),
    );

    return dio;
  });

  sl.registerLazySingleton<ApiService>(() => ApiService(dio: sl()));
  sl.registerLazySingleton(() => LoginRepository(sl()));
  sl.registerFactory(() => LoginCubit(sl()));

  sl.registerFactory(() => GetRequestsCubit(sl()));
  sl.registerFactory(() => AcceptRequestCubit(sl()));
  sl.registerLazySingleton(() => RegisterRequestsRepository(sl()));
  sl.registerFactory(() => AdminsCubit(sl()));
  sl.registerFactory(() => CreateAdminCubit(sl()));
  sl.registerFactory(() => HelperCubit(sl()));
  sl.registerLazySingleton(() => AdminsRepository(sl()));

  sl.registerFactory(() => GetSubjectsCubit(sl()));
  sl.registerFactory(() => CreateSubjectCubit(sl()));
  sl.registerFactory(() => UpdateSubjectCubit(sl()));
  sl.registerLazySingleton(() => SubjectsRepository(sl()));
  sl.registerFactory(() => GetTeachersCubit(sl()));
  sl.registerFactory(() => CreateTeacherCubit(sl()));
  sl.registerFactory(() => UpdateTeacherCubit(sl()));
  sl.registerLazySingleton(() => TeachersRepository(sl()));
  sl.registerFactory(() => GetPaymentsCubit(sl()));
  sl.registerFactory(() => UpdatePaymentCubit(sl()));
  sl.registerLazySingleton(() => TeacherProfileRepository(sl()));
}
