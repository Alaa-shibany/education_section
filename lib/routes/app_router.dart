import 'package:courses/core/services/service_locator.dart';
import 'package:courses/features/home/presentation/home_screen.dart';
import 'package:courses/features/login/cubit/login_cubit.dart';
import 'package:courses/features/login/presentation/login_screen.dart';
import 'package:courses/features/navigator/presentation/navigate_screen.dart';
import 'package:courses/features/subjects/cubit/subjects_cubit.dart';
import 'package:courses/features/subjects/presentation/subjects_screen.dart';
import 'package:courses/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'unknown_page.dart';
import 'navigator_observer.dart';
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
      GoRoute(
        name: 'login',
        path: AppRoutes.login,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<LoginCubit>(),
          child: MainLayout(body: LoginScreen()),
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
                BlocProvider(create: (context) => sl<SubjectsCubit>()),
              ],
              child: SubjectsScreen(),
            ),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const UnknownPage()),
  );
}
