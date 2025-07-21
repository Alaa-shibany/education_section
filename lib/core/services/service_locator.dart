import 'package:courses/features/teachers/repo/teachers_repository.dart';
import 'package:courses/features/teachers/cubit/teachers_cubit.dart';

import 'package:courses/features/subjects/repo/subjects_repository.dart';
import 'package:courses/features/subjects/cubit/subjects_cubit.dart';

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
  sl.registerLazySingleton(() => SubjectsRepository(sl()));
  sl.registerFactory(() => SubjectsCubit(sl()));
  sl.registerLazySingleton(() => TeachersRepository(sl()));
  sl.registerFactory(() => TeachersCubit(sl()));
}
