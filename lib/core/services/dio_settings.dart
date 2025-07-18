// import 'package:courses/core/services/interceptors/auth_interceptor.dart';
// import 'package:courses/core/services/service_locator.dart';
// import 'package:dio/dio.dart';

// class DioClient {
//   DioClient._();

//   static final Dio _dio = _createDioInstance();

//   static Dio get instance => _dio;

//   static Dio _createDioInstance() {
//     final dio = Dio();
//     dio.options.baseUrl = 'https://nawader.webmyidea.com/api/';
//     dio.options.connectTimeout = const Duration(seconds: 15);
//     dio.options.receiveTimeout = const Duration(seconds: 15);
//     dio.options.headers = {'Accept': 'application/json'};

//     // Interceptors
//     dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
//     dio.interceptors.add(sl<AuthInterceptor>());

//     return dio;
//   }
// }
