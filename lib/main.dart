  import 'package:courses/config/localization/localization_cubit.dart';
  import 'package:courses/l10n/app_localizations.dart';
  import 'package:flutter/foundation.dart';
  import 'package:courses/config/theme/app_theme.dart';
  import 'package:courses/config/theme/theme_cubit.dart';
  import 'package:courses/core/services/service_locator.dart';
  import 'package:courses/routes/app_router.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:flutter_localizations/flutter_localizations.dart';
  import 'package:hydrated_bloc/hydrated_bloc.dart';
  import 'package:path_provider/path_provider.dart' as path;

  void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await path.getTemporaryDirectory()).path),
      );
      await setupServiceLocator();
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => LocalizationCubit()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return BlocBuilder<LocalizationCubit, Locale>(
              builder: (context, locale) {
                return MaterialApp.router(
                  title: 'Courses',
                  debugShowCheckedModeBanner: false,
                  theme: AppThemes.lightTheme,
                  darkTheme: AppThemes.darkTheme,
                  themeMode: themeMode,
                  routerConfig: AppRouter.router,
                  localizationsDelegates: const [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: locale,
                );
              },
            );
          },
        ),
      );
    }
  }
