import 'package:courses/features/navigator/presentation/components/app_drawer.dart';
import 'package:courses/layouts/main_layout.dart';
import 'package:courses/layouts/responsive_layout.dart';
import 'package:courses/shared/components/language_switcher.dart';
import 'package:courses/shared/components/theme_switcher.dart';
import 'package:flutter/material.dart';

class NavigateScreen extends StatelessWidget {
  final Widget child;

  const NavigateScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: Scaffold(
        appBar: AppBar(
          actions: [ThemeSwitcher(), LanguageSwitcher()],
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            },
          ),
        ),
        drawer: const AppDrawer(),
        body: child,
      ),
      desktopBody: Scaffold(
        body: Row(
          children: [
            AppDrawer(),
            // const VerticalDivider(thickness: 1, width: 1),
            Expanded(child: MainLayout(body: child)),
          ],
        ),
      ),
    );
  }
}
