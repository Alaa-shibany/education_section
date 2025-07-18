import 'package:courses/features/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'unknown_page.dart';
import 'navigator_observer.dart';
import 'app_routes.dart';

// You can use a key for the navigator if needed, e.g., for showing dialogs.
// final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

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
        builder: (context, state) => LoginScreen(),
      ),
    ],
    errorPageBuilder: (context, state) =>
        MaterialPage(key: state.pageKey, child: const UnknownPage()),
  );
}
