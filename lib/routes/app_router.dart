import 'package:courses/core/services/service_locator.dart';
import 'package:courses/features/admins/cubits/admins_cubit/admins_cubit.dart';
import 'package:courses/features/courses/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:courses/features/courses/cubits/update_course_status_cubit/update_course_status_cubit.dart';
import 'package:courses/features/home/presentation/home_screen.dart';
import 'package:courses/features/login/cubit/login_cubit.dart';
import 'package:courses/features/login/presentation/login_screen.dart';
import 'package:courses/features/navigator/presentation/navigate_screen.dart';
import 'package:courses/features/register_requests/cubits/accept_request_cubit/accept_request_cubit.dart';
import 'package:courses/features/register_requests/cubits/get_requests_cubit/get_requests_cubit.dart';
import 'package:courses/features/register_requests/presentation/register_requests_screen.dart';
import 'package:courses/features/subjects/cubits/get_subjects_cubit/get_subjects_cubit.dart';
import 'package:courses/features/subjects/presentation/subjects_screen.dart';
import 'package:courses/features/teacher_profile/cubits/get_payments_cubit/get_payments_cubit.dart';
import 'package:courses/features/teacher_profile/presentation/teacher_profile_screen.dart';
import 'package:courses/features/teachers/cubits/get_teachers_cubit/get_teachers_cubit.dart';
import 'package:courses/features/teachers/models/teacher_model.dart';
import 'package:courses/features/teachers/presentation/teachers_screen.dart';
import 'package:courses/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'unknown_page.dart';
import 'navigator_observer.dart';
import 'package:courses/features/courses/presentation/courses_screen.dart';
import 'package:courses/features/admins/presentation/admins_screen.dart';

import 'app_routes.dart';

// You can use a key for the navigator if needed, e.g., for showing dialogs.
// final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    navigatorKey: rootNavigatorKey,
    observers: [MyNavigatorObserver()],
    debugLogDiagnostics: true,

    routes: [
      GoRoute(
        name: 'splash',
        path: AppRoutes.splash,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text("Splash Screen"))),
      ),

      //<-- DONT_REMOVE_THIS_LINE_GOROUTES -->
      GoRoute(
        name: 'login',
        path: AppRoutes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<LoginCubit>(),
          child: MainLayout(body: LoginScreen()),
        ),
      ),
      GoRoute(
        name: 'teacher_profile',
        path: AppRoutes.teacherProfile,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              sl<GetPaymentsCubit>()
                ..initState(teacher: state.extra as TeacherModel),
          child: MainLayout(body: TeacherProfileScreen()),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return NavigateScreen(child: child);
        },
        routes: [
          GoRoute(
            name: 'home_screen',
            path: AppRoutes.home,
            builder: (context, state) => BlocProvider(
              create: (context) => sl<LoginCubit>(),
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            name: 'subjects_screen',
            path: AppRoutes.subjects,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => sl<GetSubjectsCubit>()..getSubjects(),
                ),
              ],
              child: SubjectsScreen(),
            ),
          ),
          GoRoute(
            name: 'teachers_screen',
            path: AppRoutes.teachers,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => sl<GetTeachersCubit>()..initState(),
                ),
              ],
              child: TeachersScreen(),
            ),
          ),
          GoRoute(
            name: 'requests_screen',
            path: AppRoutes.registerRequests,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => sl<GetRequestsCubit>()),
                BlocProvider(create: (context) => sl<AcceptRequestCubit>()),
              ],
              child: RegisterRequestsScreen(),
            ),
          ),
          GoRoute(
            name: 'courses',
            path: AppRoutes.courses,
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => sl<GetCoursesCubit>()..initState(),
                ),
                BlocProvider(
                  create: (context) => sl<UpdateCourseStatusCubit>(),
                ),
              ],
              child: const CoursesScreen(),
            ),
          ),
          GoRoute(
            name: 'admins',
            path: AppRoutes.admins,
            builder: (context, state) => BlocProvider(
              create: (context) => sl<AdminsCubit>(),
              child: const AdminsScreen(),
            ),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const UnknownPage()),
  );
}
